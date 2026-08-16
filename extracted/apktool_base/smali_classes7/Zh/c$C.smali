.class public LZh/c$C;
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

    const-string v0, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFAC73"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Ljk/d;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "0100000000000000000001B8FA16DFAB9ACA16B6B3"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Lnk/h;

    new-instance v1, Ljava/math/BigInteger;

    const-string v7, "9ba48cba5ebcb9b6bd33b92830b2a2e0e192f10a"

    const/16 v8, 0x10

    invoke-direct {v1, v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v9, "c39c6c3b3a36d7701b9c71a1f5804ae5d0003f4"

    invoke-direct {v7, v9, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lnk/i;

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "9162fbe73984472a0a9e"

    invoke-direct {v10, v11, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v12, Ljava/math/BigInteger;

    const-string v13, "-96341f1138933bc2f505"

    invoke-direct {v12, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v10, v12}, [Ljava/math/BigInteger;

    move-result-object v12

    new-instance v10, Ljava/math/BigInteger;

    const-string v13, "127971af8721782ecffa3"

    invoke-direct {v10, v13, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-direct {v13, v11, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    filled-new-array {v10, v13}, [Ljava/math/BigInteger;

    move-result-object v13

    new-instance v14, Ljava/math/BigInteger;

    const-string v10, "9162fbe73984472a0a9d0590"

    invoke-direct {v14, v10, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v15, Ljava/math/BigInteger;

    const-string v10, "96341f1138933bc2f503fd44"

    invoke-direct {v15, v10, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v8, 0xb0

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

    const-string v0, "043B4C382CE37AA192A4019E763036F4F5DD4D7EBB938CF935318FDCED6BC28286531733C3F03C4FEE"

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
