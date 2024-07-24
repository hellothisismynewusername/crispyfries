Whitespace is very important. Only certain characters like `;` and `^` are exceptions.

`do` blocks are essentially the places where most stuff happens. They take place inside of functions.

In a function, you can define variables like this:
`let var_name : type`
You cannot define variables inside a `do` block or outside a function. Also, try to avoid naming variables the same as much as you can.

Inside of `do` blocks, starting with `do` and ending with `;`, you can do things, including returning. for example:  
```
let x : i32    
do 4 i32 -> x;
```
Value literals should always have their type after them.  
The `->` performs assignment for variables with the top item on the stack, and they leave the stack unchanged so you can use this for saving intermediate values or chaining assignments like this:    
`do 10 i32 -> x -> y`  
The values for x and y will both be 10.  
You can return by assigning to ret, but do not continue using the stack after you return unless you plan on returning at another time later.

A `do` block does not introduce another level of scope, but `while` does.

inside of do blocks you can perform if statements like this:  
```
do  
    <condition> if  
    	<actions to perform if condition met>  
    else  
    	<actions to perform if condition is not met>  
    endif
;
```  
(the `else` is mandatory).  
If you return inside an `if`, be sure to also include a return after the `if` even if the `else` also has a return.  
`if` does not resolve to any value, so doing this:  
```
let out : i8  
let out2 : i8  
do  
    true if  
    	0 i8 -> out  
    else  
    	1 i8 -> out  
    endif -> out2
;
```  
will always assign 1 to out2 despite the condition.

A `while` head is the keyword `while` followed by a complete `do` block that states the condition. Example:
```
let var : i32
while do var 0 i32 !=;
    do
        var 10 i32 / -> var
    ;
endwhile
```

Define a pointer by putting `^` after a type in a variable declaration. For example, `let foo : i64^` declares an i64 pointer and binds it to `foo`. A pointer to a pointer (aka multidimensional pointers) cannot be made.

`malloc` takes one parameter, the amount of bytes to allocate. Note that `malloc` does not require a `dec malloc i64...`. Example:
```
let outp : char^
do 4 i32 malloc -> outp;
```

A type followed by `sizeof` gives the size of the type in bytes.
```
let outp : char^
do i32 sizeof malloc -> outp;
```

Print a `char^` using `puts` in a `do` block. Example:
```
let a : char^
do
    4 i64 malloc -> a
    
    a 0 i32 @ 'h' <-
    /* '[character]' is shorthand for the ASCII value of the character followed by the type char */
    a 1 i32 @ 'i' <-
    /*
    <- essentially means "put this value at the top of the stack to the location pointed to by the pointer at the next level down the stack". Note that the "stack" being referred to is not the stack memory, but the stack of execution.
    */
    a 2 i32 @ ' ' <-
    a 3 i32 @ 0 char <-
    
    a puts
;
```

Index in a pointer using `@`, inputting first the pointer and then the index as an `i32` or `i64`. Use `#` to dereference a pointer. Example:
```
let a : char^
do
    1 i32 malloc -> a
    /* a 0 i32 @ evaluates to a char^ pointing to the first item in a */
    a 0 i32 @ 'f' <- /* 
;
```

Create functions using this syntax:
`fn [function name] [parameter 1 name] [parameter 1 type]... : [return type] ["noconsu"/""] {} `
An example for a function called `fubarpaz` that takes an `i32` and a `bool`, returns a `char`, and does not consume its inputs:
`fn fubarpaz parameter_1 i32 parameter_2 bool : char noconsu`

In functions with parameters, you can use them by putting a tilde `~` in front of them. However, they are not re-assignable in the function. Example:
```
fn times_two inp i32 : i32 {
	do
		~inp 2 i32 * -> ret
	;
}

/* not allowed! */
fn times_two inp i32 : void {
	do
		~inp 2 i32 * -> ~inp
	;
}
```

To declare functions that will be linked using `llvm-link`, use this syntax:
`dec [parameter 1 type]... : [return type] ["noconsu"/""]`
Example for `strcat` in `modules/std.ll` that takes in two `char^`s and returns a `char^`:
`dec strcat char^ char^ : char^`

__Evaluation stack procedures (these can be used in `do` blocks and work the same as they do in Forth:__
 - swap: Swaps the top two items on the evaluation stack.
 - dup: Duplicates the top item on the evaluation stack.
 - over: Duplicates the second-to-top item on the evaluation stack.
 - rot: Moves the 3rd item from the top of the evaluation stack to the top.
 - drop: Pops the top item on the evaluation stack.


__More information:__
-
_All types:_
- `bool` (`i1`)
- `char` (`i8`)
- `i32`
- `i64`
- `f32`
- `f64`
- `void`
All types besides `void` have a pointer type as well, for example `i32^` is a pointer to an `i32`

__Stuff you use in a `do` block__

_Binary Operators:_
 - `+`
 - `-`
 - `*`
 - `/`
 - `rem` (it's _not_ `mod`/`%`)
Bitwise:
 - `&`
 - `|`
Comparisons:
 - `==` (a single `=` is actually never used in this language, but for the sake of habits, it's like this)
 - `!=`
 - `<`
 - `<=`
 - `>`
 - `>=`
All Binary Operators consume both parameters

_Other:_
 - `!` (negation, also don't forget this is postfix so put it after the bool with a space)
 - `malloc`: Input the amount of bytes to be allocated with an i32/i64, outputs a pointer. Consumes both parameters.
 - `free`: Input the pointer to the memory to be freed, outputs nothing. Consumes.
 - `puts`: Input the char^ to print, outputs nothing. Does _not_ consume.
 - `->`: Assigns the value on the left side to the variable on the right side. Consumes, but it essentially doesn't consume because of the nature of the language. Assign to `ret` to return the value.
 - `<-`: Puts the value (top of the stack) into the location pointed to by the pointer (2nd to top of the stack). Consumes only the value to be assigned, but not the pointer.
 - `#`: Dereference. Input the pointer, outputs the value stored at the location. Consumes.
 - `@`: Index into a pointer. Input a pointer and the index (`i32`/`i64`), outputs a pointer to the item at the index. Consumes both inputs.
 - `sizeof`: Gets the size of a type in bytes. For example `i32 sizeof` evaluates to 4.
 - `if`: Syntax is`[condition that evaluates to a bool] if .. else .. endif`
Forth-likes:
 - `swap`: Swaps the top two items on the evaluation stack.
 - `dup`: Duplicates the top item on the evaluation stack.
 - `over`: Duplicates the second-to-top item on the evaluation stack.
 - `rot`: Moves the 3rd item from the top of the evaluation stack to the top.
 - `drop`: Pops the top item on the evaluation stack.
All forth-likes don't consume. They just shuffle around with the evaluation stack.

__Stuff you use in a function but not a `do` block:__
 - `let`: `let [variable name] : [type]`
 - `while`: `while do [condition, must evaluate to a bool];  ..  endwhile`