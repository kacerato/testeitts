.class public Lbj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/t;


# instance fields
.field public final g:Lbj/c;

.field public h:LXi/x;

.field public i:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbj/x;

    invoke-direct {v0}, Lbj/x;-><init>()V

    iput-object v0, p0, Lbj/d;->g:Lbj/c;

    return-void
.end method

.method public constructor <init>(Lbj/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj/d;->g:Lbj/c;

    return-void
.end method

.method private d(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/A;

    iput-object v0, p0, Lbj/d;->h:LXi/x;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_2

    :cond_0
    check-cast p2, LXi/A;

    :goto_0
    iput-object p2, p0, Lbj/d;->h:LXi/x;

    goto :goto_1

    :cond_1
    check-cast p2, LXi/B;

    goto :goto_0

    :goto_1
    const/4 p2, 0x0

    :goto_2
    const-string v0, "DSA"

    iget-object v1, p0, Lbj/d;->h:LXi/x;

    invoke-static {v0, v1, p1}, Lbj/A;->b(Ljava/lang/String;LXi/x;Z)LBi/n;

    move-result-object v0

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lbj/d;->g:Lbj/c;

    invoke-interface {p1}, Lbj/c;->c()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p1, p2}, Lbj/d;->f(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lbj/d;->i:Ljava/security/SecureRandom;

    return-void
.end method

.method public b([B)[Ljava/math/BigInteger;
    .locals 6

    iget-object v0, p0, Lbj/d;->h:LXi/x;

    invoke-virtual {v0}, LXi/x;->d()LXi/z;

    move-result-object v0

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lbj/d;->d(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lbj/d;->h:LXi/x;

    check-cast v3, LXi/A;

    invoke-virtual {v3}, LXi/A;->e()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lbj/d;->g:Lbj/c;

    invoke-interface {v4}, Lbj/c;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lbj/d;->g:Lbj/c;

    invoke-interface {v4, v1, v3, p1}, Lbj/c;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbj/d;->g:Lbj/c;

    iget-object v4, p0, Lbj/d;->i:Ljava/security/SecureRandom;

    invoke-interface {p1, v1, v4}, Lbj/c;->a(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_0
    iget-object p1, p0, Lbj/d;->g:Lbj/c;

    invoke-interface {p1}, Lbj/c;->b()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lbj/d;->i:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1, v5}, Lbj/d;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v1, p1}, Lorg/bouncycastle/util/b;->n(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 5

    iget-object v0, p0, Lbj/d;->h:LXi/x;

    invoke-virtual {v0}, LXi/x;->d()LXi/z;

    move-result-object v0

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lbj/d;->d(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, p3}, Lorg/bouncycastle/util/b;->o(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v0}, LXi/z;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/z;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lbj/d;->h:LXi/x;

    check-cast v0, LXi/B;

    invoke-virtual {v0}, LXi/B;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v4
.end method

.method public final e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 2

    const/4 v0, 0x7

    invoke-static {p2}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p2

    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public f(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getOrder()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lbj/d;->h:LXi/x;

    invoke-virtual {v0}, LXi/x;->d()LXi/z;

    move-result-object v0

    invoke-virtual {v0}, LXi/z;->c()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
