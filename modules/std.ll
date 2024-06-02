declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i32)
declare void @free(ptr)

define i32 @fact( i32 %inp) {
%R64qTbvEKlPrN03LvKEPVQUAdoUce9 = add i32 1, 0
%fAMaxJqT4Av65AkEnGPfoAcrhrZbuX = icmp eq i32 %inp, %R64qTbvEKlPrN03LvKEPVQUAdoUce9
br i1 %fAMaxJqT4Av65AkEnGPfoAcrhrZbuX, label %afO6TIY4L8do1bRMp3HVmGIA70xuYo, label %C4o4bDGkd1ueZGJGNUHF8ky8MhhYMT

afO6TIY4L8do1bRMp3HVmGIA70xuYo:
%k66nVIYdRlQVAqe0Je2OcEtD9VtBj5 = add i32 1, 0
ret i32 %k66nVIYdRlQVAqe0Je2OcEtD9VtBj5
br label %j2XvDwTFqGjcuHE65GMBz44UrNBDlL

C4o4bDGkd1ueZGJGNUHF8ky8MhhYMT:
%KVqG0AY57cmXnMpuC5dy0dseSJUD6u = add i32 1, 0
%NwkP5gg3gItvglSsttBsFr0jOKOvP9 = sub i32 %inp, %KVqG0AY57cmXnMpuC5dy0dseSJUD6u
%am1Bx28rfRMslvFjkfKYMX2GFjxfQj = call i32 @fact(i32 %NwkP5gg3gItvglSsttBsFr0jOKOvP9)
%BtJhFKImRS7zHjjxCwcy4jcq5wYQX3 = mul i32 %inp, %am1Bx28rfRMslvFjkfKYMX2GFjxfQj
ret i32 %BtJhFKImRS7zHjjxCwcy4jcq5wYQX3
br label %j2XvDwTFqGjcuHE65GMBz44UrNBDlL

j2XvDwTFqGjcuHE65GMBz44UrNBDlL:
%aP3b5YaKtSTStA1sed4fAUqnDgYPlH = add i32 -1, 0
ret i32 %aP3b5YaKtSTStA1sed4fAUqnDgYPlH
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%not_reached = alloca i1
%cntr = alloca i32
%qdz572rps4B6RohpoCpzOEbAcIc9fL = add i1 1, 0
store i1 %qdz572rps4B6RohpoCpzOEbAcIc9fL, i1* %not_reached
%Ppl2YInFVCQzxr8bnMFjqqkXcVgxgC = load i1, i1* %not_reached
%az4BDVRXSMy1eeTzJtJsMNf43IfrGr = add i32 0, 0
store i32 %az4BDVRXSMy1eeTzJtJsMNf43IfrGr, i32* %cntr
%y3PiVR47nNvZaTSeoZ059uysrnByY6 = load i32, i32* %cntr
br label %ad4rcc9l5rcfJOOyaS1Dyd23vYJdff

ek1rdoEhGoGf0rK6LhmsXfKgONuvTl:
%MzIOufegbWV7V24UoFQOdnh4wRBOi6 = load i1, i1* %not_reached
br i1 %MzIOufegbWV7V24UoFQOdnh4wRBOi6, label %ad4rcc9l5rcfJOOyaS1Dyd23vYJdff, label %fhf9csLsyXntbyJscfVlFTtSDpiRo3

ad4rcc9l5rcfJOOyaS1Dyd23vYJdff:
%GjQRB0xNbASK52rqIIVxWUeNIpyh3M = load i32, i32* %cntr
%NNfEM8YiBvjvIzZIAWc1y0ppX5vQAW = getelementptr inbounds i8, ptr %inp1, i32 %GjQRB0xNbASK52rqIIVxWUeNIpyh3M
%knkKM0O9eZIClWd2j04Gvuj3HYLTzf = load i8, ptr %NNfEM8YiBvjvIzZIAWc1y0ppX5vQAW
%mxLq3lWoqSKbpc9k7Qif3C7khBuR9E = add i8 0, 0
%GIJnI4uQzYe5cN77MYbxceuuYIGFPI = icmp eq i8 %knkKM0O9eZIClWd2j04Gvuj3HYLTzf, %mxLq3lWoqSKbpc9k7Qif3C7khBuR9E
br i1 %GIJnI4uQzYe5cN77MYbxceuuYIGFPI, label %ZbU9FeR6wEVUVptEl58EJabaogOI0c, label %GAst7YG1jgtBKwDkFgbAOaVWbdhlgz

ZbU9FeR6wEVUVptEl58EJabaogOI0c:
%ONBzpNX3qCyVLO0KgJ0FgTh1Khh3bk = add i1 0, 0
store i1 %ONBzpNX3qCyVLO0KgJ0FgTh1Khh3bk, i1* %not_reached
%a2YLKmzDq9cRgCKVjh6XUWeaTRbZfm = load i1, i1* %not_reached
br label %O90Fnx54kzfKIJ0YeTCEJ4ZAGySd8z

GAst7YG1jgtBKwDkFgbAOaVWbdhlgz:
%hh1Y5drsApHHNByEkIoqgz8JKpDKTN = load i32, i32* %cntr
%F6QL22hAiLfgtBnQbbsh97kiNDk5sp = add i32 1, 0
%JV90nHtuuriUG6Jxf0i7OS5Y3OPc2x = add i32 %hh1Y5drsApHHNByEkIoqgz8JKpDKTN, %F6QL22hAiLfgtBnQbbsh97kiNDk5sp
store i32 %JV90nHtuuriUG6Jxf0i7OS5Y3OPc2x, i32* %cntr
%afDOdW1VRBHK6SAvQrw2w5MYT6Zu8r = load i32, i32* %cntr
br label %O90Fnx54kzfKIJ0YeTCEJ4ZAGySd8z

O90Fnx54kzfKIJ0YeTCEJ4ZAGySd8z:
br label %ek1rdoEhGoGf0rK6LhmsXfKgONuvTl
fhf9csLsyXntbyJscfVlFTtSDpiRo3:
%OoXTltF64DthizeY1yr8ofPd1Noajn = load i32, i32* %cntr
store i32 %OoXTltF64DthizeY1yr8ofPd1Noajn, i32* %end_of_inp1
%Ez2dGtKlcq5HIFakOZl9cvEutPwGM1 = load i32, i32* %end_of_inp1
%lxgLOZoKTQIFkREPRLNpW00WuYwbH5 = add i1 1, 0
store i1 %lxgLOZoKTQIFkREPRLNpW00WuYwbH5, i1* %not_reached
%NgoRK2HL86SHnrYxlvhbY4Ftca3xgm = load i1, i1* %not_reached
%mjBmf669htp3IiKS8pI1xtxrhP8uYZ = add i32 0, 0
store i32 %mjBmf669htp3IiKS8pI1xtxrhP8uYZ, i32* %cntr
%TGSm9w0BcnItQaKAzWTgkmMtSpPrmy = load i32, i32* %cntr
br label %z4GyllbjTKuGhTkYxZR1SmEoXx5dLN

A6P6qiYH6RhRsgNX6lxmidxsAvoRXF:
%wnKEOJyu9v5QS6h14NaqPR6NgljhHV = load i1, i1* %not_reached
br i1 %wnKEOJyu9v5QS6h14NaqPR6NgljhHV, label %z4GyllbjTKuGhTkYxZR1SmEoXx5dLN, label %R1C6mcJHDQs13cfGdSRuYxD8dq2cxF

z4GyllbjTKuGhTkYxZR1SmEoXx5dLN:
%llFHtTGjOpKGX5GKxp9c3h0fPlAo0p = load i32, i32* %cntr
%SaQ7CZlFH7oWv8nGQVuqyGlyxtzaPl = getelementptr inbounds i8, ptr %inp2, i32 %llFHtTGjOpKGX5GKxp9c3h0fPlAo0p
%XP5RP2YvaI5yUTXjSq8i31mdSN5Px8 = load i8, ptr %SaQ7CZlFH7oWv8nGQVuqyGlyxtzaPl
%aFdP7czmuzk6iLV1teaR3P0C4U8iY4 = add i8 0, 0
%qdSclCTT6LWnCdMovauIgN3yVk0sHt = icmp eq i8 %XP5RP2YvaI5yUTXjSq8i31mdSN5Px8, %aFdP7czmuzk6iLV1teaR3P0C4U8iY4
br i1 %qdSclCTT6LWnCdMovauIgN3yVk0sHt, label %j6hAvuNIsKLig1FJb1tpfOC2eCHurw, label %AbRTITUgbCyvDCVzT3uJpSnuDpd5p8

j6hAvuNIsKLig1FJb1tpfOC2eCHurw:
%NRzUCJKCASphptGj08fDFwNFLguUbj = add i1 0, 0
store i1 %NRzUCJKCASphptGj08fDFwNFLguUbj, i1* %not_reached
%ai4xI0LBmj4Jzzm2ogVn7wPXFPYzez = load i1, i1* %not_reached
br label %uEtaDi5uX4zC4Fs7jnqsak1UVmf0ml

AbRTITUgbCyvDCVzT3uJpSnuDpd5p8:
%dH8iJ7IS7QF0rrc4R1UusC4B0PQzBy = load i32, i32* %cntr
%TMZyo1SNMIicCtKmi34U5maJNrJpIq = add i32 1, 0
%agBFi4VlWIlBogJwACDrWVs8bCZmOD = add i32 %dH8iJ7IS7QF0rrc4R1UusC4B0PQzBy, %TMZyo1SNMIicCtKmi34U5maJNrJpIq
store i32 %agBFi4VlWIlBogJwACDrWVs8bCZmOD, i32* %cntr
%yNOIQFaG0jsZ3EoCVBQwB5mKevHHzB = load i32, i32* %cntr
br label %uEtaDi5uX4zC4Fs7jnqsak1UVmf0ml

uEtaDi5uX4zC4Fs7jnqsak1UVmf0ml:
br label %A6P6qiYH6RhRsgNX6lxmidxsAvoRXF
R1C6mcJHDQs13cfGdSRuYxD8dq2cxF:
%FopJFTDwLQFTITrpsY8BUJ0jJnpIFm = load i32, i32* %cntr
store i32 %FopJFTDwLQFTITrpsY8BUJ0jJnpIFm, i32* %end_of_inp2
%Q6x1jQpzrU5ILGSa7tveCXvFnn9GI5 = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%r0N0FaKDH3AZA9jeXP1cML8eMfd6Qr = add i32 0, 0
store i32 %r0N0FaKDH3AZA9jeXP1cML8eMfd6Qr, i32* %cntr1
%VcddHCNkiVBsexcjIijDwjBz4VahAX = load i32, i32* %cntr1
store i32 %VcddHCNkiVBsexcjIijDwjBz4VahAX, i32* %cntr2
%vOVEar2h6hCOssypaoR7eMzEBbpz6W = load i32, i32* %cntr2
%IRtcs4F16dLEhQgitwp9j1BxPfrkU8 = add i1 1, 0
store i1 %IRtcs4F16dLEhQgitwp9j1BxPfrkU8, i1* %not_yet_reached_inp1_end
%aKBzOEJq4W2loRwp8YrS7TYjVf6aZu = load i1, i1* %not_yet_reached_inp1_end
store i1 %aKBzOEJq4W2loRwp8YrS7TYjVf6aZu, i1* %not_yet_reached_inp2_end
%bEwXfGwUGcE5zV7wIdL85lnQVuMnL6 = load i1, i1* %not_yet_reached_inp2_end
%OybSGaIpcREM7n5eIVgBGvAIFdaBQw = load i32, i32* %end_of_inp1
%aTfRLgaUYTyINUzOSUmIS1RSWVJwY0 = load i32, i32* %end_of_inp2
%fwXmmJ5aGVO0Die6Nx1JI7ncdox0nl = add i32 1, 0
%adoTRvG5MO80h5mp3BWggUru222SE9 = add i32 %aTfRLgaUYTyINUzOSUmIS1RSWVJwY0, %fwXmmJ5aGVO0Die6Nx1JI7ncdox0nl
%S4TCz3FWtED625tRWRjrwPCZMB0I6k = add i32 %OybSGaIpcREM7n5eIVgBGvAIFdaBQw, %adoTRvG5MO80h5mp3BWggUru222SE9
%aPj6Q0FlSQHRWBemhU4DJixPB9uoA4 = call ptr @malloc(i32 %S4TCz3FWtED625tRWRjrwPCZMB0I6k)
store ptr %aPj6Q0FlSQHRWBemhU4DJixPB9uoA4, ptr %out
%YK5vjZKVbrv4CR0xmuOLu0Yy6CdTy7 = load ptr, ptr %out
br label %KU0nd2w9mcJLtXkSL3gydeUnXSdLwk

ZVn1jHYJQXtthsmhV09ILhcVVh6bpG:
%auLNzyUFxY3BbUJwllP6XTM2aKOoMO = load i1, i1* %not_yet_reached_inp1_end
br i1 %auLNzyUFxY3BbUJwllP6XTM2aKOoMO, label %KU0nd2w9mcJLtXkSL3gydeUnXSdLwk, label %hFjN4Vy4DF7duiN4yANVaqYZFhhDxD

KU0nd2w9mcJLtXkSL3gydeUnXSdLwk:
%LDEgo9Hk89z2Nqvp8gpKvjWWX7m9bV = load i32, i32* %cntr1
%vMExmXkHWccevPs3eiuRT3YC4cIUOH = getelementptr inbounds i8, ptr %inp1, i32 %LDEgo9Hk89z2Nqvp8gpKvjWWX7m9bV
%C401pxEzBjLYxveoTkudEF68MS7kbI = load i8, ptr %vMExmXkHWccevPs3eiuRT3YC4cIUOH
%bewGq76KOaw85GksHEqjJnISdFjyPh = add i8 0, 0
%bZJ1y012aJTwSaAblQzoFohxya3xLI = icmp eq i8 %C401pxEzBjLYxveoTkudEF68MS7kbI, %bewGq76KOaw85GksHEqjJnISdFjyPh
br i1 %bZJ1y012aJTwSaAblQzoFohxya3xLI, label %fy977tUDXQdmRorrS1dvncyEcXUNwC, label %KNmN4jLLFKPR0yDMhCOa54A9Nh77jD

fy977tUDXQdmRorrS1dvncyEcXUNwC:
%gZIWG1NTZplzFOCfhrUkLib1fZepsK = add i1 0, 0
store i1 %gZIWG1NTZplzFOCfhrUkLib1fZepsK, i1* %not_yet_reached_inp1_end
%R98ikrfew9C5NeFoxfaPS62tY8XTk5 = load i1, i1* %not_yet_reached_inp1_end
br label %a9tNLZgTmW1Kn1fMX8ZzRxiNy2WkFm

KNmN4jLLFKPR0yDMhCOa54A9Nh77jD:
%Wl7BQHKr4F4cxv8b707dmgwxmH2u7i = load i32, i32* %cntr1
%lgck1xYyZjvKg2WCSlKdYYL8qIvAm7 = getelementptr inbounds i8, ptr %inp1, i32 %Wl7BQHKr4F4cxv8b707dmgwxmH2u7i
%czEXg1sawCSdXbyS0Iji2jLILI7aGc = load i8, ptr %lgck1xYyZjvKg2WCSlKdYYL8qIvAm7
%OVTf0jNaz647Wwft6aL9eQYkfzGfiI = load ptr, ptr %out
%cGip1jC8RTf6urS8UGpZ3AVAnFtHW7 = load i32, i32* %cntr1
%ZuZZHAi8RZ7vR1NaDkcnSYBGp4Y4mt = getelementptr inbounds i8, ptr %OVTf0jNaz647Wwft6aL9eQYkfzGfiI, i32 %cGip1jC8RTf6urS8UGpZ3AVAnFtHW7
store i8 %czEXg1sawCSdXbyS0Iji2jLILI7aGc, ptr %ZuZZHAi8RZ7vR1NaDkcnSYBGp4Y4mt
%aNjHdJVTGd6CwZPGTXVFqm1EZ8ueAo = load i32, i32* %cntr1
%KzxA3rkaazykmdZQj6OcRJcNtG9DYz = add i32 1, 0
%vhPjMmIAhnOdBLHh9PtPCQc8YBC7Xh = add i32 %aNjHdJVTGd6CwZPGTXVFqm1EZ8ueAo, %KzxA3rkaazykmdZQj6OcRJcNtG9DYz
store i32 %vhPjMmIAhnOdBLHh9PtPCQc8YBC7Xh, i32* %cntr1
%kgyhFCTMILao0maUGoUjujQ02AYHSr = load i32, i32* %cntr1
br label %a9tNLZgTmW1Kn1fMX8ZzRxiNy2WkFm

a9tNLZgTmW1Kn1fMX8ZzRxiNy2WkFm:
br label %ZVn1jHYJQXtthsmhV09ILhcVVh6bpG
hFjN4Vy4DF7duiN4yANVaqYZFhhDxD:
br label %qgI0fuqb3araYCG0QsISWmgeIBUTqY

BbaDpovgzqixFlgl40kyJ049rT716R:
%QkzAPQK5zYxpKoeu9RdLpRfhfWnCQD = load i1, i1* %not_yet_reached_inp2_end
br i1 %QkzAPQK5zYxpKoeu9RdLpRfhfWnCQD, label %qgI0fuqb3araYCG0QsISWmgeIBUTqY, label %LYcypJpXwbCHoMSmNDZ6ctVfhMt9gT

qgI0fuqb3araYCG0QsISWmgeIBUTqY:
%a47SuZVmxlBvCxThuRgPi0FgjQj2Qw = load i32, i32* %cntr2
%BhiJM9TwdQyeRRdUhkZEFX4o9XRDRC = getelementptr inbounds i8, ptr %inp2, i32 %a47SuZVmxlBvCxThuRgPi0FgjQj2Qw
%CqWzKgER2MmRuWBoKJMpbElyHccV9l = load i8, ptr %BhiJM9TwdQyeRRdUhkZEFX4o9XRDRC
%t44b1QlTRhHvyBP3XW13Tw897wl2zA = add i8 0, 0
%SuMewybODNTTIgAr2HSk03ECixuSTN = icmp eq i8 %CqWzKgER2MmRuWBoKJMpbElyHccV9l, %t44b1QlTRhHvyBP3XW13Tw897wl2zA
br i1 %SuMewybODNTTIgAr2HSk03ECixuSTN, label %aEyFIZArT74Hmf1hnNhdxw6tQXpMQ3, label %WKorrz2atTgmVPXyA67QvkCxHuSG8S

aEyFIZArT74Hmf1hnNhdxw6tQXpMQ3:
%lioHUZPZXuMOVHFDNufnUf2kQjkzL7 = add i1 0, 0
store i1 %lioHUZPZXuMOVHFDNufnUf2kQjkzL7, i1* %not_yet_reached_inp2_end
%N72VVCRZE7KYeDoExXORmHma5Z1GoA = load i1, i1* %not_yet_reached_inp2_end
br label %wHUnIK0DgzQpOSiFd1XiTNsLHpRoaZ

WKorrz2atTgmVPXyA67QvkCxHuSG8S:
br label %wHUnIK0DgzQpOSiFd1XiTNsLHpRoaZ

wHUnIK0DgzQpOSiFd1XiTNsLHpRoaZ:
%JWrdt2Wnody7oeWEwg3dNNDmNuXovF = load i32, i32* %cntr2
%moCYWCm722Y6ve6OjgsydG9g6gnpkY = getelementptr inbounds i8, ptr %inp2, i32 %JWrdt2Wnody7oeWEwg3dNNDmNuXovF
%QSAxoC1ujtRQJUEWIDwRLPo3x3NAmi = load i8, ptr %moCYWCm722Y6ve6OjgsydG9g6gnpkY
%aNspVXHWrowG0Mb4H3gI8O3ifZLH4I = load ptr, ptr %out
%EAoruYOS3tISFhUSeCwxTWT58Kb7iA = load i32, i32* %cntr2
%ihfzUdfJ4VjWwLDzgZ5Ce8FXPogq8r = load i32, i32* %end_of_inp1
%HcA2QM9lHRaiLDE8xseHL2WiVe3YyR = add i32 %EAoruYOS3tISFhUSeCwxTWT58Kb7iA, %ihfzUdfJ4VjWwLDzgZ5Ce8FXPogq8r
%DMtFQH12k80LBxWngS4OaqXaEcBfiU = getelementptr inbounds i8, ptr %aNspVXHWrowG0Mb4H3gI8O3ifZLH4I, i32 %HcA2QM9lHRaiLDE8xseHL2WiVe3YyR
store i8 %QSAxoC1ujtRQJUEWIDwRLPo3x3NAmi, ptr %DMtFQH12k80LBxWngS4OaqXaEcBfiU
%NHpqrFExLretGpuo6wK8SWIEzpEPpE = load i32, i32* %cntr2
%asFJSYrl9eWtU5Q0ybeWjL72MlSJNd = add i32 1, 0
%jHD1uUwCgAMpxrwKwXniIhAYsxZ5t5 = add i32 %NHpqrFExLretGpuo6wK8SWIEzpEPpE, %asFJSYrl9eWtU5Q0ybeWjL72MlSJNd
store i32 %jHD1uUwCgAMpxrwKwXniIhAYsxZ5t5, i32* %cntr2
%UOVjXuzHjeUGGn4HabiDNoRpzgxwPV = load i32, i32* %cntr2
br label %BbaDpovgzqixFlgl40kyJ049rT716R
LYcypJpXwbCHoMSmNDZ6ctVfhMt9gT:
%GSreRosC3AKbEW9MRd6vQryILiioXh = load ptr, ptr %out
ret ptr %GSreRosC3AKbEW9MRd6vQryILiioXh
}
