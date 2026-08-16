.class public Lki/i$u;
.super Lki/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lki/i;
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
    .locals 8

    const-string v0, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-static {v0}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Ljk/e$f;

    new-instance v2, Ljava/math/BigInteger;

    const-string v1, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const-string v1, "ffffffff00000001000000000000000000000000fffffffffffffffffffffffc"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v1, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-static {v1}, Lki/i;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v0}, Lki/i;->b(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    const-string v0, "c49d360886e704936a6678e1139d26b7819f7e90"

    invoke-static {v0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v2

    const-string v0, "036b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-static {v2, v0}, Lki/i;->c(Ljk/e;Ljava/lang/String;)Lki/n;

    move-result-object v3

    new-instance v0, Lki/l;

    invoke-virtual {v2}, Ljk/e;->A()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2}, Ljk/e;->s()Ljava/math/BigInteger;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lki/l;-><init>(Ljk/e;Lki/n;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
