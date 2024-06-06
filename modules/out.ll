declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i64)
declare void @free(ptr)

declare ptr @strdup(ptr)
declare ptr @itostr32(i32)
define void @main() {
%tmp1 = alloca ptr
%tmp2 = alloca ptr
%a1WqDlzOfF3eG8pMxkUwr3sjsbQBks = add i32 12000, 0
%UcGxjC15huOdNYN1zeGaAKIbk29nz3 = call ptr @itostr32(i32 %a1WqDlzOfF3eG8pMxkUwr3sjsbQBks)
store ptr %UcGxjC15huOdNYN1zeGaAKIbk29nz3, ptr %tmp1
%iA8rVJVXraUWcPgrLhjWYOu4609eqp = load ptr, ptr %tmp1
%XM2TfZTvXeXRkkSgd3QKh3Ui29yFZu = call ptr @strdup(ptr %iA8rVJVXraUWcPgrLhjWYOu4609eqp)
store ptr %XM2TfZTvXeXRkkSgd3QKh3Ui29yFZu, ptr %tmp2
%BPFk3ZMhwH8na1T2NhsVNfMsgzaq7s = load ptr, ptr %tmp2
%ahd7mP9yHOskM8PGP0OB49weEvDyfp = load ptr, ptr %tmp1
call void @free(ptr %ahd7mP9yHOskM8PGP0OB49weEvDyfp)
%Bel6fv0ePX300xWT5o8yIsj2JY3rnB = load ptr, ptr %tmp2
call i32 @puts(ptr %Bel6fv0ePX300xWT5o8yIsj2JY3rnB)
call void @free(ptr %Bel6fv0ePX300xWT5o8yIsj2JY3rnB)
ret void
}
