declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i32)
declare void @free(ptr)

define i32 @factorial32( i32 %inp) {
%sOxqJI897ZAO2TgcYeX2XZ0GTf8d49 = add i32 1, 0
%tbgtL1ijc5eL9BIUgsfTNYJMXL9QQp = icmp eq i32 %inp, %sOxqJI897ZAO2TgcYeX2XZ0GTf8d49
br i1 %tbgtL1ijc5eL9BIUgsfTNYJMXL9QQp, label %Jjv0Lz375q3Fr8FFBD6ZM72bKZhBpZ, label %gmSwIEVbiEthKqz1DjjPoJj2lCBIkZ

Jjv0Lz375q3Fr8FFBD6ZM72bKZhBpZ:
%UfOOSIZp8Y02VXZcwKYiA87bYD3KFF = add i32 1, 0
ret i32 %UfOOSIZp8Y02VXZcwKYiA87bYD3KFF
br label %maxYn8e0GahUSIArVa2kSxVlRZ8aWq

gmSwIEVbiEthKqz1DjjPoJj2lCBIkZ:
%ixnPVvhoPw4b46oyR5tlQ7H70prNNL = add i32 1, 0
%adb7sNHREPxl7nEEDIGGp4crqBwuoC = sub i32 %inp, %ixnPVvhoPw4b46oyR5tlQ7H70prNNL
%v4zY0i35sdw2xZTJsfVb0HWeUuG4WN = mul i32 %inp, %adb7sNHREPxl7nEEDIGGp4crqBwuoC
ret i32 %v4zY0i35sdw2xZTJsfVb0HWeUuG4WN
br label %maxYn8e0GahUSIArVa2kSxVlRZ8aWq

maxYn8e0GahUSIArVa2kSxVlRZ8aWq:
%txR1yVummKmNugYmst75LTY0huhHOW = add i32 -1, 0
ret i32 %txR1yVummKmNugYmst75LTY0huhHOW
}
define i64 @factorial64( i64 %inp) {
%WSUX40d5MLHPVDe0SwjDARfUzZPuIo = add i64 1, 0
%Hpn6wbX0b4lAUs85lA8V4YPZq2niGV = icmp eq i64 %inp, %WSUX40d5MLHPVDe0SwjDARfUzZPuIo
br i1 %Hpn6wbX0b4lAUs85lA8V4YPZq2niGV, label %F8p2mmGiI8YrBk9i69ag4oRkZTJDBH, label %mVsc4eH5fPQIGC0JewY6410mBP6vrX

F8p2mmGiI8YrBk9i69ag4oRkZTJDBH:
%a70HdD0xjWBm3ZxL27BiGBv6h1tSJk = add i64 1, 0
ret i64 %a70HdD0xjWBm3ZxL27BiGBv6h1tSJk
br label %Y0edtOH8K5tiUufrZqOMhj9dWi9Sc2

mVsc4eH5fPQIGC0JewY6410mBP6vrX:
%artgv0lcHwavwFXaxSgpzL2TBZlEoS = add i64 1, 0
%aam92uWHmEKJ423KG4OR1IhazdolKF = sub i64 %inp, %artgv0lcHwavwFXaxSgpzL2TBZlEoS
%EErNLU4poagL6hgP9oDhnZrKkZX6hL = mul i64 %inp, %aam92uWHmEKJ423KG4OR1IhazdolKF
ret i64 %EErNLU4poagL6hgP9oDhnZrKkZX6hL
br label %Y0edtOH8K5tiUufrZqOMhj9dWi9Sc2

Y0edtOH8K5tiUufrZqOMhj9dWi9Sc2:
%SIDDaqwzR5Zv8lIYwEaYDgapqLMw1U = add i64 -1, 0
ret i64 %SIDDaqwzR5Zv8lIYwEaYDgapqLMw1U
}
define i8 @itoc32( i32 %inp0) {
%outpu = alloca i8
%A2cmPymYnGB9d6jrkBciJH0JLt2aKA = add i32 0, 0
%S3m1KiD8kYo0F7XkXsZUtqUKJT8faq = icmp eq i32 %inp0, %A2cmPymYnGB9d6jrkBciJH0JLt2aKA
br i1 %S3m1KiD8kYo0F7XkXsZUtqUKJT8faq, label %OXzZwTyqsBrjICJVRETI0t3cxrEPhh, label %aAdcGrHbzILJfQQKBnpR9RgAV4L86U

OXzZwTyqsBrjICJVRETI0t3cxrEPhh:
%CxfK0tz85ki5jN1F1qcTH8N7Qy0Xx0 = add i8 48, 0
store i8 %CxfK0tz85ki5jN1F1qcTH8N7Qy0Xx0, i8* %outpu
%TLUOz2S6klJjWzaWIruy2CEqkxqTLq = load i8, i8* %outpu
br label %HAJt4vfWvnb8t5k9me8eeRjec9QZyx

aAdcGrHbzILJfQQKBnpR9RgAV4L86U:
br label %HAJt4vfWvnb8t5k9me8eeRjec9QZyx

HAJt4vfWvnb8t5k9me8eeRjec9QZyx:
%aNC0mXzyTNdo1OfxfgHmGbvib95PNb = add i32 1, 0
%Kbbk0Hb7s5d7y9DL5oFHQOIHEY6QJP = icmp eq i32 %inp0, %aNC0mXzyTNdo1OfxfgHmGbvib95PNb
br i1 %Kbbk0Hb7s5d7y9DL5oFHQOIHEY6QJP, label %Ajx0QKh05fwFzV669dZhqwaazeh7fY, label %MvRJbSbiXQtsyw8C1Zd7GwbCQBZIK8

Ajx0QKh05fwFzV669dZhqwaazeh7fY:
%aZMKoI1mpqHOm66H2DBNkpMm7j0sTG = add i8 49, 0
store i8 %aZMKoI1mpqHOm66H2DBNkpMm7j0sTG, i8* %outpu
%HuKloydcFjQHOSeAVdX0fLuh1YcirM = load i8, i8* %outpu
br label %u2feALl8IUK0Er4MGwnWYke7AW1yWt

MvRJbSbiXQtsyw8C1Zd7GwbCQBZIK8:
br label %u2feALl8IUK0Er4MGwnWYke7AW1yWt

u2feALl8IUK0Er4MGwnWYke7AW1yWt:
%aHC3xJM73tIJn3DZUgmMplxgN6INc4 = add i32 2, 0
%hxoaoFV5dsLJF3XHqv3gRBQrAvU4vs = icmp eq i32 %inp0, %aHC3xJM73tIJn3DZUgmMplxgN6INc4
br i1 %hxoaoFV5dsLJF3XHqv3gRBQrAvU4vs, label %KskqYp1iUMFR8L8rIdQQHAmePDUlEe, label %tPZ1x6j1apGd1KKCe1CgbKskKHBnws

KskqYp1iUMFR8L8rIdQQHAmePDUlEe:
%m2XTuJ30SgIY2NII4FvJ1iUidgYih9 = add i8 50, 0
store i8 %m2XTuJ30SgIY2NII4FvJ1iUidgYih9, i8* %outpu
%hga09oEP8KxT9szAsJsL4wYMCigjs0 = load i8, i8* %outpu
br label %Jqd8r9ATvKhzboQzu0nrLsCUqK5pBM

tPZ1x6j1apGd1KKCe1CgbKskKHBnws:
br label %Jqd8r9ATvKhzboQzu0nrLsCUqK5pBM

Jqd8r9ATvKhzboQzu0nrLsCUqK5pBM:
%acOb8F3u4jKRjhQaTrjimfmuzcewCg = add i32 3, 0
%AOSRh6xXALlPJJ3JLUkPUfKYtp5yIC = icmp eq i32 %inp0, %acOb8F3u4jKRjhQaTrjimfmuzcewCg
br i1 %AOSRh6xXALlPJJ3JLUkPUfKYtp5yIC, label %jQxHUcHCAvFfsMdVefxYaTjCPjT0ia, label %X4jNRNuoExxz5QeFvw9PswmMhSdvtm

jQxHUcHCAvFfsMdVefxYaTjCPjT0ia:
%WMWniDMGeimO3KEd7iChNwAvK0U2bF = add i8 51, 0
store i8 %WMWniDMGeimO3KEd7iChNwAvK0U2bF, i8* %outpu
%GlQkcaVFs8837P3qqhcAGEFWE5tgjo = load i8, i8* %outpu
br label %rDXdWoFpqlopMjjR2JN4oOtUirU4bc

X4jNRNuoExxz5QeFvw9PswmMhSdvtm:
br label %rDXdWoFpqlopMjjR2JN4oOtUirU4bc

rDXdWoFpqlopMjjR2JN4oOtUirU4bc:
%wDCfNViS9yKpixnf8CUJImQTL9HcVw = add i32 4, 0
%aGLxjEc4IpD80mxAubTmaaQKn5mJRs = icmp eq i32 %inp0, %wDCfNViS9yKpixnf8CUJImQTL9HcVw
br i1 %aGLxjEc4IpD80mxAubTmaaQKn5mJRs, label %IoHie5EnIVoQezIys6LqH4Ibi0gXEi, label %JvoKw0cjN9OETwX1C3Jgk3vK9xSoWz

IoHie5EnIVoQezIys6LqH4Ibi0gXEi:
%gpzas9Tt2VIIvoZgZbPAnPccTrrock = add i8 52, 0
store i8 %gpzas9Tt2VIIvoZgZbPAnPccTrrock, i8* %outpu
%NPGqlW0SrJaAgBsKWlBgW4YishoN5n = load i8, i8* %outpu
br label %Dy0idC6ijygAcrP7gybsBqO7P3Ohi9

JvoKw0cjN9OETwX1C3Jgk3vK9xSoWz:
br label %Dy0idC6ijygAcrP7gybsBqO7P3Ohi9

Dy0idC6ijygAcrP7gybsBqO7P3Ohi9:
%asYCASsEP5NSvETalIPnN1wE4BVkxs = add i32 5, 0
%aXVsOny5uXiipffVRWag6IM3bVXUiG = icmp eq i32 %inp0, %asYCASsEP5NSvETalIPnN1wE4BVkxs
br i1 %aXVsOny5uXiipffVRWag6IM3bVXUiG, label %UHjLTjGWe41SN6tYqOlZjMWr9byquq, label %aEepRSOMuV0hIUS5dyYyrgJLVe53zu

UHjLTjGWe41SN6tYqOlZjMWr9byquq:
%A6P9d9AIM6rXSjCNfpCo4DgNOPKXSK = add i8 53, 0
store i8 %A6P9d9AIM6rXSjCNfpCo4DgNOPKXSK, i8* %outpu
%p6rvZzlsH3iYdFJq39tWjgR5MqclqH = load i8, i8* %outpu
br label %vIq3od0EZFZqw4jmlyGxqfmgB5m74l

aEepRSOMuV0hIUS5dyYyrgJLVe53zu:
br label %vIq3od0EZFZqw4jmlyGxqfmgB5m74l

vIq3od0EZFZqw4jmlyGxqfmgB5m74l:
%UH0PWIsgHCXa0tULYysHcpupRrGLk7 = add i32 6, 0
%TspV143ijIdPaNDXJXJwRLhE1FaL8Z = icmp eq i32 %inp0, %UH0PWIsgHCXa0tULYysHcpupRrGLk7
br i1 %TspV143ijIdPaNDXJXJwRLhE1FaL8Z, label %a6hU72Zq8o6WfrMYmDb8doOQNaBdVC, label %ioJDx3vTyGvLrAIWUcxafPQtGiMq48

a6hU72Zq8o6WfrMYmDb8doOQNaBdVC:
%OSzQ7tVu0UgxDj4MvdSVX5sMfOOaRg = add i8 54, 0
store i8 %OSzQ7tVu0UgxDj4MvdSVX5sMfOOaRg, i8* %outpu
%d4iaMJXmgJfuloPdaW0PGewtwvBani = load i8, i8* %outpu
br label %X4Rid1qj8QQMYFkBwFpfqqWGR3phoR

ioJDx3vTyGvLrAIWUcxafPQtGiMq48:
br label %X4Rid1qj8QQMYFkBwFpfqqWGR3phoR

X4Rid1qj8QQMYFkBwFpfqqWGR3phoR:
%rW0O1ftqC27UXXEj2o6R6zWupcsXVf = add i32 7, 0
%SDpiIDPNocbeOQMt2y8syU35Y3jePL = icmp eq i32 %inp0, %rW0O1ftqC27UXXEj2o6R6zWupcsXVf
br i1 %SDpiIDPNocbeOQMt2y8syU35Y3jePL, label %uXXyx3w9dl5jExM5a4Zw0m0Y1BLw8z, label %eqaWUroSH6SIS5l4J7f9n9ik0bquh1

uXXyx3w9dl5jExM5a4Zw0m0Y1BLw8z:
%E4F3JOv2VrFROFYD49gFC2j4y66qh6 = add i8 55, 0
store i8 %E4F3JOv2VrFROFYD49gFC2j4y66qh6, i8* %outpu
%WpfxT3Q84FRjLlb05Yz4a4leU1h5Kh = load i8, i8* %outpu
br label %AAIw6pTet9KpbhS2IoPDoxgdQx0CWO

eqaWUroSH6SIS5l4J7f9n9ik0bquh1:
br label %AAIw6pTet9KpbhS2IoPDoxgdQx0CWO

AAIw6pTet9KpbhS2IoPDoxgdQx0CWO:
%KSPtuztMllqgXHV4EzWCbIagEoRYBs = add i32 8, 0
%lGik8HBhPxiWgreZkk7wPBm9hwZCWT = icmp eq i32 %inp0, %KSPtuztMllqgXHV4EzWCbIagEoRYBs
br i1 %lGik8HBhPxiWgreZkk7wPBm9hwZCWT, label %noOnSrdpBsaTC4mTsfATpJp7bnrVh2, label %aldIPiE7zixKmjOofEpyZisNPDa7wn

noOnSrdpBsaTC4mTsfATpJp7bnrVh2:
%Ey9Oxr8lqZaZcv65Lsy3Fv68iBQd1M = add i8 56, 0
store i8 %Ey9Oxr8lqZaZcv65Lsy3Fv68iBQd1M, i8* %outpu
%QjBvBse8fqVPEeHajoqEc9tTFj1WeS = load i8, i8* %outpu
br label %VedXJy6wtKriKXbIJGL8d4EFiDOaDd

aldIPiE7zixKmjOofEpyZisNPDa7wn:
br label %VedXJy6wtKriKXbIJGL8d4EFiDOaDd

VedXJy6wtKriKXbIJGL8d4EFiDOaDd:
%akSYByd0qamMR6vaZrx4p674ukc1kp = add i32 9, 0
%lFN9r0DWNCqLHBwh3PY9gvYGYmPtU6 = icmp eq i32 %inp0, %akSYByd0qamMR6vaZrx4p674ukc1kp
br i1 %lFN9r0DWNCqLHBwh3PY9gvYGYmPtU6, label %xqrPnLbu4eN6feh1JaOFkI8xkDTEbj, label %RDNPF2Ni6qpzeAl27KMrMqrPTBsoQ6

xqrPnLbu4eN6feh1JaOFkI8xkDTEbj:
%g02w7azbSqegSJW3dOs4vORhG8jCNF = add i8 57, 0
store i8 %g02w7azbSqegSJW3dOs4vORhG8jCNF, i8* %outpu
%MbwaucVcfCVQknYYX8gDzS9aiSXhk3 = load i8, i8* %outpu
br label %ksOG34QFDigOkJecbX2divV9zCtFWy

RDNPF2Ni6qpzeAl27KMrMqrPTBsoQ6:
br label %ksOG34QFDigOkJecbX2divV9zCtFWy

ksOG34QFDigOkJecbX2divV9zCtFWy:
%lny8tLz252QAiCk4LVYSQqktOZn8l3 = load i8, i8* %outpu
ret i8 %lny8tLz252QAiCk4LVYSQqktOZn8l3
}
define ptr @itostr32( i32 %inp1) {
%var = alloca i32
%len = alloca i32
%b = alloca i1
%outp = alloca ptr
store i32 %inp1, i32* %var
%cBUbJsohfRPxi3NKnlYdj3xTPBkwlR = load i32, i32* %var
%EvHqsnyLutROMRpAN5shrY1DkGQ4EV = add i32 0, 0
store i32 %EvHqsnyLutROMRpAN5shrY1DkGQ4EV, i32* %len
%apYizbRKUBPIuzpb96EWjzDJFsEPOa = load i32, i32* %len
%qSfhu96215IP3K6PDmj1BVJ1CliYOH = add i1 1, 0
store i1 %qSfhu96215IP3K6PDmj1BVJ1CliYOH, i1* %b
%anXIslAuyYfuNjRn7kcE6SSr8HcYDu = load i1, i1* %b
br label %Bc3apTVB0gWpsDceyyrNdfrcYYCbt3

JPt1KdsMhtWkOr1N57w0cGnpJvpRcD:
%nicC0IL9H96aPLdOnmJ9vqoErK57Ab = load i1, i1* %b
br i1 %nicC0IL9H96aPLdOnmJ9vqoErK57Ab, label %Bc3apTVB0gWpsDceyyrNdfrcYYCbt3, label %oCexAZqPaPUbIrhQxWWigcHSLbMIVS

Bc3apTVB0gWpsDceyyrNdfrcYYCbt3:
%WxT6N6TdUR0zkXKbXKqfHV9PTax1av = load i32, i32* %var
%Pq9GKSDFhniRujowPwj4VfjK76DXLJ = add i32 0, 0
%pjnhQzoFZzKIJk1nmIN25G1YKImgBv = icmp eq i32 %WxT6N6TdUR0zkXKbXKqfHV9PTax1av, %Pq9GKSDFhniRujowPwj4VfjK76DXLJ
br i1 %pjnhQzoFZzKIJk1nmIN25G1YKImgBv, label %wdQfC7nihDsonc5CcSREuu7dJNu6sp, label %BExcnLLOh3R2gHwwh7sXbAGG2tSdqe

wdQfC7nihDsonc5CcSREuu7dJNu6sp:
%PyFfHPnSIgV4Uky02Jm92XlpYpZfF7 = add i1 0, 0
store i1 %PyFfHPnSIgV4Uky02Jm92XlpYpZfF7, i1* %b
%xZ7lZjZF8yNqaWL39Cw29UEbB4ErYZ = load i1, i1* %b
br label %am73IWssggchHcrkeBOKamakApxbEP

BExcnLLOh3R2gHwwh7sXbAGG2tSdqe:
%tatlAbLnf4aqfytJAuXbl9iXavOWjX = load i32, i32* %var
%WYLn7RTJkOqArrDbSUdQGKe3KUyekG = add i32 10, 0
%rY9wXIssWuEgeyffAgSpAvyNCRxYAI = sdiv i32 %tatlAbLnf4aqfytJAuXbl9iXavOWjX, %WYLn7RTJkOqArrDbSUdQGKe3KUyekG
store i32 %rY9wXIssWuEgeyffAgSpAvyNCRxYAI, i32* %var
%hKNNJLQSi7FtJI15EHEZNWsBVgKpoc = load i32, i32* %var
%a4mz7z63Vx4kERGQSSmcSNd2ggpVRM = load i32, i32* %len
%LSv7ZKLkTduzYVZrFYOPw1odIuMsUr = add i32 1, 0
%YyyNzG2u1MEtmca0tnSJzIJ1zg0wNv = add i32 %a4mz7z63Vx4kERGQSSmcSNd2ggpVRM, %LSv7ZKLkTduzYVZrFYOPw1odIuMsUr
store i32 %YyyNzG2u1MEtmca0tnSJzIJ1zg0wNv, i32* %len
%KCDpdyZsA2jUKNOxspZLAmAPjf3Za6 = load i32, i32* %len
br label %am73IWssggchHcrkeBOKamakApxbEP

am73IWssggchHcrkeBOKamakApxbEP:
br label %JPt1KdsMhtWkOr1N57w0cGnpJvpRcD
oCexAZqPaPUbIrhQxWWigcHSLbMIVS:
%var1 = alloca i32
%b1 = alloca i1
%cntr = alloca i32
%k0C9cEIP0xrZ0JYje1tethe9MWFeI6 = load i32, i32* %len
%EUzgc13JV58sSZqJlTItcIzgpFfSuu = add i32 1, 0
%MeSS7DJzf3IS1IQSd2d96wPr6BavhX = add i32 %k0C9cEIP0xrZ0JYje1tethe9MWFeI6, %EUzgc13JV58sSZqJlTItcIzgpFfSuu
%Os5J17X83TbdsqksPVNvjojTg61cHa = call ptr @malloc(i32 %MeSS7DJzf3IS1IQSd2d96wPr6BavhX)
store ptr %Os5J17X83TbdsqksPVNvjojTg61cHa, ptr %outp
%HB47jUXBKAdPJOzpU3q9epm3hGzXRS = load ptr, ptr %outp
%kvwB4XOAd7Ukls1g85rubgv0JBKbXW = add i1 1, 0
store i1 %kvwB4XOAd7Ukls1g85rubgv0JBKbXW, i1* %b1
%nHABLSI3QQytsrK4iPkLOL1lVHBaeB = load i1, i1* %b1
store i32 %inp1, i32* %var1
%ZJ4DRhV44PyiRa8FnjI0FB26UjPZS1 = load i32, i32* %var1
%w22iHQliFDQvTHhmZ0EWwwkZP7JxBq = load i32, i32* %len
%nFTSkW0GEU7grZiB3xFnRYe6LYHM9b = add i32 1, 0
%EnxqRwhXdfHpjfAimTUB4GbeDt2An9 = sub i32 %w22iHQliFDQvTHhmZ0EWwwkZP7JxBq, %nFTSkW0GEU7grZiB3xFnRYe6LYHM9b
store i32 %EnxqRwhXdfHpjfAimTUB4GbeDt2An9, i32* %cntr
%geGJf7SgBMcab5dLEp9FIHHIEsXc18 = load i32, i32* %cntr
br label %qVFxSkJbACrggamzkESmwt8viQ4uUf

d2u81BYlkisY35lcccQJl7CQQeMw3f:
%kYZKpIrHkWAFfowHHMJ2zcf6Vtg4OI = load i1, i1* %b1
br i1 %kYZKpIrHkWAFfowHHMJ2zcf6Vtg4OI, label %qVFxSkJbACrggamzkESmwt8viQ4uUf, label %XYP67J8xzWnvbOlDNlbtRKOj19eLE5

qVFxSkJbACrggamzkESmwt8viQ4uUf:
%aZGDALY373SFshhGnZlrYJNDPXS3J1 = load i32, i32* %var1
%XXjCuZuqH5VrfCmJEbROorD1RVxCV2 = add i32 0, 0
%oEa8WlliEpfv54OKjSoRWxOtolXCuB = icmp eq i32 %aZGDALY373SFshhGnZlrYJNDPXS3J1, %XXjCuZuqH5VrfCmJEbROorD1RVxCV2
br i1 %oEa8WlliEpfv54OKjSoRWxOtolXCuB, label %I2VGzFYEsVBKEh6XcOQQrIPxCiE5c4, label %dX1t6btnpE3vM51GIk7cEq7DUmmGV4

I2VGzFYEsVBKEh6XcOQQrIPxCiE5c4:
%IVgaA4TAAaa3BnayA3OyTtqCraJGn3 = add i8 0, 0
%akJgwtBqIvs8KgPAaX6d8eMQrkb27z = load ptr, ptr %outp
%a7SBLqZNC1vsOFvbtigiFDEAbwNq1m = load i32, i32* %len
%H6jRmqMX19JoRh8QF9CjwlhzRi8kTc = getelementptr inbounds i8, ptr %akJgwtBqIvs8KgPAaX6d8eMQrkb27z, i32 %a7SBLqZNC1vsOFvbtigiFDEAbwNq1m
store i8 %IVgaA4TAAaa3BnayA3OyTtqCraJGn3, ptr %H6jRmqMX19JoRh8QF9CjwlhzRi8kTc
%wyp8t2yyWRzWNd1EYam5YGhycxurxU = add i1 0, 0
store i1 %wyp8t2yyWRzWNd1EYam5YGhycxurxU, i1* %b1
%XjbmqavCNRNZB5IxWYhiO38lFJJjV5 = load i1, i1* %b1
br label %w1g5KUSvmPgVWXYmImy4B5X3hl1G3V

dX1t6btnpE3vM51GIk7cEq7DUmmGV4:
%ac87ffZ8skfqMnsN0Bil2HN0EudPEj = load i32, i32* %var1
%fd0gFv5Toyl0Lf8CadCqL5X873mkxi = add i32 10, 0
%acmmP4XFa5uOl8iVKTIL3nFFkKML4i = srem i32 %ac87ffZ8skfqMnsN0Bil2HN0EudPEj, %fd0gFv5Toyl0Lf8CadCqL5X873mkxi
%V6eE9fALoMWAe3PyvQjTVvLOqpgl4a = call i8 @itoc32(i32 %acmmP4XFa5uOl8iVKTIL3nFFkKML4i)
%Q9vbOPyvWrVihNcm9UuZVubobpMPUe = load ptr, ptr %outp
%WGDQJRbnw560zN1k5YzFVdYATFF0KY = load i32, i32* %cntr
%qVx4it5ScOBPFow2IxXuBq0mImeHBR = getelementptr inbounds i8, ptr %Q9vbOPyvWrVihNcm9UuZVubobpMPUe, i32 %WGDQJRbnw560zN1k5YzFVdYATFF0KY
store i8 %V6eE9fALoMWAe3PyvQjTVvLOqpgl4a, ptr %qVx4it5ScOBPFow2IxXuBq0mImeHBR
%a5P5EVwNYVQEX8fLgP9gdJwbquGTOz = load i32, i32* %var1
%aASJeygW8Xsuk8HL17nkRLwn4w8Pys = add i32 10, 0
%u2qKlJ1gl6RLru44AKVIhEWdEWVO6O = sdiv i32 %a5P5EVwNYVQEX8fLgP9gdJwbquGTOz, %aASJeygW8Xsuk8HL17nkRLwn4w8Pys
store i32 %u2qKlJ1gl6RLru44AKVIhEWdEWVO6O, i32* %var1
%VPz88KxsCyUwfq23teFUey3n944dZC = load i32, i32* %var1
%H2ymkzIVIHUH8UNPQQPxbDfsO8HKQV = load i32, i32* %cntr
%aW8I1746JOzJypGhNOGJhtuKtUhqco = add i32 1, 0
%aHsco1KMIE73DTKF1Dro3a3eAMILkR = sub i32 %H2ymkzIVIHUH8UNPQQPxbDfsO8HKQV, %aW8I1746JOzJypGhNOGJhtuKtUhqco
store i32 %aHsco1KMIE73DTKF1Dro3a3eAMILkR, i32* %cntr
%jDYzDjvgmGLeUbWvR9BqIDNXykYvzK = load i32, i32* %cntr
br label %w1g5KUSvmPgVWXYmImy4B5X3hl1G3V

w1g5KUSvmPgVWXYmImy4B5X3hl1G3V:
br label %d2u81BYlkisY35lcccQJl7CQQeMw3f
XYP67J8xzWnvbOlDNlbtRKOj19eLE5:
%p7fx2tkmmgXtMw9QHloZE6RNUZtkFM = load ptr, ptr %outp
ret ptr %p7fx2tkmmgXtMw9QHloZE6RNUZtkFM
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%not_reached = alloca i1
%cntr = alloca i32
%Ioij7hP2nmNuvSNhwGTSIl51sXVqgH = add i1 1, 0
store i1 %Ioij7hP2nmNuvSNhwGTSIl51sXVqgH, i1* %not_reached
%ADIBe4O0ooGqLHAZ7TxmyQ83pxYYFq = load i1, i1* %not_reached
%duZpSxyikU9xgaCHiNh0RAzwDUnTSo = add i32 0, 0
store i32 %duZpSxyikU9xgaCHiNh0RAzwDUnTSo, i32* %cntr
%kKnubSfvw9B86UHOjUragN6b9lOSa6 = load i32, i32* %cntr
br label %ODIpDUtfi4hqiW8dXCYKOMLNFVEUgc

ybKEuMFRj9r6eP5Ko58xjR7GhwO7pE:
%q4ioGhTe8eTGIVpprxZk2fTTC8CPuM = load i1, i1* %not_reached
br i1 %q4ioGhTe8eTGIVpprxZk2fTTC8CPuM, label %ODIpDUtfi4hqiW8dXCYKOMLNFVEUgc, label %qBNOrr6cyptezQ5tjukdCYKRhOD6Ku

ODIpDUtfi4hqiW8dXCYKOMLNFVEUgc:
%iOaukbTKe07o3yRNqmVWh7JGONzmLi = load i32, i32* %cntr
%qG2NEWWyk2K100qaWUxD97I3VNhebb = getelementptr inbounds i8, ptr %inp1, i32 %iOaukbTKe07o3yRNqmVWh7JGONzmLi
%q0cjSlK6dPODHhQDl3mxjaopwSq8mL = load i8, ptr %qG2NEWWyk2K100qaWUxD97I3VNhebb
%aZQpiF2v2DmrTngYl0jmc1TspZCBWX = add i8 0, 0
%Fn0LrLTCCk9QSN33NTAE9ytFb2l0QD = icmp eq i8 %q0cjSlK6dPODHhQDl3mxjaopwSq8mL, %aZQpiF2v2DmrTngYl0jmc1TspZCBWX
br i1 %Fn0LrLTCCk9QSN33NTAE9ytFb2l0QD, label %WJGJmcKM0MaSvkqhU5tUHN0WsZ40JS, label %noRGoKkUXhocrzBle8Hpzzt4Q9zL3O

WJGJmcKM0MaSvkqhU5tUHN0WsZ40JS:
%T1QaHD61cXVEOyW8jbm7OsFoFhA5Fu = add i1 0, 0
store i1 %T1QaHD61cXVEOyW8jbm7OsFoFhA5Fu, i1* %not_reached
%a5VhIkYuPHqzXv7pAjgiWSvLppB3tG = load i1, i1* %not_reached
br label %JyaHbOZsmrSdMQlOkfxe0ZL1KBlPZi

noRGoKkUXhocrzBle8Hpzzt4Q9zL3O:
%Iayy11brWa9JG0fag1jfKwc5Fp7H8b = load i32, i32* %cntr
%AZvFRtzymDm7YLqiucZ9LumxVQxH0c = add i32 1, 0
%iP7QSLz1OsuvelWudpXuUCPzHGtE0D = add i32 %Iayy11brWa9JG0fag1jfKwc5Fp7H8b, %AZvFRtzymDm7YLqiucZ9LumxVQxH0c
store i32 %iP7QSLz1OsuvelWudpXuUCPzHGtE0D, i32* %cntr
%zbQfmLePZTJPIu8Z9XgYB1x2uxFIHp = load i32, i32* %cntr
br label %JyaHbOZsmrSdMQlOkfxe0ZL1KBlPZi

JyaHbOZsmrSdMQlOkfxe0ZL1KBlPZi:
br label %ybKEuMFRj9r6eP5Ko58xjR7GhwO7pE
qBNOrr6cyptezQ5tjukdCYKRhOD6Ku:
%VxVEenVWlRZgYePhNQzz9aC7zYZnLA = load i32, i32* %cntr
store i32 %VxVEenVWlRZgYePhNQzz9aC7zYZnLA, i32* %end_of_inp1
%g3HP4bkinIto6AlfmDIZo6CIyuOxYz = load i32, i32* %end_of_inp1
%ZhLE9QeFQzHIuQOmDNkaukqXXTXEN7 = add i1 1, 0
store i1 %ZhLE9QeFQzHIuQOmDNkaukqXXTXEN7, i1* %not_reached
%OnG7wtx9AfyENcQNZPDstcaz2pW8Sa = load i1, i1* %not_reached
%sidZjBzDd2ddEzxeEihLUBYK572pb0 = add i32 0, 0
store i32 %sidZjBzDd2ddEzxeEihLUBYK572pb0, i32* %cntr
%naqeGf1zxCDUiz1F5nhgzCSEgHp4cW = load i32, i32* %cntr
br label %pXh9S7Ws8cH3xVrYnx3O0zSg66YI4r

CZCb8uF0kXXmziwfZ5RgrTy5WhPBuc:
%dQTqn2dW0E52Z5ssYOxgzoYweb4iPA = load i1, i1* %not_reached
br i1 %dQTqn2dW0E52Z5ssYOxgzoYweb4iPA, label %pXh9S7Ws8cH3xVrYnx3O0zSg66YI4r, label %aYgHEEcn1GRRLbB6wpqnnuGqEkccrW

pXh9S7Ws8cH3xVrYnx3O0zSg66YI4r:
%dNDNI0oPSPJ4c0rryG7bKOUl6A3kpF = load i32, i32* %cntr
%WGv0T9jbwygccO6qYeAYyq1hW5DXb6 = getelementptr inbounds i8, ptr %inp2, i32 %dNDNI0oPSPJ4c0rryG7bKOUl6A3kpF
%aTgVNx24picxqbei8bCv8sQ4JlrtqV = load i8, ptr %WGv0T9jbwygccO6qYeAYyq1hW5DXb6
%oVmgiTg3rfNNLKZkoc5RiQwifYkTok = add i8 0, 0
%gzlTdralc11gJQ93tuYkEehR4uczqv = icmp eq i8 %aTgVNx24picxqbei8bCv8sQ4JlrtqV, %oVmgiTg3rfNNLKZkoc5RiQwifYkTok
br i1 %gzlTdralc11gJQ93tuYkEehR4uczqv, label %V5CiFHPAvF9SJ0sMs7SyA4cBgkijlS, label %Cch1uEucvGUA7EgCgQ0sdiUOeI2p0h

V5CiFHPAvF9SJ0sMs7SyA4cBgkijlS:
%H1EizC3qeyLSPd0JHQwmJacWPWfDuY = add i1 0, 0
store i1 %H1EizC3qeyLSPd0JHQwmJacWPWfDuY, i1* %not_reached
%nQ0zFS5UIde9zSHx6g0CXSOcfz0eIf = load i1, i1* %not_reached
br label %o1BZmfICYvluhqKhU4B30E3s8uqKDT

Cch1uEucvGUA7EgCgQ0sdiUOeI2p0h:
%qzENgVsAF3Yf76c1nmmvgU0GHf4mih = load i32, i32* %cntr
%rkY1pNLTSBgPvx5QkbgBkziiPoISSZ = add i32 1, 0
%m6umxsuoRdwsmz34KSPWfEms9WvTcq = add i32 %qzENgVsAF3Yf76c1nmmvgU0GHf4mih, %rkY1pNLTSBgPvx5QkbgBkziiPoISSZ
store i32 %m6umxsuoRdwsmz34KSPWfEms9WvTcq, i32* %cntr
%hHkFS07m8H138ET9ZwugzZFzQ8JGHd = load i32, i32* %cntr
br label %o1BZmfICYvluhqKhU4B30E3s8uqKDT

o1BZmfICYvluhqKhU4B30E3s8uqKDT:
br label %CZCb8uF0kXXmziwfZ5RgrTy5WhPBuc
aYgHEEcn1GRRLbB6wpqnnuGqEkccrW:
%bNvxdc1OwVU8Bd5VHrXHvVDAWh9Y0Y = load i32, i32* %cntr
store i32 %bNvxdc1OwVU8Bd5VHrXHvVDAWh9Y0Y, i32* %end_of_inp2
%R9BFjsJ2rXdYorYWsCh535ECgOxyBF = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%pxcsVnwHRxbmpmZ1VJQ239gwkUwgVL = add i32 0, 0
store i32 %pxcsVnwHRxbmpmZ1VJQ239gwkUwgVL, i32* %cntr1
%M8lH60ssT538zQGSSilrZVD1RcNyBJ = load i32, i32* %cntr1
store i32 %M8lH60ssT538zQGSSilrZVD1RcNyBJ, i32* %cntr2
%IMfEZe3TFbRlN4SU5n4y6h9oFtuzaM = load i32, i32* %cntr2
%S8Y6qFtTSLJKJ2ePqGFkcqUi950Pqu = add i1 1, 0
store i1 %S8Y6qFtTSLJKJ2ePqGFkcqUi950Pqu, i1* %not_yet_reached_inp1_end
%ujiw9YTDshQzMo9Jdsi0DM1T2Mt1eC = load i1, i1* %not_yet_reached_inp1_end
store i1 %ujiw9YTDshQzMo9Jdsi0DM1T2Mt1eC, i1* %not_yet_reached_inp2_end
%QsoKRQIf00hm011ypjsLKCc6dBzFrv = load i1, i1* %not_yet_reached_inp2_end
%hno5fCIQ75kLTcJuhDmiTYQmBhEE68 = load i32, i32* %end_of_inp1
%QbZCZtFd5dBWYRNLL2oZOhwLf0SDJ4 = load i32, i32* %end_of_inp2
%m8r44SJsuryhCFHyr4U9RYkLTb752Y = add i32 1, 0
%kPmboLzd56AGH8VIDI8MSptK8rNxjA = add i32 %QbZCZtFd5dBWYRNLL2oZOhwLf0SDJ4, %m8r44SJsuryhCFHyr4U9RYkLTb752Y
%a1RiBuoiGKm5ZaPmPeAJpNlLlY1Mv7 = add i32 %hno5fCIQ75kLTcJuhDmiTYQmBhEE68, %kPmboLzd56AGH8VIDI8MSptK8rNxjA
%t4XAWpyZMZBaqbVLjcvpNYwKPLcVy9 = call ptr @malloc(i32 %a1RiBuoiGKm5ZaPmPeAJpNlLlY1Mv7)
store ptr %t4XAWpyZMZBaqbVLjcvpNYwKPLcVy9, ptr %out
%HcrqWhGJ4bKQDzvsFtysY5sgca9oAM = load ptr, ptr %out
br label %h5GpZ7MiCvV37bjCfuEPXkyJnPUM0e

wS9WdXjukMqNEInom2VacbcKoAodWg:
%aoDmJQFPjbt8iza5phd1JIYqwiaEYa = load i1, i1* %not_yet_reached_inp1_end
br i1 %aoDmJQFPjbt8iza5phd1JIYqwiaEYa, label %h5GpZ7MiCvV37bjCfuEPXkyJnPUM0e, label %yKk4QfdqmoKyCSbnDKGWWxFg8u2XXy

h5GpZ7MiCvV37bjCfuEPXkyJnPUM0e:
%aubrtVKtKLBdmXLQHPIIKwIcBMSdc7 = load i32, i32* %cntr1
%lboodH4ZdrFp7FCinmJnjfcrTxfmIP = getelementptr inbounds i8, ptr %inp1, i32 %aubrtVKtKLBdmXLQHPIIKwIcBMSdc7
%I5DytW1CeroDBNbFCyX5os5u01T09N = load i8, ptr %lboodH4ZdrFp7FCinmJnjfcrTxfmIP
%BJB3HtkPVoE1nR9Zo0MED8SJDc6zwS = add i8 0, 0
%Iq6cpw8WiGbMlacHW2FsP6PVkzJUP3 = icmp eq i8 %I5DytW1CeroDBNbFCyX5os5u01T09N, %BJB3HtkPVoE1nR9Zo0MED8SJDc6zwS
br i1 %Iq6cpw8WiGbMlacHW2FsP6PVkzJUP3, label %Fw4IwPryuHYjPA4jnigfX23Gu3eZGu, label %fPWZNKICHL9OIPzSUlFDWZY5R4vxqU

Fw4IwPryuHYjPA4jnigfX23Gu3eZGu:
%Ese0623QfKnIJ44KyIKBg640gvtzao = add i1 0, 0
store i1 %Ese0623QfKnIJ44KyIKBg640gvtzao, i1* %not_yet_reached_inp1_end
%AGOqV6a4ffr2azpjem9HZPZd7I5fcU = load i1, i1* %not_yet_reached_inp1_end
br label %xYTgOSn6SKttAADpmQ7B9IKIbTmJ7S

fPWZNKICHL9OIPzSUlFDWZY5R4vxqU:
%bPNB4CTWQhViz0ZKv3Cg8eoYACtijW = load i32, i32* %cntr1
%RRs6HvY5fqZhwcZuTjM1YIoXies3VR = getelementptr inbounds i8, ptr %inp1, i32 %bPNB4CTWQhViz0ZKv3Cg8eoYACtijW
%QF2hnkKoq03G0LA1h2sxMYo1CGsH0V = load i8, ptr %RRs6HvY5fqZhwcZuTjM1YIoXies3VR
%tOQfiEulRClmmPHKA2LEE9KstiTzNx = load ptr, ptr %out
%th2cwC81SBEJtt2OjfhJbCmouPVBtA = load i32, i32* %cntr1
%S4jwIhZQh1c4eNi8iQBDpToVLiuVSv = getelementptr inbounds i8, ptr %tOQfiEulRClmmPHKA2LEE9KstiTzNx, i32 %th2cwC81SBEJtt2OjfhJbCmouPVBtA
store i8 %QF2hnkKoq03G0LA1h2sxMYo1CGsH0V, ptr %S4jwIhZQh1c4eNi8iQBDpToVLiuVSv
%OSdKy4fsozCIRibAPV5ec82xjEKg1d = load i32, i32* %cntr1
%F8dq9kFo9YrK1AqytB1Qx9DDci1Ulh = add i32 1, 0
%qilGclKBd5arkdiEat0PkPeeQvDPng = add i32 %OSdKy4fsozCIRibAPV5ec82xjEKg1d, %F8dq9kFo9YrK1AqytB1Qx9DDci1Ulh
store i32 %qilGclKBd5arkdiEat0PkPeeQvDPng, i32* %cntr1
%ioF8AiJYeMFfVs5qgXiLfChxDen484 = load i32, i32* %cntr1
br label %xYTgOSn6SKttAADpmQ7B9IKIbTmJ7S

xYTgOSn6SKttAADpmQ7B9IKIbTmJ7S:
br label %wS9WdXjukMqNEInom2VacbcKoAodWg
yKk4QfdqmoKyCSbnDKGWWxFg8u2XXy:
br label %VsRWak9TpX1gXZQMp6lauOLPwvmJkb

ZgtjcWtKB6lDwMjVQGgUlwV0ZIHO3W:
%RQFbmuFZNYw8QBO3B81lxX3DB4fOh6 = load i1, i1* %not_yet_reached_inp2_end
br i1 %RQFbmuFZNYw8QBO3B81lxX3DB4fOh6, label %VsRWak9TpX1gXZQMp6lauOLPwvmJkb, label %zPxqJQpdVvES04H0iDu10Rbdygs5Ro

VsRWak9TpX1gXZQMp6lauOLPwvmJkb:
%sVePmIjTvlTl03enJ8qeYYysfHIPCj = load i32, i32* %cntr2
%kA5Ml4wdtKRhqegh7Lc1Lb0cebzOcZ = getelementptr inbounds i8, ptr %inp2, i32 %sVePmIjTvlTl03enJ8qeYYysfHIPCj
%NkctqTt5r8FdglMZ3hcPGmClA64cvm = load i8, ptr %kA5Ml4wdtKRhqegh7Lc1Lb0cebzOcZ
%ByB2gVQUXdQ4kT5CrDVazHXOY8ATsK = add i8 0, 0
%Cgx0nuLRRYDv3nmQ6ZF63uqtH7Ot3F = icmp eq i8 %NkctqTt5r8FdglMZ3hcPGmClA64cvm, %ByB2gVQUXdQ4kT5CrDVazHXOY8ATsK
br i1 %Cgx0nuLRRYDv3nmQ6ZF63uqtH7Ot3F, label %ycc5DUbDYIx4Zd73ug1Ka0mJT1pQy8, label %Cpzw0H09ByMqfoxgnElUg3gx0FS3rq

ycc5DUbDYIx4Zd73ug1Ka0mJT1pQy8:
%aUo8Gy1AX3SE1kFiLDpNhxDlEinfl0 = add i1 0, 0
store i1 %aUo8Gy1AX3SE1kFiLDpNhxDlEinfl0, i1* %not_yet_reached_inp2_end
%lOBozvKKufT6jSG28tQaN35jC5VYNW = load i1, i1* %not_yet_reached_inp2_end
br label %aengxSOc4iFK6JFy0fbbSTnrzxbXFp

Cpzw0H09ByMqfoxgnElUg3gx0FS3rq:
br label %aengxSOc4iFK6JFy0fbbSTnrzxbXFp

aengxSOc4iFK6JFy0fbbSTnrzxbXFp:
%UWgwQ4D4pi4YGZhVZUBWIs2ePcYSt6 = load i32, i32* %cntr2
%BcjE75hGaWDRF0fDQ3t5bmHmulDHVs = getelementptr inbounds i8, ptr %inp2, i32 %UWgwQ4D4pi4YGZhVZUBWIs2ePcYSt6
%c2v3oeYMLLvYZBbbt1auvsHdLPm4F3 = load i8, ptr %BcjE75hGaWDRF0fDQ3t5bmHmulDHVs
%v0kOztbvQag7M5PVcWXRWlwtkvYHha = load ptr, ptr %out
%RvyeXe86DKzHgXD9JHje4clkhIQTu6 = load i32, i32* %cntr2
%dwx1mUudQzMQyJzvvenu7qGsfR7BJr = load i32, i32* %end_of_inp1
%PkEsSh6kaJA3YLHce2b8ZzCrYYahiG = add i32 %RvyeXe86DKzHgXD9JHje4clkhIQTu6, %dwx1mUudQzMQyJzvvenu7qGsfR7BJr
%ebxiaJQF7BiIJd69HDj3mkzpRZ2Xyj = getelementptr inbounds i8, ptr %v0kOztbvQag7M5PVcWXRWlwtkvYHha, i32 %PkEsSh6kaJA3YLHce2b8ZzCrYYahiG
store i8 %c2v3oeYMLLvYZBbbt1auvsHdLPm4F3, ptr %ebxiaJQF7BiIJd69HDj3mkzpRZ2Xyj
%DDgEzyonjhA3zM4mp20BzJsdGuz4Lv = load i32, i32* %cntr2
%aRa5rMGwvy2tM5G56QISl8D2XmIc2y = add i32 1, 0
%BzVYAziie2811yMsSNuQNYpX3DDaH7 = add i32 %DDgEzyonjhA3zM4mp20BzJsdGuz4Lv, %aRa5rMGwvy2tM5G56QISl8D2XmIc2y
store i32 %BzVYAziie2811yMsSNuQNYpX3DDaH7, i32* %cntr2
%iKjns94kP2Hq4tQILcaGuzP3EPWXDz = load i32, i32* %cntr2
br label %ZgtjcWtKB6lDwMjVQGgUlwV0ZIHO3W
zPxqJQpdVvES04H0iDu10Rbdygs5Ro:
%AilOEhKfdDziacLkOV3PJMZ0t5fXkg = load ptr, ptr %out
ret ptr %AilOEhKfdDziacLkOV3PJMZ0t5fXkg
}
