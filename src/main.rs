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
    While,
    Ptr,
    PtrNotation,
    Malloc,
    GEP,
    AssignAtGEP,
    Deref,
    Simple,
}

#[derive(Clone)]
struct Token {
    text_if_applicable : String,
    i64_if_applicable : i64,
    i32_if_applicable : i32,
    i8_if_applicable : i8,
    type_id : TypeID,
    fake_type : TypeID,
    second_fake_type : TypeID
}

impl Token {
    fn new_with_type_and_text(ty : TypeID, inp : String) -> Token {
        Token {
            text_if_applicable: inp,
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: ty,
            fake_type: TypeID::None,
            second_fake_type: TypeID::None,
        }
    }
    fn new_with_i64(inp : i64) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: inp,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: TypeID::I64,
            fake_type: TypeID::None,
            second_fake_type: TypeID::None,
        }
    }
    fn new_with_i32(inp : i32) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: inp,
            i8_if_applicable: 0,
            type_id: TypeID::I32,
            fake_type: TypeID::None,
            second_fake_type: TypeID::None,
        }
    }
    fn new_with_i8(inp : i8) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: inp,
            type_id: TypeID::I8,
            fake_type: TypeID::None,
            second_fake_type: TypeID::None,
        }
    }
    fn new_with_type(inp : TypeID) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: inp,
            fake_type: TypeID::None,
            second_fake_type: TypeID::None,
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

    let mut i = 0;
    while i < buf.len() {
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
        if i < buf.len() - 1 && buf[i] == "'" && buf[i + 1] == "'" {
            println!("JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ");
            buf.remove(i);
            buf.remove(i);
            buf.insert(i, "' '".to_string());
            i -= 1;
        }
        if buf[i].len() == 3 && buf[i].chars().nth(0).unwrap() == '\'' && buf[i].chars().nth(2).unwrap() == '\'' {
            let c : char = buf[i].chars().nth(1).unwrap();
            if c.is_ascii() {
                let num : u8 = (c as u32).try_into().unwrap_or_default();
                buf.remove(i);
                buf.insert(i, "i8".to_string());
                buf.insert(i, num.to_string());
            } else {
                println!("Error: not an ASCII character");
                exit(1);
            }
        }
        i += 1;
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
            if buf[i].chars().nth(c).is_some() && buf[i].chars().nth(c).unwrap() == '^' {
                buf.insert(i, buf[i].chars().take_while(|x| *x != '^').collect());
                buf.remove(i + 1);
                buf.insert(i + 1, "^".to_string());
                i += 1;
            }
        }
        i += 1;
    }

    for i in 0..buf.len() {
        if buf[i] == "char" {
            buf.remove(i);
            buf.insert(i, "i8".to_string());
        }
    }

    print_string_vec(&buf);

    let mut put = true;
    let mut tokens : Vec<Token> = buf.into_iter().map( |x| {
        if x == "/*" {
            put = false;
        }

        if put {
            if x.parse::<i64>().is_ok() {
                Token::new_with_type_and_text(TypeID::IntegerLiteral, x)
            } else {
                match &*x {
                    "fn" => Token::new_with_type(TypeID::FunctionDeclaration),
                    "do" => Token::new_with_type(TypeID::Do),
                    "let" => Token::new_with_type(TypeID::VariableDeclaration),
                    "+" | "-" | "*" | "/" | "rem" | "==" | "!=" | "&" | "|" | "<" | "<=" | ">" | ">=" => Token::new_with_type_and_text(TypeID::BinaryOperator, x.clone()),
                    "->" | ":" | ";" | "else" | "endif" | "endwhile" | "{" | "}" => Token::new_with_type_and_text(TypeID::Sentinel, x.clone()),
                    "if" => Token::new_with_type_and_text(TypeID::If, x.clone()),
                    "while" => Token::new_with_type_and_text(TypeID::While, x.clone()),
                    "ret" => Token::new_with_type(TypeID::Ret),
                    "i32" | "i64" | "i8" | "i1" => Token::new_with_type_and_text(TypeID::Type, x.clone()),
                    "^" => Token::new_with_type_and_text(TypeID::PtrNotation, x.clone()),
                    "malloc" => Token::new_with_type(TypeID::Malloc),
                    "free" => Token::new_with_type_and_text(TypeID::Simple, x.clone()),
                    "@" => Token::new_with_type(TypeID::GEP),
                    "<-" => Token::new_with_type(TypeID::AssignAtGEP),
                    "#" => Token::new_with_type(TypeID::Deref),
                    "sizeof" | "puts" | "!" => Token::new_with_type_and_text(TypeID::Simple, x.clone()),
                    _ => Token::new_with_type_and_text(TypeID::UnknownToken, x.clone())
                }
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

    i = 0;
    while i < tokens.len() {
        if i > 0 && tokens[i].type_id == TypeID::PtrNotation && tokens[i - 1].type_id == TypeID::Type {
            tokens[i - 1].fake_type = tokens[i - 1].type_id.clone();
            tokens[i - 1].type_id = TypeID::Ptr;
            tokens.remove(i);
            i -= 1;
        }
        i += 1;
    }

    let mut var_names : Vec<Vec<(String, TypeID, TypeID)>> = Vec::new(); //name and fake type
    var_names.push(Vec::new());

    let mut scope_count : usize = 0;
    for i in 0..tokens.len() {
        if i > 0 && i < tokens.len() - 1 {
            if tokens[i].type_id == TypeID::While {
                var_names.push(Vec::new());
                scope_count += 1;
            }
            if tokens[i].text_if_applicable == "endwhile" {
                scope_count -= 1;
            }
            if tokens[i].type_id == TypeID::UnknownToken {
                if tokens[i - 1].type_id == TypeID::FunctionDeclaration {
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
                    println!("~ {}", type_as_string(&tokens[i + 2].type_id));
                    if tokens[i + 2].type_id == TypeID::Ptr {
                        var_names[scope_count].push((tokens[i].text_if_applicable.clone(), TypeID::Ptr, tokens[i].fake_type.clone()));
                    } else {
                        println!("I PUT A {} OF FAKE TYPE {}", tokens[i].text_if_applicable.clone(), type_as_string(&tokens[i].fake_type));
                        var_names[scope_count].push((tokens[i].text_if_applicable.clone(), tokens[i].fake_type.clone(), TypeID::None));
                    }
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

    scope_count = 0;
    let mut doing = false;
    for i in 0..tokens.len() {
        if tokens[i].type_id == TypeID::While {
            scope_count += 1;
        }
        if tokens[i].text_if_applicable == "endwhile" {
            scope_count -= 1;
        }
        if tokens[i].type_id == TypeID::Do {
            if doing {
                println!("Error: Nested `do`s are not allowed");
                exit(1);
            }
            doing = true;
        }
        if tokens[i].text_if_applicable == ";" {
            if !doing {
                println!("Error: Found `;` without matching `do`");
                exit(1);
            }
            doing = false;
        }
        if doing {
            println!("HUIH {}", tokens[i].text_if_applicable);
            let msg = match tokens[i].type_id {
                TypeID::VariableDeclaration => Some("Error: Cannot define a variable in a `do`"),
                _ => None
            };
            if msg.is_some() {
                println!("RAHHHHHHHHHH");
                println!("{}", msg.unwrap());
                exit(1);
            }
            let msg2 = match &*tokens[i].text_if_applicable {
                "}" => Some("Error: Found `do` without matching `;`"),
                _ => None
            };
            if msg2.is_some() {
                println!("RAHHHHHHHHHH");
                println!("{}", msg2.unwrap());
                exit(1);
            }
        }
        if !doing {
            let msg = match &*tokens[i].text_if_applicable {
                "puts" => Some("Error: Cannot use `puts` outside of a `do`"),
                _ => None
            };
            if msg.is_some() {
                println!("{}", msg.unwrap());
                exit(1);
            }
        }
        for cntr in 0..(scope_count + 1) {
            for name in &var_names[cntr] {
                if tokens[i].text_if_applicable == name.0 {
                    println!("TURNING A {} INTO A FAKE {}", name.0, type_as_string(&name.1));
                    tokens[i].type_id = TypeID::VariableName;
                    tokens[i].fake_type = name.1.clone();
                    tokens[i].second_fake_type = name.2.clone();
                }
            }
        }
        for cntr2 in (scope_count + 1)..var_names.len() {
            for name in &var_names[cntr2] {
                if tokens[i].text_if_applicable == name.0 {
                    println!("Error: use of variable `{}` out of its scope", name.0);
                    exit(1);
                }
            }
        }
    }

    print_tokens(&tokens);

    let mut write: String = String::new();
    write.push_str("declare dso_local i32 @puts(ptr)\ndeclare dso_local i32 @putchar(i8)\ndeclare ptr @malloc(i32)\ndeclare void @free(ptr)\n\n");
    let mut not_labels : Vec<(String, String, String)> = Vec::new();
    for i in 0..tokens.len() {
        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::FunctionName {
            let fn_name = tokens[i + 1].text_if_applicable.clone();
            let mut params : Vec<String> = Vec::new();
            let mut params_str = String::from("");
            let orig = i + 2;
            let mut cntr = 0;
            let mut fn_type = "NotAType".to_string();
            if tokens[i + 2].type_id != TypeID::Sentinel {
                while orig + cntr < tokens.len() && tokens[orig + cntr].type_id != TypeID::Sentinel {
                    params.push(tokens[orig + cntr].text_if_applicable.clone());
                    cntr += 1;
                }
                for i in 0..params.len() {
                    if i < params.len() - 1 && i % 2 == 0 {
                        let tmp = params[i + 1].clone();
                        params[i + 1] = "%".to_string() + &*params[i];
                        params[i] = tmp;
                    }
                }
                println!("WHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA {}", tokens[i].text_if_applicable);
                print_string_vec(&params);
                for (i, p) in params.iter().enumerate() {
                    if i % 2 == 0 && i > 0 {
                        params_str.push_str(&*(", ".to_string() + &*p));
                    } else {
                        params_str.push_str(&*(" ".to_string() + &*p));
                    }
                }
                if tokens[i + cntr + 1].type_id == TypeID::Type {
                    fn_type = tokens[i + cntr + 1].text_if_applicable.clone();
                }
            } else {
                if tokens[i + 3].type_id == TypeID::Type {
                    fn_type = tokens[i + 3].text_if_applicable.clone();
                }
            }
            write.push_str(&*("define ".to_string() + &*fn_type + " @" + &*fn_name + "(" + &*params_str + ") {\n"));
        }

        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::VariableName {
            let var_name = tokens[i + 1].text_if_applicable.clone();
            let mut var_type = "NotAType".to_string();
            if tokens[i + 3].type_id == TypeID::Type {
                var_type = tokens[i + 3].text_if_applicable.clone();
            }
            if tokens[i + 3].type_id == TypeID::Ptr {
                var_type = "ptr".to_string();
                var_type = "ptr".to_string();
            }
            write.push_str(&*("%".to_string() + &*var_name + " = alloca " + &*var_type + "\n"));
        }

        if tokens[i].type_id == TypeID::Sentinel && tokens[i].text_if_applicable == "}" {
            write.push_str("}\n");
        }

        if tokens[i].text_if_applicable == "endwhile" {
            let label = not_labels[not_labels.len() - 1].clone();
            write.push_str(&*("br label %".to_string() + &*label.1 + "\n"));
            write.push_str(&*(label.2.clone() + ":\n"));
            not_labels.pop();
        }

        if tokens[i].type_id == TypeID::While && i > 0 && tokens[i - 1].type_id == TypeID::VariableName {
            let cond_text = &*tokens[i - 1].text_if_applicable;
            let cond_loaded_name = get_next_rand_string();
            let label1_name = get_next_rand_string();
            let label2_name = get_next_rand_string();
            let exit_name = get_next_rand_string();
            write.push_str(&*("br label %".to_string() + &*label1_name + "\n"));
            write.push_str(&*("\n".to_string() + &*label2_name.clone() + ":\n"));
            write.push_str(&*("%".to_string() + &*cond_loaded_name + " = load i1, i1* %" + &*cond_text + "\n"));
            write.push_str(&*("br i1 %".to_string() + &*cond_loaded_name + ", label %" + &*label1_name + ", label %" + &*exit_name + "\n\n"));
            not_labels.push((label1_name.clone(), label2_name.clone(), exit_name.clone()));
            write.push_str(&*(label1_name.clone() + ":\n"));
        }

        if tokens[i].type_id == TypeID::Do {
            let mut names : Vec<(String, TypeID, TypeID, TypeID)> = Vec::new(); //name, type, fake type, second fake type
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
                if j > 0 && tokens[j].type_id == TypeID::FunctionName && tokens[j - 1].type_id != TypeID::FunctionDeclaration {
                    
                }
                if tokens[j].type_id == TypeID::Simple {
                    if tokens[j].text_if_applicable == "sizeof" && j > 0 {
                        if tokens[j - 1].type_id == TypeID::Type {
                            let tmp_name = get_next_rand_string();
                            let name = get_next_rand_string();
                            let ty = tokens[j - 1].clone();
                            write.push_str(&*("%".to_string() + &*tmp_name + " = getelementptr inbounds " + &*ty.text_if_applicable + ", " + &*ty.text_if_applicable + "* null, i32 1\n"));
                            write.push_str(&*("%".to_string() + &*name + " = ptrtoint " + &*ty.text_if_applicable + "* %" + &*tmp_name + " to i32" + "\n"));
                            names.push((name.clone(), TypeID::VariableName, TypeID::I32, TypeID::None));
                        } else {
                            println!("Error: sizeof called on a token that is not a type");
                            exit(1);
                        }
                    }
                    if tokens[j].text_if_applicable == "puts" && names.len() > 0 {
                        let str = names[names.len() - 1].clone();
                        if str.2 == TypeID::Ptr {
                            write.push_str(&*("call i32 @puts(ptr %".to_string() + &*str.0 + ")\n"));
                        } else {
                            println!("Error: tried to call puts on a something that is not a ptr");
                            exit(1);
                        }
                    }
                    if tokens[j].text_if_applicable == "free" && names.len() > 0 {
                        let ptr = names[names.len() - 1].clone();
                        if ptr.2 == TypeID::Ptr {
                            write.push_str(&*("call void @free(ptr %".to_string() + &*ptr.0 + ")\n"));
                            names.pop();
                        } else {
                            println!("Error: tried to call free on a something that is not a ptr");
                            exit(1);
                        }
                    }
                    if tokens[j].text_if_applicable == "!" && names.len() > 0 {
                        let b = names[names.len() - 1].clone();
                        if b.2 == TypeID::I1 {
                            let name = get_next_rand_string();
                            write.push_str(&*("%".to_string() + &*name + " = icmp eq " + type_as_string(&b.2) + " %" + &*(b.0) + ", 0\n"));
                            names.pop();
                            names.push((name.clone(), TypeID::IntegerLiteral, b.2.clone(), TypeID::None));

                        } else {
                            println!("Error: called ! on something that is not of type bool");
                            exit(1);
                        }
                    }
                }
                if tokens[j].type_id == TypeID::Deref && names.len() > 0 {
                    let item = names.pop().unwrap();
                    let name = get_next_rand_string();
                    if item.2 == TypeID::Ptr {
                        write.push_str(&*("%".to_string() + &*name + " = load " + type_as_string(&item.3) + ", ptr %" + &*item.0 + "\n"));
                        names.push((name.clone(), item.1.clone(), item.3.clone(), TypeID::None));
                    } else {
                        println!("Error: tried to deref on something that is not a pointer");
                        exit(1);
                    }
                }
                if tokens[j].type_id == TypeID::AssignAtGEP && names.len() > 1 {
                    let assignment = names[names.len() - 2].clone();
                    let ptr = names[names.len() - 1].clone();
                    names.pop();
                    names.pop();

                    write.push_str(&*("store ".to_string() + type_as_string(&assignment.2) + " %" + &*assignment.0 + ", ptr %" + &*ptr.0 + "\n"));
                }
                if tokens[j].type_id == TypeID::GEP && names.len() > 1 {
                    let actual_ptr = get_next_rand_string();
                    let ptr = names[names.len() - 2].clone();
                    let index = names[names.len() - 1].clone();
                    names.pop();
                    names.pop();
                    //write.push_str(&*("%".to_string() + &*actual_ptr + " = load ptr, ptr %" + &*ptr.0 + "\n"));

                    let out_ptr = get_next_rand_string();
                    write.push_str(&*("%".to_string() + &*out_ptr + " = getelementptr inbounds " + type_as_string(&ptr.3) + ", ptr %" + &*ptr.0 + ", i32 %" + &*index.0 + "\n"));
                    names.push((out_ptr.clone(), TypeID::VariableName, TypeID::Ptr, ptr.3.clone()));
                }
                if tokens[j].type_id == TypeID::Malloc {
                    let name = get_next_rand_string();
                    let inp_size = names[names.len() - 1].clone();
                    write.push_str(&*("%".to_string() + &*name + " = call ptr @malloc(" + type_as_string(&inp_size.2) + " %" + &*inp_size.0 + ")\n"));
                    names.pop();
                    names.push((name.clone(), TypeID::Ptr, inp_size.2.clone(), inp_size.3.clone()));
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
                if tokens[j].type_id == TypeID::If {
                    let cond = names[names.len() - 1].clone();     //TODO: you should check if latest name is a bool
                    let label1_name = get_next_rand_string();
                    let label2_name = get_next_rand_string();
                    let exit_name = get_next_rand_string();
                    write.push_str(&*("br i1 %".to_string() + &*cond.0 + ", label %" + &*label1_name + ", label %" + &*label2_name + "\n\n"));
                    labels.push((label1_name.clone(), label2_name.clone(), exit_name.clone()));
                    write.push_str(&*(label1_name.clone() + ":\n"));
                }
                if tokens[j].text_if_applicable == "->" {
                    if tokens[j + 1].type_id != TypeID::VariableName && tokens[j + 1].type_id != TypeID::Ret {
                        println!("UH OH!!!");
                    }
                    let top = names[names.len() - 1].clone();
                    if tokens[j + 1].type_id == TypeID::Ret {
                        println!("moments before REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEYT");
                        if top.2 == TypeID::Ptr {
                            write.push_str(&*("ret ".to_string() + type_as_string(&top.3) + " %" + &*top.0 + "\n"));
                            println!("REEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEYT");
                        } else {
                            write.push_str(&*("ret ".to_string() + type_as_string(&top.2) + " %" + &*top.0 + "\n"));
                        }
                    } else {
                        if tokens[j + 1].fake_type == TypeID::Ptr {
                            write.push_str(&*("store ptr %".to_string() + &*top.0 + ", ptr %" + &*tokens[j + 1].text_if_applicable + "\n"));
                        } else {
                            write.push_str(&*("store ".to_string() + type_as_string(&top.2) + " %" + &*top.0 + ", " + type_as_string(&tokens[j + 1].fake_type) + "* %" + &*tokens[j + 1].text_if_applicable + "\n"));
                        }
                    }
                }
                if tokens[j].type_id != TypeID::BinaryOperator {
                    if tokens[j].type_id == TypeID::IntegerLiteral {
                        let name = get_next_rand_string();
                        names.push((name.clone(), tokens[j].type_id.clone(), tokens[j].fake_type.clone(), TypeID::None));
                        println!("I pushed a {} which is a {} but actually {}", &name, type_as_string(&tokens[j].type_id), type_as_string(&tokens[j].fake_type));
                        if tokens[j].fake_type == TypeID::I32 {
                            write.push_str(&*("%".to_string() + &*name + " = add i32 " + &*tokens[j].i32_if_applicable.to_string() + ", 0\n"));
                        }
                        if tokens[j].fake_type == TypeID::I64 {
                            write.push_str(&*("%".to_string() + &*name + " = add i64 " + &*tokens[j].i64_if_applicable.to_string() + ", 0\n"));
                        }
                        if tokens[j].fake_type == TypeID::I8 {
                            write.push_str(&*("%".to_string() + &*name + " = add i8 " + &*tokens[j].i8_if_applicable.to_string() + ", 0\n"));
                        }
                        if tokens[j].fake_type == TypeID::I1 {
                            write.push_str(&*("%".to_string() + &*name + " = add i1 " + &*tokens[j].text_if_applicable + ", 0\n"));
                        }
                    } else if tokens[j].type_id == TypeID::VariableName {
                        let name = get_next_rand_string();
                        if tokens[j].fake_type == TypeID::Ptr {
                            write.push_str(&*("%".to_string() + &*name + " = load ptr, ptr %" + &*tokens[j].text_if_applicable + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = load " + type_as_string(&tokens[j].fake_type) + ", " + type_as_string(&tokens[j].fake_type) + "* %" + &*tokens[j].text_if_applicable + "\n"));
                        }
                        names.push((name.clone(), TypeID::IntegerLiteral, tokens[j].fake_type.clone(), tokens[j].second_fake_type.clone()));
                    }
                } else { //it is binOp
                    if tokens[j].text_if_applicable == "+" {
                        let name = get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = add "));
                        write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                        write.push_str(&*(", %".to_string() + &*(value_2.0)));
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "-" {
                        let name = get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = sub "));
                        write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                        write.push_str(&*(", %".to_string() + &*(value_2.0)));
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "*" {
                        let name = get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = mul "));
                        write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                        write.push_str(&*(", %".to_string() + &*(value_2.0)));
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "/" {
                        let name = get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name.to_string() + " = sdiv "));
                        write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                        write.push_str(&*(", %".to_string() + &*(value_2.0)));
                        write.push_str("\n");

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "rem" {
                        let name = get_next_rand_string();
                        println!("names len is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = srem " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "==" {
                        let name = get_next_rand_string();
                        println!("== MENTIONED LESS GOOO is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = icmp eq " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "!=" {
                        let name = get_next_rand_string();
                        println!("!= MENTIONED LESS GOOO is {}", names.len());
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = icmp ne " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "&" {
                        let name = get_next_rand_string();
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = and " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "|" {
                        let name = get_next_rand_string();
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = or " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "<" {
                        let name = get_next_rand_string();
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = icmp slt " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "<=" {
                        let name = get_next_rand_string();
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = icmp sle " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == ">" {
                        let name = get_next_rand_string();
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = icmp sgt " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == ">=" {
                        let name = get_next_rand_string();
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = icmp sge " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), TypeID::IntegerLiteral, TypeID::I1, TypeID::None));
                    }
                }
            }
            print!("\nNames are: ");
            for cntr in 0..names.len() {
                print!("| {} ", type_as_string(&names[cntr].2));
            }
            println!();
        }

        // println!("progress: ");
        // println!("{}", write);
        // println!();

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

// I32,
// I64,
// I8,
// I1,
// BinaryOperator,
// Sentinel,
// Type,
// StringLiteral,
// FunctionDeclaration,
// VariableDeclaration,
// UnknownToken,
// EOF,
// FunctionName,
// VariableName,
// Ret,
// IntegerLiteral,
// Do,
// RemoveMe,
// None,
// Operator,
// If,
// While,
// Ptr,
// PtrNotation,
// Malloc

fn type_as_string(inp : &TypeID) -> &str {
    match *inp {
        TypeID::UnknownToken => "Unknown",
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
        TypeID::Operator => "Operator",
        TypeID::If => "If",
        TypeID::While => "While",
        TypeID::Ptr => "Ptr",
        TypeID::PtrNotation => "PtrNotation",
        TypeID::Malloc => "Malloc",
        TypeID::GEP => "@",
        TypeID::AssignAtGEP => "<-",
        _ => "Unk"
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
    print!("(text: {}, type: {}, fake type: {}, second fake type: {}, i32: {})", inp.text_if_applicable, type_as_string(&inp.type_id), type_as_string(&inp.fake_type), type_as_string(&inp.second_fake_type), inp.i32_if_applicable);
}

fn print_tokens(inp : &Vec<Token>) {
    print!("[\n");
    for i in inp {
        print_token(i);
        println!();
    }
    print!("]\n");
}
