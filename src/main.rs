use std::cmp::PartialEq;
use std::fs::File;
use std::io::Read;
use std::process::exit;

#[derive(PartialEq)]
enum TypeID {
    I32,
    I64,
    I8,
    Operator,
    Sentinel,
    Type,
    StringLiteral,
    FunctionDeclaration,
    VariableDeclaration,
    UnknownToken,
    EOF,
    FunctionName,
    VariableName,
    Ret
}

struct Token {
    text_if_applicable : String,
    i64_if_applicable : i64,
    i32_if_applicable : i32,
    i8_if_applicable : i8,
    type_id : TypeID
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

    let mut tokens : Vec<Token> = buf.into_iter().map(|x| {
        if x == ";" {
            Token::new_with_type_and_text(TypeID::Sentinel, x)
        } else if x == "fn" {
            Token::new_with_type(TypeID::FunctionDeclaration)
        } else if x == "let" {
            Token::new_with_type(TypeID::VariableDeclaration)
        } else if x == "+" {
            Token::new_with_type_and_text(TypeID::Operator, x)
        } else if x == "->" {
            Token::new_with_type_and_text(TypeID::Operator, x)
        } else if x == ":" {
            Token::new_with_type_and_text(TypeID::Sentinel, x)
        } else if x == "{" {
            Token::new_with_type_and_text(TypeID::Sentinel, x)
        } else if x == "}" {
            Token::new_with_type_and_text(TypeID::Sentinel, x)
        } else if x == "ret" {
            Token::new_with_type(TypeID::Ret)
        } else if x.parse::<i8>().is_ok() {
            Token::new_with_i8(x.parse::<i8>().unwrap())
        } else if x.parse::<i32>().is_ok() {
            Token::new_with_i32(x.parse::<i32>().unwrap())
        } else if x.parse::<i64>().is_ok() {
            Token::new_with_i64(x.parse::<i64>().unwrap())
        } else {
            Token::new_with_type_and_text(TypeID::UnknownToken, x)
        }

    }).collect();
    tokens.push(Token::new_with_type(TypeID::EOF));

    for i in 0..tokens.len() {
        if i > 0 && i < tokens.len() - 1 {
            if tokens[i].type_id == TypeID::UnknownToken {
                if tokens[i - 1].type_id == TypeID::FunctionDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::FunctionName
                }
                if tokens[i - 1].type_id == TypeID::VariableDeclaration && tokens[i + 1].type_id == TypeID::Sentinel {
                    tokens[i].type_id = TypeID::VariableName
                }
            }
        }
    }

    let tmp : Vec<String> = tokens.into_iter().map(|x| {
        x.text_if_applicable
    }).collect();
    print_string_vec(&tmp);
}

fn print_string_vec(inp : &Vec<String>) {
    print!("[");
    for i in inp {
        print!("{}, ", i);
    }
    print!("]\n");
}