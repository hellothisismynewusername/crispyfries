use std::process::Command;
use std::cmp::PartialEq;
use std::fs::File;
use std::io::{Read, Write};
use std::process::exit;
use rand::distributions::{Alphanumeric, DistString};

#[derive(PartialEq)]
#[derive(Clone)]
#[derive(Debug)]
enum TypeID {
    I32,
    I64,
    I8,
    I1,
    F32,
    F64,
    Void,
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
    FloatLiteral,
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
            } else if x.parse::<f64>().is_ok() {
                Token::new_with_type_and_text(TypeID::FloatLiteral, x)
            } else {
                match &*x {
                    "fn" | "dec" => Token::new_with_type_and_text(TypeID::FunctionDeclaration, x.clone()),
                    "do" => Token::new_with_type(TypeID::Do),
                    "let" => Token::new_with_type(TypeID::VariableDeclaration),
                    "+" | "-" | "*" | "/" | "rem" | "==" | "!=" | "&" | "|" | "<" | "<=" | ">" | ">=" => Token::new_with_type_and_text(TypeID::BinaryOperator, x.clone()),
                    "->" | ":" | ";" | "else" | "endif" | "endwhile" | "{" | "}" | "noconsu" => Token::new_with_type_and_text(TypeID::Sentinel, x.clone()),
                    "if" => Token::new_with_type_and_text(TypeID::If, x.clone()),
                    "while" => Token::new_with_type_and_text(TypeID::While, x.clone()),
                    "ret" => Token::new_with_type(TypeID::Ret),
                    "i32" | "i64" | "i8" | "i1" | "void" | "f32" | "f64" => Token::new_with_type_and_text(TypeID::Type, x.clone()),
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
            if i > 0 {
                i -= 1;
            }
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
    let mut throwaway_func_names : Vec<String> = Vec::new();

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
                    throwaway_func_names.push(tokens[i].text_if_applicable.clone());
                }
                if tokens[i - 1].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::VariableName;
                    tokens[i].fake_type =
                        if string_to_fake_type(&*tokens[i + 2].text_if_applicable).is_some() {
                            string_to_fake_type(&*tokens[i + 2].text_if_applicable).unwrap()
                        } else {
                            println!("Error: Invalid type for variable declaration");
                            exit(1);
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
            if tokens[i].type_id == TypeID::FloatLiteral && tokens[i + 1].type_id == TypeID::Type {
                let mut type_id = string_to_fake_type(&*tokens[i + 1].text_if_applicable).unwrap();
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
        for cntr3 in 0..throwaway_func_names.len() {
            if throwaway_func_names[cntr3] == tokens[i].text_if_applicable {
                tokens[i].type_id = TypeID::FunctionName;
            }
        }
    }

    let mut tmp_vars : Vec<Vec<(String, TypeID, TypeID, TypeID)>> = Vec::new();
    tmp_vars.push(Vec::new());
    let mut tmp_vars_cntr : usize = 0;

    print_tokens(&tokens);

    let mut func_names : Vec<(String, usize, bool, (TypeID, TypeID))> = Vec::new(); //func name, how many inputs, whether to consume, (outType, outFakeType)
    let mut func_should_void_return = false;

    let mut write: String = String::new();
    write.push_str("declare dso_local i32 @puts(ptr)\ndeclare dso_local i32 @putchar(i8)\ndeclare ptr @malloc(i32)\ndeclare void @free(ptr)\n\n");
    let mut not_labels : Vec<(String, String, String)> = Vec::new();
    for i in 0..tokens.len() {
        if i < tokens.len() - 1 && tokens[i].type_id == TypeID::FunctionDeclaration && tokens[i].text_if_applicable != "dec" && tokens[i + 1].type_id == TypeID::FunctionName {  //merely for tmp_vars sake
            let name = tokens[i + 1].text_if_applicable.clone();
            for j in 0..throwaway_func_names.len() {
                if name == throwaway_func_names[j] {

                    let mut params : Vec<Token> = Vec::new();
                    let mut ns : Vec<String> = Vec::new();
                    let mut ts : Vec<(TypeID, TypeID)> = Vec::new(); //fake type, second fake type
                    let orig = i + 2;
                    let mut cntr = 0;
                    if tokens[i + 2].type_id != TypeID::Sentinel {
                        while orig + cntr < tokens.len() && tokens[orig + cntr].type_id != TypeID::Sentinel {
                            params.push(tokens[orig + cntr].clone());
                            cntr += 1;
                        }
                        for i in 0..params.len() {
                            if i % 2 == 0 {
                                ns.push(params[i].text_if_applicable.clone());
                            } else {
                                if params[i].type_id == TypeID::Ptr {
                                    ts.push((TypeID::Ptr, string_to_fake_type(&*params[i].text_if_applicable).unwrap()));
                                } else {
                                    ts.push((string_to_fake_type(&*params[i].text_if_applicable).unwrap(), TypeID::None));
                                }
                            }
                        }
                    }

                    if ns.len() > 0 {
                        tmp_vars.push(Vec::new());
                        tmp_vars_cntr += 1;
                        for d in 0..ns.len() {
                            println!("{:?}, {}", tokens[i].text_if_applicable, i);
                            if ts[d].0 == TypeID::F32 || ts[d].0 == TypeID::F64 {
                                tmp_vars[tmp_vars_cntr].push((ns[d].clone(), TypeID::FloatLiteral, ts[d].0.clone(), ts[d].1.clone()));
                            } else {
                                tmp_vars[tmp_vars_cntr].push((ns[d].clone(), TypeID::IntegerLiteral, ts[d].0.clone(), ts[d].1.clone()));
                            }
                        }
                    } else {
                        tmp_vars.push(Vec::new());
                        tmp_vars_cntr += 1;
                    }

                    println!("pusghed to tmp_vars. it is now {:?}", tmp_vars);

                }
            }
        }
        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::FunctionName {
            let fn_name = tokens[i + 1].text_if_applicable.clone();
            let mut params : Vec<String> = Vec::new();
            let mut params_str = String::from("");
            let orig = i + 2;
            let mut cntr = 0;
            let mut fn_type = "NotAType".to_string();
            let mut fn_actual_out_type_tuple : (TypeID, TypeID) = (TypeID::None, TypeID::None);
            let mut consu = true;
            if tokens[i + 2].type_id != TypeID::Sentinel {
                while orig + cntr < tokens.len() && tokens[orig + cntr].type_id != TypeID::Sentinel {
                    if tokens[orig + cntr].type_id == TypeID::Ptr {
                        params.push(String::from("ptr"));
                    } else {
                        params.push(tokens[orig + cntr].text_if_applicable.clone());
                    }
                    cntr += 1;
                }
                if tokens[orig + cntr + 2].text_if_applicable == "noconsu" {
                    println!("YO DO NOTTTT CONSUME OJAY?!!?????????????!!!!!!!!!!!!!!!!!!!!!!!");
                    consu = false;
                }
                if tokens[i].text_if_applicable == "fn" {
                    for i in 0..params.len() {
                        if i < params.len() - 1 && i % 2 == 0 {
                            let tmp = params[i + 1].clone();
                            params[i + 1] = "%".to_string() + &*params[i];
                            params[i] = match &*tmp {
                                "f32" => String::from("float"),
                                "f64" => String::from("double"),
                                _ => tmp
                            };
                        }
                    }
                } else {
                    for i in 0..params.len() {
                        params[i] = match &*params[i] {
                            "f32" => String::from("float"),
                            "f64" => String::from("double"),
                            _ => params[i].clone()
                        };
                    }
                }
                println!("WHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA {}", tokens[i].text_if_applicable);
                print_string_vec(&params);
                if tokens[i].text_if_applicable == "fn" {
                    for (i, p) in params.iter().enumerate() {
                        if i % 2 == 0 && i > 0 {
                            params_str.push_str(&*(", ".to_string() + &*p));
                        } else {
                            params_str.push_str(&*(" ".to_string() + &*p));
                        }
                    }
                } else {
                    for (i, p) in params.iter().enumerate() {
                        if i == 0 {
                            params_str.push_str(&*p);
                        } else {
                            params_str.push_str(&*(", ".to_string() + &*p));
                        }
                    }
                }
            }
            if tokens[orig + cntr + 1].type_id == TypeID::Type || tokens[orig + cntr + 1].type_id == TypeID::Ptr {
                if tokens[orig + cntr + 1].type_id == TypeID::Ptr {
                    fn_type = String::from("ptr");
                } else {
                    fn_type = match &*tokens[orig + cntr + 1].text_if_applicable {
                        "f32" => String::from("float"),
                        "f64" => String::from("double"),
                        _ => tokens[orig + cntr + 1].text_if_applicable.clone()
                    };
                }
            } else {
                println!("Error: Return type not specified for function `{}`", &*fn_name);
                exit(1);
            }
            fn_actual_out_type_tuple =
                if tokens[orig + cntr + 1].type_id == TypeID::Type {
                    (string_to_fake_type(&*tokens[orig + cntr + 1].text_if_applicable).unwrap(), TypeID::None)
                } else {
                    (TypeID::Ptr, string_to_fake_type(&*tokens[orig + cntr + 1].text_if_applicable).unwrap())
                };
            if tokens[i].text_if_applicable == "fn" {
                write.push_str(&*("define ".to_string() + &*fn_type + " @" + &*fn_name + "(" + &*params_str + ") {\n"));
                func_names.push((fn_name.clone(), params.len() / 2, consu, fn_actual_out_type_tuple));
            } else {
                write.push_str(&*("declare ".to_string() + &*fn_type + " @" + &*fn_name + "(" + &*params_str + ")\n"));
                func_names.push((fn_name.clone(), params.len(), consu, fn_actual_out_type_tuple));
            }
            if string_to_fake_type(&*fn_type).is_none() {
                println!("Error: output type of function `{}` is invalid", &*fn_name);
            }
            println!("made a function {}, {}, {}", &*fn_name, params.len() / 2, consu);

            if fn_type == "void" {
                func_should_void_return = true;
            }
        }

        if i < tokens.len() - 3 && tokens[i].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::VariableName {
            let var_name = tokens[i + 1].text_if_applicable.clone();
            let mut var_type = "NotAType".to_string();
            if tokens[i + 3].type_id == TypeID::Type {
                var_type = match &*tokens[i + 3].text_if_applicable {
                    "f32" => String::from("float"),
                    "f64" => String::from("double"),
                    _ => tokens[i + 3].text_if_applicable.clone()
                };
            }
            if tokens[i + 3].type_id == TypeID::Ptr {
                var_type = "ptr".to_string();
                var_type = "ptr".to_string();
            }
            write.push_str(&*("%".to_string() + &*var_name + " = alloca " + &*var_type + "\n"));
        }

        if tokens[i].type_id == TypeID::Sentinel && tokens[i].text_if_applicable == "}" {
            if func_should_void_return {
                write.push_str("ret void\n");
                func_should_void_return = false;
            }
            write.push_str("}\n");
            tmp_vars.pop();
            tmp_vars_cntr -= 1;
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
                println!("There too much shit coding-wuhhhh. {:?}", names);
                if j > 0 && tokens[j].type_id == TypeID::FunctionName && tokens[j - 1].type_id != TypeID::FunctionDeclaration {
                    println!("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
                    for a in 0..func_names.len() {
                        if func_names[a].0 == tokens[j].text_if_applicable {
                            let name = func_names[a].0.clone();
                            let inp_count = func_names[a].1;
                            let consu = func_names[a].2;
                            let output_type = func_names[a].3.clone();

                            if names.len() < inp_count {
                                //println!("{} < {}", names.len(), inp_count);
                                println!("Error: Not enough inputs supplied for function `{}`", &*name);
                                exit(1);
                            }
                            let mut inp : String = String::from("");
                            let mut inp_vec = Vec::new();
                            let mut incrementer = 1;
                            for b in 0..inp_count {
                                inp_vec.push(names[names.len() - incrementer].clone());
                                incrementer += 1;
                            }
                            inp_vec.reverse();
                            for c in 0..inp_vec.len() {
                                if c == inp_vec.len() - 1 {
                                    inp.push_str(&*(type_as_string(&inp_vec[c].2).to_string() + " %" + &*inp_vec[c].0));
                                } else {
                                    inp.push_str(&*(type_as_string(&inp_vec[c].2).to_string() + " %" + &*inp_vec[c].0 + ", "));
                                }
                            }
                            let out_name = get_next_rand_string();
                            if output_type.0 == TypeID::Void {
                                write.push_str(&*("call ".to_string() + "void @" + &*name + "(" + &*inp + ")\n"));
                            } else {
                                if output_type.0 == TypeID::Ptr {
                                    write.push_str(&*("%".to_string() + &*out_name + " = call ptr @" + &*name + "(" + &*inp + ")\n"));
                                } else {
                                    write.push_str(&*("%".to_string() + &*out_name + " = call " + type_as_string(&output_type.0) + " @" + &*name + "(" + &*inp + ")\n"));
                                }
                            }

                            if consu {
                                println!("YOOOOOOOO I ATE");
                                for _ in 0..(inp_count) {
                                    names.pop();
                                }
                            }

                            if output_type.0 != TypeID::Void {
                                if output_type.0 == TypeID::Ptr {
                                    names.push((out_name.clone(), TypeID::IntegerLiteral, TypeID::Ptr, output_type.1.clone()));
                                } else {
                                    if output_type.0 == TypeID::F32 || output_type.0 == TypeID::F64 {
                                        names.push((out_name.clone(), TypeID::FloatLiteral, output_type.0.clone(), TypeID::None));
                                    } else {
                                        names.push((out_name.clone(), TypeID::IntegerLiteral, output_type.0.clone(), TypeID::None));
                                    }
                                }
                            }
                        }
                    }
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
                    //names.pop();

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
                    names.clear();
                }
                if tokens[j].text_if_applicable == "else" {
                    write.push_str(&*("br label %".to_string() + &*labels[labels.len() - 1].2 + "\n"));
                    write.push_str(&*("\n".to_string() + &*labels[labels.len() - 1].1 + ":\n"));
                    names.clear();
                }
                if tokens[j].type_id == TypeID::If {
                    let cond = names[names.len() - 1].clone();     //TODO: you should check if latest name is a bool
                    let label1_name = get_next_rand_string();
                    let label2_name = get_next_rand_string();
                    let exit_name = get_next_rand_string();
                    write.push_str(&*("br i1 %".to_string() + &*cond.0 + ", label %" + &*label1_name + ", label %" + &*label2_name + "\n\n"));
                    labels.push((label1_name.clone(), label2_name.clone(), exit_name.clone()));
                    write.push_str(&*(label1_name.clone() + ":\n"));
                    names.clear();
                }
                if tokens[j].text_if_applicable == "->" {
                    if tokens[j + 1].type_id != TypeID::VariableName && tokens[j + 1].type_id != TypeID::Ret {
                        println!("Error: `{}` is not a variable or `ret`", &*tokens[j + 1].text_if_applicable);
                        exit(1);
                    }
                    let top = names[names.len() - 1].clone();
                    if tokens[j + 1].type_id == TypeID::Ret {
                        write.push_str(&*("ret ".to_string() + type_as_string(&top.2) + " %" + &*top.0 + "\n"));
                    } else {
                        if tokens[j + 1].fake_type == TypeID::Ptr {
                            write.push_str(&*("store ptr %".to_string() + &*top.0 + ", ptr %" + &*tokens[j + 1].text_if_applicable + "\n"));
                        } else {
                            write.push_str(&*("store ".to_string() + type_as_string(&top.2) + " %" + &*top.0 + ", " + type_as_string(&tokens[j + 1].fake_type) + "* %" + &*tokens[j + 1].text_if_applicable + "\n"));
                        }
                    }
                }
                if tokens[j].type_id != TypeID::BinaryOperator {
                    if tokens[j].text_if_applicable.chars().nth(0).is_some() && tokens[j].text_if_applicable.chars().nth(0).unwrap() == '~' {
                        println!("----level 1 {:?}", tmp_vars);
                        if tmp_vars.len() > 0 {
                            println!("----level 2");
                            for a in 0..tmp_vars[tmp_vars_cntr].len() {
                                let mut name : String = String::from("");
                                for (b, x) in tokens[j].text_if_applicable.chars().enumerate() {
                                    if b != 0 {
                                        name.push(x);
                                    }
                                }
                                if name == tmp_vars[tmp_vars_cntr][a].0 {
                                    println!("----level 3");
                                    names.push((name.clone(), TypeID::IntegerLiteral, tmp_vars[tmp_vars_cntr][a].2.clone(), tmp_vars[tmp_vars_cntr][a].3.clone()));
                                }
                            }
                        }
                    } else {
                        if tokens[j].type_id == TypeID::IntegerLiteral || tokens[j].type_id == TypeID::FloatLiteral {
                            let name = get_next_rand_string();
                            names.push((name.clone(), tokens[j].type_id.clone(), tokens[j].fake_type.clone(), TypeID::None));
                            println!("I pushed a {} which is a {} but actually {}", &name, type_as_string(&tokens[j].type_id), type_as_string(&tokens[j].fake_type));
                            let str = match tokens[j].fake_type {
                                TypeID::I32 => "%".to_string() + &*name + " = add i32 " + &*tokens[j].i32_if_applicable.to_string() + ", 0\n",
                                TypeID::I8 => "%".to_string() + &*name + " = add i8 " + &*tokens[j].i8_if_applicable.to_string() + ", 0\n",
                                TypeID::I64 => "%".to_string() + &*name + " = add i64 " + &*tokens[j].i64_if_applicable.to_string() + ", 0\n",
                                TypeID::I1 => "%".to_string() + &*name + " = add i1 " + &*tokens[j].text_if_applicable + ", 0\n",
                                TypeID::F32 => {
                                    let tmp_name = get_next_rand_string();
                                    write.push_str(&*("%".to_string() + &*tmp_name + " = fadd double " + &*tokens[j].text_if_applicable + ", 0.0\n"));
                                    "%".to_string() + &*name + " = fptrunc double %" + &*tmp_name + " to float\n"
                                },
                                TypeID::F64 => "%".to_string() + &*name + " = fadd double " + &*tokens[j].text_if_applicable + ", 0.0\n",
                                _ => "%".to_string() + &*name + " = add i32 " + &*tokens[j].i32_if_applicable.to_string() + ", 0\n"             //TODO: might wanna Option<> this stuff
                            };
                            write.push_str(&*str);
                        } else if tokens[j].type_id == TypeID::VariableName {
                            let name = get_next_rand_string();
                            if tokens[j].fake_type == TypeID::Ptr {
                                write.push_str(&*("%".to_string() + &*name + " = load ptr, ptr %" + &*tokens[j].text_if_applicable + "\n"));
                            } else {
                                write.push_str(&*("%".to_string() + &*name + " = load " + type_as_string(&tokens[j].fake_type) + ", " + type_as_string(&tokens[j].fake_type) + "* %" + &*tokens[j].text_if_applicable + "\n"));
                            }
                            if tokens[j].fake_type == TypeID::F32 || tokens[j].fake_type == TypeID::F64 {
                                names.push((name.clone(), TypeID::FloatLiteral, tokens[j].fake_type.clone(), tokens[j].second_fake_type.clone()));
                            } else {
                                names.push((name.clone(), TypeID::IntegerLiteral, tokens[j].fake_type.clone(), tokens[j].second_fake_type.clone()));
                            }
                        }
                    }
                } else { //it is binOp
                    if tokens[j].text_if_applicable == "+" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `+`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            println!("IJADFYAMIP I CAN TAKE IT ANYMORE");
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = add "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        } else {
                            println!("i can indeed take it anymore");
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = fadd "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "-" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `-`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = sub "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        } else {
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = fsub "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "*" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `*`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = mul "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        } else {
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = fmul "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "/" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `/`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = sdiv "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        } else {
                            write.push_str(&*("%".to_string() + &*name.to_string() + " = fdiv "));
                            write.push_str(&*(type_as_string(&value_1.2).to_string() + " %" + &*(value_1.0)));
                            write.push_str(&*(", %".to_string() + &*(value_2.0)));
                            write.push_str("\n");
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "rem" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `rem`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = srem " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = frem " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "==" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `==`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = icmp eq " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = fcmp oeq " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "!=" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `!=`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = icmp ne " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = fcmp one " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }
                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "&" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `&`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        write.push_str(&*("%".to_string() + &*name + " = and " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "|" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `|`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        write.push_str(&*("%".to_string() + &*name + " = or " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, value_1.2.clone(), TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "<" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `<`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = icmp slt " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = fcmp olt " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == "<=" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `<=`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = icmp sle " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = fcmp ole " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == ">" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `>`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = icmp sgt " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = fcmp ogt " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, TypeID::I1, TypeID::None));
                    }
                    if tokens[j].text_if_applicable == ">=" {
                        let name = get_next_rand_string();
                        if names.len() < 2 {
                            println!("Error: Not enough operands supplied to `>=`");
                            exit(1);
                        }
                        let value_1 = names[names.len() - 2].clone();
                        let value_2 = names[names.len() - 1].clone();

                        if value_1.2 != value_2.2 && value_1.1 == value_2.1 {
                            println!("Error: Incompatible types used in binary operator");
                            exit(1);
                        }
                        if fake_is_int(&value_1.2) {
                            write.push_str(&*("%".to_string() + &*name + " = icmp sge " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        } else {
                            write.push_str(&*("%".to_string() + &*name + " = fcmp oge " + type_as_string(&value_1.2) + " %" + &*(value_1.0) + ", %" + &*(value_2.0) + "\n"));
                        }

                        names.pop();
                        names.pop();
                        names.push((name.clone(), value_1.1, TypeID::I1, TypeID::None));
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

fn fake_is_int(inp : &TypeID) -> bool {
    match *inp {
        TypeID::I32 => true,
        TypeID::I64 => true,
        TypeID::I8 => true,
        _ => false
    }
}

fn fake_is_float(inp : &TypeID) -> bool {
    match *inp {
        TypeID::F32 => true,
        TypeID::F64 => true,
        _ => false
    }
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
        TypeID::F32 => "float",
        TypeID::F64 => "double",
        TypeID::Void => "void",
        TypeID::Ret => "Ret",
        TypeID::Operator => "Operator",
        TypeID::If => "If",
        TypeID::While => "While",
        TypeID::Ptr => "ptr",
        TypeID::PtrNotation => "PtrNotation",
        TypeID::Malloc => "Malloc",
        TypeID::GEP => "@",
        TypeID::AssignAtGEP => "<-",
        _ => "Unk"
    }
}

fn string_to_fake_type(inp : &str) -> Option<TypeID> {
    match inp {
        "i32" => Some(TypeID::I32),
        "i64" => Some(TypeID::I64),
        "i8" => Some(TypeID::I8),
        "i1" => Some(TypeID::I1),
        "f32" | "float" => Some(TypeID::F32),
        "f64" | "double" => Some(TypeID::F64),
        "void" => Some(TypeID::Void),
        _ => None
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
