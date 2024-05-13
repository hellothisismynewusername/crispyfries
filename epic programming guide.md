Whitespace is very important

Types:  
i64  
i32  
i8

define functions:  
`fn func_name : type`

define variables inside of functions:  
`let var_name : type`

inside of `do` blocks, starting with `do` and ending with `;`, you can do things, including returning. for example:  
```let x : i32    
do 4 i32 -> x;```  
integer literals should always have their type after them.  
The `->` performs assignment for variables with the top item on the stack, and they leave the stack unchanged so you can use this for saving intemediate values or chaining assignments like this:    
`do 10 i32 -> x -> y`  
The values for x and y will both be 10.  
You can return by assigning to ret, but do not continue using the stack after you return unless you plan on returning at another time later.

inside of do blocks you can perform if statements like this:  
```do  
<condition> if  
	<actions to perform if condition met>  
else  
	<actions to perform if condition is not met>  
endif;```  
(the `else` is mandatory).  
If you return inside an `if`, be sure to also include a return after the `if` even if the `else` also has a return.  
`if` does not resolve to any value, so doing this:  
```let out : i8  
let out2 : i8  
do  
true if  
	0 i8 -> out  
else  
	1 i8 -> out  
endif -> out2```  
will always assign 1 to out2 despite the condition.