.class public LCi/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LBi/y;

.field public b:LXi/L;

.field public c:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCi/j;->a:LBi/y;

    return-void
.end method


# virtual methods
.method public a(LBi/k;)[B
    .locals 5

    check-cast p1, LXi/M;

    iget-object v0, p0, LCi/j;->b:LXi/L;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LCi/j;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LCi/j;->b:LXi/L;

    invoke-virtual {v2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, LXi/M;->e()Ljk/i;

    move-result-object p1

    invoke-static {v0, p1}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljk/i;->l(Z)[B

    move-result-object p1

    array-length v1, p1

    div-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v2, 0x2

    sub-int v4, v1, v3

    invoke-static {p1, v4, v2}, Lorg/bouncycastle/util/a;->P0([BII)V

    sub-int/2addr v1, v2

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/a;->P0([BII)V

    iget-object v1, p0, LCi/j;->a:LBi/y;

    invoke-interface {v1}, LBi/y;->f()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, LCi/j;->a:LBi/y;

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, LCi/j;->a:LBi/y;

    invoke-interface {p1, v1, v0}, LBi/y;->c([BI)I

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Infinity is not a valid agreement value for ECVKO"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Infinity is not a valid public key for ECVKO"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECVKO public key has wrong domain parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LCi/j;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LCi/j;->b:LXi/L;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->w()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public d(LBi/k;)V
    .locals 2

    check-cast p1, LXi/A0;

    invoke-virtual {p1}, LXi/A0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/L;

    iput-object v0, p0, LCi/j;->b:LXi/L;

    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, LXi/A0;->b()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/a;->N0([B)[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, LCi/j;->c:Ljava/math/BigInteger;

    const-string p1, "ECVKO"

    iget-object v0, p0, LCi/j;->b:LXi/L;

    invoke-static {p1, v0}, LCi/m;->b(Ljava/lang/String;LXi/J;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method
