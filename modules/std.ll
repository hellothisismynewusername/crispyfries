declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i64)
declare void @free(ptr)

define i32 @factorial32( i32 %inp) {
%EiL4QYDsveH1DyYZkUoXurSFj0Xb9g = add i32 1, 0
%LvvrOzANgrWE9o2eBJcRotmYjL3fOM = icmp eq i32 %inp, %EiL4QYDsveH1DyYZkUoXurSFj0Xb9g
br i1 %LvvrOzANgrWE9o2eBJcRotmYjL3fOM, label %oNZrLdwSM91cBhYfbbNP5lWHvXxJ1R, label %KXNqkToFodUriFYuEKjzzvDS2qwN9s

oNZrLdwSM91cBhYfbbNP5lWHvXxJ1R:
%Q2nmzy076XvXGqYacggWzVfjG0UJpo = add i32 1, 0
ret i32 %Q2nmzy076XvXGqYacggWzVfjG0UJpo
br label %lObwV2koJ7nqo1PL4EfCe9DoIrXdYx

KXNqkToFodUriFYuEKjzzvDS2qwN9s:
%TMPzoq15UuKPHPdwgFQqrkERuyRt4F = add i32 1, 0
%b9elCBOr91kKFl5g0VH73vXy4UMSx3 = sub i32 %inp, %TMPzoq15UuKPHPdwgFQqrkERuyRt4F
%oGhpng1vAkGG1Ti4PfZOTYhL9rDKyh = call i32 @factorial32(i32 %b9elCBOr91kKFl5g0VH73vXy4UMSx3)
%WHXtAHYVf1vN9Sg5tRh4v23Vs48NXc = mul i32 %inp, %oGhpng1vAkGG1Ti4PfZOTYhL9rDKyh
ret i32 %WHXtAHYVf1vN9Sg5tRh4v23Vs48NXc
br label %lObwV2koJ7nqo1PL4EfCe9DoIrXdYx

lObwV2koJ7nqo1PL4EfCe9DoIrXdYx:
%rn3JUIfQcTWYkrdVqS7VaXbbiNDrZt = add i32 -1, 0
ret i32 %rn3JUIfQcTWYkrdVqS7VaXbbiNDrZt
}
define i64 @factorial64( i64 %inp) {
%VK0HU2Ig8UeqLwQzBcd2WEvaofUBpR = add i64 1, 0
%a3E4nGDwXfFsEgAO7XY7tyMzduzagC = icmp eq i64 %inp, %VK0HU2Ig8UeqLwQzBcd2WEvaofUBpR
br i1 %a3E4nGDwXfFsEgAO7XY7tyMzduzagC, label %le5t4fNKy9o45ogRmY3Qvw4Wi2FLyL, label %Vw4ZQ5Jn2EL10yoSp7898SmEqDO5Jn

le5t4fNKy9o45ogRmY3Qvw4Wi2FLyL:
%YNOI5aGORMM6smjsr76jPmjp2X77iL = add i64 1, 0
ret i64 %YNOI5aGORMM6smjsr76jPmjp2X77iL
br label %bVul29bWccrXcub8pEvqmP4AHtdwdS

Vw4ZQ5Jn2EL10yoSp7898SmEqDO5Jn:
%IsHN3m8VET1COVQneVLEsImTUwvRLu = add i64 1, 0
%a3Gv87tzAxGsCJjzUJOxG5QfjHn2E2 = sub i64 %inp, %IsHN3m8VET1COVQneVLEsImTUwvRLu
%SzqucjCyNpofUl6UIwJnVZqad0dfHQ = call i64 @factorial64(i64 %a3Gv87tzAxGsCJjzUJOxG5QfjHn2E2)
%U3dc8X07eNhB0V3kpJuWL9kC4nrEE5 = mul i64 %inp, %SzqucjCyNpofUl6UIwJnVZqad0dfHQ
ret i64 %U3dc8X07eNhB0V3kpJuWL9kC4nrEE5
br label %bVul29bWccrXcub8pEvqmP4AHtdwdS

bVul29bWccrXcub8pEvqmP4AHtdwdS:
%BbWADtcFJLHoF2WKNN66BLoT5yl6fv = add i64 -1, 0
ret i64 %BbWADtcFJLHoF2WKNN66BLoT5yl6fv
}
define i8 @itoc32( i32 %inp0) {
%outpu = alloca i8
%m8gjwj2IRyJuyA94oixmJKSnDWwpKF = add i32 0, 0
%sApIgDiXlVFb9sE5GsD5Yg9gUFoOWO = icmp eq i32 %inp0, %m8gjwj2IRyJuyA94oixmJKSnDWwpKF
br i1 %sApIgDiXlVFb9sE5GsD5Yg9gUFoOWO, label %HNJQQ0pnoLkEV4pz3U6W0M6wJMJBZS, label %c7ZKjIA4LRzfoDHQzGgMM2ot2StrhR

HNJQQ0pnoLkEV4pz3U6W0M6wJMJBZS:
%aeWKlLxIR3890y6VInaFiVRHhg21ei = add i8 48, 0
store i8 %aeWKlLxIR3890y6VInaFiVRHhg21ei, i8* %outpu
%Cxq7yLDJ9JJmdMlBWtEIkQPG0Sn8ur = load i8, i8* %outpu
br label %aUeLnZ7ug5oSuDVhG7g6ZDWbWLGlO5

c7ZKjIA4LRzfoDHQzGgMM2ot2StrhR:
br label %aUeLnZ7ug5oSuDVhG7g6ZDWbWLGlO5

aUeLnZ7ug5oSuDVhG7g6ZDWbWLGlO5:
%PmYFaNkyEySUFbrAoTzbLumumzxrGu = add i32 1, 0
%gpz1BExmHlipA0Z9iYwu8pFrk7c7EC = icmp eq i32 %inp0, %PmYFaNkyEySUFbrAoTzbLumumzxrGu
br i1 %gpz1BExmHlipA0Z9iYwu8pFrk7c7EC, label %BZMNgbXQPjIYfw1U7aTfN0ZdVqKKDt, label %yADnxnijiQyxd1oQTen7NC5FUjw8hv

BZMNgbXQPjIYfw1U7aTfN0ZdVqKKDt:
%ynDTJ4TElPFy5mFiGFjrDc41MKfI4y = add i8 49, 0
store i8 %ynDTJ4TElPFy5mFiGFjrDc41MKfI4y, i8* %outpu
%WvKg6M8g9Oq4P0CMxDVmXmgDSkhuDV = load i8, i8* %outpu
br label %ESlRSVKYXmjrk4ng9uzHNOyV3Qluqn

yADnxnijiQyxd1oQTen7NC5FUjw8hv:
br label %ESlRSVKYXmjrk4ng9uzHNOyV3Qluqn

ESlRSVKYXmjrk4ng9uzHNOyV3Qluqn:
%aRxdyH2DDiLoEjS4DRY06no5NyKJSX = add i32 2, 0
%c8RUhzkxAvyqEX0TL9tEEb1AZWOzPM = icmp eq i32 %inp0, %aRxdyH2DDiLoEjS4DRY06no5NyKJSX
br i1 %c8RUhzkxAvyqEX0TL9tEEb1AZWOzPM, label %c9g0w8EtE3eFUzFluuULxGzyKgMTQl, label %f0uuZIuilSGRSjTH2BtOldWkVYO9Mm

c9g0w8EtE3eFUzFluuULxGzyKgMTQl:
%fMSOi35lSkgU5DFHFmKxsiZktbm330 = add i8 50, 0
store i8 %fMSOi35lSkgU5DFHFmKxsiZktbm330, i8* %outpu
%Fte0t3MCynWQi3tlb9UuVc7M3FaxCG = load i8, i8* %outpu
br label %amNWkgwZEnmzijTRJ0byCoc2kCqUFQ

f0uuZIuilSGRSjTH2BtOldWkVYO9Mm:
br label %amNWkgwZEnmzijTRJ0byCoc2kCqUFQ

amNWkgwZEnmzijTRJ0byCoc2kCqUFQ:
%vAFfrq0cJTwymjyHqJw0MtqGxTyQ6S = add i32 3, 0
%fOe3nIasf6YxIM7zDJux6onyd2mOE5 = icmp eq i32 %inp0, %vAFfrq0cJTwymjyHqJw0MtqGxTyQ6S
br i1 %fOe3nIasf6YxIM7zDJux6onyd2mOE5, label %UeCHWpZch4H2hJuDeGiRlkvaIu84Za, label %NgSDag4PE93HPXTVBY81y8R5QLHjEt

UeCHWpZch4H2hJuDeGiRlkvaIu84Za:
%T7MsRTl42zePenzD8aYv7M5H24gnsb = add i8 51, 0
store i8 %T7MsRTl42zePenzD8aYv7M5H24gnsb, i8* %outpu
%S7zaq5WkMaqrzwy1ijGmPk50AOHmeg = load i8, i8* %outpu
br label %ACrdyIvJXh5Yuq0ljYXgIOzdBm34XQ

NgSDag4PE93HPXTVBY81y8R5QLHjEt:
br label %ACrdyIvJXh5Yuq0ljYXgIOzdBm34XQ

ACrdyIvJXh5Yuq0ljYXgIOzdBm34XQ:
%mwSp0jsiX1JpVxyfAYjVO838qJ3b7w = add i32 4, 0
%us2ICGgjHUg1L7XVkymzNRPm3lC9nt = icmp eq i32 %inp0, %mwSp0jsiX1JpVxyfAYjVO838qJ3b7w
br i1 %us2ICGgjHUg1L7XVkymzNRPm3lC9nt, label %SSP1hWqNf7pTxnl5Hflmt5cGvawVi9, label %vClPLRXyfDQnWxxgaa3YDJnri8b7yN

SSP1hWqNf7pTxnl5Hflmt5cGvawVi9:
%TwSyxGUjkhr0qQZMxuiAH3vcPGFnHi = add i8 52, 0
store i8 %TwSyxGUjkhr0qQZMxuiAH3vcPGFnHi, i8* %outpu
%djHFCiQXf4GMYzc7PqKTgkG9xXOwpa = load i8, i8* %outpu
br label %aWqhfs5BCmIkpSCqjaa8CRu1Z52lnL

vClPLRXyfDQnWxxgaa3YDJnri8b7yN:
br label %aWqhfs5BCmIkpSCqjaa8CRu1Z52lnL

aWqhfs5BCmIkpSCqjaa8CRu1Z52lnL:
%W9GHGYyzT5XvIqGoriLUNp4MGyVxes = add i32 5, 0
%aWnI0aAOyFRSX0ExzBw0eD9V6zZM4t = icmp eq i32 %inp0, %W9GHGYyzT5XvIqGoriLUNp4MGyVxes
br i1 %aWnI0aAOyFRSX0ExzBw0eD9V6zZM4t, label %McWnsEtbCJ2d2VAG1JEb5PQKQEydrX, label %aJhc9FSVgleHe2deCU9GOdapyoa2hg

McWnsEtbCJ2d2VAG1JEb5PQKQEydrX:
%ccmr6MvZGwyrRIa3yhbLPv3E7fyExO = add i8 53, 0
store i8 %ccmr6MvZGwyrRIa3yhbLPv3E7fyExO, i8* %outpu
%rP0bhlky3xw32WbNEmcFiKia9GSGiI = load i8, i8* %outpu
br label %UCGnsl7I5ZB8QjUCuBQalqdzCjUkET

aJhc9FSVgleHe2deCU9GOdapyoa2hg:
br label %UCGnsl7I5ZB8QjUCuBQalqdzCjUkET

UCGnsl7I5ZB8QjUCuBQalqdzCjUkET:
%Hg3zxl7gwfAmlcfukMWROzZXMw6vad = add i32 6, 0
%GBGhac7GYtIkkHznXq2jOVgxTEN1dq = icmp eq i32 %inp0, %Hg3zxl7gwfAmlcfukMWROzZXMw6vad
br i1 %GBGhac7GYtIkkHznXq2jOVgxTEN1dq, label %SKdKGCUVTcqu4Rm6iKklj5QMcvxFDC, label %vrA7BaN72RgATOJ0jS9gOYnXOdejLJ

SKdKGCUVTcqu4Rm6iKklj5QMcvxFDC:
%f5eam2FPlR9flo5gcDcynJ8aIOmJC3 = add i8 54, 0
store i8 %f5eam2FPlR9flo5gcDcynJ8aIOmJC3, i8* %outpu
%a9fumtPYxTeI8MLrvCHSWBRypELGdJ = load i8, i8* %outpu
br label %DPtGSR83jchyonWubDEicVDRXfJcIf

vrA7BaN72RgATOJ0jS9gOYnXOdejLJ:
br label %DPtGSR83jchyonWubDEicVDRXfJcIf

DPtGSR83jchyonWubDEicVDRXfJcIf:
%lJJKes3Zx6oGIytkzD0E6hvo0SaBGm = add i32 7, 0
%blHkCLZnfMehaeJewZiWn5IAm4n9Jy = icmp eq i32 %inp0, %lJJKes3Zx6oGIytkzD0E6hvo0SaBGm
br i1 %blHkCLZnfMehaeJewZiWn5IAm4n9Jy, label %VUXex6v3BzXYBvItgXPDTVLyseAQLp, label %BD9OsmQJM3Sqk05U1D6nfJjn6RNcU2

VUXex6v3BzXYBvItgXPDTVLyseAQLp:
%PmR02RO5KWxvPny3mPYHIrZQUhsW3q = add i8 55, 0
store i8 %PmR02RO5KWxvPny3mPYHIrZQUhsW3q, i8* %outpu
%aLI5aSNEdJ7gNuW5LuprPtGwW39jXS = load i8, i8* %outpu
br label %HYFjWHrwWU3hhOHzm5hHfcEghc42mn

BD9OsmQJM3Sqk05U1D6nfJjn6RNcU2:
br label %HYFjWHrwWU3hhOHzm5hHfcEghc42mn

HYFjWHrwWU3hhOHzm5hHfcEghc42mn:
%a2xvj3IMTV4YzRIWwSBOxvNihaQOWf = add i32 8, 0
%l51R1xOWdyRB5jwhFuNbJwnIe1UWnT = icmp eq i32 %inp0, %a2xvj3IMTV4YzRIWwSBOxvNihaQOWf
br i1 %l51R1xOWdyRB5jwhFuNbJwnIe1UWnT, label %QvGY0gyzyzokVOH1fAkNIXr66PxEnD, label %j4JLP9GdwJ865lECefx3Mi3rym2I6K

QvGY0gyzyzokVOH1fAkNIXr66PxEnD:
%q9S3AsTFv4ENchmeQUkzuGOANEaBFK = add i8 56, 0
store i8 %q9S3AsTFv4ENchmeQUkzuGOANEaBFK, i8* %outpu
%PhTLqp0SEOXszTmBTJrZkgTbRCdzbE = load i8, i8* %outpu
br label %iAjfMtDj2Y6VQwVQc4krJxfKPaX40n

j4JLP9GdwJ865lECefx3Mi3rym2I6K:
br label %iAjfMtDj2Y6VQwVQc4krJxfKPaX40n

iAjfMtDj2Y6VQwVQc4krJxfKPaX40n:
%XvAtDBGuYSHK5D6ofyiVL606itmGO3 = add i32 9, 0
%a9QNld7kQT4JCcQVlnv7UBcg8L8NFQ = icmp eq i32 %inp0, %XvAtDBGuYSHK5D6ofyiVL606itmGO3
br i1 %a9QNld7kQT4JCcQVlnv7UBcg8L8NFQ, label %J9ZpKveUWuVpUxvxVWZVqqeifX3O6d, label %RfGpnU6TyQ8EqDCL7iFIa51eduHjn2

J9ZpKveUWuVpUxvxVWZVqqeifX3O6d:
%evXbAyNZBTBsT7kfn140DGjDFYmKtb = add i8 57, 0
store i8 %evXbAyNZBTBsT7kfn140DGjDFYmKtb, i8* %outpu
%aZES6gCTpfDG1RV3VGj5hlzRVAVRYD = load i8, i8* %outpu
br label %BgDmjlLL6iuGwuLXQqsTrt8Pib2agO

RfGpnU6TyQ8EqDCL7iFIa51eduHjn2:
br label %BgDmjlLL6iuGwuLXQqsTrt8Pib2agO

BgDmjlLL6iuGwuLXQqsTrt8Pib2agO:
%APsjIbFKsyzQ7yptXJKsCxLNBxnviv = load i8, i8* %outpu
ret i8 %APsjIbFKsyzQ7yptXJKsCxLNBxnviv
}
define ptr @itostr32( i32 %inp1) {
%var = alloca i32
%len = alloca i32
%b = alloca i1
%outp = alloca ptr
store i32 %inp1, i32* %var
%ssVyqsZzPu4laJxkIMYLnz76RaC1E5 = load i32, i32* %var
%yKU4JOLWHtHs9XKHrYIJAYPNh9ZB62 = add i32 0, 0
store i32 %yKU4JOLWHtHs9XKHrYIJAYPNh9ZB62, i32* %len
%aE8OAB2DsWz2c6FHuxaSBSuqw86DVt = load i32, i32* %len
%znjP8KyfyWqjnFGMWQp9lVgsz57A5B = add i1 1, 0
store i1 %znjP8KyfyWqjnFGMWQp9lVgsz57A5B, i1* %b
%B5nBRgbOa4o9ZNq0lADu1W9fmuStNr = load i1, i1* %b
br label %k7Ng7iixzk5S51FM0Su3mWhZXlObs0

NtBxNdIabr1g7Rkwt2jWYfvR6MJfPJ:
%lQMAokuxllk16sEkirXp2uPMchGwuf = load i1, i1* %b
br i1 %lQMAokuxllk16sEkirXp2uPMchGwuf, label %k7Ng7iixzk5S51FM0Su3mWhZXlObs0, label %fEbpQN3pBE0puYecn8Kax8LbPBcBiw

k7Ng7iixzk5S51FM0Su3mWhZXlObs0:
%ip9lt4UFcOT4xFER4S7BJT0wPmtyTs = load i32, i32* %var
%wBT7fEupV2HihwKp26cEuFaARzWBXH = add i32 0, 0
%mJ1TDIoQpEeSEu6EyrndCfFmEGc7q1 = icmp eq i32 %ip9lt4UFcOT4xFER4S7BJT0wPmtyTs, %wBT7fEupV2HihwKp26cEuFaARzWBXH
br i1 %mJ1TDIoQpEeSEu6EyrndCfFmEGc7q1, label %ifbdAMtClyG0RgsmWRzFCzYq4qu0tz, label %LbdZBmeUyv0xKn6hHMeOq2DZ0VM308

ifbdAMtClyG0RgsmWRzFCzYq4qu0tz:
%WJ2BONKZXUItkBUdCRhZanontPPSYZ = add i1 0, 0
store i1 %WJ2BONKZXUItkBUdCRhZanontPPSYZ, i1* %b
%QVhrZpD7ggkXyO44nNfrdLSqVz1Ao6 = load i1, i1* %b
br label %yJoKn0tjpbmUaJz4QRY10y24F6A7yI

LbdZBmeUyv0xKn6hHMeOq2DZ0VM308:
%izcIUR1ULBKlh898LgtIIK2oQIaZHO = load i32, i32* %var
%exI4XaKk592eAnQZQftgzzreH5JXHg = add i32 10, 0
%qoLpYWEnHao1IAUWrtDq42Gsf53kTR = sdiv i32 %izcIUR1ULBKlh898LgtIIK2oQIaZHO, %exI4XaKk592eAnQZQftgzzreH5JXHg
store i32 %qoLpYWEnHao1IAUWrtDq42Gsf53kTR, i32* %var
%FiZgpxdTbpdqfOyECqwTwgun74t2Im = load i32, i32* %var
%B9e4ZyeDVyS4KgiorB20o6x0jKzBAo = load i32, i32* %len
%eIFQ2xFuTopA0OSgrgj7BJZ8hcTaTp = add i32 1, 0
%aREvIRKhRcsVvpGnIGZZz48gZ3fbHz = add i32 %B9e4ZyeDVyS4KgiorB20o6x0jKzBAo, %eIFQ2xFuTopA0OSgrgj7BJZ8hcTaTp
store i32 %aREvIRKhRcsVvpGnIGZZz48gZ3fbHz, i32* %len
%yb2FIhjihSRT5RPaKsyB7lfpiMpMbK = load i32, i32* %len
br label %yJoKn0tjpbmUaJz4QRY10y24F6A7yI

yJoKn0tjpbmUaJz4QRY10y24F6A7yI:
br label %NtBxNdIabr1g7Rkwt2jWYfvR6MJfPJ
fEbpQN3pBE0puYecn8Kax8LbPBcBiw:
%cntr = alloca i32
%QEYeidGs600zcDtP8UDv6BlIXecnQ3 = load i32, i32* %len
%jYM71eqbjvaawJs9R3Arqi68sWiQP8 = add i32 1, 0
%aOTytIFA6enMeSHbIMOJQws08IIJw2 = add i32 %QEYeidGs600zcDtP8UDv6BlIXecnQ3, %jYM71eqbjvaawJs9R3Arqi68sWiQP8
%NctK3mYe8T0gAafkg9LH6zQ4ACTJf2 = sext i32 %aOTytIFA6enMeSHbIMOJQws08IIJw2 to i64
%nXVy88xfsQrc95tJZAsq2fCF7Kdcke = call ptr @malloc(i64 %NctK3mYe8T0gAafkg9LH6zQ4ACTJf2)
store ptr %nXVy88xfsQrc95tJZAsq2fCF7Kdcke, ptr %outp
%AodvqkgmnuJFQD77cE3Pfg4SZZXd0q = load ptr, ptr %outp
%k0QvXCK7KqV1dfCs74UMb6UAprBYtH = add i1 1, 0
store i1 %k0QvXCK7KqV1dfCs74UMb6UAprBYtH, i1* %b
%a4nhAqf3xdwk1CJogqN8hyoDcqR6JG = load i1, i1* %b
store i32 %inp1, i32* %var
%TlyMvXGUZAy5hNiXMIWl6wWeyGbxB7 = load i32, i32* %var
%aeH394niUtViSNBzAZWWCd3IpDWbuZ = load i32, i32* %len
%IHcFLnGUDVMEhgwxaffrkm7Iy5mTuq = add i32 1, 0
%PkNBzK3reyW8ngmXLr05MAONM7xi4i = sub i32 %aeH394niUtViSNBzAZWWCd3IpDWbuZ, %IHcFLnGUDVMEhgwxaffrkm7Iy5mTuq
store i32 %PkNBzK3reyW8ngmXLr05MAONM7xi4i, i32* %cntr
%ilzRbcrqmxooZ6YnyARUrP2yz1dv8w = load i32, i32* %cntr
br label %EKiRJthaxpzAkO1rKFRlIlBShM0izA

j5bI5EMQzcDvW7AT1hBEPQIVrMLtUt:
%AWVtVvM8tfxmRrmlX8KEwg5zHvJPON = load i1, i1* %b
br i1 %AWVtVvM8tfxmRrmlX8KEwg5zHvJPON, label %EKiRJthaxpzAkO1rKFRlIlBShM0izA, label %aLDOoDdWO2bSEkHScbMtW41GUtSTq8

EKiRJthaxpzAkO1rKFRlIlBShM0izA:
%WlyEaUFEUhLpRHFujpjnzXUAKjWNFJ = load i32, i32* %var
%abtrpVoPGxZQ5moN6Rpah7qk0DHUbp = add i32 0, 0
%rGwMpMR80kAeoryluQ119rMBi5EHVc = icmp eq i32 %WlyEaUFEUhLpRHFujpjnzXUAKjWNFJ, %abtrpVoPGxZQ5moN6Rpah7qk0DHUbp
br i1 %rGwMpMR80kAeoryluQ119rMBi5EHVc, label %szbZsmMoGMT7YpKyc2rwN3aEJqKkCT, label %hrM9VIOMNvpuSxF4HqawDqTEQeyWv3

szbZsmMoGMT7YpKyc2rwN3aEJqKkCT:
%vwCyWP1GeA2TpJg0MGPpLCP3HCZxLr = add i8 0, 0
%tbeKrLEkGfZygY81tQEzqpkgAcaAYu = load ptr, ptr %outp
%cvrnpBnJRC25u79jxzvKXPemY7qP0s = load i32, i32* %len
%Oooia4AeTI7Jymaxr3wFSD5vFl98Hm = getelementptr inbounds i8, ptr %tbeKrLEkGfZygY81tQEzqpkgAcaAYu, i32 %cvrnpBnJRC25u79jxzvKXPemY7qP0s
store i8 %vwCyWP1GeA2TpJg0MGPpLCP3HCZxLr, ptr %Oooia4AeTI7Jymaxr3wFSD5vFl98Hm
%alz8XSVGFpdXaZrg9fUKyQYtaj2rw3 = add i1 0, 0
store i1 %alz8XSVGFpdXaZrg9fUKyQYtaj2rw3, i1* %b
%b9R7TCEaVOHLwtYSTttSWV9mnuLUoe = load i1, i1* %b
br label %moSH16LoZFZqMWrN3GKR9dcl02MVQL

hrM9VIOMNvpuSxF4HqawDqTEQeyWv3:
%aMmcMFFmJjgXYbxEbQwn38QfvUBb9f = load i32, i32* %var
%Os4yk5zWJbCA9iSXjzfa1WiZMX9nnt = add i32 10, 0
%OUgnh8o5WZ1T5dhruuvAFUR0RtHlLg = srem i32 %aMmcMFFmJjgXYbxEbQwn38QfvUBb9f, %Os4yk5zWJbCA9iSXjzfa1WiZMX9nnt
%DjGnvG47ipS0lngbVgz24GH6iXu718 = call i8 @itoc32(i32 %OUgnh8o5WZ1T5dhruuvAFUR0RtHlLg)
%A5nqbiotDduuAS2twu7LLC2aY5upve = load ptr, ptr %outp
%a9nlzeWiiyhsNO1thc9S1g9xy6VDDY = load i32, i32* %cntr
%NUupC4qTl8W5RbwlnLlYsXOEclIYPm = getelementptr inbounds i8, ptr %A5nqbiotDduuAS2twu7LLC2aY5upve, i32 %a9nlzeWiiyhsNO1thc9S1g9xy6VDDY
store i8 %DjGnvG47ipS0lngbVgz24GH6iXu718, ptr %NUupC4qTl8W5RbwlnLlYsXOEclIYPm
%Xv4ztyRVxDkJpBLPJbzSBzyMCcecHT = load i32, i32* %var
%KWtLrN4YXbqUJmriPUm8f268Dj2tjn = add i32 10, 0
%vTgRrDAOBmQ0gY7nLujwN49cKfGGhV = sdiv i32 %Xv4ztyRVxDkJpBLPJbzSBzyMCcecHT, %KWtLrN4YXbqUJmriPUm8f268Dj2tjn
store i32 %vTgRrDAOBmQ0gY7nLujwN49cKfGGhV, i32* %var
%CbKmRa0fn2wUjt3WPNLpAyGURpfDAW = load i32, i32* %var
%iuw881a7ysfFcVh4rB02OrslFOwDHm = load i32, i32* %cntr
%musXHMvNzQsEFLTuLOwp4qD81DELKq = add i32 1, 0
%e1pY584W5fO48443kVMHT1YsTo6a1V = sub i32 %iuw881a7ysfFcVh4rB02OrslFOwDHm, %musXHMvNzQsEFLTuLOwp4qD81DELKq
store i32 %e1pY584W5fO48443kVMHT1YsTo6a1V, i32* %cntr
%a92RDDZOvCYtwtxBZLjZTYkCRGusev = load i32, i32* %cntr
br label %moSH16LoZFZqMWrN3GKR9dcl02MVQL

moSH16LoZFZqMWrN3GKR9dcl02MVQL:
br label %j5bI5EMQzcDvW7AT1hBEPQIVrMLtUt
aLDOoDdWO2bSEkHScbMtW41GUtSTq8:
%TVqqZ2Aw6KwxH6oWBmNGmUCllr8bMp = load ptr, ptr %outp
ret ptr %TVqqZ2Aw6KwxH6oWBmNGmUCllr8bMp
}
define i32 @strlen32( ptr %inp) {
%not_reached = alloca i1
%count32 = alloca i32
%DF0oZjGsr9MoRJJZruHefvUprNWA2D = add i1 1, 0
store i1 %DF0oZjGsr9MoRJJZruHefvUprNWA2D, i1* %not_reached
%agNnLCnBhwYt22FbG2KstvVLEwp781 = load i1, i1* %not_reached
%N7ji08Ha4qwEmJ0xM32IcAqT3pQp8A = add i32 0, 0
store i32 %N7ji08Ha4qwEmJ0xM32IcAqT3pQp8A, i32* %count32
%aEml9G7VpT3b9FdMBlaQdY9zQkxi2D = load i32, i32* %count32
br label %ZwEBRpjaGUPaYtmazXE2m3LaKjG6Ty

a3hQ2ukdTXKr3k6sLlfLThEWQXSdB7:
%qQWoYG9QB8LjBm1xbtveT0yw4NNjSK = load i1, i1* %not_reached
br i1 %qQWoYG9QB8LjBm1xbtveT0yw4NNjSK, label %ZwEBRpjaGUPaYtmazXE2m3LaKjG6Ty, label %VnpQerZQjzutD1DvpMb0T9W1LcYGCY

ZwEBRpjaGUPaYtmazXE2m3LaKjG6Ty:
%P3hva63b8FOjQvTB3UH2Z4yPfYoVyp = load i32, i32* %count32
%a9ZKp2lk73zSVX6naU6fiDokGHNrs8 = getelementptr inbounds i8, ptr %inp, i32 %P3hva63b8FOjQvTB3UH2Z4yPfYoVyp
%aL11qCFQniMxPwgDwdJNr8qC7gLAU5 = load i8, ptr %a9ZKp2lk73zSVX6naU6fiDokGHNrs8
%flaYqN5n9TBerLt9vSCxmeH8WIx58p = add i8 0, 0
%XC3EYrvgihPpg3YHQmklDK3zSYBqlc = icmp eq i8 %aL11qCFQniMxPwgDwdJNr8qC7gLAU5, %flaYqN5n9TBerLt9vSCxmeH8WIx58p
br i1 %XC3EYrvgihPpg3YHQmklDK3zSYBqlc, label %mBgt7HQNc8Yx4e59ErpF37TTqkxz6P, label %tjiwv5fOiL7NMvmpJIAHTqwaq712A2

mBgt7HQNc8Yx4e59ErpF37TTqkxz6P:
%hGOU4jtqd0o7x4h27y3rTZH1UMnVvQ = add i1 0, 0
store i1 %hGOU4jtqd0o7x4h27y3rTZH1UMnVvQ, i1* %not_reached
%odYQySC6N2oHYXpIfd4H5cZ8u27Do7 = load i1, i1* %not_reached
br label %aPU17m15WvzmC3OloPAXNYN66EXkOA

tjiwv5fOiL7NMvmpJIAHTqwaq712A2:
%wT2MsqmkHXOn7eKzZY4pibJXI8ZaZI = load i32, i32* %count32
%wMTI2cza7BO2xmhfVK9BlkWZzM3Spo = add i32 1, 0
%zdLxxPDLRvrj5T6D5bkSJ8tnVRu7ZO = add i32 %wT2MsqmkHXOn7eKzZY4pibJXI8ZaZI, %wMTI2cza7BO2xmhfVK9BlkWZzM3Spo
store i32 %zdLxxPDLRvrj5T6D5bkSJ8tnVRu7ZO, i32* %count32
%iW4TvzFgAuJ1U27fHiNH6BiJdlynBg = load i32, i32* %count32
br label %aPU17m15WvzmC3OloPAXNYN66EXkOA

aPU17m15WvzmC3OloPAXNYN66EXkOA:
br label %a3hQ2ukdTXKr3k6sLlfLThEWQXSdB7
VnpQerZQjzutD1DvpMb0T9W1LcYGCY:
%V0OmieqQUyW0lcgMP8acy65O56a5vC = load i32, i32* %count32
ret i32 %V0OmieqQUyW0lcgMP8acy65O56a5vC
}
define i64 @strlen64( ptr %inp) {
%not_reached = alloca i1
%count64 = alloca i64
%iToSTKtF4NT0AAhJOqtqiLo5kLfGzB = add i1 1, 0
store i1 %iToSTKtF4NT0AAhJOqtqiLo5kLfGzB, i1* %not_reached
%cOnjO0I0rL0fFXPLOlBOTUaVbyRNqZ = load i1, i1* %not_reached
%VSQhiJ5Y8UC1ngU2rzMvQ469bylp0X = add i64 0, 0
store i64 %VSQhiJ5Y8UC1ngU2rzMvQ469bylp0X, i64* %count64
%Fkw7yS2CDicQlKpYi6PcJ4U5TW0h9b = load i64, i64* %count64
br label %SFpnT7llyqE73qTrAr0ewfvRy4m4Um

DrRfLAhcIwE0JbRZ4DEYIq0VdjysX5:
%qzQMdRd49e3svpNaosecbacMVDWBSy = load i1, i1* %not_reached
br i1 %qzQMdRd49e3svpNaosecbacMVDWBSy, label %SFpnT7llyqE73qTrAr0ewfvRy4m4Um, label %z8NGdLBXCRTGVqt4QYlTfXQBCzOeXK

SFpnT7llyqE73qTrAr0ewfvRy4m4Um:
%U9NvWtHPGjeqLg3wW4lgVYs4QHs8pD = load i64, i64* %count64
%sC4t56jYQMCxeDKq0G9WW6wHbFEB9B = getelementptr inbounds i8, ptr %inp, i64 %U9NvWtHPGjeqLg3wW4lgVYs4QHs8pD
%I6rDrEDoGWtRMbhmS0eZIrYlSGaIVc = load i8, ptr %sC4t56jYQMCxeDKq0G9WW6wHbFEB9B
%T1BFWwvcstijv2JmphDja2sLorvO8j = add i8 0, 0
%aTZ38mvAGgIpeC0PFWnYVoerHkGw3p = icmp eq i8 %I6rDrEDoGWtRMbhmS0eZIrYlSGaIVc, %T1BFWwvcstijv2JmphDja2sLorvO8j
br i1 %aTZ38mvAGgIpeC0PFWnYVoerHkGw3p, label %Mk7oscW0OXk6eQn8myTJRkrrPx7KQt, label %KYIZqtfBfTpY3dKgc9A9kSLsPAqes2

Mk7oscW0OXk6eQn8myTJRkrrPx7KQt:
%OsSrgcb4z9yBbs0awT9m2rbmLGxgAd = add i1 0, 0
store i1 %OsSrgcb4z9yBbs0awT9m2rbmLGxgAd, i1* %not_reached
%ZaBm0qDnsBXPgEB0nd0jakvKsW6VHw = load i1, i1* %not_reached
br label %qTQOqm7wYwHWS3ui9L8mfXaJNLLlmc

KYIZqtfBfTpY3dKgc9A9kSLsPAqes2:
%ch7JVWljyEoKEKlkI1JYJy813uxWpi = load i64, i64* %count64
%alcrCF72Axo2Fm8J14nw82GqT4UFmo = add i64 1, 0
%XY6KQYAjWoETOa5MbDx7z7fETgJNxJ = add i64 %ch7JVWljyEoKEKlkI1JYJy813uxWpi, %alcrCF72Axo2Fm8J14nw82GqT4UFmo
store i64 %XY6KQYAjWoETOa5MbDx7z7fETgJNxJ, i64* %count64
%a5XmsX72qu58wVySeCOfQslhM0ZpuN = load i64, i64* %count64
br label %qTQOqm7wYwHWS3ui9L8mfXaJNLLlmc

qTQOqm7wYwHWS3ui9L8mfXaJNLLlmc:
br label %DrRfLAhcIwE0JbRZ4DEYIq0VdjysX5
z8NGdLBXCRTGVqt4QYlTfXQBCzOeXK:
%kvs7JGw7wcEQDlOS0DmfW3S7rSRlNb = load i64, i64* %count64
ret i64 %kvs7JGw7wcEQDlOS0DmfW3S7rSRlNb
}
define ptr @strdup( ptr %inp) {
%out_str = alloca ptr
%len64 = alloca i64
%a6jgAi1jeGIYKnwQosKP0MI3xmAteQ = call i64 @strlen64(ptr %inp)
%ebcrldI3l3eEOrUVQIfnZNlyLuaw6I = add i64 1, 0
%gZUjEFulgpLwVZAUdKHmYgrxCoI51x = add i64 %a6jgAi1jeGIYKnwQosKP0MI3xmAteQ, %ebcrldI3l3eEOrUVQIfnZNlyLuaw6I
store i64 %gZUjEFulgpLwVZAUdKHmYgrxCoI51x, i64* %len64
%wuFlpPzehPJjZpJcDe199vOhCgSm6N = load i64, i64* %len64
%anb760bKdJVASUSmZittLurlWioSzw = call ptr @malloc(i64 %wuFlpPzehPJjZpJcDe199vOhCgSm6N)
store ptr %anb760bKdJVASUSmZittLurlWioSzw, ptr %out_str
%a52qe6BitVUtPnBt0vA6ic2ixDOBFQ = load ptr, ptr %out_str
%b = alloca i1
%cntr64 = alloca i64
%E3CtKjmD4TCFrGDvHH1bMs5AVMbnFm = add i1 1, 0
store i1 %E3CtKjmD4TCFrGDvHH1bMs5AVMbnFm, i1* %b
%iqvWzH8LYdcmvf05tqxbxJAQDq9o0P = load i1, i1* %b
%a8uORG8FNelxdtySMT8hMDe5OEisUQ = add i64 0, 0
store i64 %a8uORG8FNelxdtySMT8hMDe5OEisUQ, i64* %cntr64
%ajypR9PxGIDXvT2cGHah9Vm2XTTXOP = load i64, i64* %cntr64
br label %RjRhuVDC74kytntnhqpbINzeLUQd92

CuVQUDeV818aBR1sJltbmcI6o4t1K1:
%PUwvzB5WoEGh901mrfLJGa6Jj9GwJe = load i1, i1* %b
br i1 %PUwvzB5WoEGh901mrfLJGa6Jj9GwJe, label %RjRhuVDC74kytntnhqpbINzeLUQd92, label %IEiTotIkytQMcSU75BmacwDQk4hNP0

RjRhuVDC74kytntnhqpbINzeLUQd92:
%JmzsjuVgdNsvBhUawj0LX2Ir0AjhzE = load i64, i64* %cntr64
%Th6YqK1JYFfTgbG6jILaGxlQxtLmPa = load i64, i64* %len64
%YAQKlYwbuO1uBNUK3nmQ9Feb2XmYmf = icmp eq i64 %JmzsjuVgdNsvBhUawj0LX2Ir0AjhzE, %Th6YqK1JYFfTgbG6jILaGxlQxtLmPa
br i1 %YAQKlYwbuO1uBNUK3nmQ9Feb2XmYmf, label %x7rq0TYvjK67a7jysWKw3ZZtMZN3E7, label %xO1UUJqX7xjyCrFqVFJQ0ScA40EDNe

x7rq0TYvjK67a7jysWKw3ZZtMZN3E7:
%kIhhXcPqSEypzAOBlLfFEg92UMCVjE = add i8 0, 0
%yG03GKjqN0fJObXqNgLL9qgN3i1Ytm = load ptr, ptr %out_str
%FqYQ27lOL3AaPDwiMpsIyjXgKZU365 = load i64, i64* %len64
%UJ5LVccSIpKVVfBE0fbC3R3dZm3xUD = getelementptr inbounds i8, ptr %yG03GKjqN0fJObXqNgLL9qgN3i1Ytm, i64 %FqYQ27lOL3AaPDwiMpsIyjXgKZU365
store i8 %kIhhXcPqSEypzAOBlLfFEg92UMCVjE, ptr %UJ5LVccSIpKVVfBE0fbC3R3dZm3xUD
%WAV199rJn1SFyad6QKc6q0D2pf6x4L = add i1 0, 0
store i1 %WAV199rJn1SFyad6QKc6q0D2pf6x4L, i1* %b
%nP7rjmW24aLYkIeNIUssslxvVG10xH = load i1, i1* %b
br label %aRqRgpmZSRbGrQCgpJB7KEWsL79APm

xO1UUJqX7xjyCrFqVFJQ0ScA40EDNe:
%MUZze0GxTTXeEidQxuAYoqi0txFfyh = load i64, i64* %cntr64
%kVvPEF7gLFOpPAZzCgBVkErfsZ6GUW = getelementptr inbounds i8, ptr %inp, i64 %MUZze0GxTTXeEidQxuAYoqi0txFfyh
%q9z4jPVX4qVNSycm8Wt9z0ZCpjbMfI = load i8, ptr %kVvPEF7gLFOpPAZzCgBVkErfsZ6GUW
%joTsNAIJNQRKlwP9A60gTI4704Nwq7 = load ptr, ptr %out_str
%oDXxPwpZjnNiO1cXG4A3Ohgle7uSyM = load i64, i64* %cntr64
%BUSvj4RtC9hm4LVHh61ZN78nRhiUMi = getelementptr inbounds i8, ptr %joTsNAIJNQRKlwP9A60gTI4704Nwq7, i64 %oDXxPwpZjnNiO1cXG4A3Ohgle7uSyM
store i8 %q9z4jPVX4qVNSycm8Wt9z0ZCpjbMfI, ptr %BUSvj4RtC9hm4LVHh61ZN78nRhiUMi
%ahjqX4GBb63xp6Aq37KpclSa1t3T06 = load i64, i64* %cntr64
%jxoZJefPKTtjEVcFwNDmQEtBTt71a8 = add i64 1, 0
%MojXhnIht0hBAHphKlNXaswtk9RSQZ = add i64 %ahjqX4GBb63xp6Aq37KpclSa1t3T06, %jxoZJefPKTtjEVcFwNDmQEtBTt71a8
store i64 %MojXhnIht0hBAHphKlNXaswtk9RSQZ, i64* %cntr64
%UCd4u2fdtSQuO8mZpIWFTATyIrI3ZC = load i64, i64* %cntr64
br label %aRqRgpmZSRbGrQCgpJB7KEWsL79APm

aRqRgpmZSRbGrQCgpJB7KEWsL79APm:
br label %CuVQUDeV818aBR1sJltbmcI6o4t1K1
IEiTotIkytQMcSU75BmacwDQk4hNP0:
%aXWs7KE2u538Im3CttD6mkXd9lyD3w = load ptr, ptr %out_str
ret ptr %aXWs7KE2u538Im3CttD6mkXd9lyD3w
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%fOpvocTg4qUF0Lwu8Pez38k7yM5xBI = call i32 @strlen32(ptr %inp1)
store i32 %fOpvocTg4qUF0Lwu8Pez38k7yM5xBI, i32* %end_of_inp1
%BxYzDIIigEqnyL9PJN6wVRAr6xcMkN = load i32, i32* %end_of_inp1
%HhO9ieCyPharBv12Wbm2Fkc3T6A36x = call i32 @strlen32(ptr %inp2)
store i32 %HhO9ieCyPharBv12Wbm2Fkc3T6A36x, i32* %end_of_inp2
%aaq4djs2865UjPsaXXXalOy7BV1phE = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%xO2GrdKobiQIquYZB4fK3pnVzWq7mP = add i32 0, 0
store i32 %xO2GrdKobiQIquYZB4fK3pnVzWq7mP, i32* %cntr1
%xPiLaPwFtmeApqqrirUgzEhUuBSYC4 = load i32, i32* %cntr1
store i32 %xPiLaPwFtmeApqqrirUgzEhUuBSYC4, i32* %cntr2
%xAigNsbpl0Htw2MsOhS1q9Vz1hXRH0 = load i32, i32* %cntr2
%QQDA6ApuQ5oOVBJlrcPyXfaIZEX5oU = add i1 1, 0
store i1 %QQDA6ApuQ5oOVBJlrcPyXfaIZEX5oU, i1* %not_yet_reached_inp1_end
%a8iKmf62G0tbnsMJTkpP7U53GphG8K = load i1, i1* %not_yet_reached_inp1_end
store i1 %a8iKmf62G0tbnsMJTkpP7U53GphG8K, i1* %not_yet_reached_inp2_end
%nzCkQmPD0oAStguOl45np1gdiVCnB8 = load i1, i1* %not_yet_reached_inp2_end
%sBvfq204s9Bw9xtLk0FsAqmNitn5Bj = load i32, i32* %end_of_inp1
%zDhQjVjIDbuIlnd7ItdL21OFVfHyJD = load i32, i32* %end_of_inp2
%WrnTLrmethEllqd7bdJJAyX0BRmrrQ = add i32 1, 0
%aJzgZ9VujuE3W7JMp3QUwMu9HaKdf0 = add i32 %zDhQjVjIDbuIlnd7ItdL21OFVfHyJD, %WrnTLrmethEllqd7bdJJAyX0BRmrrQ
%ckUCJwSEJ25bUgvsiisWHWd86CdW7M = add i32 %sBvfq204s9Bw9xtLk0FsAqmNitn5Bj, %aJzgZ9VujuE3W7JMp3QUwMu9HaKdf0
%N5l3P4r4NPZbtIjdySPyOJ1Lofw6GI = sext i32 %ckUCJwSEJ25bUgvsiisWHWd86CdW7M to i64
%G7WO42ho6PMQDmVdbBDv70tV3tvddr = call ptr @malloc(i64 %N5l3P4r4NPZbtIjdySPyOJ1Lofw6GI)
store ptr %G7WO42ho6PMQDmVdbBDv70tV3tvddr, ptr %out
%WDm5bHRDRh4CrHbO9ssnxopSGiqxZc = load ptr, ptr %out
br label %sAGHdWGqRRSwtZoyJG7ersXrsXEPch

aZJ8nxOp2ezAJXbYk9XGNfLijCjeBD:
%H57n8zoEu66o1qDa9YVmf1tGHBt6gY = load i1, i1* %not_yet_reached_inp1_end
br i1 %H57n8zoEu66o1qDa9YVmf1tGHBt6gY, label %sAGHdWGqRRSwtZoyJG7ersXrsXEPch, label %f1PJdAgZkLnrG3LFHFb8NJQNLRWEf4

sAGHdWGqRRSwtZoyJG7ersXrsXEPch:
%RdHIN6Qg1WJpz7VTVg7jwXgbofrsQ4 = load i32, i32* %cntr1
%GCWHjLYHqSuWIy7HefqjkIfW6Kn66U = getelementptr inbounds i8, ptr %inp1, i32 %RdHIN6Qg1WJpz7VTVg7jwXgbofrsQ4
%avEGgldZVb38ZzVtc5RGbGtHXAsVfw = load i8, ptr %GCWHjLYHqSuWIy7HefqjkIfW6Kn66U
%dHKmaylpro0Unst3ZqA4CLPotYuwBk = add i8 0, 0
%fbCPoDhZ3CSgj7DYei2ns8Hk0p4vyT = icmp eq i8 %avEGgldZVb38ZzVtc5RGbGtHXAsVfw, %dHKmaylpro0Unst3ZqA4CLPotYuwBk
br i1 %fbCPoDhZ3CSgj7DYei2ns8Hk0p4vyT, label %artTtUbTQoW9rmXEidCgKcisxEuRG2, label %WwwJltBgJnJrrZGwJ4bZ6P5Mda431A

artTtUbTQoW9rmXEidCgKcisxEuRG2:
%aVm6YZMOwc9pCwVtkFkaDtjS0izZnL = add i1 0, 0
store i1 %aVm6YZMOwc9pCwVtkFkaDtjS0izZnL, i1* %not_yet_reached_inp1_end
%Ps9QkAU5OFW8zXnFcb9ZTsHTZar7XV = load i1, i1* %not_yet_reached_inp1_end
br label %EvDDAAQepHLJ86QRkWzKpMcv7pqP6r

WwwJltBgJnJrrZGwJ4bZ6P5Mda431A:
%VXK09Nu4Z8xCShXgPfT7poLUxDkUuK = load i32, i32* %cntr1
%g1p9KzK5S7vqFCZqV2s5dkMeXKXSXa = getelementptr inbounds i8, ptr %inp1, i32 %VXK09Nu4Z8xCShXgPfT7poLUxDkUuK
%Vp26WpsE1GtCzELfYhkGW0AJdTt4Ut = load i8, ptr %g1p9KzK5S7vqFCZqV2s5dkMeXKXSXa
%ykDBMJ3PtB1KkN6C75V3bLQ2bG5nBY = load ptr, ptr %out
%IezXc4vKrItKMHe9aJpibUcDLEzhaA = load i32, i32* %cntr1
%aRvzfnmkMTPloz7qth69eRsMVl441T = getelementptr inbounds i8, ptr %ykDBMJ3PtB1KkN6C75V3bLQ2bG5nBY, i32 %IezXc4vKrItKMHe9aJpibUcDLEzhaA
store i8 %Vp26WpsE1GtCzELfYhkGW0AJdTt4Ut, ptr %aRvzfnmkMTPloz7qth69eRsMVl441T
%g71nzMhIt9rc5P3VZHC0Vd3MTtrFqU = load i32, i32* %cntr1
%ZKx5ZkOojdhjoSdx8Lh9YXnQRqbtT7 = add i32 1, 0
%d2P4uNyWUPWRZeq4fRWMuwUAK8F5yR = add i32 %g71nzMhIt9rc5P3VZHC0Vd3MTtrFqU, %ZKx5ZkOojdhjoSdx8Lh9YXnQRqbtT7
store i32 %d2P4uNyWUPWRZeq4fRWMuwUAK8F5yR, i32* %cntr1
%rYPeG0dNSnHWqr3zJ7oHFtWwqi249R = load i32, i32* %cntr1
br label %EvDDAAQepHLJ86QRkWzKpMcv7pqP6r

EvDDAAQepHLJ86QRkWzKpMcv7pqP6r:
br label %aZJ8nxOp2ezAJXbYk9XGNfLijCjeBD
f1PJdAgZkLnrG3LFHFb8NJQNLRWEf4:
br label %aFMoQ0cwAlY6qHGFz0Mvjd9HiHQ9nl

aW2VVJSZRO6UI424EGAYjJobIzLHq0:
%ow1lgpTQoEbzs7Q6KP6ua7hmvgYcfg = load i1, i1* %not_yet_reached_inp2_end
br i1 %ow1lgpTQoEbzs7Q6KP6ua7hmvgYcfg, label %aFMoQ0cwAlY6qHGFz0Mvjd9HiHQ9nl, label %mJRxjTDqB5kRZnvGNZmvypDMhuwmRJ

aFMoQ0cwAlY6qHGFz0Mvjd9HiHQ9nl:
%aKdGNvjmfJXfDweMuUXBTVI7Q2f0b3 = load i32, i32* %cntr2
%aUnSUDJyxKOVVkPRotUVw8P3faT38v = getelementptr inbounds i8, ptr %inp2, i32 %aKdGNvjmfJXfDweMuUXBTVI7Q2f0b3
%vOTUr5d3yiAFlHbdGA31aeXBKh5kTO = load i8, ptr %aUnSUDJyxKOVVkPRotUVw8P3faT38v
%IxrbC7zhYzWy2sSojMRhYoGt3YX44k = add i8 0, 0
%tsRAxHEYUPL20vEK9iznLjc19k8pCE = icmp eq i8 %vOTUr5d3yiAFlHbdGA31aeXBKh5kTO, %IxrbC7zhYzWy2sSojMRhYoGt3YX44k
br i1 %tsRAxHEYUPL20vEK9iznLjc19k8pCE, label %X2NozFhQZ2Gviq4Ivg0y6YiUiuCUC3, label %F0w3brqmgMkiLl0Ac0pZVQnhBLOTvl

X2NozFhQZ2Gviq4Ivg0y6YiUiuCUC3:
%CyUX4JpCNLIsMjUditj7VXscXy5gFh = add i1 0, 0
store i1 %CyUX4JpCNLIsMjUditj7VXscXy5gFh, i1* %not_yet_reached_inp2_end
%aQfgqmBpP0iiRSGqBFHvij1fZpD5FH = load i1, i1* %not_yet_reached_inp2_end
br label %ZAxyNOtmInlJ2yu2QGQ3z2XjJ15e9j

F0w3brqmgMkiLl0Ac0pZVQnhBLOTvl:
br label %ZAxyNOtmInlJ2yu2QGQ3z2XjJ15e9j

ZAxyNOtmInlJ2yu2QGQ3z2XjJ15e9j:
%weHv38voEVDntZhq98sBYkT3cM4KiM = load i32, i32* %cntr2
%rrCGBk5abxHp6oWQ7Ec3XhFu1B2Nr8 = getelementptr inbounds i8, ptr %inp2, i32 %weHv38voEVDntZhq98sBYkT3cM4KiM
%QpBQKIt5GOxmGpfKrQ3hkOIlFz9vxw = load i8, ptr %rrCGBk5abxHp6oWQ7Ec3XhFu1B2Nr8
%zEAB4pkuJXvqjxH1NTshCiAkHMaBgS = load ptr, ptr %out
%PI785eDD06p3zn4EpWAxUjfebtdpf1 = load i32, i32* %cntr2
%L7vQJZlLcQNvNubz4FymRnykWooRgO = load i32, i32* %end_of_inp1
%wwZRBnZQUW4sEleLUHOLfb4EojaF5i = add i32 %PI785eDD06p3zn4EpWAxUjfebtdpf1, %L7vQJZlLcQNvNubz4FymRnykWooRgO
%WwaMS3qQ0a9VGnuQyeIso7F8DfBgNZ = getelementptr inbounds i8, ptr %zEAB4pkuJXvqjxH1NTshCiAkHMaBgS, i32 %wwZRBnZQUW4sEleLUHOLfb4EojaF5i
store i8 %QpBQKIt5GOxmGpfKrQ3hkOIlFz9vxw, ptr %WwaMS3qQ0a9VGnuQyeIso7F8DfBgNZ
%DhcImdDPshddxxvB8WEpN49ywypJIS = load i32, i32* %cntr2
%ghgFEwnP19b5b5lpDQNWViZRSYUOo3 = add i32 1, 0
%o6ZzNSLRRwze9uAuOW8zoDrJBGvtbj = add i32 %DhcImdDPshddxxvB8WEpN49ywypJIS, %ghgFEwnP19b5b5lpDQNWViZRSYUOo3
store i32 %o6ZzNSLRRwze9uAuOW8zoDrJBGvtbj, i32* %cntr2
%su4rc7Ng7IaeVLV1n8C333HdrJP10S = load i32, i32* %cntr2
br label %aW2VVJSZRO6UI424EGAYjJobIzLHq0
mJRxjTDqB5kRZnvGNZmvypDMhuwmRJ:
%dX1hKo4Ne2K9mjAfB3fQb7VHnQMTxK = load ptr, ptr %out
ret ptr %dX1hKo4Ne2K9mjAfB3fQb7VHnQMTxK
}
