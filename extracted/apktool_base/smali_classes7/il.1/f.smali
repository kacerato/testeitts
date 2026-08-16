.class public Lil/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbm/i;

.field public final b:Lil/j;


# direct methods
.method public constructor <init>(Lbm/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lil/f;->a:Lbm/i;

    new-instance v0, Lil/j;

    invoke-direct {v0, p1}, Lil/j;-><init>(Lbm/i;)V

    iput-object v0, p0, Lil/f;->b:Lil/j;

    return-void
.end method


# virtual methods
.method public final a([B)I
    .locals 2

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-byte p1, p1, v0

    int-to-short p1, p1

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->b()I

    move-result v0

    iget-object v1, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v1}, Lbm/i;->k()I

    move-result v1

    mul-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    rsub-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    shl-int v0, v1, v0

    and-int/2addr p1, v0

    int-to-short p1, p1

    not-int p1, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p1, p1, 0xf

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b(Lam/b;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v3}, Lbm/i;->c()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, p1, Lam/e;->a:[S

    aget-short v3, v3, v0

    and-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v4

    int-to-short v1, v1

    and-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v2, 0x1

    xor-int/2addr p1, v1

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    check-cast v0, Lbm/e;

    invoke-virtual {v0}, Lbm/e;->u()I

    move-result v0

    xor-int/2addr v0, v2

    or-int/2addr p1, v0

    not-int p1, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(Lam/e;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v2}, Lbm/i;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lam/e;->a:[S

    aget-short v2, v2, v0

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v4}, Lbm/i;->n()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lam/e;->a:[S

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-short p1, p1, v0

    or-int/2addr p1, v1

    not-int p1, p1

    add-int/lit8 p1, p1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    and-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public d([B[B)Lil/k;
    .locals 11

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->h()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v2}, Lbm/i;->a()Lam/e;

    move-result-object v2

    iget-object v3, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v3}, Lbm/i;->a()Lam/e;

    move-result-object v3

    iget-object v4, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v4}, Lbm/i;->a()Lam/e;

    move-result-object v4

    iget-object v5, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v5}, Lbm/i;->a()Lam/e;

    move-result-object v5

    invoke-virtual {v2, p1}, Lam/e;->n([B)V

    invoke-virtual {v3, p2}, Lam/e;->q([B)V

    invoke-virtual {v3}, Lam/e;->z()V

    invoke-virtual {v4, v2, v3}, Lam/e;->m(Lam/e;Lam/e;)V

    invoke-virtual {v3, v4}, Lam/e;->p(Lam/e;)V

    iget-object v6, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v6}, Lbm/i;->l()I

    move-result v6

    array-length v7, p2

    invoke-static {p2, v6, v7}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v6

    invoke-virtual {v4, v6}, Lam/e;->q([B)V

    invoke-virtual {v5, v3, v4}, Lam/e;->t(Lam/e;Lam/e;)V

    iget-object v6, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v6}, Lbm/i;->l()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {v5, v0}, Lam/e;->u(I)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lil/f;->a([B)I

    move-result p1

    iget-object v6, p0, Lil/f;->a:Lbm/i;

    instance-of v6, v6, Lbm/e;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lam/b;

    invoke-virtual {p0, v6}, Lil/f;->b(Lam/b;)I

    move-result v6

    or-int/2addr p1, v6

    :cond_0
    invoke-virtual {v3, v5}, Lam/e;->b(Lam/e;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget-object v8, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v8}, Lbm/i;->c()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, v2, Lam/e;->a:[S

    aget-short v9, v8, v7

    iget-object v10, v3, Lam/e;->a:[S

    aget-short v10, v10, v7

    sub-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v3}, Lbm/i;->l()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    array-length v7, p2

    invoke-static {p2, v3, v7}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p2

    invoke-virtual {v4, p2}, Lam/e;->v([B)V

    invoke-virtual {v5, v2, v4}, Lam/e;->w(Lam/e;Lam/e;)V

    invoke-virtual {p0, v5}, Lil/f;->c(Lam/e;)I

    move-result p2

    or-int/2addr p1, p2

    invoke-virtual {v5}, Lam/e;->y()V

    iget-object p2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {p2}, Lbm/i;->h()I

    move-result p2

    invoke-virtual {v5, p2}, Lam/e;->u(I)[B

    move-result-object p2

    array-length v2, p2

    invoke-static {p2, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {p2}, Lbm/i;->l()I

    move-result p2

    array-length v2, v0

    invoke-static {v0, v6, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lil/k;

    invoke-direct {p2, v1, p1}, Lil/k;-><init>([BI)V

    return-object p2
.end method

.method public e(Lam/e;Lam/e;[B)[B
    .locals 3

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->a()Lam/e;

    move-result-object v0

    iget-object v1, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v1}, Lbm/i;->a()Lam/e;

    move-result-object v1

    invoke-virtual {v0, p3}, Lam/e;->n([B)V

    invoke-virtual {v1, p1, v0}, Lam/e;->m(Lam/e;Lam/e;)V

    invoke-virtual {v0, p2}, Lam/e;->b(Lam/e;)V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {p2}, Lbm/i;->c()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, v1, Lam/e;->a:[S

    aget-short p3, p2, p1

    iget-object v2, v0, Lam/e;->a:[S

    aget-short v2, v2, p1

    add-int/2addr p3, v2

    int-to-short p3, p3

    aput-short p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {p1}, Lbm/i;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Lam/e;->o(I)[B

    move-result-object p1

    return-object p1
.end method

.method public f([B)Lil/l;
    .locals 11

    iget-object v0, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v0}, Lbm/i;->j()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v2}, Lbm/i;->c()I

    move-result v2

    iget-object v3, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v3}, Lbm/i;->n()I

    iget-object v3, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v3}, Lbm/i;->a()Lam/e;

    move-result-object v3

    iget-object v4, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v4}, Lbm/i;->a()Lam/e;

    move-result-object v4

    iget-object v5, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v5}, Lbm/i;->a()Lam/e;

    move-result-object v5

    iget-object v6, p0, Lil/f;->b:Lil/j;

    invoke-virtual {v6, p1}, Lil/j;->b([B)Lil/m;

    move-result-object p1

    invoke-virtual {p1}, Lil/m;->a()Lam/e;

    move-result-object v6

    invoke-virtual {p1}, Lil/m;->b()Lam/e;

    move-result-object p1

    invoke-virtual {v3, v6}, Lam/e;->r(Lam/e;)V

    iget-object v7, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v7}, Lbm/i;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lam/e;->u(I)[B

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v7}, Lbm/i;->l()I

    move-result v7

    sub-int v7, v0, v7

    invoke-virtual {v3, v7}, Lam/e;->u(I)[B

    move-result-object v7

    iget-object v8, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v8}, Lbm/i;->l()I

    move-result v8

    array-length v10, v7

    invoke-static {v7, v9, v1, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v6}, Lam/e;->z()V

    invoke-virtual {p1}, Lam/e;->z()V

    iget-object v7, p0, Lil/f;->a:Lbm/i;

    instance-of v7, v7, Lbm/h;

    if-eqz v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    iget-object v7, p1, Lam/e;->a:[S

    add-int/lit8 v8, v2, -0x1

    aget-short v8, v7, v8

    aget-short v10, v7, v2

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x3

    int-to-short v8, v8

    aput-short v8, v7, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lam/e;->a:[S

    aget-short v7, v2, v9

    mul-int/lit8 v7, v7, 0x3

    neg-int v7, v7

    int-to-short v7, v7

    aput-short v7, v2, v9

    goto :goto_2

    :cond_1
    move v7, v9

    :goto_1
    if-ge v7, v2, :cond_2

    iget-object v8, p1, Lam/e;->a:[S

    aget-short v10, v8, v7

    mul-int/lit8 v10, v10, 0x3

    int-to-short v10, v10

    aput-short v10, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v3, p1, v6}, Lam/e;->m(Lam/e;Lam/e;)V

    invoke-virtual {v4, v3}, Lam/e;->k(Lam/e;)V

    invoke-virtual {v5, v4, v6}, Lam/e;->m(Lam/e;Lam/e;)V

    invoke-virtual {v3, v5, v6}, Lam/e;->w(Lam/e;Lam/e;)V

    iget-object v2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v2}, Lbm/i;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lam/e;->x(I)[B

    move-result-object v0

    iget-object v2, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {v2}, Lbm/i;->l()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    array-length v6, v0

    invoke-static {v0, v9, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5, v4, p1}, Lam/e;->m(Lam/e;Lam/e;)V

    invoke-virtual {v3, v5, p1}, Lam/e;->m(Lam/e;Lam/e;)V

    iget-object p1, p0, Lil/f;->a:Lbm/i;

    invoke-virtual {p1}, Lbm/i;->i()I

    move-result p1

    invoke-virtual {v3, p1}, Lam/e;->o(I)[B

    move-result-object p1

    new-instance v0, Lil/l;

    invoke-direct {v0, p1, v1}, Lil/l;-><init>([B[B)V

    return-object v0
.end method
