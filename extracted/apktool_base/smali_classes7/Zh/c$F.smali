.class public LZh/c$F;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZh/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lki/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljk/e;
    .locals 16

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljk/d;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Lnk/h;

    new-instance v1, Ljava/math/BigInteger;

    const-string v7, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    const/16 v8, 0x10

    invoke-direct {v1, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lnk/i;

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "71169be7330b3038edb025f1"

    invoke-direct {v10, v11, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v12, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v10, v12}, [Ljava/math/BigInteger;

    move-result-object v12

    new-instance v10, Ljava/math/BigInteger;

    const-string v13, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v10, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v11, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v10, v13}, [Ljava/math/BigInteger;

    move-result-object v13

    new-instance v14, Ljava/math/BigInteger;

    const-string v10, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v14, v10, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v15, Ljava/math/BigInteger;

    const-string v10, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v15, v10, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0xd0

    move-object v10, v9

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move v15, v8

    invoke-direct/range {v10 .. v15}, Lnk/i;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, v1, v7, v9}, Lnk/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lnk/i;)V

    new-instance v8, Ljk/e$f;

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v8, v0}, LZh/c;->d(Ljk/e;Lnk/h;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v1

    const-string v0, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {v1, v0}, LZh/c;->c(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object v2

    new-instance v6, Lki/l;

    invoke-virtual {v1}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v6
.end method
