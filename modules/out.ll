declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i32)
declare void @free(ptr)

declare i32 @factorial32(i32)
declare ptr @itostr32(i32)
define void @main() {
%UGzMf4veGdU2lf91PvMsUYv8pDpq79 = add i32 12000, 0
%rG6VVWglrqu4ZAJDErQWUHX80ofMff = call ptr @itostr32(i32 %UGzMf4veGdU2lf91PvMsUYv8pDpq79)
call i32 @puts(ptr %rG6VVWglrqu4ZAJDErQWUHX80ofMff)
call void @free(ptr %rG6VVWglrqu4ZAJDErQWUHX80ofMff)
ret void
}
