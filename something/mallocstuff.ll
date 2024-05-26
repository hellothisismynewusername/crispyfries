declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i32)

define i32 @main() {

	%blah = alloca ptr
	%smthn = call ptr @malloc(i32 2)
	store ptr %smthn, ptr %blah
	%a = load ptr, ptr %blah
	%a.0 = getelementptr inbounds i8, ptr %a, i32 0
	store i8 67, ptr %a.0
	%b = load ptr, ptr %blah
	%b.0 = getelementptr inbounds i8, ptr %b, i32 1
	store i8 0, ptr %b.0
	%c = load ptr, ptr %blah
	call i32 @puts(ptr %c)

	%p = call ptr @malloc(i32 3)
	%pos1 = getelementptr inbounds i8, ptr %p, i32 0
	store i8 65, ptr %pos1
	%pos2 = getelementptr inbounds i8, ptr %p, i32 1
	store i8 66, ptr %pos2
	%pos3 = getelementptr inbounds i8, ptr %p, i32 2
	store i8 0, ptr %pos3

	call i32 @puts(ptr %p)

	ret i32 0
}
