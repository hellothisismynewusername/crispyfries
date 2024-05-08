declare dso_local i32 @puts(i8*)
declare dso_local i32 @putchar(i8)

@str1 = private unnamed_addr constant [16 x i8] c"greetings world\00"
@str2 = private unnamed_addr constant [14 x i8] c"goodbye world\00"

define i32 @main(){
	entry:
		call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str1, i64 0, i64 0))
		call i32 @putchar(i8 65)
		call i32 @putchar(i8 66)
		ret i32 0
}
