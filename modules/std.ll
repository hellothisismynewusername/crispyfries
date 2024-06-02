declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i32)
declare void @free(ptr)

define i32 @fact( i32 %inp) {
%EXNRyaq7QaxgnBQmZQksjvVOF0Tsx6 = add i32 1, 0
%MDcorOYO9V3n64zZymsmc6nB174nSJ = icmp eq i32 %inp, %EXNRyaq7QaxgnBQmZQksjvVOF0Tsx6
br i1 %MDcorOYO9V3n64zZymsmc6nB174nSJ, label %bQPBGJomYp6iKKTPhAxPJHNZKvbNAb, label %r8gRJqOR3lS7Ktx4N8M3iOK1NgPt4T

bQPBGJomYp6iKKTPhAxPJHNZKvbNAb:
%NxZ5ySAZhZJAdi9HUTozLmmBq1R6Te = add i32 1, 0
ret i32 %NxZ5ySAZhZJAdi9HUTozLmmBq1R6Te
br label %TtdF8PSv5u43mDhUwW5O6IOHBvJAu5

r8gRJqOR3lS7Ktx4N8M3iOK1NgPt4T:
%PgunwQpoLEsbBy8wppJFFE3WzkLRIF = add i32 1, 0
%BLLxPkVfeAWIuJLFehVYj0nbaargLD = sub i32 %inp, %PgunwQpoLEsbBy8wppJFFE3WzkLRIF
%adJ7gil9h1Pu89SkYoXTX86DiUOJgo = call i32 @fact(i32 %BLLxPkVfeAWIuJLFehVYj0nbaargLD)
%W1eKJ9uKIW2OgbrxbQ8Tz37jxz84wS = mul i32 %inp, %adJ7gil9h1Pu89SkYoXTX86DiUOJgo
ret i32 %W1eKJ9uKIW2OgbrxbQ8Tz37jxz84wS
br label %TtdF8PSv5u43mDhUwW5O6IOHBvJAu5

TtdF8PSv5u43mDhUwW5O6IOHBvJAu5:
%gOo9TeYsYQRJmoS2XLNwxxRBtLYYEW = add i32 -1, 0
ret i32 %gOo9TeYsYQRJmoS2XLNwxxRBtLYYEW
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%not_reached = alloca i1
%cntr = alloca i32
%jg4yMhrvi6iLY43Ne2o5awevVc8QZN = add i1 1, 0
store i1 %jg4yMhrvi6iLY43Ne2o5awevVc8QZN, i1* %not_reached
%Y6SZyOnOPVIOqIpNzDwegJPIUFh9J5 = load i1, i1* %not_reached
%JG3HqwTFL2n6dtHAGlpcukdJtVu8eh = add i32 0, 0
store i32 %JG3HqwTFL2n6dtHAGlpcukdJtVu8eh, i32* %cntr
%ohFkEdF96VUHCEHPJ53CEVABYY9E6B = load i32, i32* %cntr
br label %k6By8bx6wd44E1rgeyEFpDcIuNDI9w

o66bLrE8Q0QdqtcGKmZErvZ1l5BZsY:
%ab1fmCcdjdm4RIgTPmg9AbhezYnWfi = load i1, i1* %not_reached
br i1 %ab1fmCcdjdm4RIgTPmg9AbhezYnWfi, label %k6By8bx6wd44E1rgeyEFpDcIuNDI9w, label %Vi8lUWtNBW04Pfur6jr5N8EgBXuUPm

k6By8bx6wd44E1rgeyEFpDcIuNDI9w:
%LJmjBtjGpkZtzl1ZJMMmUkXQ5KcVVB = load i32, i32* %cntr
%eHjaZKcrRnVeZi0R7VFtjnIzezmvwe = getelementptr inbounds i8, ptr %inp1, i32 %LJmjBtjGpkZtzl1ZJMMmUkXQ5KcVVB
%IxfWTAWXcHDkLi9ZvYkrgR12r4f5IB = load i8, ptr %eHjaZKcrRnVeZi0R7VFtjnIzezmvwe
%r1qfWBglOtmaf0cUn4kIc5c5pBOAk0 = add i8 0, 0
%zp6JqoWYsYwootGmnjXz12rA7NBDNf = icmp eq i8 %IxfWTAWXcHDkLi9ZvYkrgR12r4f5IB, %r1qfWBglOtmaf0cUn4kIc5c5pBOAk0
br i1 %zp6JqoWYsYwootGmnjXz12rA7NBDNf, label %YSTnxRwmp4Nj39QQGPbmW6hOZbldmC, label %P4JdW3oqsYtQhqN0hA1Qyhb5WZQNeE

YSTnxRwmp4Nj39QQGPbmW6hOZbldmC:
%KsCO5let3obQwFryWzdXJv6dlTFVMl = add i1 0, 0
store i1 %KsCO5let3obQwFryWzdXJv6dlTFVMl, i1* %not_reached
%upIax0qF4AjKD8ZNqjPEDQ5NT5QrdG = load i1, i1* %not_reached
br label %atLFsZlSfnpMJn3EgoQu4oiQKgP9zH

P4JdW3oqsYtQhqN0hA1Qyhb5WZQNeE:
%QeD3bHULhJIIhLVi2oRT1qASpzWtOq = load i32, i32* %cntr
%axairCl7BXKDIVXAZS4COIU2baH5pu = add i32 1, 0
%ZC7PPx930YBmYk7W2wWfMVWbdn2faV = add i32 %QeD3bHULhJIIhLVi2oRT1qASpzWtOq, %axairCl7BXKDIVXAZS4COIU2baH5pu
store i32 %ZC7PPx930YBmYk7W2wWfMVWbdn2faV, i32* %cntr
%Z2RPm8HTz2abXVWIfOkwI5gaq1vi45 = load i32, i32* %cntr
br label %atLFsZlSfnpMJn3EgoQu4oiQKgP9zH

atLFsZlSfnpMJn3EgoQu4oiQKgP9zH:
br label %o66bLrE8Q0QdqtcGKmZErvZ1l5BZsY
Vi8lUWtNBW04Pfur6jr5N8EgBXuUPm:
%DJJtwzDkiOgCMPmr4A5AnzpCqV97AW = load i32, i32* %cntr
store i32 %DJJtwzDkiOgCMPmr4A5AnzpCqV97AW, i32* %end_of_inp1
%Ef0vqUYUnjDlgs21MotVGGbaniQmoL = load i32, i32* %end_of_inp1
%njSPradqQKJzuDHGfhiGwTvrz6bltC = add i1 1, 0
store i1 %njSPradqQKJzuDHGfhiGwTvrz6bltC, i1* %not_reached
%avDlHdDOQIytRR3duiWmLcnVDRjipe = load i1, i1* %not_reached
%J3xOLdchwH6VaNWOsK8hNKdAPP2Lyl = add i32 0, 0
store i32 %J3xOLdchwH6VaNWOsK8hNKdAPP2Lyl, i32* %cntr
%lOSRtRwQ3zt4iFTDUKTfyZgFNOtctV = load i32, i32* %cntr
br label %QRm0s6Oj1AvSMRQFmGodqxPO7RzHGG

ExcKnaNZKiwSbNdQnvBKZ5uMZASt1N:
%U4Ez1l0eoxel3kZR3FUxCY7wnv8PrT = load i1, i1* %not_reached
br i1 %U4Ez1l0eoxel3kZR3FUxCY7wnv8PrT, label %QRm0s6Oj1AvSMRQFmGodqxPO7RzHGG, label %Yrop8z1bxN51qMjukww3A80CVpalDp

QRm0s6Oj1AvSMRQFmGodqxPO7RzHGG:
%JPrA14kBXInuGF9gQoOaKHv8CdxJS6 = load i32, i32* %cntr
%OJvesaB4Aa9wIMnHszO3m1JMZEdAtd = getelementptr inbounds i8, ptr %inp2, i32 %JPrA14kBXInuGF9gQoOaKHv8CdxJS6
%qUdDvCygxHB25eJuwWdgWsGzGwIsPA = load i8, ptr %OJvesaB4Aa9wIMnHszO3m1JMZEdAtd
%fjRStJqoJpIzklzQGmNbd2eRRMgRep = add i8 0, 0
%dIpFMBkWt70sub6PNBqgZK9xhhuw67 = icmp eq i8 %qUdDvCygxHB25eJuwWdgWsGzGwIsPA, %fjRStJqoJpIzklzQGmNbd2eRRMgRep
br i1 %dIpFMBkWt70sub6PNBqgZK9xhhuw67, label %pEF7LxtoDZrxjzzl1SamKGR6hZRuop, label %kw3aty5K8o8etPlTvGjz9eRvZX6nHM

pEF7LxtoDZrxjzzl1SamKGR6hZRuop:
%ahBIweZ7si89drORM9Zk7UOeCcD31E = add i1 0, 0
store i1 %ahBIweZ7si89drORM9Zk7UOeCcD31E, i1* %not_reached
%T8XY2v6UHnpcgNVQJaFHDLhCeCSSGP = load i1, i1* %not_reached
br label %sPa4VygSJ52t2WYWDT6fzqCOEmUhCB

kw3aty5K8o8etPlTvGjz9eRvZX6nHM:
%jrDnNHY7adT0Emm3OqqRWdMWAwpAMG = load i32, i32* %cntr
%gOUiDbKkjYJTD9YVTtycVcq6J3vNGD = add i32 1, 0
%VwSLAbGUCT8A1XE6gMOqOArUeFw1Pd = add i32 %jrDnNHY7adT0Emm3OqqRWdMWAwpAMG, %gOUiDbKkjYJTD9YVTtycVcq6J3vNGD
store i32 %VwSLAbGUCT8A1XE6gMOqOArUeFw1Pd, i32* %cntr
%qX4l3xaIg31vyvzlkT6ibIPcnNlamW = load i32, i32* %cntr
br label %sPa4VygSJ52t2WYWDT6fzqCOEmUhCB

sPa4VygSJ52t2WYWDT6fzqCOEmUhCB:
br label %ExcKnaNZKiwSbNdQnvBKZ5uMZASt1N
Yrop8z1bxN51qMjukww3A80CVpalDp:
%zC7u8E7cTV0G8wWiJRmz7bIL1bEJme = load i32, i32* %cntr
store i32 %zC7u8E7cTV0G8wWiJRmz7bIL1bEJme, i32* %end_of_inp2
%MOUWCQmy8VX0ao7DhZWR2tcxUcFfCb = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%m6XSXhABltzl4Vgo6garUrRZ4Sp1zl = add i32 0, 0
store i32 %m6XSXhABltzl4Vgo6garUrRZ4Sp1zl, i32* %cntr1
%a3Pcn98o4YvxiCIefWY9usjikCa6P0 = load i32, i32* %cntr1
store i32 %a3Pcn98o4YvxiCIefWY9usjikCa6P0, i32* %cntr2
%BVjC1WAyXAtmJDxGwj7j5Lef1z0h1Y = load i32, i32* %cntr2
%jeebXMjWiEPiekWyj2h2bb8xok4s3P = add i1 1, 0
store i1 %jeebXMjWiEPiekWyj2h2bb8xok4s3P, i1* %not_yet_reached_inp1_end
%axGuKgpfdzIB9FF9fDjLUPojRY2C8x = load i1, i1* %not_yet_reached_inp1_end
store i1 %axGuKgpfdzIB9FF9fDjLUPojRY2C8x, i1* %not_yet_reached_inp2_end
%Jwvg4l2StbNFOQwjFvKGEOxoTsz6Xq = load i1, i1* %not_yet_reached_inp2_end
%qcokOiqOYBBfM2xRdbz5vyNFLgUKj4 = load i32, i32* %end_of_inp1
%CmGYxFzXRWxU2KJoe73wwn0Eizw9sm = load i32, i32* %end_of_inp2
%opbtLwri96MQnmNsXxxWAoebxSeOEw = add i32 1, 0
%XNWAz2MLxDCdki7lhiYZNh9ShW3REG = add i32 %CmGYxFzXRWxU2KJoe73wwn0Eizw9sm, %opbtLwri96MQnmNsXxxWAoebxSeOEw
%X6WhPeu7DgPx7IywRAEpbFUV0TptHW = add i32 %qcokOiqOYBBfM2xRdbz5vyNFLgUKj4, %XNWAz2MLxDCdki7lhiYZNh9ShW3REG
%aG8d1wj4VGcbalr0RzhR3YPI0NmTkQ = call ptr @malloc(i32 %X6WhPeu7DgPx7IywRAEpbFUV0TptHW)
store ptr %aG8d1wj4VGcbalr0RzhR3YPI0NmTkQ, ptr %out
%a0uwhE3UvTuEaSWaxLr9zh8sV9TK31 = load ptr, ptr %out
br label %vqwUrAYtHSbsbzRv1E65z8U1ypCrjr

orE6R1QbvsDXqZv2Kha5pVuFZ4KVUM:
%d7XgQ2pV7t57iISwb2lEDY9euXGDu7 = load i1, i1* %not_yet_reached_inp1_end
br i1 %d7XgQ2pV7t57iISwb2lEDY9euXGDu7, label %vqwUrAYtHSbsbzRv1E65z8U1ypCrjr, label %uwmDPUqda1NdTZ7AqoK4vgeU5WPlo5

vqwUrAYtHSbsbzRv1E65z8U1ypCrjr:
%YaB8MDPWrNLIA6TQXnvH0tT5FNoIFO = load i32, i32* %cntr1
%K1NjSqUIwiaNNIxR9ctJbeYCpybw1y = getelementptr inbounds i8, ptr %inp1, i32 %YaB8MDPWrNLIA6TQXnvH0tT5FNoIFO
%axQ9b7Tj7KYF8sm7rGnzPV98ijuvxJ = load i8, ptr %K1NjSqUIwiaNNIxR9ctJbeYCpybw1y
%klKsbE7N4PkBlBcooChoWDzuZ8pmd4 = add i8 0, 0
%DG7EQVoMQ6PQIFH2TwCXmd7C241yxb = icmp eq i8 %axQ9b7Tj7KYF8sm7rGnzPV98ijuvxJ, %klKsbE7N4PkBlBcooChoWDzuZ8pmd4
br i1 %DG7EQVoMQ6PQIFH2TwCXmd7C241yxb, label %s6LhFrHrD3aKsot9Ll03sS8eNHMkRG, label %KdWKoNAeDztzDJgiwv5BqlKucEboXK

s6LhFrHrD3aKsot9Ll03sS8eNHMkRG:
%aroqfoaYRNXH1OEkazLqvPnAaIYhP7 = add i1 0, 0
store i1 %aroqfoaYRNXH1OEkazLqvPnAaIYhP7, i1* %not_yet_reached_inp1_end
%aOPZqZYv0lzdaFBuh2AnftPyw6gcm8 = load i1, i1* %not_yet_reached_inp1_end
br label %aJVTovh2nmws9t63NN6OrndMCt7hkm

KdWKoNAeDztzDJgiwv5BqlKucEboXK:
%DOfdtuFOBvwnNruNrZowHnlJ8MueKj = load i32, i32* %cntr1
%vZ7U8jzE21vtWBYR0b57MSA4cnZYOp = getelementptr inbounds i8, ptr %inp1, i32 %DOfdtuFOBvwnNruNrZowHnlJ8MueKj
%oqvAQbtxqThopPEOnule3g3z2FeirD = load i8, ptr %vZ7U8jzE21vtWBYR0b57MSA4cnZYOp
%QbnvFJaYVX0D56V29MRtNNIbxgFYkE = load ptr, ptr %out
%F5NKLT3LiTAAKEKgiDmtvNhHad2aZg = load i32, i32* %cntr1
%rDkq29Q2Un3lKjPhFjnf6j7OtoSmMb = getelementptr inbounds i8, ptr %QbnvFJaYVX0D56V29MRtNNIbxgFYkE, i32 %F5NKLT3LiTAAKEKgiDmtvNhHad2aZg
store i8 %oqvAQbtxqThopPEOnule3g3z2FeirD, ptr %rDkq29Q2Un3lKjPhFjnf6j7OtoSmMb
%XKr8GO2gVZW2xZkG3FsnfkRAzERdfY = load i32, i32* %cntr1
%MdkfT3w3C381iMMGZx5HC6WU0nizaE = add i32 1, 0
%aHfWnYjE1e93vEmi18QhaddkSYy1Rv = add i32 %XKr8GO2gVZW2xZkG3FsnfkRAzERdfY, %MdkfT3w3C381iMMGZx5HC6WU0nizaE
store i32 %aHfWnYjE1e93vEmi18QhaddkSYy1Rv, i32* %cntr1
%ufPO9831rjFUYmzhVxOHKWdNp8kduz = load i32, i32* %cntr1
br label %aJVTovh2nmws9t63NN6OrndMCt7hkm

aJVTovh2nmws9t63NN6OrndMCt7hkm:
br label %orE6R1QbvsDXqZv2Kha5pVuFZ4KVUM
uwmDPUqda1NdTZ7AqoK4vgeU5WPlo5:
br label %a0UqEYtMn3KEuW935Vwk1Fv80hxaa0

DK8NOYXTX4YJ2XKQsFhxeZKSlSFzAG:
%O9I9UvoEN4qXTnfGhO0IlSYvEDvEqP = load i1, i1* %not_yet_reached_inp2_end
br i1 %O9I9UvoEN4qXTnfGhO0IlSYvEDvEqP, label %a0UqEYtMn3KEuW935Vwk1Fv80hxaa0, label %aitSUUT4lm2xPtI1YWXzGwnPvErSZo

a0UqEYtMn3KEuW935Vwk1Fv80hxaa0:
%ZkBHgUSJPqMOPPnIVFwyEu69Y6AEkk = load i32, i32* %cntr2
%uJ90IqmSKUtY1QMphTwRTGSRbs4TZD = getelementptr inbounds i8, ptr %inp2, i32 %ZkBHgUSJPqMOPPnIVFwyEu69Y6AEkk
%BJc1bUHm3LHpaGUodMhuz8hKSsUTZg = load i8, ptr %uJ90IqmSKUtY1QMphTwRTGSRbs4TZD
%nKPHt65p1bw3BUFKt9LQAT30GZz5Y5 = add i8 0, 0
%N8DlGEEJDvMiyqoanRwb82sQ5AIb6o = icmp eq i8 %BJc1bUHm3LHpaGUodMhuz8hKSsUTZg, %nKPHt65p1bw3BUFKt9LQAT30GZz5Y5
br i1 %N8DlGEEJDvMiyqoanRwb82sQ5AIb6o, label %xPQDab6NLt49aIwa6BUvOaKNTQhhjn, label %hibYhyUQyAHG5qvgixanLZftC6NnOX

xPQDab6NLt49aIwa6BUvOaKNTQhhjn:
%X55svZO9bTfasGr8mWiwcV8U9I2Fbf = add i1 0, 0
store i1 %X55svZO9bTfasGr8mWiwcV8U9I2Fbf, i1* %not_yet_reached_inp2_end
%a9fNVfD3ttg5uvh4EPvFYVEqB0uqRI = load i1, i1* %not_yet_reached_inp2_end
br label %t2kurr9H9E0qoLKRLFg4O7eGNz802d

hibYhyUQyAHG5qvgixanLZftC6NnOX:
br label %t2kurr9H9E0qoLKRLFg4O7eGNz802d

t2kurr9H9E0qoLKRLFg4O7eGNz802d:
%W9d7i6vBbeBx4CXJANGP31KtX8Bu2n = load i32, i32* %cntr2
%n0onun4oyUK0w6iUU3pTfPmSNptil3 = getelementptr inbounds i8, ptr %inp2, i32 %W9d7i6vBbeBx4CXJANGP31KtX8Bu2n
%Fx2VrPdyvBYzII4kon08aAnhtkmAMA = load i8, ptr %n0onun4oyUK0w6iUU3pTfPmSNptil3
%aFji3k4UrLmkMphynDT0478FbfL6lZ = load ptr, ptr %out
%zrd2wTy9gX7PLhECwQqPZ1G6XWPRuH = load i32, i32* %cntr2
%Xl0irKVGlk2lvpL21YcVirzP0XxzCK = load i32, i32* %end_of_inp1
%T891EuFWWZraykRgifh1V8Ej8Jd2sl = add i32 %zrd2wTy9gX7PLhECwQqPZ1G6XWPRuH, %Xl0irKVGlk2lvpL21YcVirzP0XxzCK
%K9fg0L34LCAwFrIdLAcRWO2VEc9u1B = getelementptr inbounds i8, ptr %aFji3k4UrLmkMphynDT0478FbfL6lZ, i32 %T891EuFWWZraykRgifh1V8Ej8Jd2sl
store i8 %Fx2VrPdyvBYzII4kon08aAnhtkmAMA, ptr %K9fg0L34LCAwFrIdLAcRWO2VEc9u1B
%H0PlgHspyk1vyEHdpy768BMvYX6Xqc = load i32, i32* %cntr2
%LDSvPj83RQeVi5mwa6RkxaJDjwy83E = add i32 1, 0
%FUDeAC2AXzGf4qk4d0iF8fQw99RJgn = add i32 %H0PlgHspyk1vyEHdpy768BMvYX6Xqc, %LDSvPj83RQeVi5mwa6RkxaJDjwy83E
store i32 %FUDeAC2AXzGf4qk4d0iF8fQw99RJgn, i32* %cntr2
%icxHZ8YyNWAJnWkacB9qBoR5OZAU82 = load i32, i32* %cntr2
br label %DK8NOYXTX4YJ2XKQsFhxeZKSlSFzAG
aitSUUT4lm2xPtI1YWXzGwnPvErSZo:
%KNMfDOwws8a79lvcColqO4P8bNobt9 = load ptr, ptr %out
ret ptr %KNMfDOwws8a79lvcColqO4P8bNobt9
}
