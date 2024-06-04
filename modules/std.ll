declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i32)
declare void @free(ptr)

define i32 @factorial32( i32 %inp) {
%oaFCYtVLPXcaGM4pYjyJoBhEUyv0se = add i32 1, 0
%Ttdi19LeEZ3CPMKS7lRAYBfcqV2lnm = icmp eq i32 %inp, %oaFCYtVLPXcaGM4pYjyJoBhEUyv0se
br i1 %Ttdi19LeEZ3CPMKS7lRAYBfcqV2lnm, label %RNRl1Cl8RcXRNtlA1gJ2u3qKEKKdw6, label %AbM8LFWGRYYPRCfur8RMHVKZiTdnHX

RNRl1Cl8RcXRNtlA1gJ2u3qKEKKdw6:
%TXUJdj9n01ZAzbuMoZyvXj9Ijws0Ml = add i32 1, 0
ret i32 %TXUJdj9n01ZAzbuMoZyvXj9Ijws0Ml
br label %WwaiF7f2dmqh8BqOamT6XzlW1hZ7Ga

AbM8LFWGRYYPRCfur8RMHVKZiTdnHX:
%q2Cis3hnOydFBoB3dlaKlPPdZAb3Cp = add i32 1, 0
%awDVwqcB0JkAo95AsDM9SOIdNhvYA3 = sub i32 %inp, %q2Cis3hnOydFBoB3dlaKlPPdZAb3Cp
%C8aURuH7rIlL0cpAANLGVDFmIYNeXa = mul i32 %inp, %awDVwqcB0JkAo95AsDM9SOIdNhvYA3
ret i32 %C8aURuH7rIlL0cpAANLGVDFmIYNeXa
br label %WwaiF7f2dmqh8BqOamT6XzlW1hZ7Ga

WwaiF7f2dmqh8BqOamT6XzlW1hZ7Ga:
%r2mFaZeunFx1O7CwWvXitIJj6itJgN = add i32 -1, 0
ret i32 %r2mFaZeunFx1O7CwWvXitIJj6itJgN
}
define i64 @factorial64( i64 %inp) {
%hX469DisqudjgWX3vGApn3oSq9HvAT = add i64 1, 0
%BIdbLqPHiPcruzunTBn8XKTXQJw7bc = icmp eq i64 %inp, %hX469DisqudjgWX3vGApn3oSq9HvAT
br i1 %BIdbLqPHiPcruzunTBn8XKTXQJw7bc, label %D1jlcB3CY1DUcL6wD42VETCByhIzGp, label %qHHxWWE8HvqiYSLPqUoWFP3dlaGJ0f

D1jlcB3CY1DUcL6wD42VETCByhIzGp:
%RgJqaZgqI7YHhhgh5it4uAhYm2mpk3 = add i64 1, 0
ret i64 %RgJqaZgqI7YHhhgh5it4uAhYm2mpk3
br label %YuSMoP8DkaKB1hHTATWxhmG8p2iFxQ

qHHxWWE8HvqiYSLPqUoWFP3dlaGJ0f:
%UByhLHBmEehafYDh5EkzggiFzrDgIP = add i64 1, 0
%GWrNJfiCAmTeRxwuohLPtBPgYMPYUe = sub i64 %inp, %UByhLHBmEehafYDh5EkzggiFzrDgIP
%hXyPy3P2XlrSUPlVutRhNOTFbRPbkW = mul i64 %inp, %GWrNJfiCAmTeRxwuohLPtBPgYMPYUe
ret i64 %hXyPy3P2XlrSUPlVutRhNOTFbRPbkW
br label %YuSMoP8DkaKB1hHTATWxhmG8p2iFxQ

YuSMoP8DkaKB1hHTATWxhmG8p2iFxQ:
%aMsnSZRAe6dRI81jneuGkoTOzpXxG5 = add i64 -1, 0
ret i64 %aMsnSZRAe6dRI81jneuGkoTOzpXxG5
}
define i8 @itoc32( i32 %inp0) {
%outpu = alloca i8
%sdqgOL2OzK39ERxl6CiyIct4ysqFXr = add i32 0, 0
%aUTRtpMjrQJPtm5TS0W22e1kBQ1cR8 = icmp eq i32 %inp0, %sdqgOL2OzK39ERxl6CiyIct4ysqFXr
br i1 %aUTRtpMjrQJPtm5TS0W22e1kBQ1cR8, label %ucRHB0PTG8zTPveW0cm1uIfdcbwetq, label %JCL7YG9YGUmNBkknRgfSk6e2B73H4s

ucRHB0PTG8zTPveW0cm1uIfdcbwetq:
%QfuW0v7NeWSHhSgyUpAqpMUQrnhPF3 = add i8 48, 0
store i8 %QfuW0v7NeWSHhSgyUpAqpMUQrnhPF3, i8* %outpu
%vaJ8hvMm2DbYciyKf3CvZKKKifHDMd = load i8, i8* %outpu
br label %pufGkOTUraylyJHdo15C7im3p6tJKC

JCL7YG9YGUmNBkknRgfSk6e2B73H4s:
br label %pufGkOTUraylyJHdo15C7im3p6tJKC

pufGkOTUraylyJHdo15C7im3p6tJKC:
%aOeToT984ZNIZGlRMxBFGxgoFTlU9B = add i32 1, 0
%aYaSgaduj3HQIz6flj0WAcQGWeD5R2 = icmp eq i32 %inp0, %aOeToT984ZNIZGlRMxBFGxgoFTlU9B
br i1 %aYaSgaduj3HQIz6flj0WAcQGWeD5R2, label %a5F4fS6ExX0InxPbrQvK2RpdR9PNMa, label %aMeMN9t94YNFe3apxaU1FmyAmbzbEk

a5F4fS6ExX0InxPbrQvK2RpdR9PNMa:
%QoLdUGpWTbZDMPLTJewDshD3X9qUg8 = add i8 49, 0
store i8 %QoLdUGpWTbZDMPLTJewDshD3X9qUg8, i8* %outpu
%a6ILyhftQKNlcss6DNJeXxCdkNyRDZ = load i8, i8* %outpu
br label %FJLgefNbiVfUAv8B9UL4pNbyN8MK86

aMeMN9t94YNFe3apxaU1FmyAmbzbEk:
br label %FJLgefNbiVfUAv8B9UL4pNbyN8MK86

FJLgefNbiVfUAv8B9UL4pNbyN8MK86:
%VsTwmxWUpjBvbvZJHKkv7g7p2majq8 = add i32 2, 0
%iyNSF8klf1OzaR8179feGDPbFcvqev = icmp eq i32 %inp0, %VsTwmxWUpjBvbvZJHKkv7g7p2majq8
br i1 %iyNSF8klf1OzaR8179feGDPbFcvqev, label %fLnVFMVTbMaAIIcVfG9LlQw9boDhgH, label %a0D3YLzRnJIOFj1jCeT6cPJjQQb4zU

fLnVFMVTbMaAIIcVfG9LlQw9boDhgH:
%AAUnwNso0xUrbeOPRpRvgVPuFoPJjA = add i8 50, 0
store i8 %AAUnwNso0xUrbeOPRpRvgVPuFoPJjA, i8* %outpu
%SlG8LjKbjWjSukq6FqsAiO23FyH2lf = load i8, i8* %outpu
br label %a1nSABYqyGqg9STC7Du9eHMm3FJKlw

a0D3YLzRnJIOFj1jCeT6cPJjQQb4zU:
br label %a1nSABYqyGqg9STC7Du9eHMm3FJKlw

a1nSABYqyGqg9STC7Du9eHMm3FJKlw:
%xnBP7tAL0y2Ho6PCQkGBwVUbrIUHKC = add i32 3, 0
%vvp8jtfnSmUPRjCaGdG9uMTTGR6sxp = icmp eq i32 %inp0, %xnBP7tAL0y2Ho6PCQkGBwVUbrIUHKC
br i1 %vvp8jtfnSmUPRjCaGdG9uMTTGR6sxp, label %rJNnjk51wgI8xEmbwZP2OMrKYx0amc, label %aH911d7dE300aUdvExW0gI9mA48h8S

rJNnjk51wgI8xEmbwZP2OMrKYx0amc:
%izXRF4eySX8eRqajY9uWSwrj4oz5v5 = add i8 51, 0
store i8 %izXRF4eySX8eRqajY9uWSwrj4oz5v5, i8* %outpu
%EOjInRrgulp5hdhTdqBl5iLfhEb9gi = load i8, i8* %outpu
br label %omfvy0kXWq6NkgRBbAw8iJt1HKoXQh

aH911d7dE300aUdvExW0gI9mA48h8S:
br label %omfvy0kXWq6NkgRBbAw8iJt1HKoXQh

omfvy0kXWq6NkgRBbAw8iJt1HKoXQh:
%pbc16DCyobpHt1Sz5cHgoHwxovnkq5 = add i32 4, 0
%wMnr52gl6CZVwjtF5aOH0oc5DkHwxD = icmp eq i32 %inp0, %pbc16DCyobpHt1Sz5cHgoHwxovnkq5
br i1 %wMnr52gl6CZVwjtF5aOH0oc5DkHwxD, label %bcS2LIK7NyH1d1GizsAOD8Azp81uQ1, label %bikppFwf6jEO5ErqfSHCLvwIDgfn7f

bcS2LIK7NyH1d1GizsAOD8Azp81uQ1:
%a9OkSCHSNxKe8rPYkLCPJcMRdJSiXa = add i8 52, 0
store i8 %a9OkSCHSNxKe8rPYkLCPJcMRdJSiXa, i8* %outpu
%h0jlSP7n7yJDMWxbc0H6KvWAm9KSI2 = load i8, i8* %outpu
br label %nyeseJFjixWOvaKuh2WfomPldZftuY

bikppFwf6jEO5ErqfSHCLvwIDgfn7f:
br label %nyeseJFjixWOvaKuh2WfomPldZftuY

nyeseJFjixWOvaKuh2WfomPldZftuY:
%Wcp2B4nx7dX06CqQlwY5SRzfZcO4Tt = add i32 5, 0
%akhHEXrIsoOrWx1KhxQ7BkZkxwi3TO = icmp eq i32 %inp0, %Wcp2B4nx7dX06CqQlwY5SRzfZcO4Tt
br i1 %akhHEXrIsoOrWx1KhxQ7BkZkxwi3TO, label %kJoHfWKdGpIqIMGg96PS7cLc0y6rF9, label %CTRwhXHo0t02QqXHYDMyoMEatVr5pG

kJoHfWKdGpIqIMGg96PS7cLc0y6rF9:
%WXS1NH0zbq6moUGl1qoVXFJzzBpxLZ = add i8 53, 0
store i8 %WXS1NH0zbq6moUGl1qoVXFJzzBpxLZ, i8* %outpu
%OteKqzWNqgHDzleqDLdsMRXyWy7r9y = load i8, i8* %outpu
br label %ZrljYxgqMHKbjmewAzaSGcu5mc7BlP

CTRwhXHo0t02QqXHYDMyoMEatVr5pG:
br label %ZrljYxgqMHKbjmewAzaSGcu5mc7BlP

ZrljYxgqMHKbjmewAzaSGcu5mc7BlP:
%aoWmGFjoJNdzLK4NCp3etlNdJMQ9L2 = add i32 6, 0
%vSQLWSLbdWYJIdETJcBBRVaDFdL61P = icmp eq i32 %inp0, %aoWmGFjoJNdzLK4NCp3etlNdJMQ9L2
br i1 %vSQLWSLbdWYJIdETJcBBRVaDFdL61P, label %ACvTpYGSVZdnS9B0catZVRMsvc9tF8, label %zcSvs5pbmeKLdDqZSNOooB8uhigTum

ACvTpYGSVZdnS9B0catZVRMsvc9tF8:
%lIFJInCHk9P1thhaXWslUmr5u5WPTv = add i8 54, 0
store i8 %lIFJInCHk9P1thhaXWslUmr5u5WPTv, i8* %outpu
%aWnn54mFXObe35yhAjWtKq1g8LtBAi = load i8, i8* %outpu
br label %aiPnXlDBtKDHSFPnca0newIBOzEmsN

zcSvs5pbmeKLdDqZSNOooB8uhigTum:
br label %aiPnXlDBtKDHSFPnca0newIBOzEmsN

aiPnXlDBtKDHSFPnca0newIBOzEmsN:
%ayTGUK6M1aMuOuSIrVKDqnGppqAjwp = add i32 7, 0
%dUwZ47UrRGXpKumWBXW8PTodsIwkl7 = icmp eq i32 %inp0, %ayTGUK6M1aMuOuSIrVKDqnGppqAjwp
br i1 %dUwZ47UrRGXpKumWBXW8PTodsIwkl7, label %DD2jffsEDnctDKeOtvbhQnM3V6J15Z, label %aNKjEeP8AyZ1wlUHbI7HBleiwj3gkX

DD2jffsEDnctDKeOtvbhQnM3V6J15Z:
%PaowhUqn2brrOBuJhlkxN50t10EOP0 = add i8 55, 0
store i8 %PaowhUqn2brrOBuJhlkxN50t10EOP0, i8* %outpu
%lOSfAk42r37sJNenP7W3uIQqwal8ds = load i8, i8* %outpu
br label %pcOuDcUryjKWcZlAhrQqqysw0cs8o7

aNKjEeP8AyZ1wlUHbI7HBleiwj3gkX:
br label %pcOuDcUryjKWcZlAhrQqqysw0cs8o7

pcOuDcUryjKWcZlAhrQqqysw0cs8o7:
%NJxEhxzDvSujAg31UgVYqhkqdnQFVa = add i32 8, 0
%nXZ6H0LHDrpjcDmcTTY978NpJR64m2 = icmp eq i32 %inp0, %NJxEhxzDvSujAg31UgVYqhkqdnQFVa
br i1 %nXZ6H0LHDrpjcDmcTTY978NpJR64m2, label %gYo23K5t2whtNNWbCgM69ewkeEDAXg, label %vbHDcdtwPMphwtypk19Vd149KjkhIe

gYo23K5t2whtNNWbCgM69ewkeEDAXg:
%aKaE2V13rO74LS5thK9kbuQ9NpvuqE = add i8 56, 0
store i8 %aKaE2V13rO74LS5thK9kbuQ9NpvuqE, i8* %outpu
%u7mVaLBTMYfFKB9R2wiVMjfjx6Pgmq = load i8, i8* %outpu
br label %aKwbcP0rq07ngskeH1uvsi99fOFtXQ

vbHDcdtwPMphwtypk19Vd149KjkhIe:
br label %aKwbcP0rq07ngskeH1uvsi99fOFtXQ

aKwbcP0rq07ngskeH1uvsi99fOFtXQ:
%PY4TVw58SdwsklxVEn5pzXseIHBZwD = add i32 9, 0
%QE7Ym8gKTN11eK1gWizIyS0nZ2ogsB = icmp eq i32 %inp0, %PY4TVw58SdwsklxVEn5pzXseIHBZwD
br i1 %QE7Ym8gKTN11eK1gWizIyS0nZ2ogsB, label %ar4bddmsmPL7zRjYV7F4ZWJtPLC8jb, label %l13GT8fhOTxnO6i8aWLG2PwDPSOVk8

ar4bddmsmPL7zRjYV7F4ZWJtPLC8jb:
%C8IvKNEKvTPEMiMFBE6SbE55S2IxNg = add i8 57, 0
store i8 %C8IvKNEKvTPEMiMFBE6SbE55S2IxNg, i8* %outpu
%x4eicguRaiECx4KZ5temURnN57fNM3 = load i8, i8* %outpu
br label %V4vM6dVF0yRapbpJJiGoJxsoEZ8FD7

l13GT8fhOTxnO6i8aWLG2PwDPSOVk8:
br label %V4vM6dVF0yRapbpJJiGoJxsoEZ8FD7

V4vM6dVF0yRapbpJJiGoJxsoEZ8FD7:
%VoTSD3KqgRw6rDb6Xfir0bPji6gHqq = load i8, i8* %outpu
ret i8 %VoTSD3KqgRw6rDb6Xfir0bPji6gHqq
}
define ptr @itostr32( i32 %inp1) {
%var = alloca i32
%len = alloca i32
%b = alloca i1
%outp = alloca ptr
store i32 %inp1, i32* %var
%CKXaD4iMpypaYP2DGZD7h3selBsQgP = load i32, i32* %var
%SPV0lDSstQx0rf3YXwKgTVAJz6KhuS = add i32 0, 0
store i32 %SPV0lDSstQx0rf3YXwKgTVAJz6KhuS, i32* %len
%Vest7O5uSG2H8MDmAfG3VFJ5b5BB8B = load i32, i32* %len
%QvPEUVscdSQAyAgUG5tDMah1PYVkHW = add i1 1, 0
store i1 %QvPEUVscdSQAyAgUG5tDMah1PYVkHW, i1* %b
%MCJ06DiOB14cgOfSiDjhvhrovHX7Km = load i1, i1* %b
br label %AQzS9KPuhzWYpc6eF3lQM0UMCaRmOZ

D2WYe7jSurSHneInARnCSWPngIWHuL:
%SDJ4ndie2IroYYWKu515lcbitsOTZt = load i1, i1* %b
br i1 %SDJ4ndie2IroYYWKu515lcbitsOTZt, label %AQzS9KPuhzWYpc6eF3lQM0UMCaRmOZ, label %bPsq5A0G9QIiXGUzXDKZNy2EBeDjq8

AQzS9KPuhzWYpc6eF3lQM0UMCaRmOZ:
%kPaFWUf8K0derRGInIiJsfX3SWTcPc = load i32, i32* %var
%aJVoqLz2mVbclvxOgxJFChDlUin2Ge = add i32 0, 0
%D1hD83tmx3aKjlRRODDPzeU9zybSjM = icmp eq i32 %kPaFWUf8K0derRGInIiJsfX3SWTcPc, %aJVoqLz2mVbclvxOgxJFChDlUin2Ge
br i1 %D1hD83tmx3aKjlRRODDPzeU9zybSjM, label %CDYPLIHVW19w0E6byW9fv8raunw22j, label %K8fEjhJ2XyiVuvTRBu7LCiJtq7q3PP

CDYPLIHVW19w0E6byW9fv8raunw22j:
%R6NywLkXfk2kaZUCSNaM2fDsl9thZa = add i1 0, 0
store i1 %R6NywLkXfk2kaZUCSNaM2fDsl9thZa, i1* %b
%mtUy5LKl184k6EZ12Yhhbd2atzvGlm = load i1, i1* %b
br label %iJLk7C0FslliA6lXhwrPnX167HxWlb

K8fEjhJ2XyiVuvTRBu7LCiJtq7q3PP:
%ZB9OU66CeFtI2hywCW0rdfokyLL707 = load i32, i32* %var
%z3SCfOGfRsiMiQborNl5O5ljbkBDXG = add i32 10, 0
%OOi7PtPU4eTozMFk1jsjCZktaem7kM = sdiv i32 %ZB9OU66CeFtI2hywCW0rdfokyLL707, %z3SCfOGfRsiMiQborNl5O5ljbkBDXG
store i32 %OOi7PtPU4eTozMFk1jsjCZktaem7kM, i32* %var
%aa5ZDWcayUbCUTaCD6AelakGUhEJvZ = load i32, i32* %var
%us2lDv00AXVQA6yZBQ5BEo1qOlm9UX = load i32, i32* %len
%a2KRpO9hifFXiSrxvnTbI1SMPj24EB = add i32 1, 0
%iexprqbgVlEfOfQa7frDtiWgO33ltS = add i32 %us2lDv00AXVQA6yZBQ5BEo1qOlm9UX, %a2KRpO9hifFXiSrxvnTbI1SMPj24EB
store i32 %iexprqbgVlEfOfQa7frDtiWgO33ltS, i32* %len
%KtTyGmswKpfmpBOOuLrAe01HDBx8ys = load i32, i32* %len
br label %iJLk7C0FslliA6lXhwrPnX167HxWlb

iJLk7C0FslliA6lXhwrPnX167HxWlb:
br label %D2WYe7jSurSHneInARnCSWPngIWHuL
bPsq5A0G9QIiXGUzXDKZNy2EBeDjq8:
%var1 = alloca i32
%b1 = alloca i1
%cntr = alloca i32
%zOrI3m7sKKBdodrkb84H2B4PX1RPqP = load i32, i32* %len
%aaMFWsWYOTRBcjYETAxPKsZK37nWpm = add i32 1, 0
%llwq9W97uWwCNNeyOyFaNB8FKySiex = add i32 %zOrI3m7sKKBdodrkb84H2B4PX1RPqP, %aaMFWsWYOTRBcjYETAxPKsZK37nWpm
%yS614Kj2Cgk5LPDVyeEvI5aUdyjFf0 = call ptr @malloc(i32 %llwq9W97uWwCNNeyOyFaNB8FKySiex)
store ptr %yS614Kj2Cgk5LPDVyeEvI5aUdyjFf0, ptr %outp
%r3oqzQrCzP4S6NAUIb9QiPZZhkHGe0 = load ptr, ptr %outp
%tUDDiw4QRuDpnKpx3BeptrO2EAc6Jb = add i1 1, 0
store i1 %tUDDiw4QRuDpnKpx3BeptrO2EAc6Jb, i1* %b1
%i1N4cpDSJYtDQbqLJRoINWKiIOUhmP = load i1, i1* %b1
store i32 %inp1, i32* %var1
%tJTTPvqgLL7CZP0QfBJnK9rF8mBXF7 = load i32, i32* %var1
%w52B7B22poIExdUkhAHf1QQ3l2Zxy3 = load i32, i32* %len
%asJiMHsUifZdCk6Nv1bUh56dkiezkd = add i32 1, 0
%cWvqKPpqvUljZwWNhC3UhKLNGyvfIM = sub i32 %w52B7B22poIExdUkhAHf1QQ3l2Zxy3, %asJiMHsUifZdCk6Nv1bUh56dkiezkd
store i32 %cWvqKPpqvUljZwWNhC3UhKLNGyvfIM, i32* %cntr
%MSoYjKPd1sQy0GPIwxFaSe7n0pGMok = load i32, i32* %cntr
br label %dUl27H53eqzWGGDHUMWBmoE4q2eYbW

yQcd6GQzJIyzAbdt37sjqxb3cIwm3u:
%J5aaxdLtLipJUjSWfRxhDmRCQLXJyz = load i1, i1* %b1
br i1 %J5aaxdLtLipJUjSWfRxhDmRCQLXJyz, label %dUl27H53eqzWGGDHUMWBmoE4q2eYbW, label %MWINi7nkjq0WjKRQAgIeboI3Zhvg0D

dUl27H53eqzWGGDHUMWBmoE4q2eYbW:
%a46hcC0PMY6J8RqYAVnxeMvanzVDuu = load i32, i32* %var1
%Az9lArPRVXaGj9oRdePYGafJCYGRKs = add i32 0, 0
%aRxdrhELOQcuZQR73POB7SYxEip7TP = icmp eq i32 %a46hcC0PMY6J8RqYAVnxeMvanzVDuu, %Az9lArPRVXaGj9oRdePYGafJCYGRKs
br i1 %aRxdrhELOQcuZQR73POB7SYxEip7TP, label %iaFivVZeXj8XAfGoI0jnjoz6BjYar6, label %PUCDwIEPDZ5tHDye4qDgDGtHbeewEo

iaFivVZeXj8XAfGoI0jnjoz6BjYar6:
%wy0AAHasxszzN4ZhsmjZWaoE6URjev = add i8 0, 0
%hTCgvJFF4NpnO3SDpBLAAhB9t62T5w = load ptr, ptr %outp
%a0kGnQNT0djJ7S4LVYiLP8LYgxNTvg = load i32, i32* %len
%R75zUZ364hcYu9kkrn1bKv6ss12QfM = getelementptr inbounds i8, ptr %hTCgvJFF4NpnO3SDpBLAAhB9t62T5w, i32 %a0kGnQNT0djJ7S4LVYiLP8LYgxNTvg
store i8 %wy0AAHasxszzN4ZhsmjZWaoE6URjev, ptr %R75zUZ364hcYu9kkrn1bKv6ss12QfM
%GOsulCaZ7vqTQj9dZzlj9Wa3SRD8dB = add i1 0, 0
store i1 %GOsulCaZ7vqTQj9dZzlj9Wa3SRD8dB, i1* %b1
%tYdnUiLJwEhxvJP1ejIbMRLQABTMiU = load i1, i1* %b1
br label %A3wTvJnJuXer4DOQz1RX2yoDAKYRvy

PUCDwIEPDZ5tHDye4qDgDGtHbeewEo:
%aB5VSKHJoJgKyUkfGEUDBinAwuMtAU = load i32, i32* %var1
%q1m7cwZyAGVkoXwp8hhLnzYJGGzzK9 = add i32 10, 0
%ZnJo2w1fam3F9pUfY3whu1r8B6zqnv = srem i32 %aB5VSKHJoJgKyUkfGEUDBinAwuMtAU, %q1m7cwZyAGVkoXwp8hhLnzYJGGzzK9
%aG07ICZ7pzMdYsVvLk7Q3DT9SskCn1 = call i8 @itoc32(i32 %ZnJo2w1fam3F9pUfY3whu1r8B6zqnv)
%aDhzc6v7PzslhvIAWssx1EhGhKdoEi = load ptr, ptr %outp
%OcpPBabfCImj7fgOUWYWWlbW537zYg = load i32, i32* %cntr
%eL8EovNNGiDqmUxbyJyqK13XHuyZPb = getelementptr inbounds i8, ptr %aDhzc6v7PzslhvIAWssx1EhGhKdoEi, i32 %OcpPBabfCImj7fgOUWYWWlbW537zYg
store i8 %aG07ICZ7pzMdYsVvLk7Q3DT9SskCn1, ptr %eL8EovNNGiDqmUxbyJyqK13XHuyZPb
%LvHcsG3yJdLlS4suhPgnIiDGhzOau2 = load i32, i32* %var1
%GZII72MCBKyfzKLJav4AIJ0tw5MhhH = add i32 10, 0
%YSjdhYasQDa8bpVoaq2xkLhQmhURV5 = sdiv i32 %LvHcsG3yJdLlS4suhPgnIiDGhzOau2, %GZII72MCBKyfzKLJav4AIJ0tw5MhhH
store i32 %YSjdhYasQDa8bpVoaq2xkLhQmhURV5, i32* %var1
%UdXqlKOostdWwLRJLGHo1kucz9Gw9Y = load i32, i32* %var1
%d0EKA9Vmxgvf1TnhNZXOqVKKdazQ3m = load i32, i32* %cntr
%yKrgopaNrd2gDm05o3UDszAVT4RhyZ = add i32 1, 0
%RC5gPhaIh60kEkP46qgjzKKjUJdy0F = sub i32 %d0EKA9Vmxgvf1TnhNZXOqVKKdazQ3m, %yKrgopaNrd2gDm05o3UDszAVT4RhyZ
store i32 %RC5gPhaIh60kEkP46qgjzKKjUJdy0F, i32* %cntr
%pNP9gBeNdWx9emIGUuN9YiwrrcyFiE = load i32, i32* %cntr
br label %A3wTvJnJuXer4DOQz1RX2yoDAKYRvy

A3wTvJnJuXer4DOQz1RX2yoDAKYRvy:
br label %yQcd6GQzJIyzAbdt37sjqxb3cIwm3u
MWINi7nkjq0WjKRQAgIeboI3Zhvg0D:
%fyAdrv4FRMw421ujIcPIvTrQDPd4Vx = load ptr, ptr %outp
ret ptr %fyAdrv4FRMw421ujIcPIvTrQDPd4Vx
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%not_reached = alloca i1
%cntr = alloca i32
%sFTeO34AfTAAPiGwWgPvzs3QE3WYkU = add i1 1, 0
store i1 %sFTeO34AfTAAPiGwWgPvzs3QE3WYkU, i1* %not_reached
%BXrkRfsFJw3yeWuQKSJDe3jSB8BiyL = load i1, i1* %not_reached
%gFUddt7p7xBoCO6hjTfgcCY9qQy47T = add i32 0, 0
store i32 %gFUddt7p7xBoCO6hjTfgcCY9qQy47T, i32* %cntr
%ssbDKLNLv3rxGIHrpm1wwk9S0Z2xA9 = load i32, i32* %cntr
br label %W7YODItusv2haIzN5x9QowX7WHIsEN

r0qoQnTqKsYroGnRT1JXuFITaJCJmy:
%w2vwTmNFmRxXNjhqDewzrn9XZRW6xn = load i1, i1* %not_reached
br i1 %w2vwTmNFmRxXNjhqDewzrn9XZRW6xn, label %W7YODItusv2haIzN5x9QowX7WHIsEN, label %nmW9gee3GRfgFNIblhBnv9fqMLy4QF

W7YODItusv2haIzN5x9QowX7WHIsEN:
%JW5P2VhirXexKSspMhzf07uQ6YTfG5 = load i32, i32* %cntr
%Pi2pnvPwOAC0CjMNqx2OoXQ38DJvm2 = getelementptr inbounds i8, ptr %inp1, i32 %JW5P2VhirXexKSspMhzf07uQ6YTfG5
%U6sm1tpfUYsj13DYrLBl7lR0yC8RWm = load i8, ptr %Pi2pnvPwOAC0CjMNqx2OoXQ38DJvm2
%AN5LhUwg7JsMCRsZQJHRT3U3EAUdS2 = add i8 0, 0
%awXdtU964H3ouCVprGIkxvu4tbgJfd = icmp eq i8 %U6sm1tpfUYsj13DYrLBl7lR0yC8RWm, %AN5LhUwg7JsMCRsZQJHRT3U3EAUdS2
br i1 %awXdtU964H3ouCVprGIkxvu4tbgJfd, label %xNOK7JS7Ue49Xqn9IpOm4uV8Z1FP84, label %Q4fY2tFjj9XdhT0PL9B6XR1VsPt6dc

xNOK7JS7Ue49Xqn9IpOm4uV8Z1FP84:
%fuKVWMYzKksoAffBwOYjEaRwZGn4Nb = add i1 0, 0
store i1 %fuKVWMYzKksoAffBwOYjEaRwZGn4Nb, i1* %not_reached
%c7MamPhhzVOUXxXLkcHbMbmeXmr12p = load i1, i1* %not_reached
br label %htAY7oBRNhUnoCJcBZt1ftCZEASdaZ

Q4fY2tFjj9XdhT0PL9B6XR1VsPt6dc:
%ohYVGscY9TvksWEbvhO38uWbkGMaIl = load i32, i32* %cntr
%xLBpFNWsvaCsMldq0SGMh2iYBPAD0g = add i32 1, 0
%PYLzUpi4BU2DPSp0K5RvfWEo2JjhrS = add i32 %ohYVGscY9TvksWEbvhO38uWbkGMaIl, %xLBpFNWsvaCsMldq0SGMh2iYBPAD0g
store i32 %PYLzUpi4BU2DPSp0K5RvfWEo2JjhrS, i32* %cntr
%FsfCQM7TB1plDjfmDFmkfQnvsrKg7b = load i32, i32* %cntr
br label %htAY7oBRNhUnoCJcBZt1ftCZEASdaZ

htAY7oBRNhUnoCJcBZt1ftCZEASdaZ:
br label %r0qoQnTqKsYroGnRT1JXuFITaJCJmy
nmW9gee3GRfgFNIblhBnv9fqMLy4QF:
%LVDHzMFazjEuZOp1kXlrE2iJswY1Ui = load i32, i32* %cntr
store i32 %LVDHzMFazjEuZOp1kXlrE2iJswY1Ui, i32* %end_of_inp1
%i9mhdMGFuQwg3EMm2AE2bYTOi0uCXV = load i32, i32* %end_of_inp1
%EbdxTkMHO2GGu4sFPyqI4Bp8dH0QwN = add i1 1, 0
store i1 %EbdxTkMHO2GGu4sFPyqI4Bp8dH0QwN, i1* %not_reached
%hPHb9T6AjHBJAznFB1lZcmE6IeSAA7 = load i1, i1* %not_reached
%DPyzFEy7hSYezhGVUkCRbC37oF8gcO = add i32 0, 0
store i32 %DPyzFEy7hSYezhGVUkCRbC37oF8gcO, i32* %cntr
%Pz5ZdKRBAnXmO2FEVoU6EPjMolvWDL = load i32, i32* %cntr
br label %V8piBDKlUSmVizhbowIPYgzhP29nT9

afVsa6WXerZVKMEDZePP7tGMhqcRy6:
%GGb8csW6go5KTQGanc6TMIyX8Uqc4e = load i1, i1* %not_reached
br i1 %GGb8csW6go5KTQGanc6TMIyX8Uqc4e, label %V8piBDKlUSmVizhbowIPYgzhP29nT9, label %aimGeWqTO1YJIN9HiNNTWgxui7d2Lx

V8piBDKlUSmVizhbowIPYgzhP29nT9:
%IX6ZdWrBPq1e08wK3s5i43sylytkcm = load i32, i32* %cntr
%AGzuZ0RBYSNpvtfAAIqATDMETpKFXz = getelementptr inbounds i8, ptr %inp2, i32 %IX6ZdWrBPq1e08wK3s5i43sylytkcm
%asJQ0kMX5aryq6x9jatbMDO4daTuXi = load i8, ptr %AGzuZ0RBYSNpvtfAAIqATDMETpKFXz
%dhI2oMxNqhlCaV4jeBqrq8FW9h9ZkL = add i8 0, 0
%cyouUiEnizbAbMrVDbwMUKCozoFU3v = icmp eq i8 %asJQ0kMX5aryq6x9jatbMDO4daTuXi, %dhI2oMxNqhlCaV4jeBqrq8FW9h9ZkL
br i1 %cyouUiEnizbAbMrVDbwMUKCozoFU3v, label %UuUNaTcSX0qlHF4KC7Rqz21nbHzTBU, label %aeV74YNDGGDfx8NvnGaqqU659zC9Ef

UuUNaTcSX0qlHF4KC7Rqz21nbHzTBU:
%bCS8P3tqIhfMvd4xCn9E2ud62a41Sn = add i1 0, 0
store i1 %bCS8P3tqIhfMvd4xCn9E2ud62a41Sn, i1* %not_reached
%V5u8cZha97gfSPatYa6rIyhS50o1G7 = load i1, i1* %not_reached
br label %aGQD6iQ6IOz5Dn35Xoh08UDMHc3M9W

aeV74YNDGGDfx8NvnGaqqU659zC9Ef:
%vSUVdTaYksiG0Se862meIMp1gjZGK6 = load i32, i32* %cntr
%GISwO4zwichXw5AUX2aHpCMXK4fZgp = add i32 1, 0
%skSXIFXEYk8K6XknASjwao4drEHbqT = add i32 %vSUVdTaYksiG0Se862meIMp1gjZGK6, %GISwO4zwichXw5AUX2aHpCMXK4fZgp
store i32 %skSXIFXEYk8K6XknASjwao4drEHbqT, i32* %cntr
%ajDNyJw5rQ5dKZ8efMlVLFGXw4fPJp = load i32, i32* %cntr
br label %aGQD6iQ6IOz5Dn35Xoh08UDMHc3M9W

aGQD6iQ6IOz5Dn35Xoh08UDMHc3M9W:
br label %afVsa6WXerZVKMEDZePP7tGMhqcRy6
aimGeWqTO1YJIN9HiNNTWgxui7d2Lx:
%NWZszX0BH57NOkLhteWGHOuJlZWJcj = load i32, i32* %cntr
store i32 %NWZszX0BH57NOkLhteWGHOuJlZWJcj, i32* %end_of_inp2
%aKqZA40pHYKDroZCI2J03KpEFjdPlR = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%zT5BOlwhD0ZdCkGfWbjmeA41o9Q4QE = add i32 0, 0
store i32 %zT5BOlwhD0ZdCkGfWbjmeA41o9Q4QE, i32* %cntr1
%KMPUPxPElB2wTGGht13rlWYLVge1pe = load i32, i32* %cntr1
store i32 %KMPUPxPElB2wTGGht13rlWYLVge1pe, i32* %cntr2
%TbqNtU3PnoOUd57IyEGR9MFBpoGCvg = load i32, i32* %cntr2
%a2Ky2AiKeN9CvN8oMWXsLIYhD8RUtM = add i1 1, 0
store i1 %a2Ky2AiKeN9CvN8oMWXsLIYhD8RUtM, i1* %not_yet_reached_inp1_end
%aLNPBKB2MQ9cJwrWsC9XrCwjYLZifE = load i1, i1* %not_yet_reached_inp1_end
store i1 %aLNPBKB2MQ9cJwrWsC9XrCwjYLZifE, i1* %not_yet_reached_inp2_end
%fxSifGe4iyNrd771TNPnvj6UntDMAw = load i1, i1* %not_yet_reached_inp2_end
%Eo1iH7KXd4kGx5NBx8Z4suu8SoxOzk = load i32, i32* %end_of_inp1
%a5SSxDOQnHRQgjObB9UbyaRSUgQI7e = load i32, i32* %end_of_inp2
%V3N1LPGK9KMaFt2rM7OiGHQVerp3CA = add i32 1, 0
%tnjdHhk6qSqyVIEEAvPDZ7oTueNWDR = add i32 %a5SSxDOQnHRQgjObB9UbyaRSUgQI7e, %V3N1LPGK9KMaFt2rM7OiGHQVerp3CA
%KpDLRRPwdTTU7J6ovl2TG70Yr4uuNl = add i32 %Eo1iH7KXd4kGx5NBx8Z4suu8SoxOzk, %tnjdHhk6qSqyVIEEAvPDZ7oTueNWDR
%d6XdHaA7Wt3Xg0epVqCnGzPap4oKE2 = call ptr @malloc(i32 %KpDLRRPwdTTU7J6ovl2TG70Yr4uuNl)
store ptr %d6XdHaA7Wt3Xg0epVqCnGzPap4oKE2, ptr %out
%vrLw1jI6hcqYr7mWeUuj8CmgSg3FVO = load ptr, ptr %out
br label %DUGShcVKuFZ2cuzkwHhuw5vALdpCx8

VApz6BET6SJYuDqqkztfBksPs2qW2L:
%M9Q0aw6fjSE29ZghaCtIMPORgmmzH7 = load i1, i1* %not_yet_reached_inp1_end
br i1 %M9Q0aw6fjSE29ZghaCtIMPORgmmzH7, label %DUGShcVKuFZ2cuzkwHhuw5vALdpCx8, label %QMi7VvE2yejXwcumugon4m5Stmbtdd

DUGShcVKuFZ2cuzkwHhuw5vALdpCx8:
%S2yJ5i60s31CL3sqGqehZ26q6u6z75 = load i32, i32* %cntr1
%o8EP17HqNpx0TVjVgIGWrqhau6AEwv = getelementptr inbounds i8, ptr %inp1, i32 %S2yJ5i60s31CL3sqGqehZ26q6u6z75
%AmPmOHd6QOh5riGx26YEBIPQR7GlPx = load i8, ptr %o8EP17HqNpx0TVjVgIGWrqhau6AEwv
%aO3puVwnISOXts2N7LL9gbwJOz9aW4 = add i8 0, 0
%LIoWm6yVVMZw6aLlhqlSmmnlaoY8ze = icmp eq i8 %AmPmOHd6QOh5riGx26YEBIPQR7GlPx, %aO3puVwnISOXts2N7LL9gbwJOz9aW4
br i1 %LIoWm6yVVMZw6aLlhqlSmmnlaoY8ze, label %Me86HOLm8hS0U6oFsTPl4YEZDANfno, label %L3IefQztlzDrmDM2OpjG5YazltCq0P

Me86HOLm8hS0U6oFsTPl4YEZDANfno:
%jOTDpnm79QIbP41IGuvFXlLYKiw7Dy = add i1 0, 0
store i1 %jOTDpnm79QIbP41IGuvFXlLYKiw7Dy, i1* %not_yet_reached_inp1_end
%Licee8e7aTznXqB13cHL1C0xwIhzOQ = load i1, i1* %not_yet_reached_inp1_end
br label %UJ3pUKB9tUcxQco04ZF2lw6G9Okhs0

L3IefQztlzDrmDM2OpjG5YazltCq0P:
%utYxLfTyRR1ytL6U8mZHc1lObcW0Sk = load i32, i32* %cntr1
%iFgdnuXTOJzBsPlvzrrBX122yOQPqK = getelementptr inbounds i8, ptr %inp1, i32 %utYxLfTyRR1ytL6U8mZHc1lObcW0Sk
%Zg9H4iSgOYJUAieEWYwhKKTJAVnGCJ = load i8, ptr %iFgdnuXTOJzBsPlvzrrBX122yOQPqK
%whB4lqi3QvaIiRIaOLfnHBqGGnyBnh = load ptr, ptr %out
%rCDHSvuboVM19jOzT8vTzBocLqRXrz = load i32, i32* %cntr1
%aVEGCldf5x1kQXINyXMgN6zYiJoUha = getelementptr inbounds i8, ptr %whB4lqi3QvaIiRIaOLfnHBqGGnyBnh, i32 %rCDHSvuboVM19jOzT8vTzBocLqRXrz
store i8 %Zg9H4iSgOYJUAieEWYwhKKTJAVnGCJ, ptr %aVEGCldf5x1kQXINyXMgN6zYiJoUha
%ajIiKeSYLpZpQH289yClfNcVVFYs3j = load i32, i32* %cntr1
%a7dscAwYsbDRecowkbofIgf3CgAzud = add i32 1, 0
%je9U9Xx6pKsFoRQ7m4frvvQTM5bhF1 = add i32 %ajIiKeSYLpZpQH289yClfNcVVFYs3j, %a7dscAwYsbDRecowkbofIgf3CgAzud
store i32 %je9U9Xx6pKsFoRQ7m4frvvQTM5bhF1, i32* %cntr1
%KFYHUwemOTIlTgQXfYPvlLL9ygYOBY = load i32, i32* %cntr1
br label %UJ3pUKB9tUcxQco04ZF2lw6G9Okhs0

UJ3pUKB9tUcxQco04ZF2lw6G9Okhs0:
br label %VApz6BET6SJYuDqqkztfBksPs2qW2L
QMi7VvE2yejXwcumugon4m5Stmbtdd:
br label %CsLL0d35ksGydRCb4TFFF64W12IDcL

aDCuaskAOeg3esAV36XVtqXKtBWQ91:
%Rj3khx2ably8mChy1CXV0R4PFOO7wW = load i1, i1* %not_yet_reached_inp2_end
br i1 %Rj3khx2ably8mChy1CXV0R4PFOO7wW, label %CsLL0d35ksGydRCb4TFFF64W12IDcL, label %aYSvp8qKYUaNzg8EbFJU2dsK0e5M1D

CsLL0d35ksGydRCb4TFFF64W12IDcL:
%DjWFyvQV8bhqF3tyx7MyJ5TrGh2fqF = load i32, i32* %cntr2
%XOro8XEvT0ftnldZpUFs0ibuUeZbT4 = getelementptr inbounds i8, ptr %inp2, i32 %DjWFyvQV8bhqF3tyx7MyJ5TrGh2fqF
%OfmuWknRAmODGJ28sxWKHXEkr9ozG6 = load i8, ptr %XOro8XEvT0ftnldZpUFs0ibuUeZbT4
%HrxxPD0kOrEgGAa0UCZ7TfOiKLMrnr = add i8 0, 0
%a5U06GXilQuvIyEJYxlc1esYGohj8o = icmp eq i8 %OfmuWknRAmODGJ28sxWKHXEkr9ozG6, %HrxxPD0kOrEgGAa0UCZ7TfOiKLMrnr
br i1 %a5U06GXilQuvIyEJYxlc1esYGohj8o, label %uNpTPV57kynGIO6Gw2unJZ8jTLsKoQ, label %kRRI8VvjjTvhrR2RiYhlbPsg5Mh3hj

uNpTPV57kynGIO6Gw2unJZ8jTLsKoQ:
%a2Qk515iLExNhIumGPTukv3SbMBsza = add i1 0, 0
store i1 %a2Qk515iLExNhIumGPTukv3SbMBsza, i1* %not_yet_reached_inp2_end
%tVUlJmlvSxJ8keBsfEsCzo9ILq6egi = load i1, i1* %not_yet_reached_inp2_end
br label %AxUc48WmBibmjym9JMX2yTVAgcmASK

kRRI8VvjjTvhrR2RiYhlbPsg5Mh3hj:
br label %AxUc48WmBibmjym9JMX2yTVAgcmASK

AxUc48WmBibmjym9JMX2yTVAgcmASK:
%q5ootA9BHKr0zlcX0vOecUbX2WSMXX = load i32, i32* %cntr2
%ElD1gYJfGZKRmVLBCPt0tEKkr75QS8 = getelementptr inbounds i8, ptr %inp2, i32 %q5ootA9BHKr0zlcX0vOecUbX2WSMXX
%Ry3mQYLqL5v2X20ch5l0uwvakpIj11 = load i8, ptr %ElD1gYJfGZKRmVLBCPt0tEKkr75QS8
%RZkye9PxdLkIefAszH5BMhYC3R6rT3 = load ptr, ptr %out
%o7wAEyX4B3lFqhYLMT89On1g6U3fYN = load i32, i32* %cntr2
%QLdycEfZPf3yOFzrKJ1oqfypNugNtY = load i32, i32* %end_of_inp1
%aopbAtnRvoPGiPI7aT7eko469CkPqw = add i32 %o7wAEyX4B3lFqhYLMT89On1g6U3fYN, %QLdycEfZPf3yOFzrKJ1oqfypNugNtY
%aSsmzDqhy5bMzIvqsADDluY83A7Brj = getelementptr inbounds i8, ptr %RZkye9PxdLkIefAszH5BMhYC3R6rT3, i32 %aopbAtnRvoPGiPI7aT7eko469CkPqw
store i8 %Ry3mQYLqL5v2X20ch5l0uwvakpIj11, ptr %aSsmzDqhy5bMzIvqsADDluY83A7Brj
%fhfI97TzacGozjxqL4Hntg6k2CGGov = load i32, i32* %cntr2
%IOj9o3FlN8LNbwowOznuw4krLGNZWP = add i32 1, 0
%grgehSATH1Fq5MxruBdxsZSUsbv0Zp = add i32 %fhfI97TzacGozjxqL4Hntg6k2CGGov, %IOj9o3FlN8LNbwowOznuw4krLGNZWP
store i32 %grgehSATH1Fq5MxruBdxsZSUsbv0Zp, i32* %cntr2
%jrCAdsWQuA5qPajbdJ7LjvkmkJAi91 = load i32, i32* %cntr2
br label %aDCuaskAOeg3esAV36XVtqXKtBWQ91
aYSvp8qKYUaNzg8EbFJU2dsK0e5M1D:
%UvVkzNf0dUBcr7PF1hBieIBgRN6Edx = load ptr, ptr %out
ret ptr %UvVkzNf0dUBcr7PF1hBieIBgRN6Edx
}
