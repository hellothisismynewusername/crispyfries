use std::any::Any;
use std::cmp::PartialEq;
use std::fs::File;
use std::io::Read;
use std::process::exit;
use rand::distributions::{Alphanumeric, DistString};

#[derive(PartialEq)]
#[derive(Clone)]
enum TypeID {
    I32,
    I64,
    I8,
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
    None
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
            } else if x == "+" {
                Token::new_with_type_and_text(TypeID::BinaryOperator, x)
            } else if x == "->" {
                Token::new_with_type_and_text(TypeID::Sentinel, x)
            } else if x == ":" {
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
                    } else {
                        TypeID::I8
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

    let mut names : Vec<(String, TypeID, TypeID)> = Vec::new(); //name, type, fake type. The middle one ended up being useless :(

    let mut write: String = String::new();
    write.push_str("declare dso_local i32 @puts(i8*)\ndeclare dso_local i32 @putchar(i8)\n\n");
    for i in 0..tokens.len() {
        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::FunctionName {
            let fn_name = tokens[i + 1].text_if_applicable.clone();
            let mut fn_type = "NotAType".to_string();
            if tokens[i + 3].type_id == TypeID::Type {
                fn_type = tokens[i + 3].text_if_applicable.clone();
            }
            write.push_str(&*("define ".to_string() + &*fn_type + " @" + &*fn_name + " {\n"));
        }

        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::VariableName {
            let var_name = tokens[i + 1].text_if_applicable.clone();
            let mut var_type = "NotAType".to_string();
            if tokens[i + 3].type_id == TypeID::Type {
                var_type = tokens[i + 3].text_if_applicable.clone();
            }
            write.push_str(&*("%".to_string() + &*var_name + " = alloca " + &*var_type + "\n"));
        }

        if tokens[i].type_id == TypeID::Do {
            print!("DO MENTIONED LESS GOO. Nearby toks are ");
            print_token(&tokens[i - 1]);
            print!(" and ");
            print_token(&tokens[i + 1]);
            println!();
            let mut cntr = 0;
            let mut length = 0;
            while i + cntr < tokens.len() {
                if tokens[i + cntr].type_id == TypeID::Sentinel && tokens[i + cntr].text_if_applicable == ";" {
                    length = cntr;
                }
                cntr += 1;
            }
            println!("len is {}", length);
            for j in (i + 1)..(i + length) {
                if tokens[j].text_if_applicable == "->" {

                }
                if tokens[j].type_id != TypeID::BinaryOperator {
                    // let first = j - 2;
                    // let second = j - 1;
                    // let name1 = "%".to_string() + &*get_next_rand_string();
                    // let name2 = "%".to_string() + &*get_next_rand_string();
                    // names.push((name1.clone(), tokens[first].type_id.clone(), tokens[first].fake_type.clone()));
                    // names.push((name2.clone(), tokens[second].type_id.clone(), tokens[second].fake_type.clone()));
                    // if tokens[first].type_id == TypeID::IntegerLiteral {
                    //     if tokens[first].fake_type == TypeID::I32 {
                    //         write.push_str(&*(name1.clone() + " = add i32 " + &*tokens[first].i32_if_applicable.to_string() + ", 0\n"));
                    //     }
                    //     if tokens[first].fake_type == TypeID::I64 {
                    //         write.push_str(&*(name1.clone() + " = add i64 " + &*tokens[first].i64_if_applicable.to_string() + ", 0\n"));
                    //     }
                    //     if tokens[first].fake_type == TypeID::I8 {
                    //         write.push_str(&*(name1.clone() + " = add i8 " + &*tokens[first].i8_if_applicable.to_string() + ", 0\n"));
                    //     }
                    // }
                    // if tokens[second].type_id == TypeID::IntegerLiteral {
                    //     if tokens[second].fake_type == TypeID::I32 {
                    //         write.push_str(&*(name1.clone() + " = add i32 " + &*tokens[second].i32_if_applicable.to_string() + ", 0\n"));
                    //     }
                    //     if tokens[second].fake_type == TypeID::I64 {
                    //         write.push_str(&*(name1.clone() + " = add i64 " + &*tokens[second].i64_if_applicable.to_string() + ", 0\n"));
                    //     }
                    //     if tokens[second].fake_type == TypeID::I8 {
                    //         write.push_str(&*(name1.clone() + " = add i8 " + &*tokens[second].i8_if_applicable.to_string() + ", 0\n"));
                    //     }
                    // }
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
                }
            }
        }
    }
    println!("{}", write);

    let mut write_file = File::create("out.ll").expect("Couldn't make write file");

}

fn get_next_rand_string() -> String {
    Alphanumeric.sample_string(&mut rand::thread_rng(), 25)
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