declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i64)
declare void @free(ptr)

define i32 @factorial32( i32 %inp) {
%a8NAvbfJoVozfxkBjlJOO90usMzI60 = add i32 1, 0
%LD3OkeUmMuwFmWzCBMhKLl2POKew8L = icmp eq i32 %inp, %a8NAvbfJoVozfxkBjlJOO90usMzI60
br i1 %LD3OkeUmMuwFmWzCBMhKLl2POKew8L, label %pO5cqXpFwp36583ZA9awljmK9rqiHO, label %akDqTNfrYU6YDhZ1QwMISmAli1gBZH

pO5cqXpFwp36583ZA9awljmK9rqiHO:
%dGZkGFinSsSOljJUMaRjbcdZrxpyCA = add i32 1, 0
ret i32 %dGZkGFinSsSOljJUMaRjbcdZrxpyCA
br label %GLK3Pk8DzcjjeIkjdJw1jKqKMGxPd6

akDqTNfrYU6YDhZ1QwMISmAli1gBZH:
%nxCwvC7JzXgaQXSQITRXhv2eEmCRGQ = add i32 1, 0
%aPGERuv1aQloXT0UNjglc2XoK2uB0D = sub i32 %inp, %nxCwvC7JzXgaQXSQITRXhv2eEmCRGQ
%aByjPUhIMPTaFkNumiVJ6vttrBbWCG = mul i32 %inp, %aPGERuv1aQloXT0UNjglc2XoK2uB0D
ret i32 %aByjPUhIMPTaFkNumiVJ6vttrBbWCG
br label %GLK3Pk8DzcjjeIkjdJw1jKqKMGxPd6

GLK3Pk8DzcjjeIkjdJw1jKqKMGxPd6:
%TYlEwRcRJ8UegZzhuodif6QaEOaShY = add i32 -1, 0
ret i32 %TYlEwRcRJ8UegZzhuodif6QaEOaShY
}
define i64 @factorial64( i64 %inp) {
%A0fPxbhWCQkRPA9XejAjaEDN67HD1j = add i64 1, 0
%pzQund6iriN2ahZ2aQbeWIJq3WXfWc = icmp eq i64 %inp, %A0fPxbhWCQkRPA9XejAjaEDN67HD1j
br i1 %pzQund6iriN2ahZ2aQbeWIJq3WXfWc, label %aiaxbtIo2EyrEhSZaO1f8wPuviJWnm, label %ojKmxtpi11lP3k4ogp0TlzLcfe2igI

aiaxbtIo2EyrEhSZaO1f8wPuviJWnm:
%Q73T7qvc4v072yHJEeVP7SKFgkWh1b = add i64 1, 0
ret i64 %Q73T7qvc4v072yHJEeVP7SKFgkWh1b
br label %l7flK1I6xs32nqG2jyFgCwqDuhs9V7

ojKmxtpi11lP3k4ogp0TlzLcfe2igI:
%PF94yxek0gruvtYUYssLSfm4chVk2G = add i64 1, 0
%anPKIvXO6qFnlQ1tYI7zMlRaas1oBm = sub i64 %inp, %PF94yxek0gruvtYUYssLSfm4chVk2G
%Y0zOxpwTRSWo8DoAW3cPRrNKE73UHo = mul i64 %inp, %anPKIvXO6qFnlQ1tYI7zMlRaas1oBm
ret i64 %Y0zOxpwTRSWo8DoAW3cPRrNKE73UHo
br label %l7flK1I6xs32nqG2jyFgCwqDuhs9V7

l7flK1I6xs32nqG2jyFgCwqDuhs9V7:
%R9ZNN8SqKq5pgJ0bU98Zldn17pF5ZU = add i64 -1, 0
ret i64 %R9ZNN8SqKq5pgJ0bU98Zldn17pF5ZU
}
define i8 @itoc32( i32 %inp0) {
%outpu = alloca i8
%hXH5dnDfuNiXFlJTvjctmU65bWpcuV = add i32 0, 0
%x1hmDtOm0YhI6x570PzEFfAYxei6T2 = icmp eq i32 %inp0, %hXH5dnDfuNiXFlJTvjctmU65bWpcuV
br i1 %x1hmDtOm0YhI6x570PzEFfAYxei6T2, label %rBbQzxGs66lDiRmZpqGoHdQoDPq9ov, label %Z073Y9eMM0MIPzoMfUdvkpKp4dDwbj

rBbQzxGs66lDiRmZpqGoHdQoDPq9ov:
%eMxthE8oMybG5H4M2QD95NK1je3GCA = add i8 48, 0
store i8 %eMxthE8oMybG5H4M2QD95NK1je3GCA, i8* %outpu
%esRxGAR77dHJUOgbCqAmq3EOs1cNaN = load i8, i8* %outpu
br label %uoRlRlTQg87d4Q0cFHlMGbjOuu0YW0

Z073Y9eMM0MIPzoMfUdvkpKp4dDwbj:
br label %uoRlRlTQg87d4Q0cFHlMGbjOuu0YW0

uoRlRlTQg87d4Q0cFHlMGbjOuu0YW0:
%cqxIIMqhCyfTJbg3yuZdFwm7hg9EFD = add i32 1, 0
%WrCIbtVL5GMXo4VnVnFCTcsL0Ebcl9 = icmp eq i32 %inp0, %cqxIIMqhCyfTJbg3yuZdFwm7hg9EFD
br i1 %WrCIbtVL5GMXo4VnVnFCTcsL0Ebcl9, label %OzIGxbniDWTyPgIT3jwUI7RBVlx3EV, label %YxcvP7mc9e5fxvkw6aKJcOO9uf9xqh

OzIGxbniDWTyPgIT3jwUI7RBVlx3EV:
%YOISki2zhDRz88xSxPdWRugjtm5u3X = add i8 49, 0
store i8 %YOISki2zhDRz88xSxPdWRugjtm5u3X, i8* %outpu
%ao249NXYN50fogC7g8zs1OZOytWMXq = load i8, i8* %outpu
br label %eLMibvhABOjsxzk22yAObbsv6Qoedm

YxcvP7mc9e5fxvkw6aKJcOO9uf9xqh:
br label %eLMibvhABOjsxzk22yAObbsv6Qoedm

eLMibvhABOjsxzk22yAObbsv6Qoedm:
%aoURD2ryRnK7LlntzbdyWMHcgyVVkl = add i32 2, 0
%dwqJpaMQ4RLzgmkruqOgxa7vDeVCyt = icmp eq i32 %inp0, %aoURD2ryRnK7LlntzbdyWMHcgyVVkl
br i1 %dwqJpaMQ4RLzgmkruqOgxa7vDeVCyt, label %X0PIK1M2wxwoCBgkVO5uk5qIfXcPFy, label %izGw1xAGaA8jo7Wtd1jkSVAT79JfkM

X0PIK1M2wxwoCBgkVO5uk5qIfXcPFy:
%Lgf19Jl04ls5fRFjSzCBub5VsBQXlp = add i8 50, 0
store i8 %Lgf19Jl04ls5fRFjSzCBub5VsBQXlp, i8* %outpu
%lmh1rPaY2PlMYJ8wZnohQPjEachLRO = load i8, i8* %outpu
br label %RsCyioG11PwYGNQ3Xhvn1PWxtJJTR7

izGw1xAGaA8jo7Wtd1jkSVAT79JfkM:
br label %RsCyioG11PwYGNQ3Xhvn1PWxtJJTR7

RsCyioG11PwYGNQ3Xhvn1PWxtJJTR7:
%a4Tf4TZedQFjPVd9DoyT8uEPKbDa5t = add i32 3, 0
%UAFMesW5Cbgqg71kUWdhq3u3pGgGrG = icmp eq i32 %inp0, %a4Tf4TZedQFjPVd9DoyT8uEPKbDa5t
br i1 %UAFMesW5Cbgqg71kUWdhq3u3pGgGrG, label %olrYwVp3abO4KSTeyw5x5nkBpsbw38, label %npcIWUdrmwKbraPJyisBLgzQjcxmt5

olrYwVp3abO4KSTeyw5x5nkBpsbw38:
%xsBuXyJcPOgWdYVoI7Dx5RoNFUJqHY = add i8 51, 0
store i8 %xsBuXyJcPOgWdYVoI7Dx5RoNFUJqHY, i8* %outpu
%KjXOAgarCcNCaicIEYAWeKnuX7FMgD = load i8, i8* %outpu
br label %PjtWdJ1Teep6kifJV9cc9sqjv6ExjJ

npcIWUdrmwKbraPJyisBLgzQjcxmt5:
br label %PjtWdJ1Teep6kifJV9cc9sqjv6ExjJ

PjtWdJ1Teep6kifJV9cc9sqjv6ExjJ:
%nMU5WvhhFFbr6ysjBsIEJp6Hm8lEOp = add i32 4, 0
%YTAcN2zxCTDDWsJ3wgf4bxZ4Lt2hnM = icmp eq i32 %inp0, %nMU5WvhhFFbr6ysjBsIEJp6Hm8lEOp
br i1 %YTAcN2zxCTDDWsJ3wgf4bxZ4Lt2hnM, label %vQVUZ0nis21Ty0l8yEbkFNr1ygfbGj, label %qfBSm2YaejECbXdRVReD22hBsQTy23

vQVUZ0nis21Ty0l8yEbkFNr1ygfbGj:
%rEarHCu8M5jrlzz7jbaX4Zk7ZyoR6j = add i8 52, 0
store i8 %rEarHCu8M5jrlzz7jbaX4Zk7ZyoR6j, i8* %outpu
%aFnv2hyzU2sEkJGiXnjPeDQ3sje8Su = load i8, i8* %outpu
br label %u6YdRLUpegqg1PkpbvYEkp2YcYvqFM

qfBSm2YaejECbXdRVReD22hBsQTy23:
br label %u6YdRLUpegqg1PkpbvYEkp2YcYvqFM

u6YdRLUpegqg1PkpbvYEkp2YcYvqFM:
%zQG6CFjL4JwmsBcVCmcdjHWuHBN89j = add i32 5, 0
%HQ5Yv9YmjWN26gi2RTPC7UfDJStcid = icmp eq i32 %inp0, %zQG6CFjL4JwmsBcVCmcdjHWuHBN89j
br i1 %HQ5Yv9YmjWN26gi2RTPC7UfDJStcid, label %SFXbc0vQY7ZAQTAuu925i7KZfEVcRt, label %YvkACgtHaakMq47aBtUpgVxOfhYTm7

SFXbc0vQY7ZAQTAuu925i7KZfEVcRt:
%XwhwlWzEHyFKEaauqzoHTTg8Ykt5W8 = add i8 53, 0
store i8 %XwhwlWzEHyFKEaauqzoHTTg8Ykt5W8, i8* %outpu
%aiOa1DC27ffeiNlT3TRcUAcHSAwSvL = load i8, i8* %outpu
br label %w2G6dcsZOIFAmiDxE6PIRTQQnly4FZ

YvkACgtHaakMq47aBtUpgVxOfhYTm7:
br label %w2G6dcsZOIFAmiDxE6PIRTQQnly4FZ

w2G6dcsZOIFAmiDxE6PIRTQQnly4FZ:
%kJ8kHyiDnDZt7U3fkVx4xTCKljJo6W = add i32 6, 0
%ZPk9JjX6bjrP0AITpvYhGkPsAHd7pw = icmp eq i32 %inp0, %kJ8kHyiDnDZt7U3fkVx4xTCKljJo6W
br i1 %ZPk9JjX6bjrP0AITpvYhGkPsAHd7pw, label %n8ouhuADedc6Q0frQ4J6RistClbnmL, label %y3lTXCIn49Xk2zNvp8sDB7J3erXumF

n8ouhuADedc6Q0frQ4J6RistClbnmL:
%lt01MTgYKr8E6BiyQnfYypAv9MDSKK = add i8 54, 0
store i8 %lt01MTgYKr8E6BiyQnfYypAv9MDSKK, i8* %outpu
%VtGnRVA8pzTff2cYElPnOyws2e8qtP = load i8, i8* %outpu
br label %jWh7w9r7QGOlETiaE6lzI1UrwSWS2Q

y3lTXCIn49Xk2zNvp8sDB7J3erXumF:
br label %jWh7w9r7QGOlETiaE6lzI1UrwSWS2Q

jWh7w9r7QGOlETiaE6lzI1UrwSWS2Q:
%j3TFWMUjLCAqX3rmVRbEGIVJItbBv4 = add i32 7, 0
%ru0K9EsAd8WHSst5hqQt3QllkhcrZD = icmp eq i32 %inp0, %j3TFWMUjLCAqX3rmVRbEGIVJItbBv4
br i1 %ru0K9EsAd8WHSst5hqQt3QllkhcrZD, label %Jv0j922ZvnGdyNVao7QYJW5Ybw4Mey, label %KPIhSYZJNLqgjmsRHkv9l3CvISQoNq

Jv0j922ZvnGdyNVao7QYJW5Ybw4Mey:
%ar8354rIbTdNURxwfMZi5k7KkGRDkH = add i8 55, 0
store i8 %ar8354rIbTdNURxwfMZi5k7KkGRDkH, i8* %outpu
%aPiHUOujtF6z4hSm9MGdMnH8NhEIFq = load i8, i8* %outpu
br label %h8S8aQLkC3x4xhuMNnxZaq26qefNU1

KPIhSYZJNLqgjmsRHkv9l3CvISQoNq:
br label %h8S8aQLkC3x4xhuMNnxZaq26qefNU1

h8S8aQLkC3x4xhuMNnxZaq26qefNU1:
%tzwPIkRYsjlzPqoVe0eWlkpllOWjZE = add i32 8, 0
%aL3WEwJ0x9sLwKMUOiaWdzSj39lpfW = icmp eq i32 %inp0, %tzwPIkRYsjlzPqoVe0eWlkpllOWjZE
br i1 %aL3WEwJ0x9sLwKMUOiaWdzSj39lpfW, label %N6iY9grh5chI15wOkjwrRvlFStnB6h, label %dUqQFIR8mJizQHoiLdtCkK7zwsS7ck

N6iY9grh5chI15wOkjwrRvlFStnB6h:
%afGq93QrMGbrZtM8iARdYTc3ZRTZsa = add i8 56, 0
store i8 %afGq93QrMGbrZtM8iARdYTc3ZRTZsa, i8* %outpu
%tRwPSa9ha8uNcFojxCL1QGf5XySuJd = load i8, i8* %outpu
br label %aMiqDCfqDp4QMGiXeRc3IVlJEvNVqt

dUqQFIR8mJizQHoiLdtCkK7zwsS7ck:
br label %aMiqDCfqDp4QMGiXeRc3IVlJEvNVqt

aMiqDCfqDp4QMGiXeRc3IVlJEvNVqt:
%ahWl79tlEctdmLiv37jXSCFqnRtRpt = add i32 9, 0
%TSePgu3EytwLhkl4FJeicpukjBRCuB = icmp eq i32 %inp0, %ahWl79tlEctdmLiv37jXSCFqnRtRpt
br i1 %TSePgu3EytwLhkl4FJeicpukjBRCuB, label %mTtOPuDVJGEpNFHdHadodJPAN6KHNC, label %dXAUG1BZ9qZz9x31ThioXLQYlVw57H

mTtOPuDVJGEpNFHdHadodJPAN6KHNC:
%wBDYnp33lu0sDEvNns56piwvA8DsMm = add i8 57, 0
store i8 %wBDYnp33lu0sDEvNns56piwvA8DsMm, i8* %outpu
%m2cWvqbVWJrJFW0TlVoSSJ5hwWSQOg = load i8, i8* %outpu
br label %U9QjjqXFH0wcWaRm99VIFQDLbf6I2u

dXAUG1BZ9qZz9x31ThioXLQYlVw57H:
br label %U9QjjqXFH0wcWaRm99VIFQDLbf6I2u

U9QjjqXFH0wcWaRm99VIFQDLbf6I2u:
%kIZB6StkE0xSf0tchrEJAMxX1s5ogz = load i8, i8* %outpu
ret i8 %kIZB6StkE0xSf0tchrEJAMxX1s5ogz
}
define ptr @itostr32( i32 %inp1) {
%var = alloca i32
%len = alloca i32
%b = alloca i1
%outp = alloca ptr
store i32 %inp1, i32* %var
%aFsEOVkaKogki4fB7DBHjIhw7qE1qH = load i32, i32* %var
%nSiSJoZUI7XQkBAmelhXMxTcSSgmI2 = add i32 0, 0
store i32 %nSiSJoZUI7XQkBAmelhXMxTcSSgmI2, i32* %len
%IgBbp27vWw433JOtuoZ8CpcgQlADau = load i32, i32* %len
%S0eybRgXoVodsWaZmJasX5n7oniO3P = add i1 1, 0
store i1 %S0eybRgXoVodsWaZmJasX5n7oniO3P, i1* %b
%C0fXft9H9AQ88DmSVL6gqW3BhFFFoq = load i1, i1* %b
br label %EGhoAGnDSMA0Z29jYTJrUBPPzgM4u3

aleFeZtobK3PtNdfTycVlrcS2fxJtT:
%w5GIgPxwqnBkpgmKhJ0xADRCUewpwE = load i1, i1* %b
br i1 %w5GIgPxwqnBkpgmKhJ0xADRCUewpwE, label %EGhoAGnDSMA0Z29jYTJrUBPPzgM4u3, label %n9TFVw9e4Ju67DqUdRMYjLYUyas5zL

EGhoAGnDSMA0Z29jYTJrUBPPzgM4u3:
%Zp2XqAF91HVrsUK75oXz06AcdqfZxS = load i32, i32* %var
%NCoWeQEuwBdF8C4DNBVO1yqnCa3afx = add i32 0, 0
%aXuI1GTQyZsxtY2te50DtV9K3eCOVH = icmp eq i32 %Zp2XqAF91HVrsUK75oXz06AcdqfZxS, %NCoWeQEuwBdF8C4DNBVO1yqnCa3afx
br i1 %aXuI1GTQyZsxtY2te50DtV9K3eCOVH, label %lUYPpa9nbOk5sO8sjMcjUq7RSgV4QV, label %P2it7YwXrp1bC65SlmZODE54wT1taX

lUYPpa9nbOk5sO8sjMcjUq7RSgV4QV:
%aLAmqk44vPsD8GCKI3Q9x0aDpWFnAR = add i1 0, 0
store i1 %aLAmqk44vPsD8GCKI3Q9x0aDpWFnAR, i1* %b
%ZpMhmDTiUN0LmF2Ov0gsQcHkzD4c9B = load i1, i1* %b
br label %srm30xkXj3LnjsskJaEA7p4iuEefmN

P2it7YwXrp1bC65SlmZODE54wT1taX:
%MoIcSIZoupVkDgpX3goT3Gcj8Vqus8 = load i32, i32* %var
%MnOpEVBNGZwUIiXf8HeWRcEsq4AOPP = add i32 10, 0
%Lc3A5BuIIB2eqNryAgXoSATcSO23cd = sdiv i32 %MoIcSIZoupVkDgpX3goT3Gcj8Vqus8, %MnOpEVBNGZwUIiXf8HeWRcEsq4AOPP
store i32 %Lc3A5BuIIB2eqNryAgXoSATcSO23cd, i32* %var
%FNMMh7QjlE2roZCB8UJdJEa3ByUEcn = load i32, i32* %var
%jpx1BM9mCpIHILWhcIC4Y6DNRFdfGY = load i32, i32* %len
%F5IDXZPBhuvSHcBiVUs3dwPYcEuacq = add i32 1, 0
%lJcfAl8wlkfE5JcBUx789ZBDDgta59 = add i32 %jpx1BM9mCpIHILWhcIC4Y6DNRFdfGY, %F5IDXZPBhuvSHcBiVUs3dwPYcEuacq
store i32 %lJcfAl8wlkfE5JcBUx789ZBDDgta59, i32* %len
%Tq5Fmt5aBBwopQ02ou3SXmTQL3pyBq = load i32, i32* %len
br label %srm30xkXj3LnjsskJaEA7p4iuEefmN

srm30xkXj3LnjsskJaEA7p4iuEefmN:
br label %aleFeZtobK3PtNdfTycVlrcS2fxJtT
n9TFVw9e4Ju67DqUdRMYjLYUyas5zL:
%var1 = alloca i32
%b1 = alloca i1
%cntr = alloca i32
%p9HpwLEjxjhPczlAz3V5agumoClufa = load i32, i32* %len
%BY3LNMLQgdDDd9zJR2rzPn6ZSmFg8x = add i32 1, 0
%QV8TbjUIFKboVWAFR4nrOUKu3GKEwy = add i32 %p9HpwLEjxjhPczlAz3V5agumoClufa, %BY3LNMLQgdDDd9zJR2rzPn6ZSmFg8x
%aAKTu82aPI0rXWuELWgyoSWjH1g2mu = sext i32 %QV8TbjUIFKboVWAFR4nrOUKu3GKEwy to i64
%gRZc2Je69dyJ8lftxRKPktQWoTeXwp = call ptr @malloc(i64 %aAKTu82aPI0rXWuELWgyoSWjH1g2mu)
store ptr %gRZc2Je69dyJ8lftxRKPktQWoTeXwp, ptr %outp
%DO2SjntXSF7hgSpRY0inUeS1XkzUe3 = load ptr, ptr %outp
%nOkLwiZcXuBuoLFULsaehbi8OksEUr = add i1 1, 0
store i1 %nOkLwiZcXuBuoLFULsaehbi8OksEUr, i1* %b1
%aHiQoyN8ULSp3Tz4Dgp0AY5GvsqsDI = load i1, i1* %b1
store i32 %inp1, i32* %var1
%MzOfaiIRBKbjXUygOVk5hvHlQ0eBWu = load i32, i32* %var1
%XKwB1q4ztfVO0IJeu1Y5duicRrRvG8 = load i32, i32* %len
%a0dLagRgW21cfthTF3hnCUF9EMNToy = add i32 1, 0
%ou7yM9PAfHBZwBmVDQi6o72Q2LXCZo = sub i32 %XKwB1q4ztfVO0IJeu1Y5duicRrRvG8, %a0dLagRgW21cfthTF3hnCUF9EMNToy
store i32 %ou7yM9PAfHBZwBmVDQi6o72Q2LXCZo, i32* %cntr
%azCosZIqZQbIvxIuPJPtlRt6DcaZD9 = load i32, i32* %cntr
br label %ZWWWQOGyfDUZA8pTlmcJIb8Jo5iVl4

rDGNbY0Dq9cRSt1K4mZJIqAt35eyRg:
%xfYbcQ3sSf44R3ocNQ0rr0aXB6SO9K = load i1, i1* %b1
br i1 %xfYbcQ3sSf44R3ocNQ0rr0aXB6SO9K, label %ZWWWQOGyfDUZA8pTlmcJIb8Jo5iVl4, label %a4cCHE92xIfI9rd88TTItYMlr31jqt

ZWWWQOGyfDUZA8pTlmcJIb8Jo5iVl4:
%pxoBzCAuSlfH5pTXRyq1eqbbZpSJYS = load i32, i32* %var1
%ayVxGI1gQMYzCZ0tPOec9wh9NASb8R = add i32 0, 0
%aRPzBCUOhGluLgOkaSHjlTBvuQRtab = icmp eq i32 %pxoBzCAuSlfH5pTXRyq1eqbbZpSJYS, %ayVxGI1gQMYzCZ0tPOec9wh9NASb8R
br i1 %aRPzBCUOhGluLgOkaSHjlTBvuQRtab, label %cxeRnZFsYC6gLGbUte23mHmXOXAYFn, label %kCFf2avmhkdooCl9JjeDMo3U3YwQXm

cxeRnZFsYC6gLGbUte23mHmXOXAYFn:
%bogsK6xYGFa0OrALePPy0ZBnSCixEF = add i8 0, 0
%GcmvyyUmipBGG7SIPen8NN5JlNJBIh = load ptr, ptr %outp
%TqQAfLjQSvTnWF8XJWFsjlfmsslUBu = load i32, i32* %len
%DMwzipNPj6erD9AGtsZ0NT4w30Y1xn = getelementptr inbounds i8, ptr %GcmvyyUmipBGG7SIPen8NN5JlNJBIh, i32 %TqQAfLjQSvTnWF8XJWFsjlfmsslUBu
store i8 %bogsK6xYGFa0OrALePPy0ZBnSCixEF, ptr %DMwzipNPj6erD9AGtsZ0NT4w30Y1xn
%OdFK94cyyZ1dl6Zxhb96Os7zmCkbuO = add i1 0, 0
store i1 %OdFK94cyyZ1dl6Zxhb96Os7zmCkbuO, i1* %b1
%WF5rXjrTBxVJ8CpZzR6VW1RyjjGbsR = load i1, i1* %b1
br label %vpSUQzDoCMUrek6lRWyd3dlJFc6lKR

kCFf2avmhkdooCl9JjeDMo3U3YwQXm:
%VCQdDgjew7hZVbWncQ6smTenkIjCqV = load i32, i32* %var1
%CLw2P0JSLDRsVhs94SYFzGGjCLyQHy = add i32 10, 0
%aI3WR0TxZMXpLqQkEKlaxF9XPknDYY = srem i32 %VCQdDgjew7hZVbWncQ6smTenkIjCqV, %CLw2P0JSLDRsVhs94SYFzGGjCLyQHy
%IksMobSmYdT1LPxokWn9RHyTXa31gL = call i8 @itoc32(i32 %aI3WR0TxZMXpLqQkEKlaxF9XPknDYY)
%AiIPb2Ibtg9sMo1FYUtdDfVVsu7ylT = load ptr, ptr %outp
%r8d3wbeywMDLKKTTmlbmDkpPJS4ILH = load i32, i32* %cntr
%vuFIjI4gmevGcrKAiqpsiUL8GspCRn = getelementptr inbounds i8, ptr %AiIPb2Ibtg9sMo1FYUtdDfVVsu7ylT, i32 %r8d3wbeywMDLKKTTmlbmDkpPJS4ILH
store i8 %IksMobSmYdT1LPxokWn9RHyTXa31gL, ptr %vuFIjI4gmevGcrKAiqpsiUL8GspCRn
%INNmFnSipa9Nu91pxfX1uOlnr2XK7o = load i32, i32* %var1
%a7KBq8wT805mlr9zhOR4o8QlUkgHOp = add i32 10, 0
%Q6jcPtxb5dgJ2v41Pe1o1sbjmaPDf6 = sdiv i32 %INNmFnSipa9Nu91pxfX1uOlnr2XK7o, %a7KBq8wT805mlr9zhOR4o8QlUkgHOp
store i32 %Q6jcPtxb5dgJ2v41Pe1o1sbjmaPDf6, i32* %var1
%EZA69Z2s9uaRkJHU6O1b0ucHVgmgdz = load i32, i32* %var1
%v1xUEPkxsqFxEQ4Jz81QzfDkhMYOF2 = load i32, i32* %cntr
%a3kjDHtb50cpjz4jOlNc22TqJ8yBmp = add i32 1, 0
%DA4eelVCyg1DFBvR5NJ5jNeq9YMadS = sub i32 %v1xUEPkxsqFxEQ4Jz81QzfDkhMYOF2, %a3kjDHtb50cpjz4jOlNc22TqJ8yBmp
store i32 %DA4eelVCyg1DFBvR5NJ5jNeq9YMadS, i32* %cntr
%BBtuVaJftOHYUDVblCAkK7RKeobFEz = load i32, i32* %cntr
br label %vpSUQzDoCMUrek6lRWyd3dlJFc6lKR

vpSUQzDoCMUrek6lRWyd3dlJFc6lKR:
br label %rDGNbY0Dq9cRSt1K4mZJIqAt35eyRg
a4cCHE92xIfI9rd88TTItYMlr31jqt:
%sdX7GkJePnAUB6eUesIn1KjcSNCaOk = load ptr, ptr %outp
ret ptr %sdX7GkJePnAUB6eUesIn1KjcSNCaOk
}
define i32 @strlen32( ptr %inp) {
%not_reached = alloca i1
%count32 = alloca i32
%dsh8V4vpjXp7ZuIgfRp2KJrHQeSbl0 = add i1 1, 0
store i1 %dsh8V4vpjXp7ZuIgfRp2KJrHQeSbl0, i1* %not_reached
%CGNbeQ79dadDuB5KQ9WyRJ4b0soHWS = load i1, i1* %not_reached
%VXoVo1PAQerimHawjGq3fHw2pXoJ5L = add i32 0, 0
store i32 %VXoVo1PAQerimHawjGq3fHw2pXoJ5L, i32* %count32
%rFdyBr1pawGHJs5RCJx6z9jXyvTtc5 = load i32, i32* %count32
br label %LmJh8zSdVEY5NWe1rtKhEgrhUVGV46

ec2EUKM1oDnxnkMf43SA0A8lRP3NAa:
%OpjyphVNC9F5OU4mVdIWCZNrxcXXmO = load i1, i1* %not_reached
br i1 %OpjyphVNC9F5OU4mVdIWCZNrxcXXmO, label %LmJh8zSdVEY5NWe1rtKhEgrhUVGV46, label %qUT2hy3Z3YIPngUTuV8rz0ozMghgYe

LmJh8zSdVEY5NWe1rtKhEgrhUVGV46:
%MDWd3pB0jj4rDQnIBgo4tNlsg05g3I = load i32, i32* %count32
%PclseLmDXmOaeFXJoLPCyuBMCP91jm = getelementptr inbounds i8, ptr %inp, i32 %MDWd3pB0jj4rDQnIBgo4tNlsg05g3I
%sL3vClxJTLNV4R6Vd266LYMsikOvFp = load i8, ptr %PclseLmDXmOaeFXJoLPCyuBMCP91jm
%o5qPykmQv9KOIaeuXKV69nSTFYG1q6 = add i8 0, 0
%Rz7jGI0CYDwbOacXnDsCaFoftnXulm = icmp eq i8 %sL3vClxJTLNV4R6Vd266LYMsikOvFp, %o5qPykmQv9KOIaeuXKV69nSTFYG1q6
br i1 %Rz7jGI0CYDwbOacXnDsCaFoftnXulm, label %WSXNj1bMD4UQJhkoVY07wuSMzcgwn0, label %Hsr1B4aqEYASYKAEO6HPAm1kAn9VL2

WSXNj1bMD4UQJhkoVY07wuSMzcgwn0:
%yRinOmoxQLk646BiPNvCwUss3XaUvt = add i1 0, 0
store i1 %yRinOmoxQLk646BiPNvCwUss3XaUvt, i1* %not_reached
%NgPluKY6TqEgIAD4lpW40qqBlJNz81 = load i1, i1* %not_reached
br label %qfeBuDUN8JIP1vOugoI029k7rYrQGU

Hsr1B4aqEYASYKAEO6HPAm1kAn9VL2:
%acH7zS9iGX6UzcjVgRB8mtOotvQeod = load i32, i32* %count32
%nJb54pf1krwoJh2IjnBVFzs1ULp18d = add i32 1, 0
%OpFnAajF20uItgm07Df26NhycOuwEY = add i32 %acH7zS9iGX6UzcjVgRB8mtOotvQeod, %nJb54pf1krwoJh2IjnBVFzs1ULp18d
store i32 %OpFnAajF20uItgm07Df26NhycOuwEY, i32* %count32
%p6k3EKGutdt5EunUzKgMsFVUmFZXFU = load i32, i32* %count32
br label %qfeBuDUN8JIP1vOugoI029k7rYrQGU

qfeBuDUN8JIP1vOugoI029k7rYrQGU:
br label %ec2EUKM1oDnxnkMf43SA0A8lRP3NAa
qUT2hy3Z3YIPngUTuV8rz0ozMghgYe:
%a3InY0a3ZdlpcG6BwJVn2ubxAkkHp4 = load i32, i32* %count32
ret i32 %a3InY0a3ZdlpcG6BwJVn2ubxAkkHp4
}
define i64 @strlen64( ptr %inp) {
%not_reached = alloca i1
%count64 = alloca i64
%hPeEnr1lk0I4IqJXzqifR2EXFxx0Dx = add i1 1, 0
store i1 %hPeEnr1lk0I4IqJXzqifR2EXFxx0Dx, i1* %not_reached
%tLAxPr8EDuat1gyyxQovtnWLJqDuVA = load i1, i1* %not_reached
%gT94AeAyCjYruKFbx5y8i3VQfjeQVP = add i64 0, 0
store i64 %gT94AeAyCjYruKFbx5y8i3VQfjeQVP, i64* %count64
%epdlFzTKsiznnPQnWPYVlZ9WzQzOBO = load i64, i64* %count64
br label %Tgi6adz2jIeJVA5W6wSQ0KDajLIV6l

ICpHgRQeviWgEiijv9JUs0f8GZ8YZn:
%kOURIS8UoLYJ0HdflRfbpTPy4Ue9gh = load i1, i1* %not_reached
br i1 %kOURIS8UoLYJ0HdflRfbpTPy4Ue9gh, label %Tgi6adz2jIeJVA5W6wSQ0KDajLIV6l, label %p0H7cA664R3WgqPxQlYCuALrbZw2CL

Tgi6adz2jIeJVA5W6wSQ0KDajLIV6l:
%DkckXWJO8xP5pWXP3qxwC9h6rDiwtP = load i64, i64* %count64
%aivrXLLb2nvJdfKIAz0zHAujn36RWb = getelementptr inbounds i8, ptr %inp, i64 %DkckXWJO8xP5pWXP3qxwC9h6rDiwtP
%d4gvZ8RKzEKo1WCy80ZOHNXh935lTb = load i8, ptr %aivrXLLb2nvJdfKIAz0zHAujn36RWb
%SSqlQ611JVFYnp0AHTO1OaPQ2ByvmU = add i8 0, 0
%XhVHKHlLWlANPQmCKP4iaeidX9jqTt = icmp eq i8 %d4gvZ8RKzEKo1WCy80ZOHNXh935lTb, %SSqlQ611JVFYnp0AHTO1OaPQ2ByvmU
br i1 %XhVHKHlLWlANPQmCKP4iaeidX9jqTt, label %Q0M1QvSAQeHHqxGhrYgnrecH3vf6VU, label %l2cBY0Ky2apFRJJS3wl8qlVyKOvLRB

Q0M1QvSAQeHHqxGhrYgnrecH3vf6VU:
%MrMEATqC3ZLTchNXyBkMdOIAxMQas5 = add i1 0, 0
store i1 %MrMEATqC3ZLTchNXyBkMdOIAxMQas5, i1* %not_reached
%JGRM0rCs5s1rAo78cXcyLlLTuyLIO7 = load i1, i1* %not_reached
br label %VKr7m9Au86OMNypMNtEf9zC5N2E2rN

l2cBY0Ky2apFRJJS3wl8qlVyKOvLRB:
%aIUQJ3Sji5gi1wKEbkuwt7H6hGoGRW = load i64, i64* %count64
%vC0LgXLvImkJkKhaqhTQXpP9b6uOk9 = add i64 1, 0
%ahrLiLPpTzxG6fenEzJQB2F4H9Dttw = add i64 %aIUQJ3Sji5gi1wKEbkuwt7H6hGoGRW, %vC0LgXLvImkJkKhaqhTQXpP9b6uOk9
store i64 %ahrLiLPpTzxG6fenEzJQB2F4H9Dttw, i64* %count64
%J1CHD0C4HpqiuNK9uIJjD9Etfvq1C2 = load i64, i64* %count64
br label %VKr7m9Au86OMNypMNtEf9zC5N2E2rN

VKr7m9Au86OMNypMNtEf9zC5N2E2rN:
br label %ICpHgRQeviWgEiijv9JUs0f8GZ8YZn
p0H7cA664R3WgqPxQlYCuALrbZw2CL:
%ObmlKHPCu4dZ9F3zYV3E7ZqZkEFVl7 = load i64, i64* %count64
ret i64 %ObmlKHPCu4dZ9F3zYV3E7ZqZkEFVl7
}
define ptr @strdup( ptr %inp) {
%out_str = alloca ptr
%len64 = alloca i64
%DaIRPTqfJHTeboXw7dacgWVGJ7JjMk = call i64 @strlen64(ptr %inp)
%K1Rpx1ooIZzxlH3Bnl5SvFzQu7szGV = add i64 1, 0
%Y3dVbJOvMjG8YItDhQ0nQrglSiGHZD = add i64 %DaIRPTqfJHTeboXw7dacgWVGJ7JjMk, %K1Rpx1ooIZzxlH3Bnl5SvFzQu7szGV
store i64 %Y3dVbJOvMjG8YItDhQ0nQrglSiGHZD, i64* %len64
%n6uyzWLlP3RjBP8s5xT4mgYEFNmzUV = load i64, i64* %len64
%mlzlAuQfp0hlA15iU6tKQz2PDSC3z7 = call ptr @malloc(i64 %n6uyzWLlP3RjBP8s5xT4mgYEFNmzUV)
store ptr %mlzlAuQfp0hlA15iU6tKQz2PDSC3z7, ptr %out_str
%lDPAVW7LDbr285l6pLhyFtMml7XH8l = load ptr, ptr %out_str
%b = alloca i1
%cntr64 = alloca i64
%adCJQpuX7iTIaRh1IUvUTLH4IPGIkA = add i1 1, 0
store i1 %adCJQpuX7iTIaRh1IUvUTLH4IPGIkA, i1* %b
%GWArJPNBcUMcxNRuqejBigY9MX8sFD = load i1, i1* %b
%dPzkcsrzNWhXWqqEmYbvlUwZYbBkNp = add i64 0, 0
store i64 %dPzkcsrzNWhXWqqEmYbvlUwZYbBkNp, i64* %cntr64
%clN6jy8afk91mWKvfTfrN9p9ObwMDk = load i64, i64* %cntr64
br label %faAzUOfPOl8T0GvR1L3LlTno0Ddxdt

yr6sBRYALrF5JIIb532HeGW5wgQwbU:
%SGQE8X8Mc1RM8xN0dr2IpP7evX8tUl = load i1, i1* %b
br i1 %SGQE8X8Mc1RM8xN0dr2IpP7evX8tUl, label %faAzUOfPOl8T0GvR1L3LlTno0Ddxdt, label %xZVI7b5BiZDP88CAxCU0EtQFkzDbDT

faAzUOfPOl8T0GvR1L3LlTno0Ddxdt:
%aEfmTjAIeYWg8LdUs2p5JV1hxhmhVy = load i64, i64* %cntr64
%aziZSqKuHGo2UxfFjDasKdU1cWmiq7 = load i64, i64* %len64
%apiFU1sxSC6yzkHVZg7PP205WIPEyE = icmp eq i64 %aEfmTjAIeYWg8LdUs2p5JV1hxhmhVy, %aziZSqKuHGo2UxfFjDasKdU1cWmiq7
br i1 %apiFU1sxSC6yzkHVZg7PP205WIPEyE, label %FyJ0tYK2ytcr0iGmMF5E5IdobKja7C, label %auKQz1LfHleJ8AIdW94fGpY8ZdxVzF

FyJ0tYK2ytcr0iGmMF5E5IdobKja7C:
%algMJ1hOC66CDRcmtD2QEa5JqqkjGC = add i8 0, 0
%WQpk9ORfMjxmucRhoaEgXns4E2nJ3O = load ptr, ptr %out_str
%aT6oqThUyxGCmlENhQBhTRQDuMDlxX = load i64, i64* %len64
%YhCPCLSQyiQ8MoL3HFPAqyAbaAH0xE = getelementptr inbounds i8, ptr %WQpk9ORfMjxmucRhoaEgXns4E2nJ3O, i64 %aT6oqThUyxGCmlENhQBhTRQDuMDlxX
store i8 %algMJ1hOC66CDRcmtD2QEa5JqqkjGC, ptr %YhCPCLSQyiQ8MoL3HFPAqyAbaAH0xE
%vM7pCdw55CUYkgMPOTeShee4hewCTi = add i1 0, 0
store i1 %vM7pCdw55CUYkgMPOTeShee4hewCTi, i1* %b
%bKMltlbpz1bSTWKKDLzCN3hQnVjL0b = load i1, i1* %b
br label %p2yGhq2y4jMERqdBbHKucCWoegWwOB

auKQz1LfHleJ8AIdW94fGpY8ZdxVzF:
%ao0lmCZvJDrhjkht9LSbZFXUKP4cMr = load i64, i64* %cntr64
%lvmLkTKT9diE70njvGKZxAIwXuJcmZ = getelementptr inbounds i8, ptr %inp, i64 %ao0lmCZvJDrhjkht9LSbZFXUKP4cMr
%ag2D7CdolRtOMPsQDLRBRs9wcSPDtR = load i8, ptr %lvmLkTKT9diE70njvGKZxAIwXuJcmZ
%F5GT99b2QAWKMrVORsALWEf4GGyfC1 = load ptr, ptr %out_str
%Rxv1VlzeXgRFWMksPMuLTf8CYLAuNd = load i64, i64* %cntr64
%iJPlDz5SAYvkOBxYRVBtdRlfcTs2fI = getelementptr inbounds i8, ptr %F5GT99b2QAWKMrVORsALWEf4GGyfC1, i64 %Rxv1VlzeXgRFWMksPMuLTf8CYLAuNd
store i8 %ag2D7CdolRtOMPsQDLRBRs9wcSPDtR, ptr %iJPlDz5SAYvkOBxYRVBtdRlfcTs2fI
br label %p2yGhq2y4jMERqdBbHKucCWoegWwOB

p2yGhq2y4jMERqdBbHKucCWoegWwOB:
br label %yr6sBRYALrF5JIIb532HeGW5wgQwbU
xZVI7b5BiZDP88CAxCU0EtQFkzDbDT:
%vPhNl1bXroVuvUN45uNNQFAHZM6Id1 = load ptr, ptr %out_str
ret ptr %vPhNl1bXroVuvUN45uNNQFAHZM6Id1
}
define void @main() {
%juan = alloca ptr
%touhghh = alloca ptr
%vFMOnwG6GCsBdUBJ0ygrljNtPWaDpr = add i32 1234, 0
%lfqkUDUDpQWswZk1AcL5GJyXaYoiLy = call ptr @itostr32(i32 %vFMOnwG6GCsBdUBJ0ygrljNtPWaDpr)
store ptr %lfqkUDUDpQWswZk1AcL5GJyXaYoiLy, ptr %juan
%VCaKa08nJKgn2yfMpj9BXFGpeqVxoT = load ptr, ptr %juan
%g6Hsa8hmoyhrVbwois4SYbQEIVx18f = call ptr @strdup(ptr %VCaKa08nJKgn2yfMpj9BXFGpeqVxoT)
store ptr %g6Hsa8hmoyhrVbwois4SYbQEIVx18f, ptr %touhghh
%fkkAUCtzPgJ44uObOs9ZQHaXixogPT = load ptr, ptr %touhghh
%YzGSOBTNjyI4MpymaMGkq5BrTejLdd = load ptr, ptr %juan
call void @free(ptr %YzGSOBTNjyI4MpymaMGkq5BrTejLdd)
%lvkc9eGgVLCYxv2tSHxuOCMdpnup0C = load ptr, ptr %touhghh
call i32 @puts(ptr %lvkc9eGgVLCYxv2tSHxuOCMdpnup0C)
call void @free(ptr %lvkc9eGgVLCYxv2tSHxuOCMdpnup0C)
ret void
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%aGmL5JnFsAJRVBTxhhljS9n0XgjrLI = call i32 @strlen32(ptr %inp1)
store i32 %aGmL5JnFsAJRVBTxhhljS9n0XgjrLI, i32* %end_of_inp1
%qunc7ByZbsBQogrv276cnavjcjDd3I = load i32, i32* %end_of_inp1
%VRwgXSs4Lyu3DXlmmEonNNx8KX2von = call i32 @strlen32(ptr %inp2)
store i32 %VRwgXSs4Lyu3DXlmmEonNNx8KX2von, i32* %end_of_inp2
%a7zZ77qgBooVoPTFwOnluQg7LHvW7E = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%aQXJpB4CEyomFEQuDhbXfr0PFA5gg2 = add i32 0, 0
store i32 %aQXJpB4CEyomFEQuDhbXfr0PFA5gg2, i32* %cntr1
%k3lQQNquLYtGO2i2NH4du7cQH2qFgA = load i32, i32* %cntr1
store i32 %k3lQQNquLYtGO2i2NH4du7cQH2qFgA, i32* %cntr2
%ocN95d7fFN9UhTnL0nYzXXW9mXiGHc = load i32, i32* %cntr2
%IiMTwaJfhSU3B1YCgkGzcf8qbuR0nN = add i1 1, 0
store i1 %IiMTwaJfhSU3B1YCgkGzcf8qbuR0nN, i1* %not_yet_reached_inp1_end
%qiAlXPqqykt41Zdr207DGklml1RTmw = load i1, i1* %not_yet_reached_inp1_end
store i1 %qiAlXPqqykt41Zdr207DGklml1RTmw, i1* %not_yet_reached_inp2_end
%hBM1X6EIf0ZU5jX0QSCRukbvPK30Xw = load i1, i1* %not_yet_reached_inp2_end
%AMYWvD1pynOOB9sqDAAnWcWBbEgd7o = load i32, i32* %end_of_inp1
%cFxoV3Zy2DOc8wCyh5mlw6iacDYLvM = load i32, i32* %end_of_inp2
%BBzvE3frhDhmpR1UGvyjKcPMHDIoDC = add i32 1, 0
%QdPIPVfb0vvCK2sFWO3N0znNYltmkE = add i32 %cFxoV3Zy2DOc8wCyh5mlw6iacDYLvM, %BBzvE3frhDhmpR1UGvyjKcPMHDIoDC
%aVdbdnmL3nsZxGp4ict4fWlkYRuPln = add i32 %AMYWvD1pynOOB9sqDAAnWcWBbEgd7o, %QdPIPVfb0vvCK2sFWO3N0znNYltmkE
%kxBodCKQhu3WNfYANQXIZGk66XpUKm = sext i32 %aVdbdnmL3nsZxGp4ict4fWlkYRuPln to i64
%JHjv4yLcQ02cC8wWV49TXqWhz0ubwk = call ptr @malloc(i64 %kxBodCKQhu3WNfYANQXIZGk66XpUKm)
store ptr %JHjv4yLcQ02cC8wWV49TXqWhz0ubwk, ptr %out
%u6QBfzogdFPJihvmkHfQKJJq6PeWQC = load ptr, ptr %out
br label %rBqRbdIhYUEgEoqvoXnsH33YvunF2n

eyre7qguZlz99ISgyJ4wxo4SruT0F9:
%vPg2P0MxW9aLWUlKCNvZvQ7AttOqv7 = load i1, i1* %not_yet_reached_inp1_end
br i1 %vPg2P0MxW9aLWUlKCNvZvQ7AttOqv7, label %rBqRbdIhYUEgEoqvoXnsH33YvunF2n, label %OT10zaFJLQZN2879JO08Wu50CUZNIs

rBqRbdIhYUEgEoqvoXnsH33YvunF2n:
%Tb7yh50cNivOT0RNxAGvU8mbMwSTrT = load i32, i32* %cntr1
%mnacYoVQb7KgDeMlUA7JtbHAMaIMU9 = getelementptr inbounds i8, ptr %inp1, i32 %Tb7yh50cNivOT0RNxAGvU8mbMwSTrT
%RHcOmVFpfdcv3unncmq9IkoDw9IwFP = load i8, ptr %mnacYoVQb7KgDeMlUA7JtbHAMaIMU9
%YCuMuVAeWIr92K1bHAcBGrSqULeFwN = add i8 0, 0
%SeLSZRpYSv8NK2CpnH0E6NuicI4kuw = icmp eq i8 %RHcOmVFpfdcv3unncmq9IkoDw9IwFP, %YCuMuVAeWIr92K1bHAcBGrSqULeFwN
br i1 %SeLSZRpYSv8NK2CpnH0E6NuicI4kuw, label %h75qlS3R5OAbvQacERec2jC0AVTUS8, label %gLyqXeFkmttXMaw515hSJzhIE5k3i2

h75qlS3R5OAbvQacERec2jC0AVTUS8:
%hOl36VPhN8UT519RZZAc6gdQcNs7Or = add i1 0, 0
store i1 %hOl36VPhN8UT519RZZAc6gdQcNs7Or, i1* %not_yet_reached_inp1_end
%olNemNbtvPVp7WkTTdkBB1DfRynGcf = load i1, i1* %not_yet_reached_inp1_end
br label %xqv1b0aig6DB0ffIkVfU1HeinioEBf

gLyqXeFkmttXMaw515hSJzhIE5k3i2:
%ROJaBVnRb9sBrb8ONmgTq0TVytwT8R = load i32, i32* %cntr1
%T126KhL6ia5BFo3Z68MGUaKPBvpQkL = getelementptr inbounds i8, ptr %inp1, i32 %ROJaBVnRb9sBrb8ONmgTq0TVytwT8R
%M0sqB5KRLhlckPMRbCswAfyWKBBeIu = load i8, ptr %T126KhL6ia5BFo3Z68MGUaKPBvpQkL
%CyBbTc6PeVu00u9MrYQToIo9cyaalg = load ptr, ptr %out
%RtipTWnJ8vPp6aW2DSdl31dEF0m9LJ = load i32, i32* %cntr1
%a9knUKruLpqcWtc2c3ASdngY3wCRPh = getelementptr inbounds i8, ptr %CyBbTc6PeVu00u9MrYQToIo9cyaalg, i32 %RtipTWnJ8vPp6aW2DSdl31dEF0m9LJ
store i8 %M0sqB5KRLhlckPMRbCswAfyWKBBeIu, ptr %a9knUKruLpqcWtc2c3ASdngY3wCRPh
%aQ9v3BpMBNqxqfE3mUSZJrP6kaXEwI = load i32, i32* %cntr1
%h5bUyIMMvxjPc4yFR5rNrKA62wsLL0 = add i32 1, 0
%N1XM1eGM6woMzvM6LCgzrHMBQNNZMU = add i32 %aQ9v3BpMBNqxqfE3mUSZJrP6kaXEwI, %h5bUyIMMvxjPc4yFR5rNrKA62wsLL0
store i32 %N1XM1eGM6woMzvM6LCgzrHMBQNNZMU, i32* %cntr1
%ARnAjV8b9UnTs7fcNhuybiZmWZ7x5p = load i32, i32* %cntr1
br label %xqv1b0aig6DB0ffIkVfU1HeinioEBf

xqv1b0aig6DB0ffIkVfU1HeinioEBf:
br label %eyre7qguZlz99ISgyJ4wxo4SruT0F9
OT10zaFJLQZN2879JO08Wu50CUZNIs:
br label %Xvweuc5l5BAAR1cW8mHaTq3j28d6nZ

dx9pk9aZTXMN9tybfenTmNMDritn9g:
%i6ks6C0tiwVEeBOfsPhrTySuuTXSIj = load i1, i1* %not_yet_reached_inp2_end
br i1 %i6ks6C0tiwVEeBOfsPhrTySuuTXSIj, label %Xvweuc5l5BAAR1cW8mHaTq3j28d6nZ, label %aJwHfu2MA1KbT41IanWY2HpDGHp3UC

Xvweuc5l5BAAR1cW8mHaTq3j28d6nZ:
%auIQKPpUYXTuRNFuhlPfd527nKcl94 = load i32, i32* %cntr2
%HWoSK8yXEA9N5IEDnEeHh0n7giK6tL = getelementptr inbounds i8, ptr %inp2, i32 %auIQKPpUYXTuRNFuhlPfd527nKcl94
%m6FH9XuYNiX7RbwxWA7x4dCCYMVd2s = load i8, ptr %HWoSK8yXEA9N5IEDnEeHh0n7giK6tL
%DkeQ5MHCaTzql31zLjRw2yeZKfg2DT = add i8 0, 0
%a0WIXGKyfPpowRIa2vf7Hb0Ky3UMBI = icmp eq i8 %m6FH9XuYNiX7RbwxWA7x4dCCYMVd2s, %DkeQ5MHCaTzql31zLjRw2yeZKfg2DT
br i1 %a0WIXGKyfPpowRIa2vf7Hb0Ky3UMBI, label %PUGIy7nFv3G0rRNnqwwKsgIIYvaO01, label %tOCz4NS7n8Cvvt3xtcrSZe6a8TjTyj

PUGIy7nFv3G0rRNnqwwKsgIIYvaO01:
%xs1abqHxgstjlqdvEW2wITPJgv8JJ0 = add i1 0, 0
store i1 %xs1abqHxgstjlqdvEW2wITPJgv8JJ0, i1* %not_yet_reached_inp2_end
%agw89dzzkKXuNYhRc0UCIf8AismKUb = load i1, i1* %not_yet_reached_inp2_end
br label %yw0LqaZAoisOP2LLqHMrzxM5VuBylN

tOCz4NS7n8Cvvt3xtcrSZe6a8TjTyj:
br label %yw0LqaZAoisOP2LLqHMrzxM5VuBylN

yw0LqaZAoisOP2LLqHMrzxM5VuBylN:
%puOZJO3jMk4KFsdY1LgHXnI7rkFD7z = load i32, i32* %cntr2
%tzRmcH575f0eGfIJPGlq2pvVfLGJIB = getelementptr inbounds i8, ptr %inp2, i32 %puOZJO3jMk4KFsdY1LgHXnI7rkFD7z
%asP0PpRHu0OWHUSTuVvmIBu7e3R4Zm = load i8, ptr %tzRmcH575f0eGfIJPGlq2pvVfLGJIB
%djYCESeXxmIhSz2fyVmK2UDWfYSU33 = load ptr, ptr %out
%t89DsftzVj5ae8KzBe5xF0pHKtYuWj = load i32, i32* %cntr2
%ABjhUO3JyoYsPJBOJufZWV0RgChW5B = load i32, i32* %end_of_inp1
%YiGnbCwBp4hzqjsbWDGMgLpLCZD7zN = add i32 %t89DsftzVj5ae8KzBe5xF0pHKtYuWj, %ABjhUO3JyoYsPJBOJufZWV0RgChW5B
%AsMXNy4q5Z4ZtntMEwCYrupq2SJqFY = getelementptr inbounds i8, ptr %djYCESeXxmIhSz2fyVmK2UDWfYSU33, i32 %YiGnbCwBp4hzqjsbWDGMgLpLCZD7zN
store i8 %asP0PpRHu0OWHUSTuVvmIBu7e3R4Zm, ptr %AsMXNy4q5Z4ZtntMEwCYrupq2SJqFY
%altT3XKOZBNXPWBo2xJiM2dYrYZ2rS = load i32, i32* %cntr2
%azDCu5XnROPtYk1CzKm2tifxDShikZ = add i32 1, 0
%o6VJS5vxZgSTV0tJPVPXX4voaARSJq = add i32 %altT3XKOZBNXPWBo2xJiM2dYrYZ2rS, %azDCu5XnROPtYk1CzKm2tifxDShikZ
store i32 %o6VJS5vxZgSTV0tJPVPXX4voaARSJq, i32* %cntr2
%bPnCWOAVEm7Qh1lKZVYdjS51O8eUfB = load i32, i32* %cntr2
br label %dx9pk9aZTXMN9tybfenTmNMDritn9g
aJwHfu2MA1KbT41IanWY2HpDGHp3UC:
%x4xx0CowKu95yFCujxUVs5awTWFj26 = load ptr, ptr %out
ret ptr %x4xx0CowKu95yFCujxUVs5awTWFj26
}
