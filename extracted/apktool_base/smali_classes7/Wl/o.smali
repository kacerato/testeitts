.class public LWl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[LWl/k;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LWl/o;->b:I

    new-array p1, p1, [LWl/k;

    iput-object p1, p0, LWl/o;->a:[LWl/k;

    return-void
.end method

.method public constructor <init>(ILWl/k;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LWl/o;->b:I

    new-array p1, p1, [LWl/k;

    iput-object p1, p0, LWl/o;->a:[LWl/k;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, LWl/o;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    invoke-virtual {p2}, LWl/k;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LWl/k;

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(LWl/f;LWl/l;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, LWl/l;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LWl/o;->b:I

    new-array v0, v0, [LWl/k;

    iput-object v0, p0, LWl/o;->a:[LWl/k;

    instance-of v0, p2, LWl/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :goto_0
    iget v0, p0, LWl/o;->b:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, LWl/f;->U(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    move-object v2, p2

    check-cast v2, LWl/n;

    invoke-static {v2}, LWl/m;->y(LWl/n;)LWl/m;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, LWl/o;->a:[LWl/k;

    move-object v2, p2

    check-cast v2, LWl/n;

    invoke-static {v2}, LWl/m;->z(LWl/n;)LWl/m;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p2, LWl/q;

    if-eqz v0, :cond_4

    :goto_2
    iget v0, p0, LWl/o;->b:I

    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, LWl/f;->U(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    move-object v2, p2

    check-cast v2, LWl/q;

    invoke-static {v2}, LWl/p;->y(LWl/q;)LWl/p;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, LWl/o;->a:[LWl/k;

    move-object v2, p2

    check-cast v2, LWl/q;

    invoke-static {v2}, LWl/p;->z(LWl/q;)LWl/p;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LWl/o;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, LWl/o;->b:I

    new-array v1, v0, [LWl/k;

    iput-object v1, p0, LWl/o;->a:[LWl/k;

    iput v0, p0, LWl/o;->b:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LWl/o;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LWl/o;->a:[LWl/k;

    iget-object v2, p1, LWl/o;->a:[LWl/k;

    aget-object v2, v2, v0

    invoke-virtual {v2}, LWl/k;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LWl/k;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LWl/o;)LWl/o;
    .locals 5

    invoke-virtual {p0}, LWl/o;->s()I

    move-result v0

    invoke-virtual {p1}, LWl/o;->s()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    new-instance v0, LWl/o;

    invoke-virtual {p0}, LWl/o;->s()I

    move-result v1

    invoke-direct {v0, v1}, LWl/o;-><init>(I)V

    :goto_0
    invoke-virtual {p1}, LWl/o;->s()I

    move-result v1

    if-ge v2, v1, :cond_0

    iget-object v1, v0, LWl/o;->a:[LWl/k;

    iget-object v3, p0, LWl/o;->a:[LWl/k;

    aget-object v3, v3, v2

    iget-object v4, p1, LWl/o;->a:[LWl/k;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, LWl/r;->g(LWl/r;)LWl/r;

    move-result-object v3

    check-cast v3, LWl/k;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p0}, LWl/o;->s()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, v0, LWl/o;->a:[LWl/k;

    iget-object v1, p0, LWl/o;->a:[LWl/k;

    aget-object v1, v1, v2

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, LWl/o;

    invoke-virtual {p1}, LWl/o;->s()I

    move-result v1

    invoke-direct {v0, v1}, LWl/o;-><init>(I)V

    :goto_2
    invoke-virtual {p0}, LWl/o;->s()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, v0, LWl/o;->a:[LWl/k;

    iget-object v3, p0, LWl/o;->a:[LWl/k;

    aget-object v3, v3, v2

    iget-object v4, p1, LWl/o;->a:[LWl/k;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, LWl/r;->g(LWl/r;)LWl/r;

    move-result-object v3

    check-cast v3, LWl/k;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-virtual {p1}, LWl/o;->s()I

    move-result v1

    if-ge v2, v1, :cond_3

    iget-object v1, v0, LWl/o;->a:[LWl/k;

    iget-object v3, p1, LWl/o;->a:[LWl/k;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LWl/o;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LWl/o;->a:[LWl/k;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWl/k;->l()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(I)LWl/k;
    .locals 1

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d(LWl/o;)[LWl/o;
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [LWl/o;

    new-instance v1, LWl/o;

    invoke-direct {v1, p0}, LWl/o;-><init>(LWl/o;)V

    invoke-virtual {v1}, LWl/o;->r()V

    invoke-virtual {p1}, LWl/o;->g()I

    move-result v2

    iget-object v3, p1, LWl/o;->a:[LWl/k;

    aget-object v3, v3, v2

    invoke-interface {v3}, LWl/r;->invert()LWl/r;

    move-result-object v3

    check-cast v3, LWl/k;

    invoke-virtual {v1}, LWl/o;->g()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v2, :cond_0

    new-instance p1, LWl/o;

    invoke-direct {p1, p0}, LWl/o;-><init>(LWl/o;)V

    aput-object p1, v0, v6

    invoke-virtual {p1}, LWl/o;->b()V

    aget-object p1, v0, v6

    invoke-virtual {p1}, LWl/o;->r()V

    new-instance p1, LWl/o;

    invoke-direct {p1, p0}, LWl/o;-><init>(LWl/o;)V

    aput-object p1, v0, v5

    :goto_0
    invoke-virtual {p1}, LWl/o;->r()V

    return-object v0

    :cond_0
    new-instance v4, LWl/o;

    invoke-direct {v4, p0}, LWl/o;-><init>(LWl/o;)V

    aput-object v4, v0, v6

    invoke-virtual {v4}, LWl/o;->b()V

    :goto_1
    invoke-virtual {v1}, LWl/o;->g()I

    move-result v4

    sub-int/2addr v4, v2

    if-ltz v4, :cond_1

    iget-object v7, v1, LWl/o;->a:[LWl/k;

    invoke-virtual {v1}, LWl/o;->g()I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v7, v3}, LWl/r;->e(LWl/r;)LWl/r;

    move-result-object v7

    check-cast v7, LWl/k;

    invoke-virtual {p1, v7}, LWl/o;->n(LWl/k;)LWl/o;

    move-result-object v8

    invoke-virtual {v8, v4}, LWl/o;->q(I)V

    invoke-virtual {v1, v8}, LWl/o;->a(LWl/o;)LWl/o;

    move-result-object v1

    invoke-virtual {v1}, LWl/o;->r()V

    aget-object v8, v0, v6

    iget-object v8, v8, LWl/o;->a:[LWl/k;

    invoke-virtual {v7}, LWl/k;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LWl/k;

    aput-object v7, v8, v4

    goto :goto_1

    :cond_1
    aput-object v1, v0, v5

    aget-object p1, v0, v6

    goto :goto_0
.end method

.method public final e(I)V
    .locals 4

    iget v0, p0, LWl/o;->b:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-array v1, p1, [LWl/k;

    iget-object v2, p0, LWl/o;->a:[LWl/k;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    aget-object v0, v0, v3

    invoke-virtual {v0}, LWl/k;->n()LWl/l;

    move-result-object v0

    iget-object v2, p0, LWl/o;->a:[LWl/k;

    aget-object v2, v2, v3

    instance-of v3, v2, LWl/p;

    if-eqz v3, :cond_1

    iget v2, p0, LWl/o;->b:I

    :goto_0
    if-ge v2, p1, :cond_2

    move-object v3, v0

    check-cast v3, LWl/q;

    invoke-static {v3}, LWl/p;->z(LWl/q;)LWl/p;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, v2, LWl/m;

    if-eqz v2, :cond_2

    iget v2, p0, LWl/o;->b:I

    :goto_1
    if-ge v2, p1, :cond_2

    move-object v3, v0

    check-cast v3, LWl/n;

    invoke-static {v3}, LWl/m;->z(LWl/n;)LWl/m;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput p1, p0, LWl/o;->b:I

    iput-object v1, p0, LWl/o;->a:[LWl/k;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, LWl/o;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, LWl/o;

    invoke-virtual {p0}, LWl/o;->g()I

    move-result v1

    invoke-virtual {p1}, LWl/o;->g()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, LWl/o;->b:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LWl/o;->a:[LWl/k;

    aget-object v2, v2, v1

    iget-object v3, p1, LWl/o;->a:[LWl/k;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public final f(LWl/o;)LWl/o;
    .locals 3

    new-instance v0, LWl/o;

    invoke-direct {v0, p0}, LWl/o;-><init>(LWl/o;)V

    new-instance v1, LWl/o;

    invoke-direct {v1, p1}, LWl/o;-><init>(LWl/o;)V

    invoke-virtual {v0}, LWl/o;->r()V

    invoke-virtual {v1}, LWl/o;->r()V

    move-object p1, v0

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, LWl/o;->h()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, LWl/o;->m(LWl/o;)LWl/o;

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    iget-object v0, p1, LWl/o;->a:[LWl/k;

    invoke-virtual {p1}, LWl/o;->g()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, LWl/r;->invert()LWl/r;

    move-result-object v0

    check-cast v0, LWl/k;

    invoke-virtual {p1, v0}, LWl/o;->n(LWl/k;)LWl/o;

    move-result-object p1

    return-object p1
.end method

.method public final g()I
    .locals 2

    iget v0, p0, LWl/o;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, LWl/o;->a:[LWl/k;

    aget-object v1, v1, v0

    invoke-interface {v1}, LWl/r;->a()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final h()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LWl/o;->b:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, LWl/o;->a:[LWl/k;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2}, LWl/r;->a()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, LWl/o;->g()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, LWl/o;->a:[LWl/k;

    invoke-static {v1}, Lorg/bouncycastle/util/a;->A0([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i(LWl/o;)LWl/o;
    .locals 9

    invoke-virtual {p0}, LWl/o;->s()I

    move-result v0

    invoke-virtual {p1}, LWl/o;->s()I

    move-result v1

    if-ne v0, v1, :cond_3

    new-instance v1, LWl/o;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v1, v0}, LWl/o;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, LWl/o;->s()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v0

    :goto_1
    invoke-virtual {p1}, LWl/o;->s()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, LWl/o;->a:[LWl/k;

    add-int v5, v2, v3

    aget-object v6, v4, v5

    if-nez v6, :cond_0

    iget-object v6, p0, LWl/o;->a:[LWl/k;

    aget-object v6, v6, v2

    iget-object v7, p1, LWl/o;->a:[LWl/k;

    aget-object v7, v7, v3

    invoke-interface {v6, v7}, LWl/r;->e(LWl/r;)LWl/r;

    move-result-object v6

    check-cast v6, LWl/k;

    aput-object v6, v4, v5

    goto :goto_2

    :cond_0
    iget-object v7, p0, LWl/o;->a:[LWl/k;

    aget-object v7, v7, v2

    iget-object v8, p1, LWl/o;->a:[LWl/k;

    aget-object v8, v8, v3

    invoke-interface {v7, v8}, LWl/r;->e(LWl/r;)LWl/r;

    move-result-object v7

    invoke-interface {v6, v7}, LWl/r;->g(LWl/r;)LWl/r;

    move-result-object v6

    check-cast v6, LWl/k;

    aput-object v6, v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PolynomialGF2n.multiply: this and b must have the same size!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(LWl/o;LWl/o;)LWl/o;
    .locals 0

    invoke-virtual {p0, p1}, LWl/o;->i(LWl/o;)LWl/o;

    move-result-object p1

    invoke-virtual {p1, p2}, LWl/o;->l(LWl/o;)LWl/o;

    move-result-object p1

    return-object p1
.end method

.method public final k(LWl/o;)LWl/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LWl/o;->d(LWl/o;)[LWl/o;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final l(LWl/o;)LWl/o;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LWl/o;->m(LWl/o;)LWl/o;

    move-result-object p1

    return-object p1
.end method

.method public final m(LWl/o;)LWl/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LWl/o;->d(LWl/o;)[LWl/o;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public final n(LWl/k;)LWl/o;
    .locals 4

    new-instance v0, LWl/o;

    invoke-virtual {p0}, LWl/o;->s()I

    move-result v1

    invoke-direct {v0, v1}, LWl/o;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, LWl/o;->s()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, LWl/o;->a:[LWl/k;

    iget-object v3, p0, LWl/o;->a:[LWl/k;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, LWl/r;->e(LWl/r;)LWl/r;

    move-result-object v3

    check-cast v3, LWl/k;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final o(ILWl/k;)V
    .locals 1

    instance-of v0, p2, LWl/p;

    if-nez v0, :cond_1

    instance-of v0, p2, LWl/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, LWl/o;->a:[LWl/k;

    invoke-virtual {p2}, LWl/k;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LWl/k;

    aput-object p2, v0, p1

    return-void
.end method

.method public final p(I)LWl/o;
    .locals 5

    if-gtz p1, :cond_0

    new-instance p1, LWl/o;

    invoke-direct {p1, p0}, LWl/o;-><init>(LWl/o;)V

    return-object p1

    :cond_0
    new-instance v0, LWl/o;

    iget v1, p0, LWl/o;->b:I

    add-int/2addr v1, p1

    iget-object v2, p0, LWl/o;->a:[LWl/k;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, LWl/o;-><init>(ILWl/k;)V

    invoke-virtual {v0}, LWl/o;->b()V

    :goto_0
    iget v1, p0, LWl/o;->b:I

    if-ge v3, v1, :cond_1

    iget-object v1, v0, LWl/o;->a:[LWl/k;

    add-int v2, v3, p1

    iget-object v4, p0, LWl/o;->a:[LWl/k;

    aget-object v4, v4, v3

    aput-object v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final q(I)V
    .locals 6

    if-lez p1, :cond_2

    iget v0, p0, LWl/o;->b:I

    iget-object v1, p0, LWl/o;->a:[LWl/k;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, LWl/k;->n()LWl/l;

    move-result-object v1

    iget v3, p0, LWl/o;->b:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, LWl/o;->e(I)V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, LWl/o;->a:[LWl/k;

    add-int v4, v0, p1

    aget-object v5, v3, v0

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LWl/o;->a:[LWl/k;

    aget-object v0, v0, v2

    instance-of v2, v0, LWl/p;

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_2

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    move-object v2, v1

    check-cast v2, LWl/q;

    invoke-static {v2}, LWl/p;->z(LWl/q;)LWl/p;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    instance-of v0, v0, LWl/m;

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_2

    iget-object v0, p0, LWl/o;->a:[LWl/k;

    move-object v2, v1

    check-cast v2, LWl/n;

    invoke-static {v2}, LWl/m;->z(LWl/n;)LWl/m;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final r()V
    .locals 4

    iget v0, p0, LWl/o;->b:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, LWl/o;->a:[LWl/k;

    aget-object v1, v1, v0

    invoke-interface {v1}, LWl/r;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, LWl/o;->b:I

    if-ge v0, v1, :cond_1

    new-array v1, v0, [LWl/k;

    iget-object v2, p0, LWl/o;->a:[LWl/k;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, LWl/o;->a:[LWl/k;

    iput v0, p0, LWl/o;->b:I

    :cond_1
    return-void
.end method

.method public final s()I
    .locals 1

    iget v0, p0, LWl/o;->b:I

    return v0
.end method
