use std::any::Any;
use std::cmp::PartialEq;
use std::fs::File;
use std::io::Read;
use std::process::exit;

#[derive(PartialEq)]
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
    RemoveMe
}

struct Token {
    text_if_applicable : String,
    i64_if_applicable : i64,
    i32_if_applicable : i32,
    i8_if_applicable : i8,
    type_id : TypeID,
}

impl Token {
    fn new_with_type_and_text(ty : TypeID, inp : String) -> Token {
        Token {
            text_if_applicable: inp,
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: ty
        }
    }
    fn new_with_i64(inp : i64) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: inp,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: TypeID::I64
        }
    }
    fn new_with_i32(inp : i32) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: inp,
            i8_if_applicable: 0,
            type_id: TypeID::I32
        }
    }
    fn new_with_i8(inp : i8) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: inp,
            type_id: TypeID::I8
        }
    }
    fn new_with_type(inp : TypeID) -> Token {
        Token {
            text_if_applicable: "".to_string(),
            i64_if_applicable: 0,
            i32_if_applicable: 0,
            i8_if_applicable: 0,
            type_id: inp
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
                Token::new_with_type_and_text(TypeID::BinaryOperator, x)
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

    let mut var_names : Vec<String> = Vec::new();

    for i in 0..tokens.len() {
        if i > 0 && i < tokens.len() - 1 {
            if tokens[i].type_id == TypeID::UnknownToken {
                if tokens[i - 1].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::FunctionName;
                }
                if tokens[i - 1].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::VariableName;
                    var_names.push(tokens[i].text_if_applicable.clone());
                }
            }
        }
        if i < tokens.len() - 1 {
            if tokens[i].type_id == TypeID::IntegerLiteral && tokens[i + 1].type_id == TypeID::Type {
                let mut type_id = TypeID::UnknownToken;
                if tokens[i + 1].text_if_applicable == "i64" {
                    type_id = TypeID::I64;
                }
                if tokens[i + 1].text_if_applicable == "i32" {
                    type_id = TypeID::I32;
                }
                if tokens[i + 1].text_if_applicable == "i8" {
                    type_id = TypeID::I8;
                }
                tokens[i].type_id = type_id;
            }
        }
    }

    for i in 0..tokens.len() {
        for name in &var_names {
            if &tokens[i].text_if_applicable == name {
                tokens[i].type_id = TypeID::VariableName;
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

        // if i > 1 && tokens[i].type_id == TypeID::BinaryOperator &&
        //     (tokens[i - 2].type_id == TypeID::IntegerLiteral || tokens[i - 2].type_id == TypeID::VariableName) &&
        //     (tokens[i - 1].type_id == TypeID::IntegerLiteral || tokens[i - 1].type_id == TypeID::VariableName) {
        //
        //     write.push_str(&*("%".to_string() ))
        // }
    }
    println!("{}", write);

    let mut write_file = File::create("out.ll").expect("Couldn't make write file");

}

fn print_string_vec(inp : &Vec<String>) {
    print!("[");
    for i in inp {
        print!("{}, ", i);
    }
    print!("]\n");
}

fn print_tokens(inp : &Vec<Token>) {
    print!("[\n");
    for i in inp {
        let type_text = match i.type_id {
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
            TypeID::I32 => "I32",
            TypeID::Ret => "Ret",
            _ => "IDK"
        };
        print!("(text: {}, type: {}, i32: {})\n", i.text_if_applicable, type_text, i.i32_if_applicable);
    }
    print!("]\n");
}