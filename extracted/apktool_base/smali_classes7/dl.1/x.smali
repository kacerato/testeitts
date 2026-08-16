.class public Ldl/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldl/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldl/b;

    invoke-direct {v0}, Ldl/b;-><init>()V

    iput-object v0, p0, Ldl/x;->a:Ldl/b;

    return-void
.end method


# virtual methods
.method public a(Ldl/p;Ldl/g;Ldl/g;)I
    .locals 4

    iget-object v0, p0, Ldl/x;->a:Ldl/b;

    iget-object v1, v0, Ldl/b;->g:Ldl/g;

    invoke-virtual {v0, p2, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldl/b;->q(Ldl/g;)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Ldl/x;->a:Ldl/b;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    iget-object v3, p0, Ldl/x;->a:Ldl/b;

    iget-object v3, v3, Ldl/b;->f:Ldl/g;

    invoke-virtual {v1, v2, v3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    xor-int/lit8 v1, v0, 0x3f

    rsub-int/lit8 v2, v0, 0x3f

    ushr-int/lit8 v2, v2, 0x1f

    neg-int v2, v2

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Ldl/x;->a:Ldl/b;

    invoke-virtual {v1, p2, p3}, Ldl/b;->e(Ldl/g;Ldl/g;)J

    move-result-wide p2

    const/4 v1, 0x1

    shl-long/2addr p2, v1

    const-wide/16 v1, 0x1

    sub-long/2addr p2, v1

    ushr-long/2addr p2, v0

    const/16 v0, 0x40

    :cond_0
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1}, Ldl/p;->d()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    ushr-long v2, p2, v0

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    if-gtz v0, :cond_0

    :cond_1
    ushr-int/lit8 p1, v1, 0x1f

    return p1
.end method

.method public b(Ldl/p;)I
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x36

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {p1}, Ldl/p;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Ldl/p;->d()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    long-to-int v5, v3

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/16 v7, 0x18

    ushr-long v7, v3, v7

    long-to-int v7, v7

    and-int/2addr v6, v7

    const/16 v7, 0x30

    ushr-long/2addr v3, v7

    long-to-int v3, v3

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v3

    move v3, v0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v4, v0, 0x2

    aget v4, v2, v4

    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    aget v8, v2, v0

    sub-int v4, v5, v4

    ushr-int/lit8 v4, v4, 0x1f

    sub-int v7, v6, v7

    sub-int/2addr v7, v4

    ushr-int/lit8 v4, v7, 0x1f

    sub-int v7, p1, v8

    sub-int/2addr v7, v4

    ushr-int/lit8 v4, v7, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return v3

    :array_0
    .array-data 4
        0xa3f7f4
        0x2ed3ac
        0x391802
        0x54d32b
        0x181f3f
        0x7ddb82
        0x227dcd
        0xd09348
        0x29c1ff
        0xad175
        0x4377c7
        0x994ae4
        0x29584
        0x6caef3
        0x3f1f6f
        0x774a
        0xc754ed
        0x74bd5f
        0x1024
        0xdd542b
        0x776ae4
        0x1a1
        0xffdc65
        0xad63da
        0x1f
        0x80d88a
        0x7b6428
        0x1
        0xc3fdb2
        0x40c69
        0x0
        0x12cf24
        0xd031fb
        0x0
        0x949f
        0x8b091f
        0x0
        0x366
        0x5da998
        0x0
        0xe
        0xbf6ebb
        0x0
        0x0
        0x2f5d7e
        0x0
        0x0
        0x7098
        0x0
        0x0
        0xc6
        0x0
        0x0
        0x1
    .end array-data
.end method

.method public c(Ldl/w;Ldl/g;Ldl/g;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ldl/x;->d(Ldl/w;Ldl/g;Ldl/g;)I

    move-result p1

    return p1
.end method

.method public d(Ldl/w;Ldl/g;Ldl/g;)I
    .locals 8

    iget-object v0, p0, Ldl/x;->a:Ldl/b;

    invoke-virtual {v0, p2}, Ldl/b;->f(Ldl/g;)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Ldl/x;->a:Ldl/b;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    iget-object v1, p0, Ldl/x;->a:Ldl/b;

    invoke-virtual {v1, p3}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/x;->a:Ldl/b;

    iget-object v3, p1, Ldl/w;->a:Ldl/g;

    invoke-virtual {v2, p3, v3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p3

    :cond_0
    iget-object v2, p1, Ldl/w;->b:Ldl/p;

    invoke-virtual {p0, v2}, Ldl/x;->b(Ldl/p;)I

    move-result v2

    iget-object v3, p1, Ldl/w;->b:Ldl/p;

    invoke-virtual {v3}, Ldl/p;->d()B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    iget-object v4, p0, Ldl/x;->a:Ldl/b;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ldl/b;->l(J)Ldl/g;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v5

    invoke-virtual {v4, v5}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v5, p0, Ldl/x;->a:Ldl/b;

    mul-int/2addr v2, v2

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ldl/b;->l(J)Ldl/g;

    move-result-object v2

    iget-object v6, p0, Ldl/x;->a:Ldl/b;

    iget-object v6, v6, Ldl/b;->c:Ldl/g;

    invoke-virtual {v5, v2, v6}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v4, p1, Ldl/w;->b:Ldl/p;

    invoke-virtual {p0, v4, v2, p3}, Ldl/x;->a(Ldl/p;Ldl/g;Ldl/g;)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/2addr v0, v3

    return v0
.end method
