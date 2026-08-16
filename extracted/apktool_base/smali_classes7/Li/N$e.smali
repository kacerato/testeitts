.class public abstract LLi/N$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LLi/N$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public final a:I

.field public b:[S

.field public c:[S

.field public d:[S

.field public e:[S

.field public f:[S

.field public final g:[I

.field public h:[S

.field public i:[S

.field public j:[S

.field public final synthetic k:LLi/N;


# direct methods
.method public constructor <init>(LLi/N;)V
    .locals 2

    iput-object p1, p0, LLi/N$e;->k:LLi/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, LLi/N$e;->a:I

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LLi/N$e;->g:[I

    const/16 v0, 0x19

    new-array v1, v0, [S

    iput-object v1, p0, LLi/N$e;->h:[S

    new-array v0, v0, [S

    iput-object v0, p0, LLi/N$e;->i:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, LLi/N$e;->j:[S

    const/16 v0, 0x90

    invoke-static {p1, v0}, LLi/N;->m(LLi/N;I)I

    invoke-static {p1}, LLi/N;->l(LLi/N;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, LLi/N;->o(LLi/N;I)I

    return-void

    :array_0
    .array-data 4
        0x1
        0x8082
        0x808a
        0x8000
        0x808b
        0x1
        0x8081
        0x8009
        0x8a
        0x88
        0x8009
        0xa
        0x808b
        0x8b
        0x8089
        0x8003
        0x8002
        0x80
        0x800a
        0xa
    .end array-data
.end method


# virtual methods
.method public a([BII[BII)V
    .locals 3

    :goto_0
    iget-object p6, p0, LLi/N$e;->k:LLi/N;

    invoke-static {p6}, LLi/N;->n(LLi/N;)I

    move-result p6

    const/4 v0, 0x0

    if-lt p3, p6, :cond_1

    :goto_1
    iget-object p6, p0, LLi/N$e;->k:LLi/N;

    invoke-static {p6}, LLi/N;->n(LLi/N;)I

    move-result p6

    if-ge v0, p6, :cond_0

    add-int/lit8 p6, p5, 0x1

    iget-object v1, p0, LLi/N$e;->h:[S

    shr-int/lit8 v2, v0, 0x1

    aget-short v1, v1, v2

    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x3

    ushr-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, p6

    move p2, v2

    goto :goto_1

    :cond_0
    iget-object p6, p0, LLi/N$e;->k:LLi/N;

    invoke-static {p6}, LLi/N;->n(LLi/N;)I

    move-result p6

    sub-int/2addr p3, p6

    iget-object p6, p0, LLi/N$e;->h:[S

    iget-object v0, p0, LLi/N$e;->i:[S

    iget-object v1, p0, LLi/N$e;->j:[S

    invoke-virtual {p0, p6, v0, v1}, LLi/N$e;->f([S[S[S)V

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v0, p3, :cond_2

    add-int/lit8 p6, p5, 0x1

    iget-object v1, p0, LLi/N$e;->h:[S

    shr-int/lit8 v2, v0, 0x1

    aget-short v1, v1, v2

    and-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x3

    ushr-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, p6

    move p2, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public b([BI[BI[BI)V
    .locals 10

    move-object v7, p0

    move-object v8, p5

    move/from16 v9, p6

    const/16 v0, 0x19

    new-array v0, v0, [S

    iput-object v0, v7, LLi/N$e;->h:[S

    iget-object v1, v7, LLi/N$e;->f:[S

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, LLi/N$e;->b:[S

    iget-object v1, v7, LLi/N$e;->h:[S

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v7, LLi/N$e;->h:[S

    iget-object v1, v7, LLi/N$e;->i:[S

    iget-object v2, v7, LLi/N$e;->j:[S

    invoke-virtual {p0, v0, v1, v2}, LLi/N$e;->e([S[S[S)V

    iget-object v1, v7, LLi/N$e;->h:[S

    iget-object v4, v7, LLi/N$e;->i:[S

    iget-object v5, v7, LLi/N$e;->j:[S

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, LLi/N$e;->c([S[BI[S[S)V

    iget-object v1, v7, LLi/N$e;->h:[S

    const/16 v0, 0x18

    aget-short v2, v1, v0

    xor-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    aput-short v2, v1, v0

    iget-object v4, v7, LLi/N$e;->i:[S

    iget-object v5, v7, LLi/N$e;->j:[S

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, LLi/N$e;->c([S[BI[S[S)V

    iget-object v0, v7, LLi/N$e;->h:[S

    invoke-virtual {p0, v0, p5, v9}, LLi/N$e;->p([S[BI)V

    iget-object v1, v7, LLi/N$e;->c:[S

    iget-object v4, v7, LLi/N$e;->h:[S

    const/16 v5, 0x10

    iget-object v6, v7, LLi/N$e;->j:[S

    const/16 v3, 0x10

    move-object v0, p0

    move-object v2, p5

    invoke-virtual/range {v0 .. v6}, LLi/N$e;->j([S[BI[SI[S)V

    iget-object v0, v7, LLi/N$e;->h:[S

    iget-object v1, v7, LLi/N$e;->i:[S

    iget-object v2, v7, LLi/N$e;->j:[S

    invoke-virtual {p0, v0, v1, v2}, LLi/N$e;->e([S[S[S)V

    iget-object v0, v7, LLi/N$e;->h:[S

    invoke-virtual {p0, v0, p5, v9}, LLi/N$e;->p([S[BI)V

    return-void
.end method

.method public c([S[BI[S[S)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v2}, LLi/N;->n(LLi/N;)I

    move-result v2

    if-le p3, v2, :cond_0

    iget-object v2, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v2}, LLi/N;->n(LLi/N;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, p1, v2}, LLi/N$e;->i([B[SI)V

    iget-object v2, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v2}, LLi/N;->n(LLi/N;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v2}, LLi/N;->n(LLi/N;)I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p4, p5}, LLi/N$e;->e([S[S[S)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v2}, LLi/N;->n(LLi/N;)I

    move-result v2

    const/16 v3, 0x80

    if-ne p3, v2, :cond_1

    iget-object p3, p0, LLi/N$e;->k:LLi/N;

    invoke-static {p3}, LLi/N;->n(LLi/N;)I

    move-result p3

    shr-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, LLi/N$e;->i([B[SI)V

    invoke-virtual {p0, p1, p4, p5}, LLi/N$e;->e([S[S[S)V

    aget-short p2, p1, v0

    xor-int/2addr p2, v3

    int-to-short p2, p2

    aput-short p2, p1, v0

    :goto_1
    invoke-virtual {p0, p1, p4, p5}, LLi/N$e;->e([S[S[S)V

    goto :goto_3

    :cond_1
    :goto_2
    if-ge v0, p3, :cond_2

    shr-int/lit8 v2, v0, 0x1

    aget-short v4, p1, v2

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v6, v0, 0x1

    shl-int/lit8 v6, v6, 0x3

    shl-int/2addr v1, v6

    xor-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_2

    :cond_2
    shr-int/lit8 p2, p3, 0x1

    aget-short v0, p1, p2

    and-int/lit8 p3, p3, 0x1

    shl-int/lit8 p3, p3, 0x3

    shl-int p3, v3, p3

    xor-int/2addr p3, v0

    int-to-short p3, p3

    aput-short p3, p1, p2

    goto :goto_1

    :goto_3
    return-void
.end method

.method public abstract d([S[S[S)V
.end method

.method public abstract e([S[S[S)V
.end method

.method public abstract f([S[S[S)V
.end method

.method public final g(SI)S
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x10

    ushr-int/2addr p1, p2

    xor-int/2addr p1, v0

    int-to-short p1, p1

    return p1
.end method

.method public final h([B[SI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i([B[SI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-short v1, p2, v0

    shl-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v0}, LLi/N;->q(LLi/N;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, LLi/N$e;->e:[S

    iget-object v0, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v0}, LLi/N;->q(LLi/N;)[B

    move-result-object v0

    iget-object v1, p0, LLi/N$e;->e:[S

    array-length v2, v1

    invoke-virtual {p0, v0, v1, v2}, LLi/N$e;->h([B[SI)V

    iget-object v0, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v0}, LLi/N;->p(LLi/N;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, LLi/N$e;->f:[S

    iget-object v0, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v0}, LLi/N;->p(LLi/N;)[B

    move-result-object v0

    iget-object v1, p0, LLi/N$e;->f:[S

    array-length v2, v1

    invoke-virtual {p0, v0, v1, v2}, LLi/N$e;->h([B[SI)V

    invoke-virtual {p0}, LLi/N$e;->reset()V

    return-void
.end method

.method public j([S[BI[SI[S)V
    .locals 7

    const/16 v0, 0x19

    new-array v1, v0, [S

    new-array v0, v0, [S

    iget-object v2, p0, LLi/N$e;->e:[S

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1, v0, p6}, LLi/N$e;->f([S[S[S)V

    move p1, v3

    :goto_0
    shl-int/lit8 v2, p3, 0x3

    add-int/lit8 v2, v2, -0x1

    if-ge p1, v2, :cond_0

    aget-short v2, v1, v3

    shr-int/lit8 v5, p1, 0x3

    aget-byte v5, p2, v5

    and-int/lit8 v6, p1, 0x7

    rsub-int/lit8 v6, v6, 0x7

    ushr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v2, v5

    int-to-short v2, v2

    aput-short v2, v1, v3

    invoke-virtual {p0, v1, v0, p6}, LLi/N$e;->d([S[S[S)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    aget-short p1, v1, v3

    add-int/lit8 p3, p3, -0x1

    aget-byte p2, p2, p3

    and-int/lit8 p2, p2, 0x1

    shl-int/lit8 p2, p2, 0x7

    xor-int/2addr p1, p2

    int-to-short p1, p1

    aput-short p1, v1, v3

    invoke-virtual {p0, v1, v0, p6}, LLi/N$e;->f([S[S[S)V

    const/16 p1, 0x18

    if-ne p5, p1, :cond_1

    const/16 v4, 0x11

    :cond_1
    invoke-static {v1, v3, p4, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public k([S[S)V
    .locals 3

    const/4 v0, 0x0

    aget-short v1, p1, v0

    const/4 v2, 0x5

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xa

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xf

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x14

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    const/4 v0, 0x1

    aget-short v1, p1, v0

    const/4 v2, 0x6

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xb

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x10

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x15

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    const/4 v0, 0x2

    aget-short v1, p1, v0

    const/4 v2, 0x7

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xc

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x11

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x16

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    const/4 v0, 0x3

    aget-short v1, p1, v0

    const/16 v2, 0x8

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xd

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x12

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x17

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    const/4 v0, 0x4

    aget-short v1, p1, v0

    const/16 v2, 0x9

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0xe

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x13

    aget-short v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x18

    aget-short p1, p1, v2

    xor-int/2addr p1, v1

    int-to-short p1, p1

    aput-short p1, p2, v0

    return-void
.end method

.method public l([S[S[S)V
    .locals 0

    invoke-virtual {p0, p1, p3}, LLi/N$e;->k([S[S)V

    invoke-virtual {p0, p1, p2, p3}, LLi/N$e;->o([S[S[S)V

    return-void
.end method

.method public m([S[S[S)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    invoke-virtual {p0, p2, p1, p3}, LLi/N$e;->q([S[S[S)V

    return-void
.end method

.method public n([S[S[S)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, LLi/N$e;->o([S[S[S)V

    return-void
.end method

.method public o([S[S[S)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, LLi/N$e;->m([S[S[S)V

    return-void
.end method

.method public final p([S[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    shl-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p3

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/util/p;->R(S[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q([S[S[S)V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-short v2, p3, v1

    const/4 v3, 0x1

    aget-short v4, p3, v3

    invoke-virtual {v0, v4, v3}, LLi/N$e;->g(SI)S

    move-result v4

    xor-int/2addr v2, v4

    int-to-short v2, v2

    const/4 v4, 0x0

    aget-short v5, p3, v4

    const/4 v6, 0x2

    aget-short v7, p3, v6

    invoke-virtual {v0, v7, v3}, LLi/N$e;->g(SI)S

    move-result v7

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aget-short v7, p3, v3

    const/4 v8, 0x3

    aget-short v9, p3, v8

    invoke-virtual {v0, v9, v3}, LLi/N$e;->g(SI)S

    move-result v9

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aget-short v9, p3, v6

    aget-short v10, p3, v1

    invoke-virtual {v0, v10, v3}, LLi/N$e;->g(SI)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aget-short v10, p3, v8

    aget-short v11, p3, v4

    invoke-virtual {v0, v11, v3}, LLi/N$e;->g(SI)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aget-short v11, p1, v4

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p1, v4

    const/4 v12, 0x6

    aget-short v13, p1, v12

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p1, v12

    const/16 v14, 0xc

    invoke-virtual {v0, v13, v14}, LLi/N$e;->g(SI)S

    move-result v13

    aget-short v15, p1, v14

    xor-int/2addr v15, v7

    int-to-short v15, v15

    aput-short v15, p1, v14

    const/16 v12, 0xb

    invoke-virtual {v0, v15, v12}, LLi/N$e;->g(SI)S

    move-result v15

    const/16 v16, 0x12

    aget-short v17, p1, v16

    xor-int v12, v17, v9

    int-to-short v12, v12

    aput-short v12, p1, v16

    const/4 v14, 0x5

    invoke-virtual {v0, v12, v14}, LLi/N$e;->g(SI)S

    move-result v12

    const/16 v19, 0x18

    aget-short v20, p1, v19

    xor-int v14, v20, v10

    int-to-short v14, v14

    aput-short v14, p1, v19

    const/16 v1, 0xe

    invoke-virtual {v0, v14, v1}, LLi/N$e;->g(SI)S

    move-result v14

    not-int v1, v13

    and-int/2addr v1, v15

    xor-int/2addr v1, v11

    iget-object v8, v0, LLi/N$e;->g:[I

    const/16 v23, 0x13

    aget v8, v8, v23

    xor-int/2addr v1, v8

    int-to-short v1, v1

    aput-short v1, p2, v4

    not-int v1, v15

    and-int/2addr v1, v12

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p2, v3

    not-int v1, v12

    and-int/2addr v1, v14

    xor-int/2addr v1, v15

    int-to-short v1, v1

    aput-short v1, p2, v6

    not-int v1, v14

    and-int/2addr v1, v11

    xor-int/2addr v1, v12

    int-to-short v1, v1

    const/4 v4, 0x3

    aput-short v1, p2, v4

    not-int v1, v11

    and-int/2addr v1, v13

    xor-int/2addr v1, v14

    int-to-short v1, v1

    const/4 v8, 0x4

    aput-short v1, p2, v8

    aget-short v1, p1, v4

    xor-int/2addr v1, v9

    int-to-short v1, v1

    aput-short v1, p1, v4

    const/16 v4, 0xc

    invoke-virtual {v0, v1, v4}, LLi/N$e;->g(SI)S

    move-result v1

    const/16 v4, 0x9

    aget-short v11, p1, v4

    xor-int/2addr v11, v10

    int-to-short v11, v11

    aput-short v11, p1, v4

    invoke-virtual {v0, v11, v8}, LLi/N$e;->g(SI)S

    move-result v11

    const/16 v8, 0xa

    aget-short v12, p1, v8

    xor-int/2addr v12, v2

    int-to-short v12, v12

    aput-short v12, p1, v8

    const/4 v13, 0x3

    invoke-virtual {v0, v12, v13}, LLi/N$e;->g(SI)S

    move-result v12

    const/16 v13, 0x10

    aget-short v14, p1, v13

    xor-int/2addr v14, v5

    int-to-short v14, v14

    aput-short v14, p1, v13

    const/16 v15, 0xd

    invoke-virtual {v0, v14, v15}, LLi/N$e;->g(SI)S

    move-result v14

    const/16 v22, 0x16

    aget-short v24, p1, v22

    xor-int v13, v24, v7

    int-to-short v13, v13

    aput-short v13, p1, v22

    invoke-virtual {v0, v13, v15}, LLi/N$e;->g(SI)S

    move-result v13

    not-int v8, v11

    and-int/2addr v8, v12

    xor-int/2addr v8, v1

    int-to-short v8, v8

    const/16 v21, 0x5

    aput-short v8, p2, v21

    not-int v8, v12

    and-int/2addr v8, v14

    xor-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v25, 0x6

    aput-short v8, p2, v25

    not-int v8, v14

    and-int/2addr v8, v13

    xor-int/2addr v8, v12

    int-to-short v8, v8

    const/4 v12, 0x7

    aput-short v8, p2, v12

    not-int v8, v13

    and-int/2addr v8, v1

    xor-int/2addr v8, v14

    int-to-short v8, v8

    const/16 v14, 0x8

    aput-short v8, p2, v14

    not-int v1, v1

    and-int/2addr v1, v11

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p2, v4

    aget-short v1, p1, v3

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p1, v3

    invoke-virtual {v0, v1, v3}, LLi/N$e;->g(SI)S

    move-result v1

    aget-short v3, p1, v12

    xor-int/2addr v3, v7

    int-to-short v3, v3

    aput-short v3, p1, v12

    const/4 v8, 0x6

    invoke-virtual {v0, v3, v8}, LLi/N$e;->g(SI)S

    move-result v3

    aget-short v8, p1, v15

    xor-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, p1, v15

    invoke-virtual {v0, v8, v4}, LLi/N$e;->g(SI)S

    move-result v8

    aget-short v11, p1, v23

    xor-int/2addr v11, v10

    int-to-short v11, v11

    aput-short v11, p1, v23

    invoke-virtual {v0, v11, v14}, LLi/N$e;->g(SI)S

    move-result v11

    const/16 v13, 0x14

    aget-short v25, p1, v13

    xor-int v4, v25, v2

    int-to-short v4, v4

    aput-short v4, p1, v13

    invoke-virtual {v0, v4, v6}, LLi/N$e;->g(SI)S

    move-result v4

    not-int v13, v3

    and-int/2addr v13, v8

    xor-int/2addr v13, v1

    int-to-short v13, v13

    const/16 v24, 0xa

    aput-short v13, p2, v24

    not-int v13, v8

    and-int/2addr v13, v11

    xor-int/2addr v13, v3

    int-to-short v13, v13

    const/16 v18, 0xb

    aput-short v13, p2, v18

    not-int v13, v11

    and-int/2addr v13, v4

    xor-int/2addr v8, v13

    int-to-short v8, v8

    const/16 v13, 0xc

    aput-short v8, p2, v13

    not-int v8, v4

    and-int/2addr v8, v1

    xor-int/2addr v8, v11

    int-to-short v8, v8

    aput-short v8, p2, v15

    not-int v1, v1

    and-int/2addr v1, v3

    xor-int/2addr v1, v4

    int-to-short v1, v1

    const/16 v3, 0xe

    aput-short v1, p2, v3

    const/4 v1, 0x4

    aget-short v3, p1, v1

    xor-int/2addr v3, v10

    int-to-short v3, v3

    aput-short v3, p1, v1

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, LLi/N$e;->g(SI)S

    move-result v3

    const/4 v8, 0x5

    aget-short v11, p1, v8

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p1, v8

    invoke-virtual {v0, v11, v1}, LLi/N$e;->g(SI)S

    move-result v1

    aget-short v8, p1, v4

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p1, v4

    const/16 v4, 0xa

    invoke-virtual {v0, v8, v4}, LLi/N$e;->g(SI)S

    move-result v4

    const/16 v8, 0x11

    aget-short v11, p1, v8

    xor-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, p1, v8

    const/16 v8, 0xf

    invoke-virtual {v0, v11, v8}, LLi/N$e;->g(SI)S

    move-result v11

    const/16 v13, 0x17

    aget-short v15, p1, v13

    xor-int/2addr v15, v9

    int-to-short v15, v15

    aput-short v15, p1, v13

    invoke-virtual {v0, v15, v14}, LLi/N$e;->g(SI)S

    move-result v13

    not-int v15, v1

    and-int/2addr v15, v4

    xor-int/2addr v15, v3

    int-to-short v15, v15

    aput-short v15, p2, v8

    not-int v15, v4

    and-int/2addr v15, v11

    xor-int/2addr v15, v1

    int-to-short v15, v15

    const/16 v17, 0x10

    aput-short v15, p2, v17

    not-int v15, v11

    and-int/2addr v15, v13

    xor-int/2addr v4, v15

    int-to-short v4, v4

    const/16 v15, 0x11

    aput-short v4, p2, v15

    not-int v4, v13

    and-int/2addr v4, v3

    xor-int/2addr v4, v11

    int-to-short v4, v4

    aput-short v4, p2, v16

    not-int v3, v3

    and-int/2addr v1, v3

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p2, v23

    aget-short v1, p1, v6

    xor-int/2addr v1, v7

    int-to-short v1, v1

    aput-short v1, p1, v6

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v3}, LLi/N$e;->g(SI)S

    move-result v1

    aget-short v4, p1, v14

    xor-int/2addr v4, v9

    int-to-short v4, v4

    aput-short v4, p1, v14

    invoke-virtual {v0, v4, v12}, LLi/N$e;->g(SI)S

    move-result v4

    aget-short v7, p1, v3

    xor-int/2addr v7, v10

    int-to-short v7, v7

    aput-short v7, p1, v3

    invoke-virtual {v0, v7, v12}, LLi/N$e;->g(SI)S

    move-result v3

    aget-short v7, p1, v8

    xor-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, p1, v8

    const/16 v7, 0x9

    invoke-virtual {v0, v2, v7}, LLi/N$e;->g(SI)S

    move-result v2

    const/16 v7, 0x15

    aget-short v8, p1, v7

    xor-int/2addr v5, v8

    int-to-short v5, v5

    aput-short v5, p1, v7

    invoke-virtual {v0, v5, v6}, LLi/N$e;->g(SI)S

    move-result v5

    not-int v6, v4

    and-int/2addr v6, v3

    xor-int/2addr v6, v1

    int-to-short v6, v6

    const/16 v7, 0x14

    aput-short v6, p2, v7

    not-int v6, v3

    and-int/2addr v6, v2

    xor-int/2addr v6, v4

    int-to-short v6, v6

    const/16 v7, 0x15

    aput-short v6, p2, v7

    not-int v6, v2

    and-int/2addr v6, v5

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, p2, v22

    not-int v3, v5

    and-int/2addr v3, v1

    xor-int/2addr v2, v3

    int-to-short v2, v2

    const/16 v3, 0x17

    aput-short v2, p2, v3

    not-int v1, v1

    and-int/2addr v1, v4

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p2, v19

    return-void
.end method

.method public r(I[S[S[S)V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x4

    aget-short v2, p4, v1

    const/4 v3, 0x1

    aget-short v4, p4, v3

    invoke-virtual {v0, v4, v3}, LLi/N$e;->g(SI)S

    move-result v4

    xor-int/2addr v2, v4

    int-to-short v2, v2

    const/4 v4, 0x0

    aget-short v5, p4, v4

    const/4 v6, 0x2

    aget-short v7, p4, v6

    invoke-virtual {v0, v7, v3}, LLi/N$e;->g(SI)S

    move-result v7

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aget-short v7, p4, v3

    const/4 v8, 0x3

    aget-short v9, p4, v8

    invoke-virtual {v0, v9, v3}, LLi/N$e;->g(SI)S

    move-result v9

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aget-short v9, p4, v6

    aget-short v10, p4, v1

    invoke-virtual {v0, v10, v3}, LLi/N$e;->g(SI)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aget-short v10, p4, v8

    aget-short v11, p4, v4

    invoke-virtual {v0, v11, v3}, LLi/N$e;->g(SI)S

    move-result v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aget-short v11, p2, v4

    xor-int/2addr v11, v2

    int-to-short v11, v11

    aput-short v11, p2, v4

    const/4 v12, 0x6

    aget-short v13, p2, v12

    xor-int/2addr v13, v5

    int-to-short v13, v13

    aput-short v13, p2, v12

    const/16 v14, 0xc

    invoke-virtual {v0, v13, v14}, LLi/N$e;->g(SI)S

    move-result v13

    aget-short v15, p2, v14

    xor-int/2addr v15, v7

    int-to-short v15, v15

    aput-short v15, p2, v14

    const/16 v12, 0xb

    invoke-virtual {v0, v15, v12}, LLi/N$e;->g(SI)S

    move-result v15

    const/16 v17, 0x12

    aget-short v18, p2, v17

    xor-int v12, v18, v9

    int-to-short v12, v12

    aput-short v12, p2, v17

    const/4 v14, 0x5

    invoke-virtual {v0, v12, v14}, LLi/N$e;->g(SI)S

    move-result v12

    const/16 v20, 0x18

    aget-short v21, p2, v20

    xor-int v14, v21, v10

    int-to-short v14, v14

    aput-short v14, p2, v20

    const/16 v1, 0xe

    invoke-virtual {v0, v14, v1}, LLi/N$e;->g(SI)S

    move-result v14

    not-int v1, v13

    and-int/2addr v1, v15

    xor-int/2addr v1, v11

    iget-object v8, v0, LLi/N$e;->g:[I

    aget v8, v8, p1

    xor-int/2addr v1, v8

    int-to-short v1, v1

    aput-short v1, p3, v4

    aput-short v1, p4, v4

    not-int v1, v15

    and-int/2addr v1, v12

    xor-int/2addr v1, v13

    int-to-short v1, v1

    aput-short v1, p3, v3

    aput-short v1, p4, v3

    not-int v1, v12

    and-int/2addr v1, v14

    xor-int/2addr v1, v15

    int-to-short v1, v1

    aput-short v1, p3, v6

    aput-short v1, p4, v6

    not-int v1, v14

    and-int/2addr v1, v11

    xor-int/2addr v1, v12

    int-to-short v1, v1

    const/4 v8, 0x3

    aput-short v1, p3, v8

    aput-short v1, p4, v8

    not-int v1, v11

    and-int/2addr v1, v13

    xor-int/2addr v1, v14

    int-to-short v1, v1

    const/4 v11, 0x4

    aput-short v1, p3, v11

    aput-short v1, p4, v11

    aget-short v1, p2, v8

    xor-int/2addr v1, v9

    int-to-short v1, v1

    aput-short v1, p2, v8

    const/16 v8, 0xc

    invoke-virtual {v0, v1, v8}, LLi/N$e;->g(SI)S

    move-result v1

    const/16 v8, 0x9

    aget-short v12, p2, v8

    xor-int/2addr v12, v10

    int-to-short v12, v12

    aput-short v12, p2, v8

    invoke-virtual {v0, v12, v11}, LLi/N$e;->g(SI)S

    move-result v12

    const/16 v11, 0xa

    aget-short v13, p2, v11

    xor-int/2addr v13, v2

    int-to-short v13, v13

    aput-short v13, p2, v11

    const/4 v14, 0x3

    invoke-virtual {v0, v13, v14}, LLi/N$e;->g(SI)S

    move-result v13

    const/16 v14, 0x10

    aget-short v15, p2, v14

    xor-int/2addr v15, v5

    int-to-short v15, v15

    aput-short v15, p2, v14

    const/16 v14, 0xd

    invoke-virtual {v0, v15, v14}, LLi/N$e;->g(SI)S

    move-result v15

    const/16 v24, 0x16

    aget-short v25, p2, v24

    xor-int v11, v25, v7

    int-to-short v11, v11

    aput-short v11, p2, v24

    invoke-virtual {v0, v11, v14}, LLi/N$e;->g(SI)S

    move-result v11

    not-int v14, v12

    and-int/2addr v14, v13

    xor-int/2addr v14, v1

    int-to-short v14, v14

    const/16 v22, 0x5

    aput-short v14, p3, v22

    aget-short v27, p4, v4

    xor-int v14, v27, v14

    int-to-short v14, v14

    aput-short v14, p4, v4

    not-int v14, v13

    and-int/2addr v14, v15

    xor-int/2addr v14, v12

    int-to-short v14, v14

    const/16 v16, 0x6

    aput-short v14, p3, v16

    aget-short v27, p4, v3

    xor-int v14, v27, v14

    int-to-short v14, v14

    aput-short v14, p4, v3

    not-int v14, v15

    and-int/2addr v14, v11

    xor-int/2addr v13, v14

    int-to-short v13, v13

    const/4 v14, 0x7

    aput-short v13, p3, v14

    aget-short v27, p4, v6

    xor-int v13, v27, v13

    int-to-short v13, v13

    aput-short v13, p4, v6

    not-int v13, v11

    and-int/2addr v13, v1

    xor-int/2addr v13, v15

    int-to-short v13, v13

    const/16 v15, 0x8

    aput-short v13, p3, v15

    const/16 v23, 0x3

    aget-short v27, p4, v23

    xor-int v13, v27, v13

    int-to-short v13, v13

    aput-short v13, p4, v23

    not-int v1, v1

    and-int/2addr v1, v12

    xor-int/2addr v1, v11

    int-to-short v1, v1

    aput-short v1, p3, v8

    const/4 v11, 0x4

    aget-short v12, p4, v11

    xor-int/2addr v1, v12

    int-to-short v1, v1

    aput-short v1, p4, v11

    aget-short v1, p2, v3

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p2, v3

    invoke-virtual {v0, v1, v3}, LLi/N$e;->g(SI)S

    move-result v1

    aget-short v11, p2, v14

    xor-int/2addr v11, v7

    int-to-short v11, v11

    aput-short v11, p2, v14

    const/4 v12, 0x6

    invoke-virtual {v0, v11, v12}, LLi/N$e;->g(SI)S

    move-result v11

    const/16 v12, 0xd

    aget-short v13, p2, v12

    xor-int/2addr v13, v9

    int-to-short v13, v13

    aput-short v13, p2, v12

    invoke-virtual {v0, v13, v8}, LLi/N$e;->g(SI)S

    move-result v12

    const/16 v13, 0x13

    aget-short v16, p2, v13

    xor-int v8, v16, v10

    int-to-short v8, v8

    aput-short v8, p2, v13

    invoke-virtual {v0, v8, v15}, LLi/N$e;->g(SI)S

    move-result v8

    const/16 v16, 0x14

    aget-short v28, p2, v16

    xor-int v14, v28, v2

    int-to-short v14, v14

    aput-short v14, p2, v16

    invoke-virtual {v0, v14, v6}, LLi/N$e;->g(SI)S

    move-result v14

    not-int v13, v11

    and-int/2addr v13, v12

    xor-int/2addr v13, v1

    int-to-short v13, v13

    const/16 v26, 0xa

    aput-short v13, p3, v26

    aget-short v29, p4, v4

    xor-int v13, v29, v13

    int-to-short v13, v13

    aput-short v13, p4, v4

    not-int v13, v12

    and-int/2addr v13, v8

    xor-int/2addr v13, v11

    int-to-short v13, v13

    const/16 v19, 0xb

    aput-short v13, p3, v19

    aget-short v29, p4, v3

    xor-int v13, v29, v13

    int-to-short v13, v13

    aput-short v13, p4, v3

    not-int v13, v8

    and-int/2addr v13, v14

    xor-int/2addr v12, v13

    int-to-short v12, v12

    const/16 v13, 0xc

    aput-short v12, p3, v13

    aget-short v13, p4, v6

    xor-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, p4, v6

    not-int v12, v14

    and-int/2addr v12, v1

    xor-int/2addr v8, v12

    int-to-short v8, v8

    const/16 v12, 0xd

    aput-short v8, p3, v12

    const/4 v12, 0x3

    aget-short v13, p4, v12

    xor-int/2addr v8, v13

    int-to-short v8, v8

    aput-short v8, p4, v12

    not-int v1, v1

    and-int/2addr v1, v11

    xor-int/2addr v1, v14

    int-to-short v1, v1

    const/16 v8, 0xe

    aput-short v1, p3, v8

    const/4 v8, 0x4

    aget-short v11, p4, v8

    xor-int/2addr v1, v11

    int-to-short v1, v1

    aput-short v1, p4, v8

    aget-short v1, p2, v8

    xor-int/2addr v1, v10

    int-to-short v1, v1

    aput-short v1, p2, v8

    const/16 v11, 0xb

    invoke-virtual {v0, v1, v11}, LLi/N$e;->g(SI)S

    move-result v1

    const/4 v12, 0x5

    aget-short v13, p2, v12

    xor-int/2addr v13, v2

    int-to-short v13, v13

    aput-short v13, p2, v12

    invoke-virtual {v0, v13, v8}, LLi/N$e;->g(SI)S

    move-result v12

    aget-short v8, p2, v11

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p2, v11

    const/16 v11, 0xa

    invoke-virtual {v0, v8, v11}, LLi/N$e;->g(SI)S

    move-result v8

    const/16 v11, 0x11

    aget-short v13, p2, v11

    xor-int/2addr v13, v7

    int-to-short v13, v13

    aput-short v13, p2, v11

    const/16 v11, 0xf

    invoke-virtual {v0, v13, v11}, LLi/N$e;->g(SI)S

    move-result v13

    const/16 v14, 0x17

    aget-short v18, p2, v14

    xor-int v6, v18, v9

    int-to-short v6, v6

    aput-short v6, p2, v14

    invoke-virtual {v0, v6, v15}, LLi/N$e;->g(SI)S

    move-result v6

    not-int v14, v12

    and-int/2addr v14, v8

    xor-int/2addr v14, v1

    int-to-short v14, v14

    aput-short v14, p3, v11

    aget-short v18, p4, v4

    xor-int v14, v18, v14

    int-to-short v14, v14

    aput-short v14, p4, v4

    not-int v14, v8

    and-int/2addr v14, v13

    xor-int/2addr v14, v12

    int-to-short v14, v14

    const/16 v18, 0x10

    aput-short v14, p3, v18

    aget-short v18, p4, v3

    xor-int v14, v18, v14

    int-to-short v14, v14

    aput-short v14, p4, v3

    not-int v14, v13

    and-int/2addr v14, v6

    xor-int/2addr v8, v14

    int-to-short v8, v8

    const/16 v14, 0x11

    aput-short v8, p3, v14

    const/4 v14, 0x2

    aget-short v18, p4, v14

    xor-int v8, v18, v8

    int-to-short v8, v8

    aput-short v8, p4, v14

    not-int v8, v6

    and-int/2addr v8, v1

    xor-int/2addr v8, v13

    int-to-short v8, v8

    aput-short v8, p3, v17

    const/4 v13, 0x3

    aget-short v14, p4, v13

    xor-int/2addr v8, v14

    int-to-short v8, v8

    aput-short v8, p4, v13

    not-int v1, v1

    and-int/2addr v1, v12

    xor-int/2addr v1, v6

    int-to-short v1, v1

    const/16 v6, 0x13

    aput-short v1, p3, v6

    const/4 v6, 0x4

    aget-short v8, p4, v6

    xor-int/2addr v1, v8

    int-to-short v1, v1

    aput-short v1, p4, v6

    const/4 v1, 0x2

    aget-short v6, p2, v1

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p2, v1

    const/16 v1, 0xe

    invoke-virtual {v0, v6, v1}, LLi/N$e;->g(SI)S

    move-result v6

    aget-short v7, p2, v15

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, p2, v15

    const/4 v8, 0x7

    invoke-virtual {v0, v7, v8}, LLi/N$e;->g(SI)S

    move-result v7

    aget-short v9, p2, v1

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, p2, v1

    invoke-virtual {v0, v9, v8}, LLi/N$e;->g(SI)S

    move-result v1

    aget-short v8, p2, v11

    xor-int/2addr v2, v8

    int-to-short v2, v2

    aput-short v2, p2, v11

    const/16 v8, 0x9

    invoke-virtual {v0, v2, v8}, LLi/N$e;->g(SI)S

    move-result v2

    const/16 v8, 0x15

    aget-short v9, p2, v8

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p2, v8

    const/4 v8, 0x2

    invoke-virtual {v0, v5, v8}, LLi/N$e;->g(SI)S

    move-result v5

    not-int v8, v7

    and-int/2addr v8, v1

    xor-int/2addr v8, v6

    int-to-short v8, v8

    aput-short v8, p3, v16

    aget-short v9, p4, v4

    xor-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, p4, v4

    not-int v4, v1

    and-int/2addr v4, v2

    xor-int/2addr v4, v7

    int-to-short v4, v4

    const/16 v8, 0x15

    aput-short v4, p3, v8

    aget-short v8, p4, v3

    xor-int/2addr v4, v8

    int-to-short v4, v4

    aput-short v4, p4, v3

    not-int v3, v2

    and-int/2addr v3, v5

    xor-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p3, v24

    const/4 v3, 0x2

    aget-short v4, p4, v3

    xor-int/2addr v1, v4

    int-to-short v1, v1

    aput-short v1, p4, v3

    not-int v1, v5

    and-int/2addr v1, v6

    xor-int/2addr v1, v2

    int-to-short v1, v1

    const/16 v2, 0x17

    aput-short v1, p3, v2

    const/4 v2, 0x3

    aget-short v3, p4, v2

    xor-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p4, v2

    not-int v1, v6

    and-int/2addr v1, v7

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, p3, v20

    const/4 v2, 0x4

    aget-short v3, p4, v2

    xor-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p4, v2

    return-void
.end method

.method public reset()V
    .locals 8

    const/16 v0, 0x19

    new-array v1, v0, [S

    iput-object v1, p0, LLi/N$e;->h:[S

    new-array v0, v0, [S

    iput-object v0, p0, LLi/N$e;->i:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, LLi/N$e;->j:[S

    iget-object v2, p0, LLi/N$e;->d:[S

    iget-object v0, p0, LLi/N$e;->k:LLi/N;

    invoke-static {v0}, LLi/N;->p(LLi/N;)[B

    move-result-object v3

    iget-object v5, p0, LLi/N$e;->h:[S

    const/16 v6, 0x18

    iget-object v7, p0, LLi/N$e;->j:[S

    const/16 v4, 0x10

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, LLi/N$e;->j([S[BI[SI[S)V

    iget-object v0, p0, LLi/N$e;->f:[S

    iget-object v1, p0, LLi/N$e;->h:[S

    const/16 v2, 0x11

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LLi/N$e;->h:[S

    iget-object v1, p0, LLi/N$e;->i:[S

    iget-object v2, p0, LLi/N$e;->j:[S

    invoke-virtual {p0, v0, v1, v2}, LLi/N$e;->f([S[S[S)V

    return-void
.end method
