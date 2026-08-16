.class public LLi/s;
.super LLi/D;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LLi/D;-><init>()V

    return-void
.end method

.method public static e(BI)Z
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static f([B[B[B)[B
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    move v3, v0

    move v4, v3

    move v5, v4

    :goto_1
    if-eq v3, v2, :cond_1

    mul-int/lit8 v6, v3, 0x4

    invoke-static {p0, v6}, Lorg/bouncycastle/util/p;->r([BI)I

    move-result v6

    aget-byte v7, p1, v1

    invoke-static {v7, v3}, LLi/s;->e(BI)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/2addr v4, v6

    goto :goto_2

    :cond_0
    add-int/2addr v5, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v3, v2, [B

    invoke-static {v4, v3, v0}, Lorg/bouncycastle/util/p;->m(I[BI)V

    const/4 v4, 0x4

    invoke-static {v5, v3, v4}, Lorg/bouncycastle/util/p;->m(I[BI)V

    new-instance v4, LTi/q;

    new-instance v5, LLi/C;

    invoke-direct {v5}, LLi/C;-><init>()V

    invoke-direct {v4, v5}, LTi/q;-><init>(LBi/f;)V

    new-instance v5, LXi/w0;

    new-instance v6, LXi/y0;

    new-instance v7, LXi/o0;

    invoke-direct {v7, p0}, LXi/o0;-><init>([B)V

    invoke-direct {v6, v7, p2}, LXi/y0;-><init>(LBi/k;[B)V

    invoke-direct {v5, v6, v3}, LXi/w0;-><init>(LBi/k;[B)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3, v5}, LTi/q;->a(ZLBi/k;)V

    invoke-virtual {v4, p0, v0, p0, v0}, LTi/q;->g([BI[BI)I

    invoke-virtual {v4, p0, v2, p0, v2}, LTi/q;->g([BI[BI)I

    const/16 v2, 0x10

    invoke-virtual {v4, p0, v2, p0, v2}, LTi/q;->g([BI[BI)I

    const/16 v2, 0x18

    invoke-virtual {v4, p0, v2, p0, v2}, LTi/q;->g([BI[BI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 4

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    :cond_0
    check-cast p2, LXi/A0;

    invoke-virtual {p2}, LXi/A0;->a()LBi/k;

    move-result-object v0

    instance-of v0, v0, LXi/y0;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, LXi/A0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/y0;

    invoke-virtual {v0}, LXi/y0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/o0;

    invoke-virtual {p2}, LXi/A0;->a()LBi/k;

    move-result-object v1

    check-cast v1, LXi/y0;

    invoke-virtual {v1}, LXi/y0;->b()[B

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, LXi/A0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/o0;

    const/4 v1, 0x0

    :goto_0
    new-instance v2, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v0

    invoke-virtual {p2}, LXi/A0;->b()[B

    move-result-object v3

    invoke-static {v0, v3, v1}, LLi/s;->f([B[B[B)[B

    move-result-object v0

    invoke-direct {v2, v0}, LXi/o0;-><init>([B)V

    new-instance v0, LXi/A0;

    if-eqz v1, :cond_2

    new-instance v3, LXi/y0;

    invoke-direct {v3, v2, v1}, LXi/y0;-><init>(LBi/k;[B)V

    invoke-virtual {p2}, LXi/A0;->b()[B

    move-result-object p2

    invoke-direct {v0, v3, p2}, LXi/A0;-><init>(LBi/k;[B)V

    :goto_1
    invoke-super {p0, p1, v0}, LLi/D;->a(ZLBi/k;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, LXi/A0;->b()[B

    move-result-object p2

    invoke-direct {v0, v2, p2}, LXi/A0;-><init>(LBi/k;[B)V

    goto :goto_1

    :goto_2
    return-void
.end method
