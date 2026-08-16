.class public LZk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:LZk/j;

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LZk/a;->a:I

    iput p2, p0, LZk/a;->b:I

    iput p3, p0, LZk/a;->d:I

    iput p5, p0, LZk/a;->e:I

    iput p6, p0, LZk/a;->f:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, LZk/a;->c:I

    div-int/lit8 p4, p4, 0x8

    iput p4, p0, LZk/a;->h:I

    add-int/lit8 p2, p1, 0x7

    ushr-int/lit8 p2, p2, 0x3

    iput p2, p0, LZk/a;->i:I

    mul-int/lit8 p2, p1, 0x2

    add-int/lit8 p2, p2, 0x7

    ushr-int/lit8 p2, p2, 0x3

    iput p2, p0, LZk/a;->j:I

    new-instance p2, LZk/j;

    invoke-direct {p2, p1}, LZk/j;-><init>(I)V

    iput-object p2, p0, LZk/a;->g:LZk/j;

    return-void
.end method

.method public static t(IDDI)I
    .locals 2

    int-to-double v0, p0

    mul-double/2addr p1, v0

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {p5, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a([B[BI[I[I[I[I[B[B[B)V
    .locals 11

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {p0, v0, p1, v1}, LZk/a;->h([I[B[B)V

    const/4 v8, 0x0

    aget-byte v0, v1, v8

    and-int/lit16 v0, v0, 0xff

    sub-int v2, v0, p3

    shr-int/lit8 v2, v2, 0x1f

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iget v3, v6, LZk/a;->f:I

    sub-int v3, p3, v3

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    aget-byte v3, p2, v8

    int-to-byte v2, v2

    xor-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p2, v8

    aput-byte v2, p8, v8

    int-to-byte v0, v0

    aput-byte v0, p9, v8

    move v0, v9

    :goto_0
    iget v2, v6, LZk/a;->a:I

    if-ge v0, v2, :cond_0

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v3, p3

    shr-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v9

    iget v5, v6, LZk/a;->f:I

    sub-int v5, p3, v5

    sub-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v9

    sub-int/2addr v2, v0

    aget-byte v5, p2, v2

    int-to-byte v4, v4

    xor-int/2addr v5, v4

    int-to-byte v5, v5

    aput-byte v5, p2, v2

    aput-byte v4, p8, v0

    int-to-byte v2, v3

    aput-byte v2, p9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    invoke-virtual {p0, v0, p1, v1}, LZk/a;->h([I[B[B)V

    aget-byte v0, v1, v8

    and-int/lit16 v0, v0, 0xff

    sub-int v2, v0, p3

    shr-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v9

    iget v3, v6, LZk/a;->f:I

    sub-int v3, p3, v3

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v9

    iget v3, v6, LZk/a;->a:I

    aget-byte v4, p2, v3

    int-to-byte v2, v2

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    aput-byte v2, p8, v3

    int-to-byte v0, v0

    aput-byte v0, p9, v3

    move v0, v9

    :goto_1
    iget v2, v6, LZk/a;->a:I

    if-ge v0, v2, :cond_1

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    sub-int v4, v3, p3

    shr-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v9

    iget v5, v6, LZk/a;->f:I

    sub-int v5, p3, v5

    sub-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v9

    add-int v5, v2, v2

    sub-int/2addr v5, v0

    aget-byte v10, p2, v5

    int-to-byte v4, v4

    xor-int/2addr v10, v4

    int-to-byte v10, v10

    aput-byte v10, p2, v5

    add-int v5, v2, v0

    aput-byte v4, p8, v5

    add-int/2addr v2, v0

    int-to-byte v3, v3

    aput-byte v3, p9, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v10, v8

    :goto_2
    iget v0, v6, LZk/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v10, v0, :cond_3

    aget-byte v0, p8, v10

    if-eqz v0, :cond_2

    move v5, v9

    goto :goto_3

    :cond_2
    move v5, v8

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v2, v10

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, LZk/a;->q([BI[I[IZ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final b([B[BI[I[I[I[I[B)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p8

    iget v1, v6, LZk/a;->a:I

    mul-int/lit8 v1, v1, 0x2

    new-array v8, v1, [I

    move-object/from16 v1, p6

    invoke-virtual {p0, v1, p1, v0}, LZk/a;->h([I[B[B)V

    const/4 v9, 0x0

    aget-byte v1, v0, v9

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1f

    const/4 v10, 0x1

    add-int/2addr v1, v10

    aget-byte v2, p2, v9

    int-to-byte v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v9

    aput v1, v8, v9

    move v1, v10

    :goto_0
    iget v2, v6, LZk/a;->a:I

    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, p3

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v10

    sub-int/2addr v2, v1

    aget-byte v4, p2, v2

    int-to-byte v5, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    aput v3, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p7

    invoke-virtual {p0, v1, p1, v0}, LZk/a;->h([I[B[B)V

    aget-byte v1, v0, v9

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v10

    iget v2, v6, LZk/a;->a:I

    aget-byte v3, p2, v2

    int-to-byte v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    aput v1, v8, v2

    move v1, v10

    :goto_1
    iget v2, v6, LZk/a;->a:I

    if-ge v1, v2, :cond_1

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, p3

    shr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v10

    add-int v4, v2, v2

    sub-int/2addr v4, v1

    aget-byte v5, p2, v4

    int-to-byte v11, v3

    xor-int/2addr v5, v11

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    add-int/2addr v2, v1

    aput v3, v8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v11, v9

    :goto_2
    iget v0, v6, LZk/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v11, v0, :cond_3

    aget v0, v8, v11

    if-ne v0, v10, :cond_2

    move v5, v10

    goto :goto_3

    :cond_2
    move v5, v9

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, LZk/a;->q([BI[I[IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final c([B[B[BI[I[I[I[I)V
    .locals 12

    move-object v6, p0

    move-object v7, p1

    move-object v0, p2

    move/from16 v1, p4

    iget v2, v6, LZk/a;->a:I

    mul-int/lit8 v2, v2, 0x2

    new-array v8, v2, [I

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    iget v3, v6, LZk/a;->a:I

    const/4 v10, 0x1

    if-ge v2, v3, :cond_2

    aget-byte v3, p3, v2

    if-ne v3, v10, :cond_1

    move-object/from16 v3, p7

    invoke-virtual {p0, v3, p1, v2}, LZk/a;->g([I[BI)I

    move-result v4

    if-lt v4, v1, :cond_0

    goto :goto_1

    :cond_0
    move v10, v9

    :goto_1
    invoke-virtual {p0, p2, v2, v10}, LZk/a;->u([BIZ)V

    aput v10, v8, v2

    goto :goto_2

    :cond_1
    move-object/from16 v3, p7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v9

    :goto_3
    iget v3, v6, LZk/a;->a:I

    if-ge v2, v3, :cond_5

    add-int/2addr v3, v2

    aget-byte v3, p3, v3

    if-ne v3, v10, :cond_4

    move-object/from16 v3, p8

    invoke-virtual {p0, v3, p1, v2}, LZk/a;->g([I[BI)I

    move-result v4

    if-lt v4, v1, :cond_3

    move v4, v10

    goto :goto_4

    :cond_3
    move v4, v9

    :goto_4
    iget v5, v6, LZk/a;->a:I

    add-int/2addr v5, v2

    invoke-virtual {p0, p2, v5, v4}, LZk/a;->u([BIZ)V

    iget v5, v6, LZk/a;->a:I

    add-int/2addr v5, v2

    aput v4, v8, v5

    goto :goto_5

    :cond_4
    move-object/from16 v3, p8

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v11, v9

    :goto_6
    iget v0, v6, LZk/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v11, v0, :cond_7

    aget v0, v8, v11

    if-ne v0, v10, :cond_6

    move v5, v10

    goto :goto_7

    :cond_6
    move v5, v9

    :goto_7
    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, LZk/a;->q([BI[I[IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method public final d([B[I[I)[B
    .locals 20

    move-object/from16 v11, p0

    iget v0, v11, LZk/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    new-array v12, v0, [B

    move-object/from16 v13, p2

    invoke-virtual {v11, v13}, LZk/a;->o([I)[I

    move-result-object v14

    move-object/from16 v15, p3

    invoke-virtual {v11, v15}, LZk/a;->o([I)[I

    move-result-object v16

    iget v0, v11, LZk/a;->a:I

    mul-int/lit8 v1, v0, 0x2

    new-array v10, v1, [B

    new-array v9, v0, [B

    mul-int/lit8 v0, v0, 0x2

    new-array v8, v0, [B

    invoke-static/range {p1 .. p1}, LZk/k;->e([B)I

    move-result v0

    iget v1, v11, LZk/a;->a:I

    invoke-virtual {v11, v0, v1}, LZk/a;->s(II)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v17, v8

    move-object v8, v10

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    move-object/from16 v19, v10

    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, LZk/a;->a([B[BI[I[I[I[I[B[B[B)V

    iget v0, v11, LZk/a;->c:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v19

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object v7, v14

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, LZk/a;->c([B[B[BI[I[I[I[I)V

    iget v0, v11, LZk/a;->c:I

    add-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    invoke-virtual/range {v0 .. v8}, LZk/a;->c([B[B[BI[I[I[I[I)V

    :goto_0
    iget v0, v11, LZk/a;->e:I

    if-ge v9, v0, :cond_0

    const/4 v0, 0x0

    move-object/from16 v10, v19

    invoke-static {v10, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    invoke-static/range {p1 .. p1}, LZk/k;->e([B)I

    move-result v0

    iget v1, v11, LZk/a;->a:I

    invoke-virtual {v11, v0, v1}, LZk/a;->s(II)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, LZk/a;->b([B[BI[I[I[I[I[B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, LZk/k;->e([B)I

    move-result v0

    if-nez v0, :cond_1

    return-object v12

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e([B[B)[B
    .locals 3

    iget-object v0, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v0}, LZk/j;->d()[J

    move-result-object v0

    iget-object v1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v1}, LZk/j;->d()[J

    move-result-object v1

    iget-object v2, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v2, p1, v0}, LZk/j;->f([B[J)V

    iget-object p1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p1, p2, v1}, LZk/j;->f([B[J)V

    iget-object p1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p1, v0, v1, v0}, LZk/j;->s([J[J[J)V

    iget-object p1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p1, v0}, LZk/j;->g([J)[B

    move-result-object p1

    return-object p1
.end method

.method public final f([I[B)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, LZk/a;->i:I

    if-ge v1, v3, :cond_2

    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    iget v5, p0, LZk/a;->a:I

    if-ne v4, v5, :cond_0

    goto :goto_2

    :cond_0
    aget-byte v5, p2, v1

    shr-int/2addr v5, v3

    and-int/lit8 v5, v5, 0x1

    neg-int v6, v5

    and-int/2addr v4, v6

    aget v7, p1, v2

    not-int v6, v6

    and-int/2addr v6, v7

    or-int/2addr v4, v6

    aput v4, p1, v2

    add-int/2addr v2, v5

    iget v4, p0, LZk/a;->c:I

    rem-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g([I[BI)I
    .locals 9

    iget v0, p0, LZk/a;->c:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v1, v0, :cond_0

    aget v3, p1, v1

    add-int/2addr v3, p3

    iget v4, p0, LZk/a;->a:I

    sub-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x1

    aget v5, p1, v5

    add-int/2addr v5, p3

    sub-int/2addr v5, v4

    add-int/lit8 v6, v1, 0x2

    aget v6, p1, v6

    add-int/2addr v6, p3

    sub-int/2addr v6, v4

    add-int/lit8 v7, v1, 0x3

    aget v7, p1, v7

    add-int/2addr v7, p3

    sub-int/2addr v7, v4

    shr-int/lit8 v8, v3, 0x1f

    and-int/2addr v8, v4

    add-int/2addr v3, v8

    shr-int/lit8 v8, v5, 0x1f

    and-int/2addr v8, v4

    add-int/2addr v5, v8

    shr-int/lit8 v8, v6, 0x1f

    and-int/2addr v8, v4

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x1f

    and-int/2addr v4, v8

    add-int/2addr v7, v4

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget-byte v3, p2, v5

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget-byte v3, p2, v6

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    aget-byte v3, p2, v7

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p0, LZk/a;->c:I

    if-ge v1, v0, :cond_1

    aget v0, p1, v1

    add-int/2addr v0, p3

    iget v3, p0, LZk/a;->a:I

    sub-int/2addr v0, v3

    shr-int/lit8 v4, v0, 0x1f

    and-int/2addr v3, v4

    add-int/2addr v0, v3

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v2
.end method

.method public final h([I[B[B)V
    .locals 10

    const/4 v0, 0x0

    aget v1, p1, v0

    iget v2, p0, LZk/a;->a:I

    sub-int/2addr v2, v1

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v0, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, LZk/a;->c:I

    if-ge v1, v2, :cond_4

    aget v2, p1, v1

    iget v3, p0, LZk/a;->a:I

    sub-int/2addr v3, v2

    add-int/lit8 v4, v3, -0x4

    move v5, v0

    :goto_1
    if-gt v5, v4, :cond_0

    aget-byte v6, p3, v5

    add-int v7, v2, v5

    aget-byte v8, p2, v7

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v6, v5, 0x1

    aget-byte v8, p3, v6

    add-int/lit8 v9, v7, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v6

    add-int/lit8 v6, v5, 0x2

    aget-byte v8, p3, v6

    add-int/lit8 v9, v7, 0x2

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p3, v6

    add-int/lit8 v6, v5, 0x3

    aget-byte v8, p3, v6

    add-int/lit8 v7, v7, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v7

    int-to-byte v7, v8

    aput-byte v7, p3, v6

    add-int/lit8 v5, v5, 0x4

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v5, v3, :cond_1

    aget-byte v4, p3, v5

    add-int v6, v2, v5

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    iget v2, p0, LZk/a;->a:I

    add-int/lit8 v2, v2, -0x4

    move v4, v3

    :goto_3
    if-gt v4, v2, :cond_2

    aget-byte v5, p3, v4

    sub-int v6, v4, v3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v4

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v4, 0x2

    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v4, 0x3

    aget-byte v6, p3, v5

    sub-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    :cond_2
    :goto_4
    iget v2, p0, LZk/a;->a:I

    if-ge v4, v2, :cond_3

    aget-byte v2, p3, v4

    sub-int v5, v4, v3

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public i([B[B[B[B[B[B)V
    .locals 7

    iget v0, p0, LZk/a;->c:I

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p0, v1, p2}, LZk/a;->f([I[B)V

    invoke-virtual {p0, v0, p3}, LZk/a;->f([I[B)V

    invoke-virtual {p0, p5, p2}, LZk/a;->e([B[B)[B

    move-result-object p2

    invoke-virtual {p0, p2, v1, v0}, LZk/a;->d([B[I[I)[B

    move-result-object p2

    iget p3, p0, LZk/a;->i:I

    mul-int/lit8 p3, p3, 0x2

    new-array v0, p3, [B

    iget p3, p0, LZk/a;->a:I

    mul-int/lit8 p3, p3, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p2, v1, p3}, LZk/k;->c([B[BII)V

    iget p2, p0, LZk/a;->i:I

    new-array p3, p2, [B

    new-array p2, p2, [B

    invoke-virtual {p0, v0, p3, p2}, LZk/a;->r([B[B[B)V

    iget v1, p0, LZk/a;->h:I

    new-array v6, v1, [B

    invoke-virtual {p0, p3, p2, v6}, LZk/a;->m([B[B[B)V

    iget p2, p0, LZk/a;->h:I

    invoke-static {p2, p6, v6}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    invoke-virtual {p0, v6}, LZk/a;->k([B)[B

    move-result-object v3

    iget v5, p0, LZk/a;->j:I

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v2, v5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/util/a;->f([BII[BII)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v6, p5, p6, p1}, LZk/a;->l([B[B[B[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4, p5, p6, p1}, LZk/a;->l([B[B[B[B)V

    :goto_0
    return-void
.end method

.method public j([B[B[B[BLjava/security/SecureRandom;)V
    .locals 6

    iget v0, p0, LZk/a;->h:I

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, v0}, LZk/a;->k([B)[B

    move-result-object p5

    iget v1, p0, LZk/a;->i:I

    new-array v2, v1, [B

    new-array v1, v1, [B

    invoke-virtual {p0, p5, v2, v1}, LZk/a;->r([B[B[B)V

    iget-object p5, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p5}, LZk/j;->d()[J

    move-result-object p5

    iget-object v3, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v3}, LZk/j;->d()[J

    move-result-object v3

    iget-object v4, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v4, v2, p5}, LZk/j;->f([B[J)V

    iget-object v4, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v4, v1, v3}, LZk/j;->f([B[J)V

    iget-object v4, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v4}, LZk/j;->d()[J

    move-result-object v4

    iget-object v5, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v5, p4, v4}, LZk/j;->f([B[J)V

    iget-object p4, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p4, v4, v3, v4}, LZk/j;->s([J[J[J)V

    iget-object p4, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p4, v4, p5, v4}, LZk/j;->a([J[J[J)V

    iget-object p4, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p4, v4, p1}, LZk/j;->h([J[B)V

    invoke-virtual {p0, v2, v1, p2}, LZk/a;->m([B[B[B)V

    iget p4, p0, LZk/a;->h:I

    invoke-static {p4, v0, p2}, Lorg/bouncycastle/util/c;->d(I[B[B)V

    invoke-virtual {p0, v0, p1, p2, p3}, LZk/a;->l([B[B[B[B)V

    return-void
.end method

.method public final k([B)[B
    .locals 4

    iget v0, p0, LZk/a;->i:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    new-instance v1, LIi/Q;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, LIi/Q;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    invoke-interface {v1, p1, v3, v2}, LBi/y;->update([BII)V

    iget p1, p0, LZk/a;->a:I

    mul-int/lit8 p1, p1, 0x2

    iget v2, p0, LZk/a;->d:I

    invoke-static {v0, p1, v2, v1}, LZk/k;->d([BIILBi/a0;)V

    return-object v0
.end method

.method public final l([B[B[B[B)V
    .locals 4

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v1, LIi/N;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, LIi/N;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, LIi/v;->update([BII)V

    array-length p1, p2

    invoke-virtual {v1, p2, v3, p1}, LIi/v;->update([BII)V

    array-length p1, p3

    invoke-virtual {v1, p3, v3, p1}, LIi/v;->update([BII)V

    invoke-virtual {v1, v0, v3}, LIi/N;->c([BI)I

    iget p1, p0, LZk/a;->h:I

    invoke-static {v0, v3, p4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final m([B[B[B)V
    .locals 4

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v1, LIi/N;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, LIi/N;-><init>(I)V

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, LIi/v;->update([BII)V

    array-length p1, p2

    invoke-virtual {v1, p2, v3, p1}, LIi/v;->update([BII)V

    invoke-virtual {v1, v0, v3}, LIi/N;->c([BI)I

    iget p1, p0, LZk/a;->h:I

    invoke-static {v0, v3, p3, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public n([B[B[B[BLjava/security/SecureRandom;)V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p5, LIi/Q;

    const/16 v1, 0x100

    invoke-direct {p5, v1}, LIi/Q;-><init>(I)V

    iget v1, p0, LZk/a;->h:I

    const/4 v2, 0x0

    invoke-interface {p5, v0, v2, v1}, LBi/y;->update([BII)V

    iget v1, p0, LZk/a;->a:I

    iget v3, p0, LZk/a;->c:I

    invoke-static {p1, v1, v3, p5}, LZk/k;->d([BIILBi/a0;)V

    iget v1, p0, LZk/a;->a:I

    iget v3, p0, LZk/a;->c:I

    invoke-static {p2, v1, v3, p5}, LZk/k;->d([BIILBi/a0;)V

    iget-object p5, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p5}, LZk/j;->d()[J

    move-result-object p5

    iget-object v1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v1}, LZk/j;->d()[J

    move-result-object v1

    iget-object v3, p0, LZk/a;->g:LZk/j;

    invoke-virtual {v3, p1, p5}, LZk/j;->f([B[J)V

    iget-object p1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p1, p2, v1}, LZk/j;->f([B[J)V

    iget-object p1, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p1}, LZk/j;->d()[J

    move-result-object p1

    iget-object p2, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p2, p5, p1}, LZk/j;->r([J[J)V

    iget-object p2, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p2, p1, v1, p1}, LZk/j;->s([J[J[J)V

    iget-object p2, p0, LZk/a;->g:LZk/j;

    invoke-virtual {p2, p1, p4}, LZk/j;->h([J[B)V

    iget p1, p0, LZk/a;->h:I

    array-length p2, p3

    invoke-static {v0, p1, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final o([I)[I
    .locals 4

    iget v0, p0, LZk/a;->c:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p1, v1

    if-nez v2, :cond_0

    aput v1, v0, v1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, LZk/a;->c:I

    if-ge v1, v2, :cond_1

    iget v3, p0, LZk/a;->a:I

    sub-int/2addr v2, v1

    aget v2, p1, v2

    sub-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, LZk/a;->c:I

    if-ge v1, v2, :cond_1

    iget v3, p0, LZk/a;->a:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget v2, p1, v2

    sub-int/2addr v3, v2

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, LZk/a;->h:I

    return v0
.end method

.method public final q([BI[I[IZ)V
    .locals 3

    iget v0, p0, LZk/a;->a:I

    const/4 v1, 0x0

    if-ge p2, v0, :cond_1

    :goto_0
    iget p4, p0, LZk/a;->c:I

    if-ge v1, p4, :cond_3

    aget p4, p3, v1

    if-gt p4, p2, :cond_0

    sub-int p4, p2, p4

    aget-byte v0, p1, p4

    xor-int/2addr v0, p5

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    goto :goto_1

    :cond_0
    iget v0, p0, LZk/a;->a:I

    add-int/2addr v0, p2

    sub-int/2addr v0, p4

    aget-byte p4, p1, v0

    xor-int/2addr p4, p5

    int-to-byte p4, p4

    aput-byte p4, p1, v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    iget p3, p0, LZk/a;->c:I

    if-ge v1, p3, :cond_3

    aget p3, p4, v1

    iget v0, p0, LZk/a;->a:I

    sub-int v2, p2, v0

    if-gt p3, v2, :cond_2

    sub-int v0, p2, v0

    sub-int/2addr v0, p3

    aget-byte p3, p1, v0

    xor-int/2addr p3, p5

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    goto :goto_3

    :cond_2
    sub-int p3, v0, p3

    sub-int v0, p2, v0

    add-int/2addr p3, v0

    aget-byte v0, p1, p3

    xor-int/2addr v0, p5

    int-to-byte v0, v0

    aput-byte v0, p1, p3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final r([B[B[B)V
    .locals 6

    iget v0, p0, LZk/a;->a:I

    and-int/lit8 v0, v0, 0x7

    iget v1, p0, LZk/a;->i:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, LZk/a;->i:I

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, p1, v3

    const/4 v4, -0x1

    shl-int/2addr v4, v0

    int-to-byte v4, v4

    add-int/lit8 v1, v1, -0x1

    not-int v5, v4

    and-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p2, v1

    and-int p2, v3, v4

    int-to-byte p2, p2

    :goto_0
    iget v1, p0, LZk/a;->i:I

    if-ge v2, v1, :cond_0

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    rsub-int/lit8 v3, v0, 0x8

    shl-int v3, v1, v3

    and-int/lit16 p2, p2, 0xff

    ushr-int/2addr p2, v0

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, p3, v2

    add-int/lit8 v2, v2, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(II)I
    .locals 7

    const/16 v0, 0x3023

    if-eq p2, v0, :cond_2

    const/16 v0, 0x6053

    if-eq p2, v0, :cond_1

    const v0, 0xa00d

    if-ne p2, v0, :cond_0

    const-wide v4, 0x4031e0e560418937L    # 17.8785

    const/16 v6, 0x45

    const-wide v2, 0x3f707a8c0d3f02caL    # 0.00402312

    move v1, p1

    invoke-static/range {v1 .. v6}, LZk/a;->t(IDDI)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const-wide v3, 0x402e84816f0068dcL    # 15.2588

    const/16 v5, 0x34

    const-wide v1, 0x3f7590c0ad03d9a9L    # 0.005265

    move v0, p1

    invoke-static/range {v0 .. v5}, LZk/a;->t(IDDI)I

    move-result p1

    return p1

    :cond_2
    const-wide v3, 0x402b0f5c28f5c28fL    # 13.53

    const/16 v5, 0x24

    const-wide v1, 0x3f7c8ee1afb2e092L    # 0.0069722

    move v0, p1

    invoke-static/range {v0 .. v5}, LZk/a;->t(IDDI)I

    move-result p1

    return p1
.end method

.method public final u([BIZ)V
    .locals 2

    if-eqz p2, :cond_1

    iget v0, p0, LZk/a;->a:I

    if-eq p2, v0, :cond_1

    if-le p2, v0, :cond_0

    mul-int/lit8 v1, v0, 0x2

    sub-int/2addr v1, p2

    add-int p2, v1, v0

    goto :goto_0

    :cond_0
    sub-int p2, v0, p2

    :cond_1
    :goto_0
    aget-byte v0, p1, p2

    xor-int/2addr p3, v0

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    return-void
.end method
