declare dso_local i32 @puts(ptr)
declare dso_local i32 @putchar(i8)
declare ptr @malloc(i64)
declare void @free(ptr)

define i32 @factorial32( i32 %inp) {
%cXFYZNu0QSkTd10x194PYSxbyG0go7 = add i32 1, 0
%pMJQ8I65XXykaFGMNXlPXDKgoTTQlc = icmp eq i32 %inp, %cXFYZNu0QSkTd10x194PYSxbyG0go7
br i1 %pMJQ8I65XXykaFGMNXlPXDKgoTTQlc, label %Is9vwRJuDlgEXOcnXts2Zrq0JEbuJx, label %TsuqO3gW4gC38tWf7pxrbIUZNjWk0S

Is9vwRJuDlgEXOcnXts2Zrq0JEbuJx:
%aJDnbA4LNEi0KQgx0ouI2c1KUVIstU = add i32 1, 0
ret i32 %aJDnbA4LNEi0KQgx0ouI2c1KUVIstU
br label %lR7IRBQcaoM2j8mkT6pCSSj9nInMkj

TsuqO3gW4gC38tWf7pxrbIUZNjWk0S:
%zQ8v8YcUB2QLg6j1lpWneMayePr8Co = add i32 1, 0
%XVg0IF6QOskeeipX3rhqW81jeNDdb7 = sub i32 %inp, %zQ8v8YcUB2QLg6j1lpWneMayePr8Co
%s3NMiBsJO30Ud2SzQeYIb1Y4gGOVWE = call i32 @factorial32(i32 %XVg0IF6QOskeeipX3rhqW81jeNDdb7)
%Z6qbdUkJeY7VGvgynCr0V8rmekxlsY = mul i32 %inp, %s3NMiBsJO30Ud2SzQeYIb1Y4gGOVWE
ret i32 %Z6qbdUkJeY7VGvgynCr0V8rmekxlsY
br label %lR7IRBQcaoM2j8mkT6pCSSj9nInMkj

lR7IRBQcaoM2j8mkT6pCSSj9nInMkj:
%LD1kuvsWQGdOiKD4iqaa1IFrBxVPng = add i32 -1, 0
ret i32 %LD1kuvsWQGdOiKD4iqaa1IFrBxVPng
}
define i64 @factorial64( i64 %inp) {
%dDFCmJkFN9i9FETXRTYd99g5cJykjI = add i64 1, 0
%a3w6dkNfmgDPXLq6v41w3zHXJc4plY = icmp eq i64 %inp, %dDFCmJkFN9i9FETXRTYd99g5cJykjI
br i1 %a3w6dkNfmgDPXLq6v41w3zHXJc4plY, label %CsXmiSHwa0W703TtLsNt9EjSr9y826, label %VdZarkYz5OGRun1h7N2Shn6HsatX6h

CsXmiSHwa0W703TtLsNt9EjSr9y826:
%lPPrbbTDNavIRfMj0lzN0SVfx4mxSC = add i64 1, 0
ret i64 %lPPrbbTDNavIRfMj0lzN0SVfx4mxSC
br label %fxlh5LV8JGo3qLXqJsdz43Idv3UuhG

VdZarkYz5OGRun1h7N2Shn6HsatX6h:
%v6aFvWvE2x9Nfh9pwLxEB8F3g1FBz3 = add i64 1, 0
%woAz6IITKBrwk2p4eZMbsCIvoCwzFl = sub i64 %inp, %v6aFvWvE2x9Nfh9pwLxEB8F3g1FBz3
%xn9xiuwvsvoZhz6DIrKZsr3j0s24Gu = call i64 @factorial64(i64 %woAz6IITKBrwk2p4eZMbsCIvoCwzFl)
%T3eqdgNavmcaVnLmWbMNGVhnRpQ0H5 = mul i64 %inp, %xn9xiuwvsvoZhz6DIrKZsr3j0s24Gu
ret i64 %T3eqdgNavmcaVnLmWbMNGVhnRpQ0H5
br label %fxlh5LV8JGo3qLXqJsdz43Idv3UuhG

fxlh5LV8JGo3qLXqJsdz43Idv3UuhG:
%gHADm2NEfvxHD04Ssysefb5jbospiS = add i64 -1, 0
ret i64 %gHADm2NEfvxHD04Ssysefb5jbospiS
}
define i8 @itoc32( i32 %inp0) {
%outpu = alloca i8
%ohE6OVieaTuj9sjAiiWR2K8PZuf985 = add i32 0, 0
%Oyg0AEzioBcPCGjRkQT1f1VKnCb8cO = icmp eq i32 %inp0, %ohE6OVieaTuj9sjAiiWR2K8PZuf985
br i1 %Oyg0AEzioBcPCGjRkQT1f1VKnCb8cO, label %B66lc3sj1k2HJmusbr8nAm0jyDcU2l, label %j7CEA69kC1NtbBqsAu6GfbZtDoXCMl

B66lc3sj1k2HJmusbr8nAm0jyDcU2l:
%GF4EoPfwBVlnyoP5bWTUac0eAwyOXy = add i8 48, 0
store i8 %GF4EoPfwBVlnyoP5bWTUac0eAwyOXy, i8* %outpu
%Gols7ngbddv01kqt5cXw42n7wJXJEM = load i8, i8* %outpu
br label %hqLD0xg4FruFbiKfQwRT7Ehy5KhXzQ

j7CEA69kC1NtbBqsAu6GfbZtDoXCMl:
br label %hqLD0xg4FruFbiKfQwRT7Ehy5KhXzQ

hqLD0xg4FruFbiKfQwRT7Ehy5KhXzQ:
%gv8ehm9NAeyrUXpZ9MdKZRV4NeWsAi = add i32 1, 0
%x4OBJaWPQzg6LsKq83lTtBNu0ur27n = icmp eq i32 %inp0, %gv8ehm9NAeyrUXpZ9MdKZRV4NeWsAi
br i1 %x4OBJaWPQzg6LsKq83lTtBNu0ur27n, label %S121wdqnaKeu1ZdkUFgGnFIWfUVMx7, label %kPYsYIcmmD9TObE7GjoBEBKp2YaS32

S121wdqnaKeu1ZdkUFgGnFIWfUVMx7:
%HUAEdkYgbJw5EbCu5gQgEiBWqYQzke = add i8 49, 0
store i8 %HUAEdkYgbJw5EbCu5gQgEiBWqYQzke, i8* %outpu
%af9hVXhe4FPxc5mgLcwB5nh5loKZx3 = load i8, i8* %outpu
br label %OP8RIMvtTOah3mBgnujuBJzMBt15Ku

kPYsYIcmmD9TObE7GjoBEBKp2YaS32:
br label %OP8RIMvtTOah3mBgnujuBJzMBt15Ku

OP8RIMvtTOah3mBgnujuBJzMBt15Ku:
%YmXVMBNh0lxzUykXoy0K8NBEVPmTVJ = add i32 2, 0
%wv978QDciby0EQb3JFwFnJmKokD3Fx = icmp eq i32 %inp0, %YmXVMBNh0lxzUykXoy0K8NBEVPmTVJ
br i1 %wv978QDciby0EQb3JFwFnJmKokD3Fx, label %T3YxgTyDdEGuLBrYCb8FWyMG1jzieH, label %oNhITa6E06RBdyXixQRwIEk8o0qS2H

T3YxgTyDdEGuLBrYCb8FWyMG1jzieH:
%akSPONbCAB3gFh9cdZC8aNFfj3AyG3 = add i8 50, 0
store i8 %akSPONbCAB3gFh9cdZC8aNFfj3AyG3, i8* %outpu
%MlpNoged86YTpJ6f6Ak3RZozCuDp77 = load i8, i8* %outpu
br label %jR2yXyqxIcCaCrAjL9MzAfV5s5YrCN

oNhITa6E06RBdyXixQRwIEk8o0qS2H:
br label %jR2yXyqxIcCaCrAjL9MzAfV5s5YrCN

jR2yXyqxIcCaCrAjL9MzAfV5s5YrCN:
%X5ruyrSdWsSWtizvZzpb4sU0XhE7NV = add i32 3, 0
%ztyU4B2sB35Q3heBdLJrXPRpBFN5ET = icmp eq i32 %inp0, %X5ruyrSdWsSWtizvZzpb4sU0XhE7NV
br i1 %ztyU4B2sB35Q3heBdLJrXPRpBFN5ET, label %aMfhwh74ZgvNZhZKHCFnm6bKXe7Yj7, label %O6IoExeQq5Q0qXpEWhBxcWsYX1irnh

aMfhwh74ZgvNZhZKHCFnm6bKXe7Yj7:
%kxG45fuMUF44zP94S2U1WMTVKT6dyV = add i8 51, 0
store i8 %kxG45fuMUF44zP94S2U1WMTVKT6dyV, i8* %outpu
%My70q5NuMR5cn6hzwBrW16N6erXYW5 = load i8, i8* %outpu
br label %aK3YYJLvkbhGNS5soSNOPGjxiQkakp

O6IoExeQq5Q0qXpEWhBxcWsYX1irnh:
br label %aK3YYJLvkbhGNS5soSNOPGjxiQkakp

aK3YYJLvkbhGNS5soSNOPGjxiQkakp:
%nbrTgN5oknTrAal8wOLG5uLAdcedA3 = add i32 4, 0
%J6sNMq9ALNdIajc23dLvgvj3cP3d9o = icmp eq i32 %inp0, %nbrTgN5oknTrAal8wOLG5uLAdcedA3
br i1 %J6sNMq9ALNdIajc23dLvgvj3cP3d9o, label %XjK0c9WGzEJ80LeTUhxeosEhEHBucW, label %a6aDAICj67FdfXqI8rutjY7E2S0UNU

XjK0c9WGzEJ80LeTUhxeosEhEHBucW:
%gRrhQh0yKz7y13cQOXfTlWbSNOlDsn = add i8 52, 0
store i8 %gRrhQh0yKz7y13cQOXfTlWbSNOlDsn, i8* %outpu
%L5tz8CjcPjY4ZG65NujN2nAjNLDglN = load i8, i8* %outpu
br label %aF7e9gEGmge9lanRqM5y8JOPgL6afN

a6aDAICj67FdfXqI8rutjY7E2S0UNU:
br label %aF7e9gEGmge9lanRqM5y8JOPgL6afN

aF7e9gEGmge9lanRqM5y8JOPgL6afN:
%gtoyNTf5Ry8EfHtBaB7vCnBYXruCfP = add i32 5, 0
%UCYGQd93L9m39wXs4Cv9oNUDsE9Gn1 = icmp eq i32 %inp0, %gtoyNTf5Ry8EfHtBaB7vCnBYXruCfP
br i1 %UCYGQd93L9m39wXs4Cv9oNUDsE9Gn1, label %aBnktPerX2rPGevn80c3e9rKbVRwCl, label %VNIGFusz08cYxB1osVranMoZsR5LpQ

aBnktPerX2rPGevn80c3e9rKbVRwCl:
%Ox5VGvkUfr8HovZzAkeJPuOFszvKb0 = add i8 53, 0
store i8 %Ox5VGvkUfr8HovZzAkeJPuOFszvKb0, i8* %outpu
%nU6mGBSiY3LFuOFErOVLuB3O99NL2u = load i8, i8* %outpu
br label %iwCume2MfuXy8wxRiuOCbwfxhLrOVC

VNIGFusz08cYxB1osVranMoZsR5LpQ:
br label %iwCume2MfuXy8wxRiuOCbwfxhLrOVC

iwCume2MfuXy8wxRiuOCbwfxhLrOVC:
%aSHuKQrxdOYNNdzVuuYs6OzWpfyLEA = add i32 6, 0
%AcXSoJFxhTcMgDiDlcHPk0tQlwn4gV = icmp eq i32 %inp0, %aSHuKQrxdOYNNdzVuuYs6OzWpfyLEA
br i1 %AcXSoJFxhTcMgDiDlcHPk0tQlwn4gV, label %YGO8e3cEijZZLHM2UILxWwAdeYWp1P, label %pKKaN3mztqNIkj897UyLwZqFAQBax1

YGO8e3cEijZZLHM2UILxWwAdeYWp1P:
%OsruNKIZ6RACYSf0eGfYKfyZT87yq6 = add i8 54, 0
store i8 %OsruNKIZ6RACYSf0eGfYKfyZT87yq6, i8* %outpu
%aflh9kqe4esuGsfHdqFfBokJVUfQzn = load i8, i8* %outpu
br label %A71GPZaK7TmaOFcn9ZrHiVDKZg1N1n

pKKaN3mztqNIkj897UyLwZqFAQBax1:
br label %A71GPZaK7TmaOFcn9ZrHiVDKZg1N1n

A71GPZaK7TmaOFcn9ZrHiVDKZg1N1n:
%S1zi6GHXS4PHi2VIS1DlyqFUnzX35d = add i32 7, 0
%a3ZbHl43iGwzQM1yN95rVP71l740uV = icmp eq i32 %inp0, %S1zi6GHXS4PHi2VIS1DlyqFUnzX35d
br i1 %a3ZbHl43iGwzQM1yN95rVP71l740uV, label %Dln2tVqAjru8eva0eEc1cAyo5kB2L7, label %kqctwMRxw1Y6qDMKaltlV0ZAjkwGj2

Dln2tVqAjru8eva0eEc1cAyo5kB2L7:
%U3Tqf4xsrYLJjJBfTxIo1NQu5o5pn7 = add i8 55, 0
store i8 %U3Tqf4xsrYLJjJBfTxIo1NQu5o5pn7, i8* %outpu
%vF60tQ2Dkg5yRYcOIU2kdEbgCAeGYs = load i8, i8* %outpu
br label %aqqywLeJCO8bvF4cog55ee32Brzdb9

kqctwMRxw1Y6qDMKaltlV0ZAjkwGj2:
br label %aqqywLeJCO8bvF4cog55ee32Brzdb9

aqqywLeJCO8bvF4cog55ee32Brzdb9:
%mUix7av9LRrZmgl3b1UQKCIac8mMpC = add i32 8, 0
%kJ1LJYyOSwuV9U4y6dUxP154J1wGnu = icmp eq i32 %inp0, %mUix7av9LRrZmgl3b1UQKCIac8mMpC
br i1 %kJ1LJYyOSwuV9U4y6dUxP154J1wGnu, label %ypeZsBuxSqYL0vfB7KhAhTtnRJEf4t, label %xiZBp7LiXmVWmxLcb6KzqTLEqYAp73

ypeZsBuxSqYL0vfB7KhAhTtnRJEf4t:
%aqz7DjNqjH0EOpzEJY366azRwcGolh = add i8 56, 0
store i8 %aqz7DjNqjH0EOpzEJY366azRwcGolh, i8* %outpu
%BpotsVDXUjXIjBG09U5LHHAxtpYabd = load i8, i8* %outpu
br label %s3omvGEotUfYJapFiOlxDN27kxqcH9

xiZBp7LiXmVWmxLcb6KzqTLEqYAp73:
br label %s3omvGEotUfYJapFiOlxDN27kxqcH9

s3omvGEotUfYJapFiOlxDN27kxqcH9:
%gsrdxHBhDmTs7DRQ14bVtH6nWRWQOd = add i32 9, 0
%aM3RDha67jIm4CELjNMJC1otDQrmlT = icmp eq i32 %inp0, %gsrdxHBhDmTs7DRQ14bVtH6nWRWQOd
br i1 %aM3RDha67jIm4CELjNMJC1otDQrmlT, label %gRxIqRW4dOVkTwU4JUSUqHJZQCc13R, label %Eg2bRyQtmqIh6OTKbG7NQmezhetVnP

gRxIqRW4dOVkTwU4JUSUqHJZQCc13R:
%Bqyn2wM2HowGuKpq8Du9CA3qwW7TU9 = add i8 57, 0
store i8 %Bqyn2wM2HowGuKpq8Du9CA3qwW7TU9, i8* %outpu
%aLVE7lOsP0RBWvE7T1928GQiQ7Sxwq = load i8, i8* %outpu
br label %U0ZkBBHma319QHpttHnf4vFImTbbWe

Eg2bRyQtmqIh6OTKbG7NQmezhetVnP:
br label %U0ZkBBHma319QHpttHnf4vFImTbbWe

U0ZkBBHma319QHpttHnf4vFImTbbWe:
%TD5fbJDiNqyhiKXjBOBTIVLfCJ3B8g = load i8, i8* %outpu
ret i8 %TD5fbJDiNqyhiKXjBOBTIVLfCJ3B8g
}
define ptr @itostr32( i32 %inp1) {
%var = alloca i32
%len = alloca i32
%b = alloca i1
%outp = alloca ptr
store i32 %inp1, i32* %var
%yPupLNN2NxE92lMyUUeTqy3cVFz4fH = load i32, i32* %var
%aPtMAteaiWKmMsUuIJlROFpe4SlfUX = add i32 0, 0
store i32 %aPtMAteaiWKmMsUuIJlROFpe4SlfUX, i32* %len
%iUbgKeHIQNMpMubtehqZijcvA0azGq = load i32, i32* %len
%EZZJEapd77n4wrW1Gc2PWOjNo1PjYT = add i1 1, 0
store i1 %EZZJEapd77n4wrW1Gc2PWOjNo1PjYT, i1* %b
%dDpWjrdCnZk16HNwDPePcmdlON4SYU = load i1, i1* %b
br label %R8XgJtEunHuSWxJTeDRo7RQezJFdi6

R8XgJtEunHuSWxJTeDRo7RQezJFdi6:
%v34S1ApitS8Tci1KAJ0Lt3eO35QRIK = load i32, i32* %var
%KxUt8EpKgg9Sh2MkhGZiXgSuFU9wYj = add i32 0, 0
%twzZxpTtIjOWR4L3gvEiEnpry570G9 = icmp ne i32 %v34S1ApitS8Tci1KAJ0Lt3eO35QRIK, %KxUt8EpKgg9Sh2MkhGZiXgSuFU9wYj
br i1 %twzZxpTtIjOWR4L3gvEiEnpry570G9, label %qBdvOWtViMHdvDhqjIP6PwTNOAMY3F, label %ebqddOszVlvp4mqZO6hcdpCVkbyUde

qBdvOWtViMHdvDhqjIP6PwTNOAMY3F:
%Mc03SpLCFOPq0OjETA4o3rNG3vdJNC = load i32, i32* %var
%U0d8F6eqrg16j6gJ1H05jajKGooUYH = add i32 10, 0
%BBLbDoJ26JCs79juUxS3VOGi8qNmzH = sdiv i32 %Mc03SpLCFOPq0OjETA4o3rNG3vdJNC, %U0d8F6eqrg16j6gJ1H05jajKGooUYH
store i32 %BBLbDoJ26JCs79juUxS3VOGi8qNmzH, i32* %var
%G1811XT88r2lTmlqXmMMfwSgDvZ69p = load i32, i32* %var
%KMaLUUUKCLB1GsxripciZvxAW3pkUR = load i32, i32* %len
%W5G2mN8PAvYldojrz2y10xDPaJFUxo = add i32 1, 0
%nA9oPZ8DJRI6aWBqOX5ylI3A59jFao = add i32 %KMaLUUUKCLB1GsxripciZvxAW3pkUR, %W5G2mN8PAvYldojrz2y10xDPaJFUxo
store i32 %nA9oPZ8DJRI6aWBqOX5ylI3A59jFao, i32* %len
%axWy4D1BxQpYcbN9nV4IJSNCtH6SE9 = load i32, i32* %len
br label %R8XgJtEunHuSWxJTeDRo7RQezJFdi6

ebqddOszVlvp4mqZO6hcdpCVkbyUde:
%cntr = alloca i32
%apaqlmhVGB1qGSTa2zBAADWh5WGqqb = load i32, i32* %len
%o87DzjfuQN0FUwXpbI6TYHvPhj0n2i = add i32 1, 0
%opjsxLDuCa5KOmZnsvghJ73rMdvLuy = add i32 %apaqlmhVGB1qGSTa2zBAADWh5WGqqb, %o87DzjfuQN0FUwXpbI6TYHvPhj0n2i
%DC7rsMoOTz3bEa4m4Zpl0917htRy8i = sext i32 %opjsxLDuCa5KOmZnsvghJ73rMdvLuy to i64
%sJNltiQ1DuI1s6EKao8VbG5mNne2g5 = call ptr @malloc(i64 %DC7rsMoOTz3bEa4m4Zpl0917htRy8i)
store ptr %sJNltiQ1DuI1s6EKao8VbG5mNne2g5, ptr %outp
%niWApkDpaaq7q5RR7Ty44MVqXKxtc2 = load ptr, ptr %outp
%tZP6CVa5jUZsyTtC27IXkqkznEuKcS = add i1 1, 0
store i1 %tZP6CVa5jUZsyTtC27IXkqkznEuKcS, i1* %b
%oEEc2gFi7HtKTtQTZNURTmii1XJ681 = load i1, i1* %b
store i32 %inp1, i32* %var
%NopCafiVl7oW7johyNOBwUrxXCTu9a = load i32, i32* %var
%YcRhBTFZb535djsv4eraioVvvZ3nMh = load i32, i32* %len
%jFF3HQoH5CHRj173xaPnEt6MJTd3ie = add i32 1, 0
%VCV3m5FZZx03SftbN6m5TKnp3CfDNO = sub i32 %YcRhBTFZb535djsv4eraioVvvZ3nMh, %jFF3HQoH5CHRj173xaPnEt6MJTd3ie
store i32 %VCV3m5FZZx03SftbN6m5TKnp3CfDNO, i32* %cntr
%wqsBc0pZ9xKVAXSoymzTPOcdpLhev3 = load i32, i32* %cntr
br label %euLzzyJnb5Cfx5n3v6VnLtUAXyymLw

euLzzyJnb5Cfx5n3v6VnLtUAXyymLw:
%Fom7L8VoYcR7AsgZHe6VqWBqPdLl4c = load i1, i1* %b
br i1 %Fom7L8VoYcR7AsgZHe6VqWBqPdLl4c, label %Kfvd4MnvhAMGc9OkR49mItR9pz8Tqx, label %onXFzeJvTfeMVFCSBynUippQQuKJq0

Kfvd4MnvhAMGc9OkR49mItR9pz8Tqx:
%O9bC0htvgp8F8FdaHNbq0KFhER5dsn = load i32, i32* %var
%ufMcKWbI6lYqOUiph2fxjjEOYrSZOn = add i32 0, 0
%bTJJX6yPMNtJ8Y5mdjlx9jki5nKhTJ = icmp eq i32 %O9bC0htvgp8F8FdaHNbq0KFhER5dsn, %ufMcKWbI6lYqOUiph2fxjjEOYrSZOn
br i1 %bTJJX6yPMNtJ8Y5mdjlx9jki5nKhTJ, label %aNJQncREJ2wUDh81LnYWU4c0fUHUYt, label %aPnTYw8IGssCURcMpT4j55aAUCsJlX

aNJQncREJ2wUDh81LnYWU4c0fUHUYt:
%diZhJdDhQaojr1aRhO3Ye7b1vbsgAc = load ptr, ptr %outp
%hsndHYn3aXU0HiA9lNJDmEFI8raoa5 = load i32, i32* %len
%kWTj3LNIov36vnyEHe08M9eLcU1kF0 = getelementptr inbounds i8, ptr %diZhJdDhQaojr1aRhO3Ye7b1vbsgAc, i32 %hsndHYn3aXU0HiA9lNJDmEFI8raoa5
%kehkVZsOhHHPfZn8W82wZqUFEGDRP7 = add i8 0, 0
store i8 %kehkVZsOhHHPfZn8W82wZqUFEGDRP7, ptr %kWTj3LNIov36vnyEHe08M9eLcU1kF0
%FB4SKv2q0KudC3l965AeaJJIAit0rD = add i1 0, 0
store i1 %FB4SKv2q0KudC3l965AeaJJIAit0rD, i1* %b
%NoRYm2vtuW2gpH8Yt54gaThaj6k4cE = load i1, i1* %b
br label %SAVmMQ0WV7mYn6sbwCfEQTZUA5gJAg

aPnTYw8IGssCURcMpT4j55aAUCsJlX:
%D3GIguzACSqxdYx3DyyQCRRelzXKow = load ptr, ptr %outp
%IMH2CEyCqeJ0Xb3LNIwqILvz6u7QGN = load i32, i32* %cntr
%athnflbvGOAHFc4XnRAWoEgVsAmM6o = getelementptr inbounds i8, ptr %D3GIguzACSqxdYx3DyyQCRRelzXKow, i32 %IMH2CEyCqeJ0Xb3LNIwqILvz6u7QGN
%FAnTn01YQrQ7xIxhsAkhqJOpiLRh7o = load i32, i32* %var
%BCYQiaJkuwlqMLIMMgLGsWjRdwxsLd = add i32 10, 0
%LM1V1PIdUA4CbuiKj982SxEefz189H = srem i32 %FAnTn01YQrQ7xIxhsAkhqJOpiLRh7o, %BCYQiaJkuwlqMLIMMgLGsWjRdwxsLd
%ltFUBiBJ7nV3CgB7DjVWI9VuuGezL8 = call i8 @itoc32(i32 %LM1V1PIdUA4CbuiKj982SxEefz189H)
store i8 %ltFUBiBJ7nV3CgB7DjVWI9VuuGezL8, ptr %athnflbvGOAHFc4XnRAWoEgVsAmM6o
%cRn9xbZzZ5iUJlerWuLSK8p5h5Xj2k = load i32, i32* %var
%encFcOY9XsXWGvWRPCsT2mHn251av8 = add i32 10, 0
%aXsyptmBvPyM6XUEIi9INCfJMuQais = sdiv i32 %cRn9xbZzZ5iUJlerWuLSK8p5h5Xj2k, %encFcOY9XsXWGvWRPCsT2mHn251av8
store i32 %aXsyptmBvPyM6XUEIi9INCfJMuQais, i32* %var
%MHQ51MxXsLRbbkd6e9EAfEmDLB1ngx = load i32, i32* %var
%hVK2PR6hNQKuiL3uy33seDphAWrhAs = load i32, i32* %cntr
%Uh3I7q3T3doynGuJTu3EtbfMPkDt3D = add i32 1, 0
%a16DR3yxeHd3JC6wWk88e1FO1KOqTM = sub i32 %hVK2PR6hNQKuiL3uy33seDphAWrhAs, %Uh3I7q3T3doynGuJTu3EtbfMPkDt3D
store i32 %a16DR3yxeHd3JC6wWk88e1FO1KOqTM, i32* %cntr
%arm3RhZbDe0BYhPgeUGYtJiz7TCMdz = load i32, i32* %cntr
br label %SAVmMQ0WV7mYn6sbwCfEQTZUA5gJAg

SAVmMQ0WV7mYn6sbwCfEQTZUA5gJAg:
br label %euLzzyJnb5Cfx5n3v6VnLtUAXyymLw

onXFzeJvTfeMVFCSBynUippQQuKJq0:
%yf0e8vqd8MACZhOouyVpTUp5Oop7bU = load ptr, ptr %outp
ret ptr %yf0e8vqd8MACZhOouyVpTUp5Oop7bU
}
define i32 @strlen32( ptr %inp) {
%not_reached = alloca i1
%count32 = alloca i32
%xfpg94JEhy8gsokgRMlWMtEMKjh0UD = add i1 1, 0
store i1 %xfpg94JEhy8gsokgRMlWMtEMKjh0UD, i1* %not_reached
%I5dLS7o73SG663UYPRfBdkpGElNkNQ = load i1, i1* %not_reached
%opBvz6PBgRXzLH7cv5R2STkVBgXXcm = add i32 0, 0
store i32 %opBvz6PBgRXzLH7cv5R2STkVBgXXcm, i32* %count32
%KRRF9pIAo54bz1StrSYqQKy5rvYC1D = load i32, i32* %count32
br label %leR7fn9hoZcNbMOcCap8lngqurXB7I

leR7fn9hoZcNbMOcCap8lngqurXB7I:
%RyMQxdmFbQAy0GUhwb5RguJFmDmFbF = load i1, i1* %not_reached
br i1 %RyMQxdmFbQAy0GUhwb5RguJFmDmFbF, label %vnQUJ1FnZ8k1R8va7gpafNTpjXDgZg, label %m47IBbz6Hj9OZFfgZK8wUyn53jyjib

vnQUJ1FnZ8k1R8va7gpafNTpjXDgZg:
%HOVDsa2INIQiTJwKAfmP6s784WB9fH = load i32, i32* %count32
%aZ4GCd8wAi9ARNacWG2jALfPJFlLSw = getelementptr inbounds i8, ptr %inp, i32 %HOVDsa2INIQiTJwKAfmP6s784WB9fH
%eGKoIjgFVdnrZVHTz3gpkYOBQbbpGC = load i8, ptr %aZ4GCd8wAi9ARNacWG2jALfPJFlLSw
%WhSSNH0JUmOwzBWyVCrQP8u66e1jgM = add i8 0, 0
%ggINxpyoazdkHzoEHAr3HG67uUP0Lp = icmp eq i8 %eGKoIjgFVdnrZVHTz3gpkYOBQbbpGC, %WhSSNH0JUmOwzBWyVCrQP8u66e1jgM
br i1 %ggINxpyoazdkHzoEHAr3HG67uUP0Lp, label %VFlQHcWffrrBnOmeHEJ8hlO7yT1zmf, label %FgQO1KaXF29TPgJV6Lk3iqCftjqZgs

VFlQHcWffrrBnOmeHEJ8hlO7yT1zmf:
%z5wnvLrKJC8EX01FC5LpPX0q5dgwbR = add i1 0, 0
store i1 %z5wnvLrKJC8EX01FC5LpPX0q5dgwbR, i1* %not_reached
%dZEKNluXS6PCXMMKzkRodjKq2fAcqM = load i1, i1* %not_reached
br label %kB4PqXzLo5jko3keW1MprKoxcswib3

FgQO1KaXF29TPgJV6Lk3iqCftjqZgs:
%LHgHV3GXappLFafRlig2weFWDZob6b = load i32, i32* %count32
%upN2V2sP065FCoQ7CmI07hT1Tlj39h = add i32 1, 0
%q0FIjm6qCXGMzoGKSG0nLJiYsv9Qjw = add i32 %LHgHV3GXappLFafRlig2weFWDZob6b, %upN2V2sP065FCoQ7CmI07hT1Tlj39h
store i32 %q0FIjm6qCXGMzoGKSG0nLJiYsv9Qjw, i32* %count32
%aaqLB1v9MKCTuxYewQVEkMCXrkIGcQ = load i32, i32* %count32
br label %kB4PqXzLo5jko3keW1MprKoxcswib3

kB4PqXzLo5jko3keW1MprKoxcswib3:
br label %leR7fn9hoZcNbMOcCap8lngqurXB7I

m47IBbz6Hj9OZFfgZK8wUyn53jyjib:
%ag4MPY1n4olG6GRxFrkSUWyNfGA9cB = load i32, i32* %count32
ret i32 %ag4MPY1n4olG6GRxFrkSUWyNfGA9cB
}
define i64 @strlen64( ptr %inp) {
%not_reached = alloca i1
%count64 = alloca i64
%K7VvqcQ3GuYCmXBQJvymsGCFk5KcuA = add i1 1, 0
store i1 %K7VvqcQ3GuYCmXBQJvymsGCFk5KcuA, i1* %not_reached
%UNNUgDKDto6Fo2vrEj5QjZKmtEIcT5 = load i1, i1* %not_reached
%EuNOHpUztVNRkkUzlrNuN7x1mgXjCo = add i64 0, 0
store i64 %EuNOHpUztVNRkkUzlrNuN7x1mgXjCo, i64* %count64
%kTv6HzNjcyDb8kOeI90wbSCwCMY6JW = load i64, i64* %count64
br label %HI0qTshpWYD3nfAB78l2M8z1xmeDUv

HI0qTshpWYD3nfAB78l2M8z1xmeDUv:
%oNJL1VIF4cN22KON7NXGOYmWKkhir8 = load i1, i1* %not_reached
br i1 %oNJL1VIF4cN22KON7NXGOYmWKkhir8, label %YSRM6huSvOOM3rfABHNpy1eLY53Gke, label %cesFiiKZ6p9mwPcCVlfKZTcNWDr0hs

YSRM6huSvOOM3rfABHNpy1eLY53Gke:
%M8tsgZPcCLlCER5c6SuoGsjqQuWPFr = load i64, i64* %count64
%ask0swXOPObleofP0sY0mSsC3tMcWA = getelementptr inbounds i8, ptr %inp, i64 %M8tsgZPcCLlCER5c6SuoGsjqQuWPFr
%W3k0PsEtb9SkMWHgfq0K701HXg86bN = load i8, ptr %ask0swXOPObleofP0sY0mSsC3tMcWA
%aVO1zyZenTjCBl5CqzHmJrORes1GKp = add i8 0, 0
%JZwPucTQBqX5Yj1sUUB9jE7DLeyuyx = icmp eq i8 %W3k0PsEtb9SkMWHgfq0K701HXg86bN, %aVO1zyZenTjCBl5CqzHmJrORes1GKp
br i1 %JZwPucTQBqX5Yj1sUUB9jE7DLeyuyx, label %I7l484toE4W0JyI4X0yYDWyOIHALnQ, label %WRfg8JEojl99VmHjXsKsdvihQ3cVuZ

I7l484toE4W0JyI4X0yYDWyOIHALnQ:
%qHoLbUrVOPBXRKUiw59p7u4tgd56GS = add i1 0, 0
store i1 %qHoLbUrVOPBXRKUiw59p7u4tgd56GS, i1* %not_reached
%Yy5vEK4WR9mGfzN0cCYLu0PtggNLKL = load i1, i1* %not_reached
br label %SWgSokel8HfMobADS1DWOexSyoojQV

WRfg8JEojl99VmHjXsKsdvihQ3cVuZ:
%mPpyXvGNs4hKZgN4HE0D0UiMB7SEAQ = load i64, i64* %count64
%lJNqrRwT1W6zpTywIrc6anmuNlt77S = add i64 1, 0
%Cibj73Fh01rIEnJpzLM6uav0nqyTun = add i64 %mPpyXvGNs4hKZgN4HE0D0UiMB7SEAQ, %lJNqrRwT1W6zpTywIrc6anmuNlt77S
store i64 %Cibj73Fh01rIEnJpzLM6uav0nqyTun, i64* %count64
%aI5GjZFFpuuWLeKk5iEKjJ0JzH7VPv = load i64, i64* %count64
br label %SWgSokel8HfMobADS1DWOexSyoojQV

SWgSokel8HfMobADS1DWOexSyoojQV:
br label %HI0qTshpWYD3nfAB78l2M8z1xmeDUv

cesFiiKZ6p9mwPcCVlfKZTcNWDr0hs:
%bIt6KRaPyti8aq49Yta7aG3pHrmgun = load i64, i64* %count64
ret i64 %bIt6KRaPyti8aq49Yta7aG3pHrmgun
}
define ptr @strdup( ptr %inp) {
%out_str = alloca ptr
%len64 = alloca i64
%aoEW306f7TuaQYLTzCSm0DANZXxtr9 = call i64 @strlen64(ptr %inp)
%sRcpvlrhldWpen3tP4rMERyYHJx9nP = add i64 1, 0
%VBCbusY7k1BGBaGtD1o7OEH12mU17T = add i64 %aoEW306f7TuaQYLTzCSm0DANZXxtr9, %sRcpvlrhldWpen3tP4rMERyYHJx9nP
store i64 %VBCbusY7k1BGBaGtD1o7OEH12mU17T, i64* %len64
%abJUIAGUQNDnEV3xYpq9V0ACtrMftM = load i64, i64* %len64
%odYjjZQGjaJKTtLMzudnrqEcmxOjYB = call ptr @malloc(i64 %abJUIAGUQNDnEV3xYpq9V0ACtrMftM)
store ptr %odYjjZQGjaJKTtLMzudnrqEcmxOjYB, ptr %out_str
%P3LpdG21IkRazEMHSfY3SeAWo4P0aH = load ptr, ptr %out_str
%b = alloca i1
%cntr64 = alloca i64
%JqW7Cii2y3X82xoRZCwietdmEcs5M7 = add i1 1, 0
store i1 %JqW7Cii2y3X82xoRZCwietdmEcs5M7, i1* %b
%IHfQlNVGZhkoR3lRyEp7TCVudlqqWb = load i1, i1* %b
%XTpx33H2n4Ija13lUcRE82UENbyPi5 = add i64 0, 0
store i64 %XTpx33H2n4Ija13lUcRE82UENbyPi5, i64* %cntr64
%aZqTKQFiL8BmnK4JUNy8Z4PAHTJcF5 = load i64, i64* %cntr64
br label %o90VlrQO97O9sHRKxbjgVk8xspXE6a

o90VlrQO97O9sHRKxbjgVk8xspXE6a:
%ai06WoG6N5csXPv9BPz36j6Naa46v0 = load i1, i1* %b
br i1 %ai06WoG6N5csXPv9BPz36j6Naa46v0, label %adGzeN3RpdLLgiPXRSQ4m8PxVxY89x, label %xnw6IBoxkngS34ieIU9ZDBboeCTXAo

adGzeN3RpdLLgiPXRSQ4m8PxVxY89x:
%Y2qbAkIePUemx8H328R43GVWfgAI0b = load i64, i64* %cntr64
%P8fGzDVmfoAKTWKBy2V4wCa8fy81VI = load i64, i64* %len64
%IBpxfd6OUPUNFRzO7SdDtMCXSufK3i = icmp eq i64 %Y2qbAkIePUemx8H328R43GVWfgAI0b, %P8fGzDVmfoAKTWKBy2V4wCa8fy81VI
br i1 %IBpxfd6OUPUNFRzO7SdDtMCXSufK3i, label %aiWoNeZv5E3oo12VgFA9HwbZJYoCfy, label %ww0Nc5quTBjgGLC77Fjt5r5koRKS3w

aiWoNeZv5E3oo12VgFA9HwbZJYoCfy:
%Me8MyOBk7VTsMIcH5DvKVMDP2Rtc88 = load ptr, ptr %out_str
%rUWKUzmWwQ25IL5EwM8DTteDCcJM3u = load i64, i64* %len64
%ByePdVnmYwDZOJmYMzIV96kXlNetww = getelementptr inbounds i8, ptr %Me8MyOBk7VTsMIcH5DvKVMDP2Rtc88, i64 %rUWKUzmWwQ25IL5EwM8DTteDCcJM3u
%JhK7Mry50zO8GITSZHmoDzwozEIBAU = add i8 0, 0
store i8 %JhK7Mry50zO8GITSZHmoDzwozEIBAU, ptr %ByePdVnmYwDZOJmYMzIV96kXlNetww
%Cf31ds2Ak3fOOBKd3NLgjlWV4x4ooT = add i1 0, 0
store i1 %Cf31ds2Ak3fOOBKd3NLgjlWV4x4ooT, i1* %b
%hlF4bKbtxB5YqFvz3rFKF0Qr54aZqQ = load i1, i1* %b
br label %E9xaVcGVY6sYApEnxWQT8x9nTZY0Vz

ww0Nc5quTBjgGLC77Fjt5r5koRKS3w:
%LAdcEc2jifwMILQ0iESxNcdaUAIYxK = load ptr, ptr %out_str
%bQVZgUD4mqyMYTP0FuvSTY7fPh3Z1f = load i64, i64* %cntr64
%jwuj3BVssmy1vs5rP6yPsXhVj21rqK = getelementptr inbounds i8, ptr %LAdcEc2jifwMILQ0iESxNcdaUAIYxK, i64 %bQVZgUD4mqyMYTP0FuvSTY7fPh3Z1f
%p8cTxo7Zdc643B990NPTPxSXx4tyJR = load i64, i64* %cntr64
%oHWc02kYKojXIWksYqFQI6C5dgMgk9 = getelementptr inbounds i8, ptr %inp, i64 %p8cTxo7Zdc643B990NPTPxSXx4tyJR
%e0PNAz885qUvMEBzV70xKKSDJG3eAe = load i8, ptr %oHWc02kYKojXIWksYqFQI6C5dgMgk9
store i8 %e0PNAz885qUvMEBzV70xKKSDJG3eAe, ptr %jwuj3BVssmy1vs5rP6yPsXhVj21rqK
%RCvFL7Rdr0xe0hToOfOHGbYMQxzNTE = load i64, i64* %cntr64
%Y46vguKNhBGlYuQzxYHGscHOQI8e5Y = add i64 1, 0
%Dxxc6ZnehORzrNaWwuJyyca5Ji1eTY = add i64 %RCvFL7Rdr0xe0hToOfOHGbYMQxzNTE, %Y46vguKNhBGlYuQzxYHGscHOQI8e5Y
store i64 %Dxxc6ZnehORzrNaWwuJyyca5Ji1eTY, i64* %cntr64
%ZiCiVWTQDZlP1fJVNwXff4UDDI9VzQ = load i64, i64* %cntr64
br label %E9xaVcGVY6sYApEnxWQT8x9nTZY0Vz

E9xaVcGVY6sYApEnxWQT8x9nTZY0Vz:
br label %o90VlrQO97O9sHRKxbjgVk8xspXE6a

xnw6IBoxkngS34ieIU9ZDBboeCTXAo:
%oCkezJN5ptbzaxyi8VCltONJNXPJbM = load ptr, ptr %out_str
ret ptr %oCkezJN5ptbzaxyi8VCltONJNXPJbM
}
define ptr @strcat( ptr %inp1, ptr %inp2) {
%end_of_inp1 = alloca i32
%end_of_inp2 = alloca i32
%pdtZUyzPtwymGx21siE7ZlzR39ej4d = call i32 @strlen32(ptr %inp1)
store i32 %pdtZUyzPtwymGx21siE7ZlzR39ej4d, i32* %end_of_inp1
%aubGh3ux3OaRZpTb5ZDO4zouTdc0Z5 = load i32, i32* %end_of_inp1
%IAlJL6bx09y2twpm40Wdnmalpc7Anj = call i32 @strlen32(ptr %inp2)
store i32 %IAlJL6bx09y2twpm40Wdnmalpc7Anj, i32* %end_of_inp2
%AB6KA1xWIPUTGWG6mkEjWVYcXNRLl7 = load i32, i32* %end_of_inp2
%out = alloca ptr
%cntr1 = alloca i32
%cntr2 = alloca i32
%not_yet_reached_inp1_end = alloca i1
%not_yet_reached_inp2_end = alloca i1
%xnLnCDygEeaRdNGGNmXHNjmZT4MUbY = add i32 0, 0
store i32 %xnLnCDygEeaRdNGGNmXHNjmZT4MUbY, i32* %cntr1
%xxavQCRPCK4YLGncISLmmnXoHwXu0s = load i32, i32* %cntr1
store i32 %xxavQCRPCK4YLGncISLmmnXoHwXu0s, i32* %cntr2
%ChVnJnibdgBgWtMz8kdtJ5kuLPpMEK = load i32, i32* %cntr2
%lvScJjBLIvOO6mDICBpAGvBOPJKfLW = add i1 1, 0
store i1 %lvScJjBLIvOO6mDICBpAGvBOPJKfLW, i1* %not_yet_reached_inp1_end
%aWZYxjAmcxZlUKI7fDoT0R5oliXoHE = load i1, i1* %not_yet_reached_inp1_end
store i1 %aWZYxjAmcxZlUKI7fDoT0R5oliXoHE, i1* %not_yet_reached_inp2_end
%yf2PyM7ILPc1VNdTvQAkQvcK4MCfk6 = load i1, i1* %not_yet_reached_inp2_end
%lokdtrF7oSzve6CgbBXDS7MtdtRQd0 = load i32, i32* %end_of_inp1
%Qvp3CZXZ22FLSK7QhZP9zVsMiDYknh = load i32, i32* %end_of_inp2
%K3R6SFhQdVdUy1UnoNEL5uDMH0xiIg = add i32 1, 0
%rCTcjU3h2D6YqwewELMjLR7GEYwQDt = add i32 %Qvp3CZXZ22FLSK7QhZP9zVsMiDYknh, %K3R6SFhQdVdUy1UnoNEL5uDMH0xiIg
%xgZ9xlYRY8w0w7Z72L2v348hcr3Yul = add i32 %lokdtrF7oSzve6CgbBXDS7MtdtRQd0, %rCTcjU3h2D6YqwewELMjLR7GEYwQDt
%giMRQSedCxSDgoqMyAqFUUq3PLlh0r = sext i32 %xgZ9xlYRY8w0w7Z72L2v348hcr3Yul to i64
%HigHFafTNpWEMqRNXfc8XUnslgIsDe = call ptr @malloc(i64 %giMRQSedCxSDgoqMyAqFUUq3PLlh0r)
store ptr %HigHFafTNpWEMqRNXfc8XUnslgIsDe, ptr %out
%i0NMeLsiJSV1ptyfGqtzUN8HK4d9sL = load ptr, ptr %out
br label %rrkOhUmeuZAgKZtIi4OIUQfWik6YtC

rrkOhUmeuZAgKZtIi4OIUQfWik6YtC:
%bejBvnZr9VU4k9em0zRu00IZkC0X13 = load i1, i1* %not_yet_reached_inp1_end
br i1 %bejBvnZr9VU4k9em0zRu00IZkC0X13, label %Ee26s5CSukW5HC4MuiuG52tIDi7387, label %wnnSTdKAnO6ihHQhHj49SIIvn3k4eQ

Ee26s5CSukW5HC4MuiuG52tIDi7387:
%aOTCzqh6qXGX9irA4SOmrIPzwA548x = load i32, i32* %cntr1
%e99NUUXS3xsjFOvOCrXTpDYAukxeHr = getelementptr inbounds i8, ptr %inp1, i32 %aOTCzqh6qXGX9irA4SOmrIPzwA548x
%RtjD7IWzRUsIjhWMKOq7smTCuuZ8r4 = load i8, ptr %e99NUUXS3xsjFOvOCrXTpDYAukxeHr
%lBRbg3bw2FUcjQp7fChKL7VQnKma5Q = add i8 0, 0
%dEpNxSnKXQxXWFBaPYJ136RkL3Ip7T = icmp eq i8 %RtjD7IWzRUsIjhWMKOq7smTCuuZ8r4, %lBRbg3bw2FUcjQp7fChKL7VQnKma5Q
br i1 %dEpNxSnKXQxXWFBaPYJ136RkL3Ip7T, label %f3hETDEQjb9ltT1Eee2X3zx9GCSAv9, label %aNFfISdsVVeID4H8jq1qvWap7T9vZA

f3hETDEQjb9ltT1Eee2X3zx9GCSAv9:
%YBTJxvFEZcCixZvGmR6vHxlPYExNqP = add i1 0, 0
store i1 %YBTJxvFEZcCixZvGmR6vHxlPYExNqP, i1* %not_yet_reached_inp1_end
%CB4RpxuhPJORdZEcRit03hNX5IIYeE = load i1, i1* %not_yet_reached_inp1_end
br label %Gt7lvADnHPr2KpSDZ2ap69INtK3Vds

aNFfISdsVVeID4H8jq1qvWap7T9vZA:
%Dmx9aQrGMPiO0hlHSX0xX0nABF3p8V = load ptr, ptr %out
%u5YJhDL0za5C1xosKjmDsE448q3Xuj = load i32, i32* %cntr1
%TrjnZKWw77LvJoz86sID4Uw6Y3EYSW = getelementptr inbounds i8, ptr %Dmx9aQrGMPiO0hlHSX0xX0nABF3p8V, i32 %u5YJhDL0za5C1xosKjmDsE448q3Xuj
%OasTE4gNpoyeUKAxuXoy1NvBEEdq1O = load i32, i32* %cntr1
%aGFA1qZ04cQ2ciI759on2ih04RPm07 = getelementptr inbounds i8, ptr %inp1, i32 %OasTE4gNpoyeUKAxuXoy1NvBEEdq1O
%XXOwZ7bGkY6zcyIzG9ReZUAVcIJLb7 = load i8, ptr %aGFA1qZ04cQ2ciI759on2ih04RPm07
store i8 %XXOwZ7bGkY6zcyIzG9ReZUAVcIJLb7, ptr %TrjnZKWw77LvJoz86sID4Uw6Y3EYSW
%QWvAJYPjeIPiszA4LQw7Kf0VWtp2yQ = load i32, i32* %cntr1
%XSA3jDPXyeOv9mRfWMEA5OVBKd1Rt8 = add i32 1, 0
%yBfFLCzoht8PYKrHcSZ3SDOKjdaye6 = add i32 %QWvAJYPjeIPiszA4LQw7Kf0VWtp2yQ, %XSA3jDPXyeOv9mRfWMEA5OVBKd1Rt8
store i32 %yBfFLCzoht8PYKrHcSZ3SDOKjdaye6, i32* %cntr1
%fhDATyCwbYhqVudE0K2jQyKOBdqY4y = load i32, i32* %cntr1
br label %Gt7lvADnHPr2KpSDZ2ap69INtK3Vds

Gt7lvADnHPr2KpSDZ2ap69INtK3Vds:
br label %rrkOhUmeuZAgKZtIi4OIUQfWik6YtC

wnnSTdKAnO6ihHQhHj49SIIvn3k4eQ:
br label %w9LLuJuxKxAMmNTXWtdtLpEGlc7UBo

w9LLuJuxKxAMmNTXWtdtLpEGlc7UBo:
%WRSrZu2LisuVSYOclwGoOdKCTITEBX = load i1, i1* %not_yet_reached_inp2_end
br i1 %WRSrZu2LisuVSYOclwGoOdKCTITEBX, label %ptcAoyleLLvzHQSeRpprHOj5LfhHOF, label %dbBZSHOimzGfuBfQ8SINMdBuWd83P6

ptcAoyleLLvzHQSeRpprHOj5LfhHOF:
%argZ84wlQtMFanrN1Rm6iZcp1tpLJ6 = load i32, i32* %cntr2
%GDnY4VYMi5jjxL4imn3PyaBYQ0S2LE = getelementptr inbounds i8, ptr %inp2, i32 %argZ84wlQtMFanrN1Rm6iZcp1tpLJ6
%l7Zj8scxRmH0FXaghM3oGpe5nbn2nh = load i8, ptr %GDnY4VYMi5jjxL4imn3PyaBYQ0S2LE
%aVIfilyCWGkE4zQvEn8YZFRCfizBg1 = add i8 0, 0
%acobjqNGLK5gXosjhpFsIFh4EWOEZH = icmp eq i8 %l7Zj8scxRmH0FXaghM3oGpe5nbn2nh, %aVIfilyCWGkE4zQvEn8YZFRCfizBg1
br i1 %acobjqNGLK5gXosjhpFsIFh4EWOEZH, label %j3Cm2ZHucDIQwfFo9bZm7fB1sxPSL6, label %rl28HysOQKF4x2xWnwYJA4ix3gPblL

j3Cm2ZHucDIQwfFo9bZm7fB1sxPSL6:
%SW74RTCuPERltiple5zdaPsb7Ife4r = add i1 0, 0
store i1 %SW74RTCuPERltiple5zdaPsb7Ife4r, i1* %not_yet_reached_inp2_end
%ggiOXwMwpBsX1yoYEgiWTw9atqMYXY = load i1, i1* %not_yet_reached_inp2_end
br label %fWYsW0ZoAjdI9Bm66axVPeRf9dg5r8

rl28HysOQKF4x2xWnwYJA4ix3gPblL:
br label %fWYsW0ZoAjdI9Bm66axVPeRf9dg5r8

fWYsW0ZoAjdI9Bm66axVPeRf9dg5r8:
%kfplonrP0kf00PusLrqQHx3j54C4ya = load ptr, ptr %out
%iV2MqlhlabEmYxM4gZ39nw2G1jmldT = load i32, i32* %cntr2
%TP7svQ4CvqVhhM17isiP0U6KpIdez2 = load i32, i32* %end_of_inp1
%sWGd2FzYOSjVfLBhFbA90EwAdsFNVf = add i32 %iV2MqlhlabEmYxM4gZ39nw2G1jmldT, %TP7svQ4CvqVhhM17isiP0U6KpIdez2
%aV3mtuHkGnvDCd0Adq4uW0OuEfNzKh = getelementptr inbounds i8, ptr %kfplonrP0kf00PusLrqQHx3j54C4ya, i32 %sWGd2FzYOSjVfLBhFbA90EwAdsFNVf
%zHXuPlCIFu5fI2r5oB1bZC2tQoPcSX = load i32, i32* %cntr2
%x6yrXIUpbufMs4418ieeXLAJnWmuiS = getelementptr inbounds i8, ptr %inp2, i32 %zHXuPlCIFu5fI2r5oB1bZC2tQoPcSX
%WKYAeOILEqAsGat1Cww3yUMNRKM1of = load i8, ptr %x6yrXIUpbufMs4418ieeXLAJnWmuiS
store i8 %WKYAeOILEqAsGat1Cww3yUMNRKM1of, ptr %aV3mtuHkGnvDCd0Adq4uW0OuEfNzKh
%LFVSAcg2RVnVTRrobDpMh6IEKf6i3t = load i32, i32* %cntr2
%FgDBGPHrI8B2vsvlsfe1VqIde3C5b2 = add i32 1, 0
%P6PyABsSRBSlu77nTls8qnLA5JobmZ = add i32 %LFVSAcg2RVnVTRrobDpMh6IEKf6i3t, %FgDBGPHrI8B2vsvlsfe1VqIde3C5b2
store i32 %P6PyABsSRBSlu77nTls8qnLA5JobmZ, i32* %cntr2
%KeWDhIVADWGnVKvby3dQIVJvbhYmlw = load i32, i32* %cntr2
br label %w9LLuJuxKxAMmNTXWtdtLpEGlc7UBo

dbBZSHOimzGfuBfQ8SINMdBuWd83P6:
%a0nvgFNcCQvmzVjmFNDHV05NILwycg = load ptr, ptr %out
ret ptr %a0nvgFNcCQvmzVjmFNDHV05NILwycg
}
