.class public LCi/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/e;


# instance fields
.field public a:LXi/q0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LBi/k;)V
    .locals 1

    check-cast p1, LXi/q0;

    iput-object p1, p0, LCi/i;->a:LXi/q0;

    const-string v0, "ECMQV"

    invoke-virtual {p1}, LXi/q0;->c()LXi/L;

    move-result-object p1

    invoke-static {v0, p1}, LCi/m;->b(Ljava/lang/String;LXi/J;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public b(LBi/k;)Ljava/math/BigInteger;
    .locals 8

    const-string v0, "org.bouncycastle.ec.disable_mqv"

    invoke-static {v0}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, LXi/r0;

    iget-object v0, p0, LCi/i;->a:LXi/q0;

    invoke-virtual {v0}, LXi/q0;->c()LXi/L;

    move-result-object v3

    invoke-virtual {v3}, LXi/J;->d()LXi/G;

    move-result-object v2

    invoke-virtual {p1}, LXi/r0;->b()LXi/M;

    move-result-object v0

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v2, v0}, LXi/G;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LCi/i;->a:LXi/q0;

    invoke-virtual {v0}, LXi/q0;->a()LXi/L;

    move-result-object v4

    iget-object v0, p0, LCi/i;->a:LXi/q0;

    invoke-virtual {v0}, LXi/q0;->b()LXi/M;

    move-result-object v5

    invoke-virtual {p1}, LXi/r0;->b()LXi/M;

    move-result-object v6

    invoke-virtual {p1}, LXi/r0;->a()LXi/M;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LCi/i;->e(LXi/G;LXi/L;LXi/L;LXi/M;LXi/M;LXi/M;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Infinity is not a valid agreement value for MQV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECMQV public key components have wrong domain parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ECMQV explicitly disabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LCi/i;->a:LXi/q0;

    invoke-virtual {v0}, LXi/q0;->c()LXi/L;

    move-result-object v0

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

.method public final e(LXi/G;LXi/L;LXi/L;LXi/M;LXi/M;LXi/M;)Ljk/i;
    .locals 4

    invoke-virtual {p1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    sget-object v2, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {p4}, LXi/M;->e()Ljk/i;

    move-result-object p4

    invoke-static {v3, p4}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p4

    invoke-virtual {p5}, LXi/M;->e()Ljk/i;

    move-result-object p5

    invoke-static {v3, p5}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p5

    invoke-virtual {p6}, LXi/M;->e()Ljk/i;

    move-result-object p6

    invoke-static {v3, p6}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p6

    invoke-virtual {p4}, Ljk/i;->f()Ljk/f;

    move-result-object p4

    invoke-virtual {p4}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p6}, Ljk/i;->f()Ljk/f;

    move-result-object p3

    invoke-virtual {p3}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p5, p2, p6, p1}, Ljk/c;->v(Ljk/i;Ljava/math/BigInteger;Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    return-object p1
.end method
