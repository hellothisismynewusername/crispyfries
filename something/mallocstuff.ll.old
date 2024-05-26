declare dso_local i32 @puts(i8*)
declare dso_local i32 @putchar(i8)
declare i8* @malloc(i32)

define i32 @main() {
	%p = call i8* @malloc(i32 3)
	store i8 65, i8* %p
	%p.0 = ptrtoint i8* %p to i64
	%p.1 = add i64 1, %p.0
	%tmp = inttoptr i64 %p.1 to i8*
	store i8 66, i8* %tmp
	%tmp.0 = ptrtoint i8* %tmp to i64
	%tmp.1 = add i64 1, %tmp.0
	%h = inttoptr i64 %tmp.1 to i8*
	store i8 0, i8* %h
	call i32 @puts(i8* %p)
	ret i32 0
}
