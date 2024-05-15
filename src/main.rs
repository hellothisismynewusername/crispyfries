use std::any::Any;
use std::cmp::PartialEq;
use std::fs::File;
use std::io::{Read, Write};
use std::process::exit;
use rand::distributions::{Alphanumeric, DistString};

#[derive(PartialEq)]
#[derive(Clone)]
enum TypeID {
    I32,
    I64,
    I8,
    I1,
    BinaryOperator,
    Sentinel,
    Type,
    StringLiteral,
    FunctionDeclaration,
    VariableDeclaration,
    UnknownToken,
    EOF,
    FunctionName,
    VariableName,
    Ret,
    IntegerLiteral,
    Do,
    RemoveMe,
    None,
    Operator,
    If,
    While
}

struct Token {
    text_if_applicable : String,
    i64_if_applicable : i64,
    i32_if_applicable : i32,
    i8_if_applicable : i8,
    type_id : TypeID,
    fake_type : TypeID
}

impl Token {
    fn new_with_type_and_text(ty : TypeID, inp : String) -> Token {
        Token {
            text_if_applicable: inp,
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: ty,
            fake_type: TypeID::None
        }
    }
    fn new_with_i64(inp : i64) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: inp,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: TypeID::I64,
            fake_type: TypeID::None
        }
    }
    fn new_with_i32(inp : i32) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: inp,
            i8_if_applicable: 0,
            type_id: TypeID::I32,
            fake_type: TypeID::None
        }
    }
    fn new_with_i8(inp : i8) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: inp,
            type_id: TypeID::I8,
            fake_type: TypeID::None
        }
    }
    fn new_with_type(inp : TypeID) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: inp,
            fake_type: TypeID::None
        }
    }
}

fn main() {
    let mut file_name : Option<String> = None;

    for (i, arg) in std::env::args().enumerate() {
        if i > 0 {
            file_name = Some(arg.to_string());
        }
    }

    if file_name.is_none() {
        println!("file name error");
        exit(1);
    }

    let mut input_file;
    let mut file_buf : Vec<u8> = Vec::new();

    input_file = File::open(file_name.unwrap()).expect("Couldn't open file");
    input_file.read_to_end(&mut file_buf).expect("Couldn't read file");

    let mut buf : Vec<String> = String::from_utf8(file_buf).expect("Error").split_whitespace().into_iter().map(|x| x.to_string()).collect();

    for i in 0..buf.len() {
        if buf[i] == "true" {
            buf.remove(i);
            buf.insert(i, "i1".to_string());
            buf.insert(i, "1".to_string());
        }
        if buf[i] == "false" {
            buf.remove(i);
            buf.insert(i, "i1".to_string());
            buf.insert(i, "0".to_string());
        }
        if buf[i] == "bool" {
            buf.remove(i);
            buf.insert(i, "i1".to_string());
        }
    }

    let mut i : usize = 0;
    while i < buf.len() {
        for c in 0..buf[i].len() {
            if buf[i].chars().nth(c).unwrap() == ';' {

                buf.insert(i, buf[i].chars().take_while(|x| *x != ';').collect());
                buf.remove(i + 1);
                buf.insert(i + 1, ";".to_string());
                i += 1;
            }
        }
        i += 1;
    }
    print_string_vec(&buf);

    let mut put = true;
    let mut tokens : Vec<Token> = buf.into_iter().map(|x| {
        if x == "/*" {
            put = false;
        }

        if put {
            if x == ";" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "do" {
                Token::new_with_type(TypeID::Do)
            } else if x == "fn" {
                Token::new_with_type(TypeID::FunctionDeclaration)
            } else if x == "let" {
                Token::new_with_type(TypeID::VariableDeclaration)
            } else if x == "+" || x == "-" || x == "*" || x == "/" || x == "rem" || x == "==" || x == "!=" {
                Token::new_with_type_and_text(TypeID::BinaryOperator, x)
            } else if x == "->" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == ":" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "?" {//only use ? with constants as the output options, but also this is pretty useless besides that b/c it will process both options BEFORE checking the condition
                Token::new_with_type_and_text(TypeID::Operator, x)
            } else if x == "if" {
                Token::new_with_type_and_text(TypeID::If, x)
            } else if x == "else" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "endif" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "while" {
                Token::new_with_type_and_text(TypeID::While, x)
            } else if x == "endwhile" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "{" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "}" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == "ret" {
                Token::new_with_type(TypeID::Ret)
            } else if x.parse::<i64>().is_ok() {
                Token::new_with_type_and_text(TypeID::IntegerLiteral, x)
            } else if x == "i32" {
                Token::new_with_type_and_text(TypeID::Type, x)
            } else if x == "i64" {
                Token::new_with_type_and_text(TypeID::Type, x)
            } else if x == "i8" {
                Token::new_with_type_and_text(TypeID::Type, x)
            } else if x == "i1" {
                Token::new_with_type_and_text(TypeID::Type, x)
            } else {
                Token::new_with_type_and_text(TypeID::UnknownToken, x)
            }
        } else {
            if x == "*/" {
                put = true;
            }
            Token::new_with_type(TypeID::RemoveMe)
        }

    }).collect();
    tokens.push(Token::new_with_type(TypeID::EOF));

    let mut i = 0;
    while i < tokens.len() {
        if tokens[i].type_id == TypeID::RemoveMe {
            tokens.remove(i);
            i -= 1;
            print!("removed smthn");
        }
        i += 1;
    }

    let mut var_names : Vec<(String, TypeID)> = Vec::new(); //name and fake type

    for i in 0..tokens.len() {
        if i > 0 && i < tokens.len() - 1 {
            if tokens[i].type_id == TypeID::UnknownToken {
                if tokens[i - 1].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::FunctionName;
                }
                if tokens[i - 1].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::VariableName;
                    tokens[i].fake_type = if tokens[i + 2].text_if_applicable == type_as_string(&TypeID::I32) {
                        TypeID::I32
                    } else if tokens[i + 2].text_if_applicable == type_as_string(&TypeID::I64) {
                        TypeID::I64
                    } else if tokens[i + 2].text_if_applicable == type_as_string(&TypeID::I8) {
                        TypeID::I8
                    } else {
                        TypeID::I1
                    };
                    var_names.push((tokens[i].text_if_applicable.clone(), tokens[i].fake_type.clone()));
                }
            }
        }
        if i < tokens.len() - 1 {
            if tokens[i].type_id == TypeID::IntegerLiteral && tokens[i + 1].type_id == TypeID::Type {
                let mut type_id = TypeID::None;
                if tokens[i + 1].text_if_applicable == "i64" {
                    type_id = TypeID::I64;
                    tokens[i].i64_if_applicable = tokens[i].text_if_applicable.parse::<i64>().unwrap();
                }
                if tokens[i + 1].text_if_applicable == "i32" {
                    type_id = TypeID::I32;
                    tokens[i].i32_if_applicable = tokens[i].text_if_applicable.parse::<i32>().unwrap();
                }
                if tokens[i + 1].text_if_applicable == "i8" {
                    type_id = TypeID::I8;
                    tokens[i].i8_if_applicable = tokens[i].text_if_applicable.parse::<i8>().unwrap();
                }
                if tokens[i + 1].text_if_applicable == "i1" {
                    type_id = TypeID::I1;
                }
                tokens[i].fake_type = type_id;
            }
        }
    }

    for i in 0..tokens.len() {
        for name in &var_names {
            if tokens[i].text_if_applicable == name.0 {
                tokens[i].type_id = TypeID::VariableName;
                tokens[i].fake_type = name.1.clone();
            }
        }
    }

    print_tokens(&tokens);


    let mut write: String = String::new();
    write.push_str("declare dso_local i32 @puts(i8*)\ndeclare dso_local i32 @putchar(i8)\n\n");
    for i in 0..tokens.len() {
        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::FunctionName {
            let fn_name = tokens[i + 1].text_if_applicable.clone();
            let mut fn_type = "NotAType".to_string();
            if tokens[i + 3].type_id == TypeID::Type {
                fn_type = tokens[i + 3].text_if_applicable.clone();
            }
            write.push_str(&*("define ".to_string() + &*fn_type + " @" + &*fn_name + "() {\n"));
        }

        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::VariableName {
            let var_name = tokens[i + 1].text_if_applicable.clone();
            let mut var_type = "NotAType".to_string();
            if tokens[i + 3].type_id == TypeID::Type {
                var_type = tokens[i + 3].text_if_applicable.clone();
            }
            write.push_str(&*("%".to_string() + &*var_name + " = alloca " + &*var_type + "\n"));
        }

        if tokens[i].type_id == TypeID::Sentinel && tokens[i].text_if_applicable == "}" {
            write.push_str("}\n");
        }

        if tokens[i].type_id == TypeID::Do {
            let mut names : Vec<(String, TypeID, TypeID)> = Vec::new(); //name, type, fake type. The middle one ended up being ALMOST useless :(
            let mut labels : Vec<(String, String, String)> = Vec::new(); //(enter1, enter2, exit)
            print!("DO MENTIONED LESS GOO. Nearby toks are ");
            print_token(&tokens[i - 1]);
            print!(" and ");
            print_token(&tokens[i + 1]);
            println!();
            let mut length = 0;
            while i + length < tokens.len() && tokens[i + length].text_if_applicable != ";" {
                length += 1;
            }
            println!("len is {}", length);
            for j in (i + 1)..(i + length) {
                if tokens[j].text_if_applicable == "endwhile" {
                    let label = labels[labels.len() - 1].clone();
                    write.push_str(&*("br label %".to_string() + &*label.1 + "\n"));
                    write.push_str(&*(label.2.clone() + ":\n"));
                    labels.pop();
                }
                if tokens[j].type_id == TypeID::While {//TODO: the problems is that i need it to re-evaluate the condtion... maybe move the while outside of the do block and make it rely on a variable?
                    let cond = names[names.len() - 1].clone();     //TODO: you should check if latest name is a bool
                    let label1_name = get_next_rand_string();
                    let label2_name = get_next_rand_string(); //right before conditional break
                    let exit_name = get_next_rand_string();
                    write.push_str(&*("br label %".to_string() + &*label1_name + "\n"));
                    write.push_str(&*("\n".to_string() + &*label2_name.clone() + ":\n"));
                    write.push_str(&*("br i1 ".to_string() + &*cond.0 + ", label %" + &*label1_name + ", label %" + &*exit_name + "\n\n"));
                    labels.push((label1_name.clone(), label2_name.clone(), exit_name.clone()));
                    write.push_str(&*(label1_name.clone() + ":\n"));
                }
                if tokens[j].text_if_applicable == "endif" {
                    write.push_str(&*("br label %".to_string() + &*labels[labels.len() - 1].2 + "\n"));
                    write.push_str(&*("\n".to_string() + &*labels[labels.len() - 1].2 + ":\n"));
                    labels.pop();
                }
                if tokens[j].text_if_applicable == "else" {
                    write.push_str(&*("br label %".to_string() + &*labels[labels.len() - 1].2 + "\n"));
                    write.push_str(&*("\n".to_string() + &*labels[labels.len() - 1].1 + ":\n"));
                }
                if tokens[j].type_id == TypeID::If {                    //you may need a stack of labels in case of embedded ifs
                    let cond = names[names.len() - 1].clone();     //TODO: you should check if latest name is a bool
                    let label1_name = get_next_rand_string();
                    let label2_name = get_next_rand_string();
                    let exit_name = get_next_rand_string();
                    write.push_str(&*("br i1 ".to_string() + &*cond.0 + ", label %" + &*label1_name + ", label %" + &*label2_name + "\n\n"));
                    labels.push((label1_name.clone(), label2_name.clone(), exit_name.clone()));
                    write.push_str(&*(label1_name.clone() + ":\n"));
                }
                if tokens[j].text_if_applicable == "?" && names.len() > 2 {
                    println!("? names len is {}", names.len());
                    let cond = names[names.len() - 3].clone();
                    let first = names[names.len() - 2].clone();
                    let second = names[names.len() - 1].clone();
                    if cond.2 != TypeID::I1 {
                        //println!("Error: condition type provided to '?' is not bool"); i have no idea
                    }
                    if first.2 != second.2 {
                        println!("Error: types of output possibilities provided to '?' are not the same");
                    }
                    let label1_name = get_next_rand_string();
                    let label2_name = get_next_rand_string();
                    let finish_name = get_next_rand_string();
                    let tmp_var_name = get_next_rand_string();
                    write.push_str(&*("%".to_string() + &*tmp_var_name + " = alloca " + type_as_string(&second.2) + "\n"));
                    write.push_str(&*("br i1 ".to_string() + &*cond.0 + ", label %" + &*label1_name + ", label %" + &*label2_name + "\n\n"));
                    write.push_str(&*(label1_name.clone() + ":\nstore " + type_as_string(&second.2) + " " + &*first.0 + ", " + type_as_string(&second.2) + "* %" + &*tmp_var_name + "\nbr label %" + &*finish_name + "\n\n"));
                    write.push_str(&*(label2_name.clone() + ":\nstore " + type_as_string(&second.2) + " " + &*second.0 + ", " + type_as_string(&second.2) + "* %" + &*tmp_var_name + "\nbr label %" + &*finish_name + "\n\n"));
                    write.push_str(&*(finish_name.clone() + ":\n"));

                    let tmp_var_name_again = get_next_rand_string();
                    write.push_str(&*("%".to_string() + &*tmp_var_name_again + " = load " + type_as_string(&second.2) + ", " + type_as_string(&second.2) + "* %" + &*tmp_var_name + "\n"));

                    names.pop();
                    names.pop();
                    names.pop();
                    names.push(("%".to_string() + &*tmp_var_name_again, TypeID::IntegerLiteral, first.2.clone()));
                } else if tokens[j].text_if_applicable == "?" {
                    println!("Error: stack length not sufficient for '?'");
                }
                if tokens[j].text_if_applicable == "->" {
                    if tokens[j + 1].type_id != TypeID::VariableName && tokens[j + 1].type_id != TypeID::Ret {
                        println!("UH OH!!!");
                    }
                    let top = names[names.len() - 1].clone();
                    if tokens[j + 1].type_id == TypeID::Ret {
                        write.push_str(&*("ret ".to_string() + type_as_string(&top.2) + " " + &*top.0 + "\n"));
                    } else {
                        write.push_str(&*("store ".to_string() + type_as_string(&top.2) + " " + &*top.0 + ", " + type_as_string(&tokens[j + 1].fake_type) + "* %" + &*tokens[j + 1].text_if_applicable + "\n"));
                    }
                }
                if tokens[j].type_id != TypeID::BinaryOperator {
                    if tokens[j].type_id == TypeID::IntegerLiteral {
                        let name = "%".to_string() + &*get_next_rand_string();
                        names.push((name.clone(), tokens[j].type_id.clone(), tokens[j].fake_type.clone()));
                        println!("I pushed a {} which is a {} but actually {}", &name, type_as_string(&tokens[j].type_id), type_as_string(&tokens[j].fake_type));
                        if tokens[j].fake_type == TypeID::I32 {
                            write.push_str(&*(name.clone() + " = add i32 " + &*tokens[j].i32_if_applicable.to_string() + ", 0\n"));
                        }
                        if tokens[j].fake_type == TypeID::I64 {
                            write.push_str(&*(name.clone() + " = add i64 " + &*tokens[j].i64_if_applicable.to_string() + ", 0\n"));
                        }
                        if tokens[j].fake_type == TypeID::I8 {
                            write.push_str(&*(name.clone() + " = add i8 " + &*tokens[j].i8_if_applicable.to_string() + ", 0\n"));
                        }
                        if tokens[j].fake_type == TypeID::I1 {
                            write.push_str(&*(name.clone() + " = add i1 " + &*tokens[j].text_if_applicable + ", 0\n"));
                        }
                    } else if tokens[j].type_id == TypeID::VariableName {
                        let name = "%".to_string() + &*get_next_rand_string();
                        write.push_str(&*(name.clone() + " = load " + type_as_string(&tokens[j].fake_type) + ", " + type_as_string(&tokens[j].fake_type) + "* %" + &*tokens[j].text_if_applicable + "\n"));
                        names.push((name.clone(), TypeID::IntegerLiteral, tokens[j].fake_type.clone()));
                    }
                } else { //it is binOp
                    if tokens[j].text_if_applicable == "+" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = add "));
                        if value_1.1 == TypeID::IntegerLiteral {
                             write.push_str(&*(type_as_string(&value_1.2).to_string() + " " + &*(value_1.0)));
                        }
                        if value_2.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(", ".to_string() + &*(value_2.0)));
                        }
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                    if tokens[j].text_if_applicable == "-" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = sub "));
                        if value_1.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " " + &*(value_1.0)));
                        }
                        if value_2.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(", ".to_string() + &*(value_2.0)));
                        }
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                    if tokens[j].text_if_applicable == "*" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = mul "));
                        if value_1.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " " + &*(value_1.0)));
                        }
                        if value_2.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(", ".to_string() + &*(value_2.0)));
                        }
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                    if tokens[j].text_if_applicable == "/" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = sdiv "));
                        if value_1.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " " + &*(value_1.0)));
                        }
                        if value_2.1 == TypeID::IntegerLiteral {
                            write.push_str(&*(", ".to_string() + &*(value_2.0)));
                        }
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                    if tokens[j].text_if_applicable == "rem" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = srem " + type_as_string(&value_1.2) + " " + &*(value_1.0) + ", " + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                    if tokens[j].text_if_applicable == "==" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("== MENTIONED LESS GOOO is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = icmp eq " + type_as_string(&value_1.2) + " " + &*(value_1.0) + ", " + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                    if tokens[j].text_if_applicable == "!=" {
                        let name = "%".to_string() + &*get_next_rand_string();
                        println!("!= MENTIONED LESS GOOO is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*(name.as_str().to_string() + " = icmp ne " + type_as_string(&value_1.2) + " " + &*(value_1.0) + ", " + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone()));
                    }
                }
            }
            print!("\nNames are: ");
            for cntr in 0..names.len() {
                print!("| {} ", type_as_string(&names[cntr].2));
            }
            println!();
        }
    }
    println!("{}", write);

    let mut write_file = File::create("out.ll").expect("Couldn't make write file");
    let tmp = write.into_bytes();
    write_file.write_all(&tmp);

}

fn get_next_rand_string() -> String {
    let mut out = Alphanumeric.sample_string(&mut rand::thread_rng(), 30);
    if out.chars().nth(0).unwrap() == '0' ||
        out.chars().nth(0).unwrap() == '1' ||
        out.chars().nth(0).unwrap() == '2' ||
        out.chars().nth(0).unwrap() == '3' ||
        out.chars().nth(0).unwrap() == '4' ||
        out.chars().nth(0).unwrap() == '5' ||
        out.chars().nth(0).unwrap() == '6' ||
        out.chars().nth(0).unwrap() == '7' ||
        out.chars().nth(0).unwrap() == '8' ||
        out.chars().nth(0).unwrap() == '9' {
        out.remove(0);
        out.insert(0, 'a');
    }
    out
}

fn type_as_string(inp : &TypeID) -> &str {
    match *inp {
        TypeID::UnknownToken => "Unk",
        TypeID::Type => "Type",
        TypeID::BinaryOperator => "BinOp",
        TypeID::VariableName => "VarName",
        TypeID::VariableDeclaration => "VarDec",
        TypeID::Sentinel => "Sentinel",
        TypeID::FunctionName => "FuncName",
        TypeID::FunctionDeclaration => "FuncDec",
        TypeID::IntegerLiteral => "IntLiteral",
        TypeID::EOF => "EOF",
        TypeID::Do => "Do",
        TypeID::I32 => "i32",
        TypeID::I64 => "i64",
        TypeID::I8 => "i8",
        TypeID::I1 => "i1",
        TypeID::Ret => "Ret",
        _ => "IDK"
    }
}

fn print_string_vec(inp : &Vec<String>) {
    print!("[");
    for i in inp {
        print!("{}, ", i);
    }
    print!("]\n");
}

fn print_token(inp : &Token) {
    print!("(text: {}, type: {}, fake type: {}, i32: {})", inp.text_if_applicable, type_as_string(&inp.type_id), type_as_string(&inp.fake_type), inp.i32_if_applicable);
}

fn print_tokens(inp : &Vec<Token>) {
    print!("[\n");
    for i in inp {
        print_token(i);
        println!();
    }
    print!("]\n");
}