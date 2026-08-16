.class public Lbj/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/t;


# instance fields
.field public g:Z

.field public h:LXi/J;

.field public i:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 1

    iput-boolean p1, p0, Lbj/i;->g:Z

    if-eqz p1, :cond_1

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lbj/i;->i:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    :goto_0
    check-cast p2, LXi/L;

    :goto_1
    iput-object p2, p0, Lbj/i;->h:LXi/J;

    goto :goto_2

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lbj/i;->i:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_1
    check-cast p2, LXi/M;

    goto :goto_1

    :goto_2
    const-string p2, "ECNR"

    iget-object v0, p0, Lbj/i;->h:LXi/J;

    invoke-static {p2, v0, p1}, Lbj/A;->c(Ljava/lang/String;LXi/J;Z)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public b([B)[Ljava/math/BigInteger;
    .locals 6

    iget-boolean v0, p0, Lbj/i;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbj/i;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, p0, Lbj/i;->h:LXi/J;

    check-cast p1, LXi/L;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    new-instance v2, LOi/p;

    invoke-direct {v2}, LOi/p;-><init>()V

    new-instance v3, LXi/I;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v4

    iget-object v5, p0, Lbj/i;->i:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v3}, LOi/p;->b(LBi/G;)V

    invoke-virtual {v2}, LOi/p;->a()LBi/c;

    move-result-object v2

    invoke-virtual {v2}, LBi/c;->b()LXi/c;

    move-result-object v3

    check-cast v3, LXi/M;

    invoke-virtual {v3}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-virtual {v3}, Ljk/i;->f()Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2}, LBi/c;->a()LXi/c;

    move-result-object v1

    check-cast v1, LXi/L;

    invoke-virtual {v1}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v0, "input too large for ECNR key"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not initialised for signing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5

    iget-boolean v0, p0, Lbj/i;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lbj/i;->h:LXi/J;

    check-cast v0, LXi/M;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    if-gt p1, v2, :cond_1

    invoke-virtual {p0, v0, p2, p3}, Lbj/i;->d(LXi/M;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input too large for ECNR key."

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not initialised for verifying"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(LXi/M;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p3, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v1

    invoke-virtual {v1}, LXi/G;->b()Ljk/i;

    move-result-object v1

    invoke-virtual {p1}, LXi/M;->e()Ljk/i;

    move-result-object p1

    invoke-static {v1, p3, p1, p2}, Ljk/c;->v(Ljk/i;Ljava/math/BigInteger;Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2
.end method

.method public e(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1

    iget-boolean v0, p0, Lbj/i;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbj/i;->h:LXi/J;

    check-cast v0, LXi/M;

    invoke-virtual {p0, v0, p1, p2}, Lbj/i;->d(LXi/M;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/util/b;->c(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "not initialised for verifying/recovery"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lbj/i;->h:LXi/J;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
