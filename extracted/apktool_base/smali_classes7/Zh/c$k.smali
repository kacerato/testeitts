.class public LZh/c$k;
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
    .locals 8

    const-string v0, "DB7C2ABF62E35E668076BEAD208B"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    const-string v0, "DB7C2ABF62E35E668076BEAD2088"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    const-string v0, "659EF8BA043916EEDE8911702B22"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v4

    const-string v0, "DB7C2ABF62E35E7628DFAC6561C5"

    invoke-static {v0}, LZh/c;->a(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    new-instance v0, Ljk/e$f;

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-static {v0}, LZh/c;->b(Ljk/e;)Ljk/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lki/l;
    .locals 7

    const-string v0, "00F50B028E4D696E676875615175290472783FB1"

    invoke-static {v0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0}, Lki/m;->c()Ljk/e;

    move-result-object v2

    const-string v0, "0409487239995A5EE76B55F9C2F098A89CE5AF8724C0A23E0E0FF77500"

    invoke-static {v2, v0}, LZh/c;->c(Ljk/e;Ljava/lang/String;)Lki/n;

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
