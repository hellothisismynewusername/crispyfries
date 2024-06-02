declare dso_local i32 @puts(ptr)

declare i32 @something(i32)

define i32 @main() {
	%tmp = call i32 @something(i32 5)
	ret i32 %tmp
}