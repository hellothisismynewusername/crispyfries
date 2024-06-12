declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i64)
declare void @free(ptr)

define i32 @factorial32( i32 %inp) {
%a9htwt20TV1kJMSz68me1GiW02MyEi = add i32 1, 0
%PFqIybJygoRMZ8nFLs4fhpbgmGm6qW = icmp eq i32 %inp, %a9htwt20TV1kJMSz68me1GiW02MyEi
br i1 %PFqIybJygoRMZ8nFLs4fhpbgmGm6qW, label %JcksdWSe7W3h5rE9lnpeQKk63zqmJy, label %KrtDTmaLUdsX0vxABL3fpP6IBYY118

JcksdWSe7W3h5rE9lnpeQKk63zqmJy:
%aqK7XbR2KjBHbmKDGlAgne9a2Dlq4h = add i32 1, 0
ret i32 %aqK7XbR2KjBHbmKDGlAgne9a2Dlq4h
br label %aFsAqhbn8cPmBUpawN3tTsP00fiJuP

KrtDTmaLUdsX0vxABL3fpP6IBYY118:
%hPcW20LPeBKOetAvQEHNDB6uxyrTLA = add i32 1, 0
%L4rPaFaGBzu4xruDwiqmYkUhlXaU4O = sub i32 %inp, %hPcW20LPeBKOetAvQEHNDB6uxyrTLA
%ahsrykS6uiLpYOZjAkkatJEdH8s1yx = call i32 @factorial32(i32 %L4rPaFaGBzu4xruDwiqmYkUhlXaU4O)
%aufHZ3hahc9YmkKBrOLDIx1aRbkJvu = mul i32 %inp, %ahsrykS6uiLpYOZjAkkatJEdH8s1yx
ret i32 %aufHZ3hahc9YmkKBrOLDIx1aRbkJvu
br label %aFsAqhbn8cPmBUpawN3tTsP00fiJuP

aFsAqhbn8cPmBUpawN3tTsP00fiJuP:
%JoT3e47JkXIqxKHIBawSUpmvY3qZ1f = add i32 -1, 0
ret i32 %JoT3e47JkXIqxKHIBawSUpmvY3qZ1f
}
define i64 @factorial64( i64 %inp) {
%iU5vRgC107k5Hye2MXHrh9GLbAGAru = add i64 1, 0
%CYrMEbKzrcaAXe3oBhn0nYdkbK3iWh = icmp eq i64 %inp, %iU5vRgC107k5Hye2MXHrh9GLbAGAru
br i1 %CYrMEbKzrcaAXe3oBhn0nYdkbK3iWh, label %H99nOOy9b6fnWKpnnSneQn5JUysAoZ, label %YGJNpgZ71FHZuYShWigGcnSfKFpFNo

H99nOOy9b6fnWKpnnSneQn5JUysAoZ:
%uNgKqB6LxCnYIkiVMdNxILGEWqea3e = add i64 1, 0
ret i64 %uNgKqB6LxCnYIkiVMdNxILGEWqea3e
br label %UD9JJrx0BL5vC6bOsnlmZnJOYrwF8V

YGJNpgZ71FHZuYShWigGcnSfKFpFNo:
%beHRTTe0WMc5D3iJL2LdeywrZu95Xb = add i64 1, 0
%gmNPv9ppbI6q4bql7OFljRPRHzZ62a = sub i64 %inp, %beHRTTe0WMc5D3iJL2LdeywrZu95Xb
%eW5Uyep6UxJwaIIv58kARPhCG5BNSq = call i64 @factorial64(i64 %gmNPv9ppbI6q4bql7OFljRPRHzZ62a)
%wS0V7wo7f2wG7g1SdZhmCLe92GwNzm = mul i64 %inp, %eW5Uyep6UxJwaIIv58kARPhCG5BNSq
ret i64 %wS0V7wo7f2wG7g1SdZhmCLe92GwNzm
br label %UD9JJrx0BL5vC6bOsnlmZnJOYrwF8V

UD9JJrx0BL5vC6bOsnlmZnJOYrwF8V:
%o0hfRFCRDdRKW9tuf3ClLgOcz6rR8W = add i64 -1, 0
ret i64 %o0hfRFCRDdRKW9tuf3ClLgOcz6rR8W
}
define i8 @itoc32( i32 %inp0) {
%outpu = alloca i8
%GuaRg9EUKrULd7y0FaRJB5jYzv2Hzm = add i32 0, 0
%OjaiGK8l2ZOhxhgSuDnNLxr62Y1yvI = icmp eq i32 %inp0, %GuaRg9EUKrULd7y0FaRJB5jYzv2Hzm
br i1 %OjaiGK8l2ZOhxhgSuDnNLxr62Y1yvI, label %DEEYxujuBwZUcIQVto5v9sp613bABi, label %K6l0LcEIvZ5PPADi9wnoZG94Q10cx3

DEEYxujuBwZUcIQVto5v9sp613bABi:
%WuEeZYTmiCP4wigWtrNpYLVL8TT9OG = add i8 48, 0
store i8 %WuEeZYTmiCP4wigWtrNpYLVL8TT9OG, i8* %outpu
%adWxgPGtg7LrJ5Dl2j3Ce8xn45HJCO = load i8, i8* %outpu
br label %uqLf4vOpbrSQH1UQY2zPbyezonWbxT

K6l0LcEIvZ5PPADi9wnoZG94Q10cx3:
br label %uqLf4vOpbrSQH1UQY2zPbyezonWbxT

uqLf4vOpbrSQH1UQY2zPbyezonWbxT:
%kYU8X9xHAN8hEGUs5eOWpnjtEYiF6m = add i32 1, 0
%rvYaNYsqg96EKJ2reu4Co0YY9kTAvb = icmp eq i32 %inp0, %kYU8X9xHAN8hEGUs5eOWpnjtEYiF6m
br i1 %rvYaNYsqg96EKJ2reu4Co0YY9kTAvb, label %O4EqmGdhK73F0lJlop2y7llOWcH1cl, label %TWreuH2oI2uNlqIdXAzDKaUFjGptoF

O4EqmGdhK73F0lJlop2y7llOWcH1cl:
%aX5dI1ShvWXSBVUBY1i4Ibm7L01RCq = add i8 49, 0
store i8 %aX5dI1ShvWXSBVUBY1i4Ibm7L01RCq, i8* %outpu
%aR3fXiBd6uu0huhEufjfrfjOGfS4Id = load i8, i8* %outpu
br label %aYcOI1twUwaxXrGSLFF0YP5mukSXPk

TWreuH2oI2uNlqIdXAzDKaUFjGptoF:
br label %aYcOI1twUwaxXrGSLFF0YP5mukSXPk

aYcOI1twUwaxXrGSLFF0YP5mukSXPk:
%aNyt92wncQngkeAq38hrSHBeLTYN4O = add i32 2, 0
%tt2krlrfgwH4nNwWrhbwWJ5OgnjUf4 = icmp eq i32 %inp0, %aNyt92wncQngkeAq38hrSHBeLTYN4O
br i1 %tt2krlrfgwH4nNwWrhbwWJ5OgnjUf4, label %nNzw36pwBkKYmxyg7VgUwsitRvnc1z, label %vBdmzACUd2r01XXUrievcdXQumgknv

nNzw36pwBkKYmxyg7VgUwsitRvnc1z:
%Z7PP3MExVP7GWs6tpFlQDd5bxcTHOO = add i8 50, 0
store i8 %Z7PP3MExVP7GWs6tpFlQDd5bxcTHOO, i8* %outpu
%WLA5KvG1PtDZKGExcjsrcG3d8O35XG = load i8, i8* %outpu
br label %F0ad4dmQLjDhhgNRu11GsjDVRm3xKJ

vBdmzACUd2r01XXUrievcdXQumgknv:
br label %F0ad4dmQLjDhhgNRu11GsjDVRm3xKJ

F0ad4dmQLjDhhgNRu11GsjDVRm3xKJ:
%aFmDMVlKphlgHBjP7LJOxkIB7LJQtD = add i32 3, 0
%z3XGGEhIf8GDpaRTew952zc7LS3HtY = icmp eq i32 %inp0, %aFmDMVlKphlgHBjP7LJOxkIB7LJQtD
br i1 %z3XGGEhIf8GDpaRTew952zc7LS3HtY, label %EnDZH9bw7A89wtp95YX2V2nnJoXrly, label %E3jDRPWgy2BclLbzRmXF3CbCopLqB4

EnDZH9bw7A89wtp95YX2V2nnJoXrly:
%vNLZ4tE1NXIWpHQXX0jDwwzj7qQyjM = add i8 51, 0
store i8 %vNLZ4tE1NXIWpHQXX0jDwwzj7qQyjM, i8* %outpu
%STmwNJkTZIip2pvyMswul8ZuMecqVz = load i8, i8* %outpu
br label %lhHttlLR61MybCsCO2FKaXTl4siml9

E3jDRPWgy2BclLbzRmXF3CbCopLqB4:
br label %lhHttlLR61MybCsCO2FKaXTl4siml9

lhHttlLR61MybCsCO2FKaXTl4siml9:
%Fh5URPdzTyLt7OQUCS2v79xa0hTUmo = add i32 4, 0
%IQLwH1QP0LpnBzbbVmg7Jtg31zngkU = icmp eq i32 %inp0, %Fh5URPdzTyLt7OQUCS2v79xa0hTUmo
br i1 %IQLwH1QP0LpnBzbbVmg7Jtg31zngkU, label %FgeVA9vqNMS84wlhOxBkmVapR0TJvO, label %Xs4TSeTlEtiq1Chj9S7IW5pGiRIBf4

FgeVA9vqNMS84wlhOxBkmVapR0TJvO:
%aRCRjeDXWMeqhUK6Rl8p9HSDpct6MY = add i8 52, 0
store i8 %aRCRjeDXWMeqhUK6Rl8p9HSDpct6MY, i8* %outpu
%MfmUbZvvSNJ6ylXYPVtErGIcfsOaAe = load i8, i8* %outpu
br label %yMs2TJ64QorNbW6mG62e65wCFD6odZ

Xs4TSeTlEtiq1Chj9S7IW5pGiRIBf4:
br label %yMs2TJ64QorNbW6mG62e65wCFD6odZ

yMs2TJ64QorNbW6mG62e65wCFD6odZ:
%ETfufcMQHAHBDtlCl0LmIBYJaQZTUp = add i32 5, 0
%KiNggmC90k3X6g7nyvYSyxUOnA9Nyc = icmp eq i32 %inp0, %ETfufcMQHAHBDtlCl0LmIBYJaQZTUp
br i1 %KiNggmC90k3X6g7nyvYSyxUOnA9Nyc, label %dowVu0l0r0znXshKBav4EltBJq0WpG, label %en69ZJx6rgeFAIhhLSkBm61aVGOAP4

dowVu0l0r0znXshKBav4EltBJq0WpG:
%A248R38NeBryaPVAWFL0HO940iimFn = add i8 53, 0
store i8 %A248R38NeBryaPVAWFL0HO940iimFn, i8* %outpu
%AQ908TkxTH4X935HLTHzSYaxFOmJ83 = load i8, i8* %outpu
br label %RD7h5jWm6cfeB8O0F7ScHdqN1fa8Dl

en69ZJx6rgeFAIhhLSkBm61aVGOAP4:
br label %RD7h5jWm6cfeB8O0F7ScHdqN1fa8Dl

RD7h5jWm6cfeB8O0F7ScHdqN1fa8Dl:
%ou9QbZVRsgGapd2wuJUzuB9Jo0lcbQ = add i32 6, 0
%hKQo5ud8bDtVrXbTOT7EjEweH2EXZE = icmp eq i32 %inp0, %ou9QbZVRsgGapd2wuJUzuB9Jo0lcbQ
br i1 %hKQo5ud8bDtVrXbTOT7EjEweH2EXZE, label %Mc4D7pHu3ZIgl3mkzHa5bOi3xynglJ, label %UaHbdWzg2YlOlLiAYOuF48tcMXJ1Hs

Mc4D7pHu3ZIgl3mkzHa5bOi3xynglJ:
%rD9pf7mfHK9rAjP3IG4uHUQz2UJhhL = add i8 54, 0
store i8 %rD9pf7mfHK9rAjP3IG4uHUQz2UJhhL, i8* %outpu
%bWo6xqIJvUQ46lgRjplFevDK3yIFQ9 = load i8, i8* %outpu
br label %cW3qlr9sixksnKWzfViqKSoalMVWoc

UaHbdWzg2YlOlLiAYOuF48tcMXJ1Hs:
br label %cW3qlr9sixksnKWzfViqKSoalMVWoc

cW3qlr9sixksnKWzfViqKSoalMVWoc:
%r88Pim1eZ8fUStjogVMJGGu9AUHWoe = add i32 7, 0
%zSmohmH8ZvirdJtoZucHlEqLD19dGC = icmp eq i32 %inp0, %r88Pim1eZ8fUStjogVMJGGu9AUHWoe
br i1 %zSmohmH8ZvirdJtoZucHlEqLD19dGC, label %WJzzufnudBUKx6JW9aMfYfzTqYNJ7F, label %NbDootsPzXyCirbvnWZNhv1a6j8qKj

WJzzufnudBUKx6JW9aMfYfzTqYNJ7F:
%AXVeGyItAtu5R8syz7Ie3OsiyeIwRp = add i8 55, 0
store i8 %AXVeGyItAtu5R8syz7Ie3OsiyeIwRp, i8* %outpu
%asEaZynRrr6oF1GR5imYXOqxZRzMjR = load i8, i8* %outpu
br label %T2uH0036XHDeXJogWS68HAKNm5tZEP

NbDootsPzXyCirbvnWZNhv1a6j8qKj:
br label %T2uH0036XHDeXJogWS68HAKNm5tZEP

T2uH0036XHDeXJogWS68HAKNm5tZEP:
%BJqMSAmG4rbWhukiRnLBHYic7y4ry8 = add i32 8, 0
%DqPFvhXEucOquVobULuN3h3mvYLRAK = icmp eq i32 %inp0, %BJqMSAmG4rbWhukiRnLBHYic7y4ry8
br i1 %DqPFvhXEucOquVobULuN3h3mvYLRAK, label %VrHp9Nl6vaFEkFCm4ZLIu3bsgW7H53, label %k2lDJw4DhrPrTyDlbe4YEXC1wih3en

VrHp9Nl6vaFEkFCm4ZLIu3bsgW7H53:
%kzLCaNl8ehriEaHAfdR52A7a3de4fN = add i8 56, 0
store i8 %kzLCaNl8ehriEaHAfdR52A7a3de4fN, i8* %outpu
%bZbvGul6tvztiBEhPg8bozDpctwQ0E = load i8, i8* %outpu
br label %XomqpxCYfFh2v6ljM1Q0FAbsmfxAO1

k2lDJw4DhrPrTyDlbe4YEXC1wih3en:
br label %XomqpxCYfFh2v6ljM1Q0FAbsmfxAO1

XomqpxCYfFh2v6ljM1Q0FAbsmfxAO1:
%GS3BzQ4Jrx3nMKmXZoxFLj67LZA0nj = add i32 9, 0
%UD9jGzDilsfjbdpAtVd35VqFXvUDFB = icmp eq i32 %inp0, %GS3BzQ4Jrx3nMKmXZoxFLj67LZA0nj
br i1 %UD9jGzDilsfjbdpAtVd35VqFXvUDFB, label %waYb7mlkdB1NwH1Ps5q9yUhBKXIqkV, label %e1B3H7fvqugAJZqRS7hZIlhOBAjdwN

waYb7mlkdB1NwH1Ps5q9yUhBKXIqkV:
%VqGdOKpgCoP2GpbxKfzar46AGN7Z2e = add i8 57, 0
store i8 %VqGdOKpgCoP2GpbxKfzar46AGN7Z2e, i8* %outpu
%ubGAHVWXi6LXLaRxCK6rWY04rlEfe6 = load i8, i8* %outpu
br label %oOVgxK5kExBIt7dSgwgIwe51Oyl9jm

e1B3H7fvqugAJZqRS7hZIlhOBAjdwN:
br label %oOVgxK5kExBIt7dSgwgIwe51Oyl9jm

oOVgxK5kExBIt7dSgwgIwe51Oyl9jm:
%BVn2vfQ9n60aw7lUKiwbGqxwY1yTU0 = load i8, i8* %outpu
ret i8 %BVn2vfQ9n60aw7lUKiwbGqxwY1yTU0
}
define ptr @itostr32( i32 %inp1) {
%var = alloca i32
%len = alloca i32
%b = alloca i1
%outp = alloca ptr
store i32 %inp1, i32* %var
%KzhvA0hRObPLCBJMZeMO5hWZuKkWGH = load i32, i32* %var
%MuAArib6Y0UGaRFghvaDW1BjSl4d1h = add i32 0, 0
store i32 %MuAArib6Y0UGaRFghvaDW1BjSl4d1h, i32* %len
%nVcNNaHj6KtqrMeTW8F62e98k0bNMS = load i32, i32* %len
%arJ2MnlRBI5UDgjJFQnFmvV6eVeSQL = add i1 1, 0
store i1 %arJ2MnlRBI5UDgjJFQnFmvV6eVeSQL, i1* %b
%jIKvGfrDA3Hm0u03M0es4enGt0cwjV = load i1, i1* %b
br label %h5gcqA0IoKcuZoPnpUb21gSPePU2Sh

h5gcqA0IoKcuZoPnpUb21gSPePU2Sh:
%A4ZTI0J2XtBe8cGZTK77OmvwY7I1mL = load i32, i32* %var
%sAp0wbAHZPTydw20hn8CGsnOdBzFeI = add i32 0, 0
%aPGJXA7HCKlOHvF1OqcnVov0hDr0J4 = icmp ne i32 %A4ZTI0J2XtBe8cGZTK77OmvwY7I1mL, %sAp0wbAHZPTydw20hn8CGsnOdBzFeI
br i1 %aPGJXA7HCKlOHvF1OqcnVov0hDr0J4, label %ajWYeqFJTKRc08UmqGHh0jZn8UhZNb, label %fRsxyXqoEFJtse1QwwtXps9oDvqQkk

ajWYeqFJTKRc08UmqGHh0jZn8UhZNb:
%Uj5P2V80bHogQQrxcvgOFojOtVOtH0 = load i32, i32* %var
%ax0cX8UpJwNRlS9RckVjwiLQ4GigbL = add i32 10, 0
%A9ue9cyGQ8y2oabRaW9lYmeHe03FHV = sdiv i32 %Uj5P2V80bHogQQrxcvgOFojOtVOtH0, %ax0cX8UpJwNRlS9RckVjwiLQ4GigbL
store i32 %A9ue9cyGQ8y2oabRaW9lYmeHe03FHV, i32* %var
%GfXjumVEDQmAQIVmlnh3Qfr9vritTu = load i32, i32* %var
%rn56kGft455t1xlKS5SMH6riRGRoke = load i32, i32* %len
%Tg4lmVPioAbABMZIsbOFH0UgQ6DrzD = add i32 1, 0
%aslZHl5KkyDD9NQOHmdHHqjlvGZMgA = add i32 %rn56kGft455t1xlKS5SMH6riRGRoke, %Tg4lmVPioAbABMZIsbOFH0UgQ6DrzD
store i32 %aslZHl5KkyDD9NQOHmdHHqjlvGZMgA, i32* %len
%drRxgLBZFmeDe9WY7YLgPW6m2agmAa = load i32, i32* %len
br label %h5gcqA0IoKcuZoPnpUb21gSPePU2Sh

fRsxyXqoEFJtse1QwwtXps9oDvqQkk:
%cntr = alloca i32
%JL4lalvO17h4DBXvq5lvfDbLiuGy6F = load i32, i32* %len
%arNjCtiY9fFKIFuvtG5UMc00Fer2ZJ = add i32 1, 0
%sNz5z2vEuFED2PIzOFMuyYa2VOijiY = add i32 %JL4lalvO17h4DBXvq5lvfDbLiuGy6F, %arNjCtiY9fFKIFuvtG5UMc00Fer2ZJ
%CU9pzQMR0N6ghgJcseinAPCoWRmASh = sext i32 %sNz5z2vEuFED2PIzOFMuyYa2VOijiY to i64
%iU9eWhbAMJcF0YsERlvL87b3QZRGIL = call ptr @malloc(i64 %CU9pzQMR0N6ghgJcseinAPCoWRmASh)
store ptr %iU9eWhbAMJcF0YsERlvL87b3QZRGIL, ptr %outp
%CdvE1bwXITRqHvbaduhmNwnn47zEvS = load ptr, ptr %outp
%PaGdd2jqMMz6Tnbd0TufljyULPO74n = add i1 1, 0
store i1 %PaGdd2jqMMz6Tnbd0TufljyULPO74n, i1* %b
%k6W8NpqvQVgO16hPy9Xoq5dfhgm7Cc = load i1, i1* %b
store i32 %inp1, i32* %var
%T2ZKUKUyirle2L94670lK2dkthGLKu = load i32, i32* %var
%FSS2955kK30783hX4eR0sJCdjV9UdN = load i32, i32* %len
%rGto1Q3iByxezrSlEb6OHhbwZkmYff = add i32 1, 0
%a246j7GcMyjFyMpukpRLq137mgsAoF = sub i32 %FSS2955kK30783hX4eR0sJCdjV9UdN, %rGto1Q3iByxezrSlEb6OHhbwZkmYff
store i32 %a246j7GcMyjFyMpukpRLq137mgsAoF, i32* %cntr
%NC7l2DFu5sJ0L1mOYvbazVUmTq8iDI = load i32, i32* %cntr
br label %jkDas1JfiE8ghoeURNqaA5mvX2Emos

jkDas1JfiE8ghoeURNqaA5mvX2Emos:
%o4G57AxIMIX9azMAREP2GHa2L1QWkS = load i1, i1* %b
br i1 %o4G57AxIMIX9azMAREP2GHa2L1QWkS, label %BBhe4aCP8zUIshjyGtEUN2Pzy5zfi4, label %yJ7ud1J3egqpBbAPlv9fVDsrBILAqZ

BBhe4aCP8zUIshjyGtEUN2Pzy5zfi4:
%SgByAkp3bEuPW7fjxUM6AQzR5o3Ei5 = load i32, i32* %var
%Bk0SoNjk9vrqNX5XEhWW8KZdMmr7jS = add i32 0, 0
%nVVDN6T8KoTGKSRekBwCqcN81nc1BL = icmp eq i32 %SgByAkp3bEuPW7fjxUM6AQzR5o3Ei5, %Bk0SoNjk9vrqNX5XEhWW8KZdMmr7jS
br i1 %nVVDN6T8KoTGKSRekBwCqcN81nc1BL, label %LIuXvoRPptpX9o8yh5ebTUsPkHyCQq, label %G7l6TOFSTO4lHBi9xiTopeAEmcZVnE

LIuXvoRPptpX9o8yh5ebTUsPkHyCQq:
%WYLkr3DzLfjQ3LLQJu2t5LYppmQ4ZO = add i8 0, 0
%GFYfz6cOq3hPobLU4N3LfPO8cQhlvE = load ptr, ptr %outp
%bjf3ekPqVWW4BpogflJEyPue0ORGQk = load i32, i32* %len
%r7zhoQ4ZyZlm8MHxSpqkQR8E3AmWHq = getelementptr inbounds i8, ptr %GFYfz6cOq3hPobLU4N3LfPO8cQhlvE, i32 %bjf3ekPqVWW4BpogflJEyPue0ORGQk
store i8 %WYLkr3DzLfjQ3LLQJu2t5LYppmQ4ZO, ptr %r7zhoQ4ZyZlm8MHxSpqkQR8E3AmWHq
%mMBnPP7Al0zzZ3eidVJL66uoLKAFaC = add i1 0, 0
store i1 %mMBnPP7Al0zzZ3eidVJL66uoLKAFaC, i1* %b
%UOS0PgUBw8hxhzXgM2961CRUTK8iep = load i1, i1* %b
br label %hLRT4aoNpzGEd4Yrq6dl2VmesZpMLY

G7l6TOFSTO4lHBi9xiTopeAEmcZVnE:
%EOW4tSxbSbvERtVzxaCZzGJYAjhnnn = load i32, i32* %var
%aR6SNpMeTbI17dUZHasp3y1UjB6M58 = add i32 10, 0
%a7BfWiL2alpfQlhA2ae5c3MCFJtop3 = srem i32 %EOW4tSxbSbvERtVzxaCZzGJYAjhnnn, %aR6SNpMeTbI17dUZHasp3y1UjB6M58
%gdcepiaFgoFXvgkdBpdws4cTFWZUxD = call i8 @itoc32(i32 %a7BfWiL2alpfQlhA2ae5c3MCFJtop3)
%CejipXt6AEHB8qKhcq3eLCNnuOSG5n = load ptr, ptr %outp
%wYRjfIRWTHszMeBdgVkI2CiXlEfJ1b = load i32, i32* %cntr
%CHIS069qDgSa5yHyyb235lO7e3m2Ko = getelementptr inbounds i8, ptr %CejipXt6AEHB8qKhcq3eLCNnuOSG5n, i32 %wYRjfIRWTHszMeBdgVkI2CiXlEfJ1b
store i8 %gdcepiaFgoFXvgkdBpdws4cTFWZUxD, ptr %CHIS069qDgSa5yHyyb235lO7e3m2Ko
%cSL31UqdsL0cbsnUzAzp7o3LvteHKw = load i32, i32* %var
%AWgGTWCF2NwP40AsE8KSfzIBIFtq2y = add i32 10, 0
%FFInONmcJZ1QJSBQxQXZShTohSfPjL = sdiv i32 %cSL31UqdsL0cbsnUzAzp7o3LvteHKw, %AWgGTWCF2NwP40AsE8KSfzIBIFtq2y
store i32 %FFInONmcJZ1QJSBQxQXZShTohSfPjL, i32* %var
%nLhrRe2QSsHvxddbBajerksUKroLik = load i32, i32* %var
%A1rCyOvR2sO8MoRP6Agjyvz4PGoCQG = load i32, i32* %cntr
%RyvFUiPSXOc15MTjlEYmAQBWFfHVA6 = add i32 1, 0
%AVLVIsOTOWMPJ2sGOjmOiLBgHZbihe = sub i32 %A1rCyOvR2sO8MoRP6Agjyvz4PGoCQG, %RyvFUiPSXOc15MTjlEYmAQBWFfHVA6
store i32 %AVLVIsOTOWMPJ2sGOjmOiLBgHZbihe, i32* %cntr
%omR6ISq5Gn72I4COETauJLHQ76PgLL = load i32, i32* %cntr
br label %hLRT4aoNpzGEd4Yrq6dl2VmesZpMLY

hLRT4aoNpzGEd4Yrq6dl2VmesZpMLY:
br label %jkDas1JfiE8ghoeURNqaA5mvX2Emos

yJ7ud1J3egqpBbAPlv9fVDsrBILAqZ:
%Nmw1hVpr3XOHuboRp2tlRFysUyPW99 = load ptr, ptr %outp
ret ptr %Nmw1hVpr3XOHuboRp2tlRFysUyPW99
}
define i32 @strlen32( ptr %inp) {
%not_reached = alloca i1
%count32 = alloca i32
%a2RWX5OBtBbh6aEUpnlSnb7dTlIHxL = add i1 1, 0
store i1 %a2RWX5OBtBbh6aEUpnlSnb7dTlIHxL, i1* %not_reached
%OznsTVCMpYoEuyfRCLWnVtXOgMTEua = load i1, i1* %not_reached
%aZMJk3WPLaj1xS3udAyfTLhrs8TEky = add i32 0, 0
store i32 %aZMJk3WPLaj1xS3udAyfTLhrs8TEky, i32* %count32
%R9pcAsui3ljW6iHTQ8XHhgxhuN5sd0 = load i32, i32* %count32
br label %aQa9p8Y66HfduXwssTlmsjiJmEjomp

aQa9p8Y66HfduXwssTlmsjiJmEjomp:
%AwCmJx1MkpCjhImpSxAKxnlqnZdFKa = load i1, i1* %not_reached
br i1 %AwCmJx1MkpCjhImpSxAKxnlqnZdFKa, label %gtgANYHGMOUPtEpK3eHtDvBL4qaAan, label %dGGLe1xyRYdgtJl8BnjnqBRJ0B4qlq

gtgANYHGMOUPtEpK3eHtDvBL4qaAan:
%YaQl6yWvrnArRIen6CZGZwBJn2osaG = load i32, i32* %count32
%qTfJs48lCDshXZutRPScIIzVwVjs1s = getelementptr inbounds i8, ptr %inp, i32 %YaQl6yWvrnArRIen6CZGZwBJn2osaG
%a5nvNlmaWLqtKnrUnfoXYAvZa53rky = load i8, ptr %qTfJs48lCDshXZutRPScIIzVwVjs1s
%GajCaDzGk9kx164nkNZJcUydTZ5QSw = add i8 0, 0
%pehf2ivUmbchDi0RgTYXgv069Qj7dE = icmp eq i8 %a5nvNlmaWLqtKnrUnfoXYAvZa53rky, %GajCaDzGk9kx164nkNZJcUydTZ5QSw
br i1 %pehf2ivUmbchDi0RgTYXgv069Qj7dE, label %fdlHk9L6ad1jiWG8uOdxuedGSUtzk8, label %b5t5V9VFpvpLdPvuLdlyMvNdlKKRA2

fdlHk9L6ad1jiWG8uOdxuedGSUtzk8:
%cV72ltd7Ger9p1n4oUYlUFXWXSU2Vu = add i1 0, 0
store i1 %cV72ltd7Ger9p1n4oUYlUFXWXSU2Vu, i1* %not_reached
%at9iN86iaczqMavl5xMmvFPRJgY4Fk = load i1, i1* %not_reached
br label %N2ZnTlqAh45bppGjnjQ5U4tnUYEBEl

b5t5V9VFpvpLdPvuLdlyMvNdlKKRA2:
%w1yGWCCV62y7IUFGVDzj4pa4WlTfnj = load i32, i32* %count32
%a1TNAobB7B1scdSnple9TaRwUgtJBY = add i32 1, 0
%vbFsRTb0cc4D1LDCKZyo00FiEcVpbo = add i32 %w1yGWCCV62y7IUFGVDzj4pa4WlTfnj, %a1TNAobB7B1scdSnple9TaRwUgtJBY
store i32 %vbFsRTb0cc4D1LDCKZyo00FiEcVpbo, i32* %count32
%tSRUfuQtiPBQmgaTjxAcV0IXsqOY0F = load i32, i32* %count32
br label %N2ZnTlqAh45bppGjnjQ5U4tnUYEBEl

N2ZnTlqAh45bppGjnjQ5U4tnUYEBEl:
br label %aQa9p8Y66HfduXwssTlmsjiJmEjomp

dGGLe1xyRYdgtJl8BnjnqBRJ0B4qlq:
%afD2y3XOmkcr5pXy36onRJ5YQDm4Fm = load i32, i32* %count32
ret i32 %afD2y3XOmkcr5pXy36onRJ5YQDm4Fm
}
define i64 @strlen64( ptr %inp) {
%not_reached = alloca i1
%count64 = alloca i64
%Lzw4MucORMKHl3ikR1EmlhiHBecZLH = add i1 1, 0
store i1 %Lzw4MucORMKHl3ikR1EmlhiHBecZLH, i1* %not_reached
%acdT4trzikmNhsr1sXzScYMyfkJXjw = load i1, i1* %not_reached
%bpfqv0przF1tdknN16oalRc8KTQ3kW = add i64 0, 0
store i64 %bpfqv0przF1tdknN16oalRc8KTQ3kW, i64* %count64
%ah21FyGu0xZYMJJ8sil9ZhlIZ9c6sp = load i64, i64* %count64
br label %x8zzMsrCrJrCetsqsYc9bfGMN7alZk

x8zzMsrCrJrCetsqsYc9bfGMN7alZk:
%MrHuR4yokBMlMkaQWLp6zbafLwflao = load i1, i1* %not_reached
br i1 %MrHuR4yokBMlMkaQWLp6zbafLwflao, label %HGyyHkY90H1WoV9A6qCkZjhi6Z1AK4, label %R9MnlyASmkQrffIU3qKmvO19IZzmRc

HGyyHkY90H1WoV9A6qCkZjhi6Z1AK4:
%jm2otiljwSdk4xcOOfPZ7JEgnI1RV6 = load i64, i64* %count64
%jpiRMXR4Ia0f9sgnPn670rLRCesNhr = getelementptr inbounds i8, ptr %inp, i64 %jm2otiljwSdk4xcOOfPZ7JEgnI1RV6
%hNjCGAfkXb7YTzBLBEuka569RiinpS = load i8, ptr %jpiRMXR4Ia0f9sgnPn670rLRCesNhr
%XcKH5isxEgDUM6GaGkHagnKpOoH2Pu = add i8 0, 0
%olWQNXyaE7sRSogfnaOuW2yQS81odn = icmp eq i8 %hNjCGAfkXb7YTzBLBEuka569RiinpS, %XcKH5isxEgDUM6GaGkHagnKpOoH2Pu
br i1 %olWQNXyaE7sRSogfnaOuW2yQS81odn, label %wSpL6gOX1ZHTqRdDjkgqfelZeIId6R, label %aL6YfvyyTaIZ0dpNzTZ0NIg5yr1Dh8

wSpL6gOX1ZHTqRdDjkgqfelZeIId6R:
%QiAWHEyoHiIhTTP8iqAX1n1IhhpCaP = add i1 0, 0
store i1 %QiAWHEyoHiIhTTP8iqAX1n1IhhpCaP, i1* %not_reached
%MAmBYBU5VpPzRXT2P9EU47ia3AgzzT = load i1, i1* %not_reached
br label %a3YTr1mlusKxrf6snmrRqGwv6rH75H

aL6YfvyyTaIZ0dpNzTZ0NIg5yr1Dh8:
%jUhREdDn5jAemP32cMmpVAT51Tr48I = load i64, i64* %count64
%Aj43DQZecvB7eBRAAIsffw6rJQsRYq = add i64 1, 0
%wuJLnIFnVoGOasbXLyz4zC1P54LjT5 = add i64 %jUhREdDn5jAemP32cMmpVAT51Tr48I, %Aj43DQZecvB7eBRAAIsffw6rJQsRYq
store i64 %wuJLnIFnVoGOasbXLyz4zC1P54LjT5, i64* %count64
%zKYjSCfTPAvSSguO6PXPd4B0eZU3bO = load i64, i64* %count64
br label %a3YTr1mlusKxrf6snmrRqGwv6rH75H

a3YTr1mlusKxrf6snmrRqGwv6rH75H:
br label %x8zzMsrCrJrCetsqsYc9bfGMN7alZk

R9MnlyASmkQrffIU3qKmvO19IZzmRc:
%ziOOZAHHeY9x7Fv6X1Wk8MVh8rgKns = load i64, i64* %count64
ret i64 %ziOOZAHHeY9x7Fv6X1Wk8MVh8rgKns
}
define ptr @strdup( ptr %inp) {
%out_str = alloca ptr
%len64 = alloca i64
%awoS6A96uRuuewuAshBzpThOpO3zli = call i64 @strlen64(ptr %inp)
%auPfNhO2WmlPqMQmhAOiIu37T0Csbh = add i64 1, 0
%y6xx4WRgiAaRIkloQz8RrstP3IxIwj = add i64 %awoS6A96uRuuewuAshBzpThOpO3zli, %auPfNhO2WmlPqMQmhAOiIu37T0Csbh
store i64 %y6xx4WRgiAaRIkloQz8RrstP3IxIwj, i64* %len64
%R9ihO3JBPqHVXfVrPgWvWMF7ajI3Rp = load i64, i64* %len64
%PqzrNcRh5DgBcgXvm7aXsittQlSD6p = call ptr @malloc(i64 %R9ihO3JBPqHVXfVrPgWvWMF7ajI3Rp)
store ptr %PqzrNcRh5DgBcgXvm7aXsittQlSD6p, ptr %out_str
%u1woj1fciQJLG2BYL0SSyLJjuiF4hI = load ptr, ptr %out_str
%b = alloca i1
%cntr64 = alloca i64
%nkvNSdqzkMcJ117ElZanFIaGQrmA3R = add i1 1, 0
store i1 %nkvNSdqzkMcJ117ElZanFIaGQrmA3R, i1* %b
%aQ0XiB3NIp98tO2vl435wDSlGkLfE1 = load i1, i1* %b
%lxirls3cXwzNRv1Z2DlyrNJw1RVspW = add i64 0, 0
store i64 %lxirls3cXwzNRv1Z2DlyrNJw1RVspW, i64* %cntr64
%asZnPFGlu8fHVENWr8lKcDb1w4Ztjj = load i64, i64* %cntr64
br label %c1z9WdwjRb0dpCjeZwnuWhZ47ASG2L

c1z9WdwjRb0dpCjeZwnuWhZ47ASG2L:
%aYYIlwTvaRYb0BeENzZfYpjJ5Pq3v3 = load i1, i1* %b
br i1 %aYYIlwTvaRYb0BeENzZfYpjJ5Pq3v3, label %NgJRHYgkrOHNP8I5kovyANXBXKhfPw, label %gUUx0kAaBAiLQkWS9XzJHWRx2JhpE1

NgJRHYgkrOHNP8I5kovyANXBXKhfPw:
%GS4O5TMxlm6is3RP5gWT0b4yGPTIO9 = load i64, i64* %cntr64
%S0UtQVL05hf2x9I6AINugTf1o6sJdb = load i64, i64* %len64
%vCmUEhFjwHAAU7h6vA4B8liGqy8ADf = icmp eq i64 %GS4O5TMxlm6is3RP5gWT0b4yGPTIO9, %S0UtQVL05hf2x9I6AINugTf1o6sJdb
br i1 %vCmUEhFjwHAAU7h6vA4B8liGqy8ADf, label %zPvhoAD7LXQdUi7dsvEyeQ5hGTmNH1, label %pzxDggmy6tDuznIEPYLmYkpcMEHOtl

zPvhoAD7LXQdUi7dsvEyeQ5hGTmNH1:
%FVRaeutk1SJPEoUwSrrhldFAXMTQ4t = add i8 0, 0
%IcJXtSBhf8F7Y2HH29Z8ALvcPovgDg = load ptr, ptr %out_str
%uQZm7EaYL5K9i2EyJ3DEKIoA7QVCYG = load i64, i64* %len64
%nuk33yZlFjQhantOR2LcgnA6x3usvp = getelementptr inbounds i8, ptr %IcJXtSBhf8F7Y2HH29Z8ALvcPovgDg, i64 %uQZm7EaYL5K9i2EyJ3DEKIoA7QVCYG
store i8 %FVRaeutk1SJPEoUwSrrhldFAXMTQ4t, ptr %nuk33yZlFjQhantOR2LcgnA6x3usvp
%rG09xfJtkBhPXqwj7jdTFxxJPpSboF = add i1 0, 0
store i1 %rG09xfJtkBhPXqwj7jdTFxxJPpSboF, i1* %b
%AO5VqpNGCMVKyoPlQCGlhCL5xrEwzd = load i1, i1* %b
br label %xCMe0ma8o4W7zKMotR4waImSW9n6CG

pzxDggmy6tDuznIEPYLmYkpcMEHOtl:
%abSRAi5BKSjsH0p9YmV1hkBiiTau3B = load i64, i64* %cntr64
%d1Nat5btlo4lmYxyofpr9pGVaAZkua = getelementptr inbounds i8, ptr %inp, i64 %abSRAi5BKSjsH0p9YmV1hkBiiTau3B
%aLW1HWpYvk8urShub8MB9KQpU4U3qD = load i8, ptr %d1Nat5btlo4lmYxyofpr9pGVaAZkua
%ann4JukGs5DfTa04DY7p90UUSvsVMh = load ptr, ptr %out_str
%BP3cYOEmCFZtOgZwTbNoowwKY2Wg98 = load i64, i64* %cntr64
%c36P1zH1TPONtCriON6VRv1REHm2IV = getelementptr inbounds i8, ptr %ann4JukGs5DfTa04DY7p90UUSvsVMh, i64 %BP3cYOEmCFZtOgZwTbNoowwKY2Wg98
store i8 %aLW1HWpYvk8urShub8MB9KQpU4U3qD, ptr %c36P1zH1TPONtCriON6VRv1REHm2IV
%cd9xeEXU6n49JzeJDOFF11x6nYpFYv = load i64, i64* %cntr64
%LNjILilHV4noAzplbPtqzdMK5n2HCC = add i64 1, 0
%DlgoTOEq1HXcrNqz8ROv8W3HI1yeLJ = add i64 %cd9xeEXU6n49JzeJDOFF11x6nYpFYv, %LNjILilHV4noAzplbPtqzdMK5n2HCC
store i64 %DlgoTOEq1HXcrNqz8ROv8W3HI1yeLJ, i64* %cntr64
%mmNzq18OJSCrkf4QURfnzLXOpnI8pT = load i64, i64* %cntr64
br label %xCMe0ma8o4W7zKMotR4waImSW9n6CG

xCMe0ma8o4W7zKMotR4waImSW9n6CG:
br label %c1z9WdwjRb0dpCjeZwnuWhZ47ASG2L

gUUx0kAaBAiLQkWS9XzJHWRx2JhpE1:
%I9QnFgZJf40ssrm6MPo1EOgkmMelGX = load ptr, ptr %out_str
ret ptr %I9QnFgZJf40ssrm6MPo1EOgkmMelGX
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%FdFQaFKH75yJgtr3W9XeVBAufQbAKj = call i32 @strlen32(ptr %inp1)
store i32 %FdFQaFKH75yJgtr3W9XeVBAufQbAKj, i32* %end_of_inp1
%aiKLN3mBrgjg1UXV1TeXDUqQS5saC5 = load i32, i32* %end_of_inp1
%HkRD9v4vPgv7KWdpw2OIncfc6pNtah = call i32 @strlen32(ptr %inp2)
store i32 %HkRD9v4vPgv7KWdpw2OIncfc6pNtah, i32* %end_of_inp2
%tHOcvOCA10IvLo7f4uJyzRqpCyAz8a = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%XnJzY97WR04RU9pOzxjF7nPRlZeXaA = add i32 0, 0
store i32 %XnJzY97WR04RU9pOzxjF7nPRlZeXaA, i32* %cntr1
%iAUTMWJr4tmvAyHYRUa4WgJ0vtpHWD = load i32, i32* %cntr1
store i32 %iAUTMWJr4tmvAyHYRUa4WgJ0vtpHWD, i32* %cntr2
%oWJ7oelEFF0wyjUy12AJ19BmuC6zyk = load i32, i32* %cntr2
%mCssIKpGYDSKHqaHKM8s0EYHnBzk8i = add i1 1, 0
store i1 %mCssIKpGYDSKHqaHKM8s0EYHnBzk8i, i1* %not_yet_reached_inp1_end
%LCeABMxKst30RvsXo165kw3vhDB9d3 = load i1, i1* %not_yet_reached_inp1_end
store i1 %LCeABMxKst30RvsXo165kw3vhDB9d3, i1* %not_yet_reached_inp2_end
%x4NMZkYureuTIjJbLQxGDnwQK0eXUn = load i1, i1* %not_yet_reached_inp2_end
%dfE11aJwPWO8R3NUsTCSJF20p0BN0f = load i32, i32* %end_of_inp1
%hyRbG56fWjeNc403Iu0joXOnxg8YiX = load i32, i32* %end_of_inp2
%aI1TyiNTzEZdQDajUEIrrIE3syuAIl = add i32 1, 0
%p3x8RbGvgftokziPtO4QL84JMr1IQt = add i32 %hyRbG56fWjeNc403Iu0joXOnxg8YiX, %aI1TyiNTzEZdQDajUEIrrIE3syuAIl
%aHTU0Zw5e9tKCdWrqYvc4iPXrocHdP = add i32 %dfE11aJwPWO8R3NUsTCSJF20p0BN0f, %p3x8RbGvgftokziPtO4QL84JMr1IQt
%OYYu6tCTlUWMBRlmml3SkaICKvLEMP = sext i32 %aHTU0Zw5e9tKCdWrqYvc4iPXrocHdP to i64
%VdCJxHLHAkNcSZ7jdlIo9wQEyjtnfd = call ptr @malloc(i64 %OYYu6tCTlUWMBRlmml3SkaICKvLEMP)
store ptr %VdCJxHLHAkNcSZ7jdlIo9wQEyjtnfd, ptr %out
%arjbM7yT93oqAPRdHPBDDdNNMYo4TE = load ptr, ptr %out
br label %wY4nhSWCsmmXRsYISamOx3O7QsPera

wY4nhSWCsmmXRsYISamOx3O7QsPera:
%LmjMgs7gzgHRBwAcwpUzylVDWjdpq3 = load i1, i1* %not_yet_reached_inp1_end
br i1 %LmjMgs7gzgHRBwAcwpUzylVDWjdpq3, label %NSjGgtr7iCORQLk1dFvTLevYQdh1pB, label %awn1ypjrGipglBOyqnyOsNLfDRYcvI

NSjGgtr7iCORQLk1dFvTLevYQdh1pB:
%BZXYzebQ76z92Wqv5sw2dXcw0yD63C = load i32, i32* %cntr1
%aCsY6R2lSQotr8mjitUWhd7EeSebKH = getelementptr inbounds i8, ptr %inp1, i32 %BZXYzebQ76z92Wqv5sw2dXcw0yD63C
%URUiKlj0RgXCOhvIl5ncdYVs8yS6Cg = load i8, ptr %aCsY6R2lSQotr8mjitUWhd7EeSebKH
%Ok0KV3pPIrDlEbmgYMPjBm93dZaqok = add i8 0, 0
%bP8zYOJ94ioTpjdWcdeHWkIOlCLL6E = icmp eq i8 %URUiKlj0RgXCOhvIl5ncdYVs8yS6Cg, %Ok0KV3pPIrDlEbmgYMPjBm93dZaqok
br i1 %bP8zYOJ94ioTpjdWcdeHWkIOlCLL6E, label %l0wgEbIKhhpFWRxBD1MUmm6HsKZCXi, label %GbggSmgnfTmuTHW1TlKTLEN6fDZfMn

l0wgEbIKhhpFWRxBD1MUmm6HsKZCXi:
%dkTl0mmcviBOY7JfXqVXd9pxzujyuA = add i1 0, 0
store i1 %dkTl0mmcviBOY7JfXqVXd9pxzujyuA, i1* %not_yet_reached_inp1_end
%VnrfTOBAInA4Uy20RewsvIxFc1sKAz = load i1, i1* %not_yet_reached_inp1_end
br label %ajRFszLgrD4EgwgK5CsWT5KqGlebbZ

GbggSmgnfTmuTHW1TlKTLEN6fDZfMn:
%b36BqGiB77lc4AjvGZEIYMQ97IuFlP = load i32, i32* %cntr1
%Va5wQ4wAacsS8jlQbIcOgNraROXghe = getelementptr inbounds i8, ptr %inp1, i32 %b36BqGiB77lc4AjvGZEIYMQ97IuFlP
%XO62t36T6PQH6femDEBS492g6BmF91 = load i8, ptr %Va5wQ4wAacsS8jlQbIcOgNraROXghe
%aEAMPZ87Ag3Dn345KTx6g9LN7S1Q0Z = load ptr, ptr %out
%nwp0MdP8cr01wKyn99ZBMvyVutm4AB = load i32, i32* %cntr1
%uQ8QDlet5QWHjUIj44EEYGLYT9JxMd = getelementptr inbounds i8, ptr %aEAMPZ87Ag3Dn345KTx6g9LN7S1Q0Z, i32 %nwp0MdP8cr01wKyn99ZBMvyVutm4AB
store i8 %XO62t36T6PQH6femDEBS492g6BmF91, ptr %uQ8QDlet5QWHjUIj44EEYGLYT9JxMd
%aLqUHNhOKkPuT0M7jx8P5TsoZ1SbaR = load i32, i32* %cntr1
%H8dOA00d5M8Be0OTlDIbQrD81GQ9eV = add i32 1, 0
%ayqoGIem2STFgRnZueHxHX4r8LPw4Z = add i32 %aLqUHNhOKkPuT0M7jx8P5TsoZ1SbaR, %H8dOA00d5M8Be0OTlDIbQrD81GQ9eV
store i32 %ayqoGIem2STFgRnZueHxHX4r8LPw4Z, i32* %cntr1
%gybWcLleLD0mE3lw7Oy6W7fVBgWKhO = load i32, i32* %cntr1
br label %ajRFszLgrD4EgwgK5CsWT5KqGlebbZ

ajRFszLgrD4EgwgK5CsWT5KqGlebbZ:
br label %wY4nhSWCsmmXRsYISamOx3O7QsPera

awn1ypjrGipglBOyqnyOsNLfDRYcvI:
br label %YBlebhBw25tn9rWwhbQ2FjyJ53IZ5V

YBlebhBw25tn9rWwhbQ2FjyJ53IZ5V:
%ocuvubygO6BbbNmYpdyF0o5Dxa7T5T = load i1, i1* %not_yet_reached_inp2_end
br i1 %ocuvubygO6BbbNmYpdyF0o5Dxa7T5T, label %HZ8omvoXzaWq7fGx0SocHrNg9I9piU, label %apKqXX2eDtjXbQPrE009kVGzxpcY3R

HZ8omvoXzaWq7fGx0SocHrNg9I9piU:
%fOOG6TBSxeRtxXoBkBibkvr9Nd8x91 = load i32, i32* %cntr2
%YoY2yQWVnxcQjidDQGI5IKriSllAI1 = getelementptr inbounds i8, ptr %inp2, i32 %fOOG6TBSxeRtxXoBkBibkvr9Nd8x91
%R82sGNx0j3ysPCnrjoWQON9Smyi0Uq = load i8, ptr %YoY2yQWVnxcQjidDQGI5IKriSllAI1
%qxM1WmAHQfMHpMRojbvpNzC9Yr6mTC = add i8 0, 0
%tMpXXlC2MK5h8yVIhhmqH6ugzRwZ7s = icmp eq i8 %R82sGNx0j3ysPCnrjoWQON9Smyi0Uq, %qxM1WmAHQfMHpMRojbvpNzC9Yr6mTC
br i1 %tMpXXlC2MK5h8yVIhhmqH6ugzRwZ7s, label %R93OjaOihl92iq9F1bD8c2wQUx7qiS, label %t5I7RokKH03KxlKggwJc0xaQxpbu19

R93OjaOihl92iq9F1bD8c2wQUx7qiS:
%hB5RDtuz11sW3jHx6BQhkNXImFKgz6 = add i1 0, 0
store i1 %hB5RDtuz11sW3jHx6BQhkNXImFKgz6, i1* %not_yet_reached_inp2_end
%wJ969vOBOLO8Oe5Er2d15m7rkkFSyh = load i1, i1* %not_yet_reached_inp2_end
br label %uqJqg6wGsYx7qafteaMu3MwSiUMcRG

t5I7RokKH03KxlKggwJc0xaQxpbu19:
br label %uqJqg6wGsYx7qafteaMu3MwSiUMcRG

uqJqg6wGsYx7qafteaMu3MwSiUMcRG:
%aTPQgIYriNa7brdek7pvzqkUbzrkQu = load i32, i32* %cntr2
%Gj10FkRUY9s6wPQ286mUWJBuCdlPAH = getelementptr inbounds i8, ptr %inp2, i32 %aTPQgIYriNa7brdek7pvzqkUbzrkQu
%KravbvmfWSDBKBWQuMMKQSDMeAZ5KK = load i8, ptr %Gj10FkRUY9s6wPQ286mUWJBuCdlPAH
%KNMIvVb0BMmUQYPgKBjKWYDFqwIr8u = load ptr, ptr %out
%af7JfJ8f72G5UtaeVxFosrF9bvl2Ex = load i32, i32* %cntr2
%kHhogB7vtRdwpBdfH5McTWMrcuevBE = load i32, i32* %end_of_inp1
%kh3klsk81oEMBmo3EwB9UQzUO7fMlh = add i32 %af7JfJ8f72G5UtaeVxFosrF9bvl2Ex, %kHhogB7vtRdwpBdfH5McTWMrcuevBE
%ADhsOrzRBiiEfA1uo5Rhp5XNSVXdVT = getelementptr inbounds i8, ptr %KNMIvVb0BMmUQYPgKBjKWYDFqwIr8u, i32 %kh3klsk81oEMBmo3EwB9UQzUO7fMlh
store i8 %KravbvmfWSDBKBWQuMMKQSDMeAZ5KK, ptr %ADhsOrzRBiiEfA1uo5Rhp5XNSVXdVT
%aCrgUT6fRLyP0PqusTb530D17FvRQN = load i32, i32* %cntr2
%aC2zu5lpQ304SGjHBnkzwaqqIyuiqw = add i32 1, 0
%TDmiLaxbhjAi3YomED8IHx2aGCiOuA = add i32 %aCrgUT6fRLyP0PqusTb530D17FvRQN, %aC2zu5lpQ304SGjHBnkzwaqqIyuiqw
store i32 %TDmiLaxbhjAi3YomED8IHx2aGCiOuA, i32* %cntr2
%cL7c0GzDQCBi4iJLhZmydFqoQoduA4 = load i32, i32* %cntr2
br label %YBlebhBw25tn9rWwhbQ2FjyJ53IZ5V

apKqXX2eDtjXbQPrE009kVGzxpcY3R:
%VPfOR9HZinmRnsANMK8yGHB2f9xYBX = load ptr, ptr %out
ret ptr %VPfOR9HZinmRnsANMK8yGHB2f9xYBX
}
