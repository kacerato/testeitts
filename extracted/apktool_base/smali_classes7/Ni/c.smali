.class public LNi/c;
.super LNi/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, LLi/a;->r()LBi/K;

    move-result-object v0

    invoke-direct {p0, v0}, LNi/c;-><init>(LBi/f;)V

    return-void
.end method

.method public constructor <init>(LBi/f;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, LNi/a;-><init>(LBi/f;)V

    invoke-interface {p1}, LBi/f;->c()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    const-string p1, "org.bouncycastle.fpe.disable"

    invoke-static {p1}, Lorg/bouncycastle/util/q;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FPE disabled"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "base cipher needs to be 128 bits"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a([BII[BI)I
    .locals 8

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->b()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    iget-object v2, p0, LNi/a;->a:LBi/f;

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->c()Lorg/bouncycastle/crypto/util/r;

    move-result-object v3

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->d()[B

    move-result-object v4

    invoke-static {p1}, LNi/a;->g([B)[S

    move-result-object v5

    div-int/lit8 v7, p3, 0x2

    move v6, p2

    invoke-static/range {v2 .. v7}, LNi/d;->s(LBi/f;Lorg/bouncycastle/crypto/util/r;[B[SII)[S

    move-result-object p1

    invoke-static {p1}, LNi/a;->f([S)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNi/a;->a:LBi/f;

    iget-object v1, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v1}, LXi/Z;->c()Lorg/bouncycastle/crypto/util/r;

    move-result-object v1

    iget-object v2, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v2}, LXi/Z;->d()[B

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, LNi/d;->r(LBi/f;Lorg/bouncycastle/crypto/util/r;[B[BII)[B

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3
.end method

.method public b([BII[BI)I
    .locals 8

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->b()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    iget-object v2, p0, LNi/a;->a:LBi/f;

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->c()Lorg/bouncycastle/crypto/util/r;

    move-result-object v3

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->d()[B

    move-result-object v4

    invoke-static {p1}, LNi/a;->g([B)[S

    move-result-object v5

    div-int/lit8 v7, p3, 0x2

    move v6, p2

    invoke-static/range {v2 .. v7}, LNi/d;->z(LBi/f;Lorg/bouncycastle/crypto/util/r;[B[SII)[S

    move-result-object p1

    invoke-static {p1}, LNi/a;->f([S)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LNi/a;->a:LBi/f;

    iget-object v1, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v1}, LXi/Z;->c()Lorg/bouncycastle/crypto/util/r;

    move-result-object v1

    iget-object v2, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v2}, LXi/Z;->d()[B

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, LNi/d;->y(LBi/f;Lorg/bouncycastle/crypto/util/r;[B[BII)[B

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "FF3-1"

    return-object v0
.end method

.method public d(ZLBi/k;)V
    .locals 1

    iput-boolean p1, p0, LNi/a;->b:Z

    check-cast p2, LXi/Z;

    iput-object p2, p0, LNi/a;->c:LXi/Z;

    iget-object p1, p0, LNi/a;->a:LBi/f;

    invoke-virtual {p2}, LXi/Z;->e()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {v0}, LXi/Z;->a()LXi/o0;

    move-result-object v0

    invoke-virtual {v0}, LXi/o0;->d()LXi/o0;

    move-result-object v0

    invoke-interface {p1, p2, v0}, LBi/f;->a(ZLBi/k;)V

    iget-object p1, p0, LNi/a;->c:LXi/Z;

    invoke-virtual {p1}, LXi/Z;->d()[B

    move-result-object p1

    array-length p1, p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "tweak should be 56 bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
