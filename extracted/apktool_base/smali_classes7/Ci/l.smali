.class public LCi/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LBi/y;

.field public b:[B

.field public c:LXi/L;

.field public d:Ljk/i;

.field public e:Ljk/i;

.field public f:LXi/G;

.field public g:I

.field public h:LXi/L;

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LIi/S;

    invoke-direct {v0}, LIi/S;-><init>()V

    invoke-direct {p0, v0}, LCi/l;-><init>(LBi/y;)V

    return-void
.end method

.method public constructor <init>(LBi/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCi/l;->a:LBi/y;

    return-void
.end method


# virtual methods
.method public final a(LBi/y;Ljk/i;[B)[B
    .locals 1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    invoke-virtual {p2}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p2}, LBi/y;->update([BII)V

    invoke-virtual {p0}, LCi/l;->i()[B

    move-result-object p1

    return-object p1
.end method

.method public final b(LBi/y;Ljk/i;[B)[B
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    invoke-virtual {p2}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p2}, LBi/y;->update([BII)V

    invoke-virtual {p0}, LCi/l;->i()[B

    move-result-object p1

    return-object p1
.end method

.method public final c(LBi/y;Ljk/f;)V
    .locals 2

    invoke-virtual {p2}, Ljk/f;->e()[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, LBi/y;->update([BII)V

    return-void
.end method

.method public final d(LBi/y;[B)V
    .locals 2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, LBi/y;->update(B)V

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-interface {p1, p2, v0, v1}, LBi/y;->update([BII)V

    return-void
.end method

.method public final e(LBi/y;Ljk/i;[B[BLjk/i;Ljk/i;)[B
    .locals 1

    invoke-virtual {p2}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    array-length p2, p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, p2}, LBi/y;->update([BII)V

    array-length p2, p4

    invoke-interface {p1, p4, v0, p2}, LBi/y;->update([BII)V

    invoke-virtual {p5}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p5}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p6}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p6}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p0}, LCi/l;->i()[B

    move-result-object p1

    return-object p1
.end method

.method public f(ILBi/k;)[B
    .locals 4

    instance-of v0, p2, LXi/v0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/v0;

    invoke-virtual {p2}, LXi/v0;->b()LBi/k;

    move-result-object v0

    check-cast v0, LXi/I0;

    invoke-virtual {p2}, LXi/v0;->a()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, LXi/I0;

    const/4 p2, 0x0

    new-array p2, p2, [B

    :goto_0
    iget-object v1, p0, LCi/l;->a:LBi/y;

    iget-object v2, p0, LCi/l;->b:[B

    iget-object v3, p0, LCi/l;->d:Ljk/i;

    invoke-virtual {p0, v1, v2, v3}, LCi/l;->j(LBi/y;[BLjk/i;)[B

    move-result-object v1

    iget-object v2, p0, LCi/l;->a:LBi/y;

    invoke-virtual {v0}, LXi/I0;->b()LXi/M;

    move-result-object v3

    invoke-virtual {v3}, LXi/M;->e()Ljk/i;

    move-result-object v3

    invoke-virtual {p0, v2, p2, v3}, LCi/l;->j(LBi/y;[BLjk/i;)[B

    move-result-object p2

    invoke-virtual {p0, v0}, LCi/l;->h(LXi/I0;)Ljk/i;

    move-result-object v0

    iget-boolean v2, p0, LCi/l;->i:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0, v1, p2, p1}, LCi/l;->l(Ljk/i;[B[BI)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p2, v1, p1}, LCi/l;->l(Ljk/i;[B[BI)[B

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public g(I[BLBi/k;)[[B
    .locals 11

    instance-of v0, p3, LXi/v0;

    if-eqz v0, :cond_0

    check-cast p3, LXi/v0;

    invoke-virtual {p3}, LXi/v0;->b()LBi/k;

    move-result-object v0

    check-cast v0, LXi/I0;

    invoke-virtual {p3}, LXi/v0;->a()[B

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object v0, p3

    check-cast v0, LXi/I0;

    const/4 p3, 0x0

    new-array p3, p3, [B

    :goto_0
    iget-boolean v1, p0, LCi/l;->i:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "if initiating, confirmationTag must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v1, p0, LCi/l;->a:LBi/y;

    iget-object v2, p0, LCi/l;->b:[B

    iget-object v3, p0, LCi/l;->d:Ljk/i;

    invoke-virtual {p0, v1, v2, v3}, LCi/l;->j(LBi/y;[BLjk/i;)[B

    move-result-object v8

    iget-object v1, p0, LCi/l;->a:LBi/y;

    invoke-virtual {v0}, LXi/I0;->b()LXi/M;

    move-result-object v2

    invoke-virtual {v2}, LXi/M;->e()Ljk/i;

    move-result-object v2

    invoke-virtual {p0, v1, p3, v2}, LCi/l;->j(LBi/y;[BLjk/i;)[B

    move-result-object p3

    invoke-virtual {p0, v0}, LCi/l;->h(LXi/I0;)Ljk/i;

    move-result-object v1

    iget-boolean v2, p0, LCi/l;->i:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1, v8, p3, p1}, LCi/l;->l(Ljk/i;[B[BI)[B

    move-result-object p1

    iget-object v5, p0, LCi/l;->a:LBi/y;

    iget-object v9, p0, LCi/l;->e:Ljk/i;

    invoke-virtual {v0}, LXi/I0;->a()LXi/M;

    move-result-object v0

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v10

    move-object v4, p0

    move-object v6, v1

    move-object v7, v8

    move-object v8, p3

    invoke-virtual/range {v4 .. v10}, LCi/l;->e(LBi/y;Ljk/i;[B[BLjk/i;Ljk/i;)[B

    move-result-object p3

    iget-object v0, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p0, v0, v1, p3}, LCi/l;->a(LBi/y;Ljk/i;[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p0, p2, v1, p3}, LCi/l;->b(LBi/y;Ljk/i;[B)[B

    move-result-object p2

    filled-new-array {p1, p2}, [[B

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "confirmation tag mismatch"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0, v1, p3, v8, p1}, LCi/l;->l(Ljk/i;[B[BI)[B

    move-result-object p1

    iget-object v5, p0, LCi/l;->a:LBi/y;

    invoke-virtual {v0}, LXi/I0;->a()LXi/M;

    move-result-object p2

    invoke-virtual {p2}, LXi/M;->e()Ljk/i;

    move-result-object v9

    iget-object v10, p0, LCi/l;->e:Ljk/i;

    move-object v4, p0

    move-object v6, v1

    move-object v7, p3

    invoke-virtual/range {v4 .. v10}, LCi/l;->e(LBi/y;Ljk/i;[B[BLjk/i;Ljk/i;)[B

    move-result-object p2

    iget-object p3, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p0, p3, v1, p2}, LCi/l;->a(LBi/y;Ljk/i;[B)[B

    move-result-object p3

    iget-object v0, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p0, v0, v1, p2}, LCi/l;->b(LBi/y;Ljk/i;[B)[B

    move-result-object p2

    filled-new-array {p1, p3, p2}, [[B

    move-result-object p1

    return-object p1
.end method

.method public final h(LXi/I0;)Ljk/i;
    .locals 5

    iget-object v0, p0, LCi/l;->c:LXi/L;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v1

    invoke-virtual {p1}, LXi/I0;->b()LXi/M;

    move-result-object v2

    invoke-virtual {v2}, LXi/M;->e()Ljk/i;

    move-result-object v2

    invoke-static {v1, v2}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object v1

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {p1}, LXi/I0;->a()LXi/M;

    move-result-object p1

    invoke-virtual {p1}, LXi/M;->e()Ljk/i;

    move-result-object p1

    invoke-static {v0, p1}, Ljk/c;->a(Ljk/e;Ljk/i;)Ljk/i;

    move-result-object p1

    iget-object v0, p0, LCi/l;->e:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, LCi/l;->m(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, LCi/l;->m(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LCi/l;->c:LXi/L;

    invoke-virtual {v3}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, LCi/l;->h:LXi/L;

    invoke-virtual {v4}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, LCi/l;->f:LXi/G;

    invoke-virtual {v3}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, LCi/l;->f:LXi/G;

    invoke-virtual {v3}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, LCi/l;->f:LXi/G;

    invoke-virtual {v3}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Ljk/c;->v(Ljk/i;Ljava/math/BigInteger;Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public final i()[B
    .locals 3

    iget-object v0, p0, LCi/l;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LCi/l;->a:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    return-object v0
.end method

.method public final j(LBi/y;[BLjk/i;)[B
    .locals 0

    invoke-virtual {p0, p1, p2}, LCi/l;->d(LBi/y;[B)V

    iget-object p2, p0, LCi/l;->f:LXi/G;

    invoke-virtual {p2}, LXi/G;->a()Ljk/e;

    move-result-object p2

    invoke-virtual {p2}, Ljk/e;->p()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object p2, p0, LCi/l;->f:LXi/G;

    invoke-virtual {p2}, LXi/G;->a()Ljk/e;

    move-result-object p2

    invoke-virtual {p2}, Ljk/e;->r()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object p2, p0, LCi/l;->f:LXi/G;

    invoke-virtual {p2}, LXi/G;->b()Ljk/i;

    move-result-object p2

    invoke-virtual {p2}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object p2, p0, LCi/l;->f:LXi/G;

    invoke-virtual {p2}, LXi/G;->b()Ljk/i;

    move-result-object p2

    invoke-virtual {p2}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p3}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p3}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LCi/l;->c(LBi/y;Ljk/f;)V

    invoke-virtual {p0}, LCi/l;->i()[B

    move-result-object p1

    return-object p1
.end method

.method public k(LBi/k;)V
    .locals 1

    instance-of v0, p1, LXi/v0;

    if-eqz v0, :cond_0

    check-cast p1, LXi/v0;

    invoke-virtual {p1}, LXi/v0;->b()LBi/k;

    move-result-object v0

    check-cast v0, LXi/H0;

    invoke-virtual {p1}, LXi/v0;->a()[B

    move-result-object p1

    iput-object p1, p0, LCi/l;->b:[B

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, LXi/H0;

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, LCi/l;->b:[B

    :goto_0
    invoke-virtual {v0}, LXi/H0;->e()Z

    move-result p1

    iput-boolean p1, p0, LCi/l;->i:Z

    invoke-virtual {v0}, LXi/H0;->c()LXi/L;

    move-result-object p1

    iput-object p1, p0, LCi/l;->c:LXi/L;

    invoke-virtual {v0}, LXi/H0;->a()LXi/L;

    move-result-object p1

    iput-object p1, p0, LCi/l;->h:LXi/L;

    iget-object p1, p0, LCi/l;->c:LXi/L;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object p1

    iput-object p1, p0, LCi/l;->f:LXi/G;

    invoke-virtual {v0}, LXi/H0;->d()Ljk/i;

    move-result-object p1

    iput-object p1, p0, LCi/l;->d:Ljk/i;

    invoke-virtual {v0}, LXi/H0;->b()Ljk/i;

    move-result-object p1

    iput-object p1, p0, LCi/l;->e:Ljk/i;

    iget-object p1, p0, LCi/l;->f:LXi/G;

    invoke-virtual {p1}, LXi/G;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p1}, Ljk/e;->w()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LCi/l;->g:I

    const-string p1, "SM2KE"

    iget-object v0, p0, LCi/l;->c:LXi/L;

    invoke-static {p1, v0}, LCi/m;->b(Ljava/lang/String;LXi/J;)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public final l(Ljk/i;[B[BI)[B
    .locals 11

    iget-object v0, p0, LCi/l;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    add-int/lit8 p4, p4, 0x7

    div-int/lit8 p4, p4, 0x8

    new-array v3, p4, [B

    iget-object v4, p0, LCi/l;->a:LBi/y;

    instance-of v5, v4, Lorg/bouncycastle/util/n;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object v4, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p1}, Ljk/i;->g()Ljk/f;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object v4, p0, LCi/l;->a:LBi/y;

    array-length v5, p2

    invoke-interface {v4, p2, v6, v5}, LBi/y;->update([BII)V

    iget-object v4, p0, LCi/l;->a:LBi/y;

    array-length v5, p3

    invoke-interface {v4, p3, v6, v5}, LBi/y;->update([BII)V

    iget-object v4, p0, LCi/l;->a:LBi/y;

    check-cast v4, Lorg/bouncycastle/util/n;

    invoke-interface {v4}, Lorg/bouncycastle/util/n;->copy()Lorg/bouncycastle/util/n;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    move v7, v6

    move v8, v7

    :goto_1
    if-ge v7, p4, :cond_2

    if-eqz v4, :cond_1

    invoke-interface {v4, v5}, Lorg/bouncycastle/util/n;->j(Lorg/bouncycastle/util/n;)V

    goto :goto_2

    :cond_1
    iget-object v9, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p1}, Ljk/i;->f()Ljk/f;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object v9, p0, LCi/l;->a:LBi/y;

    invoke-virtual {p1}, Ljk/i;->g()Ljk/f;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, LCi/l;->c(LBi/y;Ljk/f;)V

    iget-object v9, p0, LCi/l;->a:LBi/y;

    array-length v10, p2

    invoke-interface {v9, p2, v6, v10}, LBi/y;->update([BII)V

    iget-object v9, p0, LCi/l;->a:LBi/y;

    array-length v10, p3

    invoke-interface {v9, p3, v6, v10}, LBi/y;->update([BII)V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    invoke-static {v8, v2, v6}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget-object v9, p0, LCi/l;->a:LBi/y;

    invoke-interface {v9, v2, v6, v1}, LBi/y;->update([BII)V

    iget-object v9, p0, LCi/l;->a:LBi/y;

    invoke-interface {v9, v2, v6}, LBi/y;->c([BI)I

    sub-int v9, p4, v7

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v6, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v9

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public final m(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, LCi/l;->g:I

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget v0, p0, LCi/l;->g:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
