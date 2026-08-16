.class public LCi/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/W;


# instance fields
.field public a:LXi/L;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    check-cast p1, LXi/L;

    iput-object p1, p0, LCi/g;->a:LXi/L;

    const-string v0, "ECCDH"

    invoke-static {v0, p1}, LCi/m;->b(Ljava/lang/String;LXi/J;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public b(LBi/k;)Ljava/math/BigInteger;
    .locals 0

    check-cast p1, LXi/M;

    invoke-virtual {p0, p1}, LCi/g;->e(LXi/M;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LCi/g;->a:LXi/L;

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

.method public d(LBi/k;)LXi/c;
    .locals 2

    check-cast p1, LXi/M;

    invoke-virtual {p0, p1}, LCi/g;->e(LXi/M;)Ljk/i;

    move-result-object p1

    new-instance v0, LXi/M;

    iget-object v1, p0, LCi/g;->a:LXi/L;

    invoke-virtual {v1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-direct {v0, p1, v1}, LXi/M;-><init>(Ljk/i;LXi/G;)V

    return-object v0
.end method

.method public final e(LXi/M;)Ljk/i;
    .locals 3

    iget-object v0, p0, LCi/g;->a:LXi/L;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v0, v1}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, LCi/g;->a:LXi/L;

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

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Infinity is not a valid agreement value for ECDHC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Infinity is not a valid public key for ECDHC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECDHC public key has wrong domain parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
