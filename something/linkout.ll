; ModuleID = 'linkout.bc'
source_filename = "llvm-link"

@str1 = private unnamed_addr constant [16 x i8] c"greetings world\00"

define i32 @main() {
  %tmp = call i32 bitcast (i32 (i32)* @something to i32 ()*)()
  ret i32 %tmp
}

define i32 @something(i32 %inp) {
  %1 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @str1, i64 0, i64 0))
  %tmp = add i32 %inp, 1
  ret i32 %tmp
}

declare dso_local i32 @puts(i8*)
