.class public Lcl/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[S

.field public b:Lcl/b;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lcl/p;


# direct methods
.method public constructor <init>(Lcl/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lcl/m;->a:[S

    iput-object p1, p0, Lcl/m;->b:Lcl/b;

    invoke-virtual {p1}, Lcl/b;->o()I

    move-result v0

    iput v0, p0, Lcl/m;->c:I

    invoke-virtual {p1}, Lcl/b;->h()I

    move-result v0

    iput v0, p0, Lcl/m;->d:I

    invoke-static {}, Lcl/b;->i()I

    move-result v0

    iput v0, p0, Lcl/m;->e:I

    invoke-virtual {p1}, Lcl/b;->u()Lcl/p;

    move-result-object p1

    iput-object p1, p0, Lcl/m;->f:Lcl/p;

    return-void
.end method

.method public static b(Lcl/m;Lcl/m;Lcl/m;)V
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    invoke-virtual {v0, v3}, Lcl/m;->i(I)S

    move-result v6

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lcl/m;->i(I)S

    move-result v7

    invoke-virtual {v1, v3}, Lcl/m;->i(I)S

    move-result v8

    invoke-virtual {v1, v4}, Lcl/m;->i(I)S

    move-result v9

    sget-object v11, Lcl/l;->a:[S

    add-int/lit8 v12, v2, 0x40

    aget-short v10, v11, v12

    move-object/from16 v4, p0

    move v5, v3

    invoke-static/range {v4 .. v10}, Lcl/l;->a(Lcl/m;ISSSSS)V

    add-int/lit8 v14, v3, 0x2

    invoke-virtual {v0, v14}, Lcl/m;->i(I)S

    move-result v15

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v0, v3}, Lcl/m;->i(I)S

    move-result v16

    invoke-virtual {v1, v14}, Lcl/m;->i(I)S

    move-result v17

    invoke-virtual {v1, v3}, Lcl/m;->i(I)S

    move-result v18

    aget-short v3, v11, v12

    mul-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    move-object/from16 v13, p0

    move/from16 v19, v3

    invoke-static/range {v13 .. v19}, Lcl/l;->a(Lcl/m;ISSSSS)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcl/m;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/m;->i(I)S

    move-result v1

    invoke-virtual {p1, v0}, Lcl/m;->i(I)S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lcl/m;->q(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()[B
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v2, v1, [B

    iget v3, v0, Lcl/m;->c:I

    new-array v3, v3, [B

    invoke-virtual/range {p0 .. p0}, Lcl/m;->d()V

    iget v4, v0, Lcl/m;->c:I

    const/16 v5, 0x80

    const/16 v6, 0x20

    const/4 v7, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v14, 0x0

    if-ne v4, v5, :cond_1

    move v4, v14

    move v5, v4

    :goto_0
    if-ge v4, v6, :cond_3

    move v15, v14

    :goto_1
    if-ge v15, v1, :cond_0

    mul-int/lit8 v16, v4, 0x8

    add-int v1, v16, v15

    invoke-virtual {v0, v1}, Lcl/m;->i(I)S

    move-result v1

    shl-int/2addr v1, v13

    add-int/lit16 v1, v1, 0x681

    const v16, 0x13afb

    mul-int v1, v1, v16

    shr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v2, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v1, 0x8

    goto :goto_1

    :cond_0
    aget-byte v1, v2, v14

    aget-byte v15, v2, v12

    shl-int/2addr v15, v13

    or-int/2addr v1, v15

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    add-int/lit8 v1, v5, 0x1

    aget-byte v15, v2, v10

    aget-byte v16, v2, v11

    shl-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v1

    add-int/lit8 v1, v5, 0x2

    aget-byte v15, v2, v13

    aget-byte v16, v2, v9

    shl-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v1

    add-int/lit8 v1, v5, 0x3

    aget-byte v15, v2, v8

    aget-byte v16, v2, v7

    shl-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v1

    add-int/2addr v5, v13

    add-int/lit8 v4, v4, 0x1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/16 v1, 0xa0

    if-ne v4, v1, :cond_4

    move v1, v14

    move v4, v1

    :goto_2
    if-ge v1, v6, :cond_3

    move v15, v14

    :goto_3
    const/16 v5, 0x8

    if-ge v15, v5, :cond_2

    mul-int/lit8 v16, v1, 0x8

    add-int v5, v16, v15

    invoke-virtual {v0, v5}, Lcl/m;->i(I)S

    move-result v5

    shl-int/2addr v5, v9

    add-int/lit16 v5, v5, 0x680

    const v16, 0x9d7e

    mul-int v5, v5, v16

    shr-int/lit8 v5, v5, 0x1b

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    aput-byte v5, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    aget-byte v5, v2, v14

    aget-byte v15, v2, v12

    shl-int/2addr v15, v9

    or-int/2addr v5, v15

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    aget-byte v15, v2, v12

    shr-int/2addr v15, v11

    aget-byte v16, v2, v10

    shl-int/lit8 v16, v16, 0x2

    or-int v15, v15, v16

    aget-byte v16, v2, v11

    shl-int/lit8 v16, v16, 0x7

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v5

    add-int/lit8 v5, v4, 0x2

    aget-byte v15, v2, v11

    shr-int/2addr v15, v12

    aget-byte v16, v2, v13

    shl-int/lit8 v16, v16, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v5

    add-int/lit8 v5, v4, 0x3

    aget-byte v15, v2, v13

    shr-int/2addr v15, v13

    aget-byte v16, v2, v9

    shl-int/lit8 v16, v16, 0x1

    or-int v15, v15, v16

    aget-byte v16, v2, v8

    shl-int/lit8 v16, v16, 0x6

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v5

    add-int/lit8 v5, v4, 0x4

    aget-byte v15, v2, v8

    shr-int/2addr v15, v10

    aget-byte v16, v2, v7

    shl-int/lit8 v16, v16, 0x3

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v3, v5

    add-int/2addr v4, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v3

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/m;->i(I)S

    move-result v1

    invoke-static {v1}, Lcl/o;->b(S)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcl/m;->q(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/m;->i(I)S

    move-result v1

    mul-int/lit16 v1, v1, 0x549

    invoke-static {v1}, Lcl/o;->c(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcl/m;->q(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f([B)V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-object v6, v0, Lcl/m;->b:Lcl/b;

    invoke-virtual {v6}, Lcl/b;->o()I

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/16 v11, 0x80

    if-ne v6, v11, :cond_0

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    mul-int/lit8 v2, v10, 0x2

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0xf

    int-to-short v3, v3

    mul-int/lit16 v3, v3, 0xd01

    add-int/2addr v3, v7

    shr-int/2addr v3, v8

    int-to-short v3, v3

    invoke-virtual {v0, v2, v3}, Lcl/m;->q(IS)V

    add-int/2addr v2, v9

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/2addr v3, v8

    int-to-short v3, v3

    mul-int/lit16 v3, v3, 0xd01

    add-int/2addr v3, v7

    shr-int/2addr v3, v8

    int-to-short v3, v3

    invoke-virtual {v0, v2, v3}, Lcl/m;->q(IS)V

    add-int/2addr v1, v9

    add-int/2addr v10, v9

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcl/m;->b:Lcl/b;

    invoke-virtual {v6}, Lcl/b;->o()I

    move-result v6

    const/16 v11, 0xa0

    if-ne v6, v11, :cond_3

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_1
    const/16 v12, 0x20

    if-ge v6, v12, :cond_2

    aget-byte v12, p1, v11

    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v3

    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p1, v14

    and-int/lit16 v15, v14, 0xff

    shl-int/2addr v15, v4

    or-int/2addr v12, v15

    int-to-byte v12, v12

    and-int/lit16 v15, v14, 0xff

    shr-int/2addr v15, v5

    int-to-byte v15, v15

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v2

    add-int/lit8 v16, v11, 0x2

    aget-byte v2, p1, v16

    and-int/lit16 v3, v2, 0xff

    shl-int/2addr v3, v9

    or-int/2addr v3, v14

    int-to-byte v3, v3

    and-int/lit16 v2, v2, 0xff

    shr-int/2addr v2, v8

    add-int/lit8 v14, v11, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v10, v14, 0xff

    shl-int/2addr v10, v8

    or-int/2addr v2, v10

    int-to-byte v2, v2

    and-int/lit16 v10, v14, 0xff

    shr-int/2addr v10, v9

    int-to-byte v10, v10

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v1

    add-int/lit8 v18, v11, 0x4

    aget-byte v1, p1, v18

    and-int/lit16 v8, v1, 0xff

    shl-int/2addr v8, v5

    or-int/2addr v8, v14

    int-to-byte v8, v8

    and-int/lit16 v1, v1, 0xff

    shr-int/2addr v1, v4

    int-to-byte v1, v1

    new-array v14, v7, [B

    const/16 v17, 0x0

    aput-byte v13, v14, v17

    aput-byte v12, v14, v9

    aput-byte v15, v14, v5

    aput-byte v3, v14, v4

    const/4 v3, 0x4

    aput-byte v2, v14, v3

    const/4 v2, 0x5

    aput-byte v10, v14, v2

    const/4 v10, 0x6

    aput-byte v8, v14, v10

    const/4 v8, 0x7

    aput-byte v1, v14, v8

    add-int/2addr v11, v2

    move/from16 v1, v17

    :goto_2
    if-ge v1, v7, :cond_1

    mul-int/lit8 v12, v6, 0x8

    add-int/2addr v12, v1

    aget-byte v13, v14, v1

    and-int/lit8 v13, v13, 0x1f

    mul-int/lit16 v13, v13, 0xd01

    add-int/lit8 v13, v13, 0x10

    shr-int/2addr v13, v2

    int-to-short v13, v13

    invoke-virtual {v0, v12, v13}, Lcl/m;->q(IS)V

    add-int/2addr v1, v9

    goto :goto_2

    :cond_1
    add-int/2addr v6, v9

    move v1, v10

    move/from16 v19, v3

    move v3, v2

    move v2, v8

    move/from16 v8, v19

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g([B)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, v0, 0x3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xfff

    int-to-short v3, v3

    invoke-virtual {p0, v1, v3}, Lcl/m;->q(IS)V

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x4

    int-to-long v5, v2

    or-long v2, v3, v5

    const-wide/16 v4, 0xfff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lcl/m;->q(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h([B)V
    .locals 6

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    move v3, v0

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v3

    and-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    mul-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    mul-int/lit8 v5, v2, 0x8

    add-int/2addr v5, v3

    and-int/lit16 v4, v4, 0x681

    int-to-short v4, v4

    invoke-virtual {p0, v5, v4}, Lcl/m;->q(IS)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(I)S
    .locals 1

    iget-object v0, p0, Lcl/m;->a:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public j()[S
    .locals 1

    iget-object v0, p0, Lcl/m;->a:[S

    return-object v0
.end method

.method public k([BB)V
    .locals 2

    iget v0, p0, Lcl/m;->d:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcl/m;->f:Lcl/p;

    invoke-virtual {v1, v0, p1, p2}, Lcl/p;->d([B[BB)V

    iget p1, p0, Lcl/m;->d:I

    invoke-static {p0, v0, p1}, Lcl/a;->c(Lcl/m;[BI)V

    return-void
.end method

.method public l([BB)V
    .locals 2

    iget v0, p0, Lcl/m;->e:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcl/m;->f:Lcl/p;

    invoke-virtual {v1, v0, p1, p2}, Lcl/p;->d([B[BB)V

    iget p1, p0, Lcl/m;->e:I

    invoke-static {p0, v0, p1}, Lcl/a;->c(Lcl/m;[BI)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-virtual {p0}, Lcl/m;->j()[S

    move-result-object v0

    invoke-static {v0}, Lcl/l;->c([S)[S

    move-result-object v0

    invoke-virtual {p0, v0}, Lcl/m;->r([S)V

    return-void
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcl/m;->j()[S

    move-result-object v0

    invoke-static {v0}, Lcl/l;->d([S)[S

    move-result-object v0

    invoke-virtual {p0, v0}, Lcl/m;->r([S)V

    invoke-virtual {p0}, Lcl/m;->p()V

    return-void
.end method

.method public o(Lcl/m;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lcl/m;->i(I)S

    move-result v1

    invoke-virtual {p0, v0}, Lcl/m;->i(I)S

    move-result v2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lcl/m;->q(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/m;->i(I)S

    move-result v1

    invoke-static {v1}, Lcl/o;->a(S)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcl/m;->q(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(IS)V
    .locals 1

    iget-object v0, p0, Lcl/m;->a:[S

    aput-short p2, v0, p1

    return-void
.end method

.method public r([S)V
    .locals 0

    iput-object p1, p0, Lcl/m;->a:[S

    return-void
.end method

.method public s()[B
    .locals 7

    const/16 v0, 0x180

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcl/m;->d()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcl/m;->i(I)S

    move-result v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcl/m;->i(I)S

    move-result v2

    mul-int/lit8 v4, v1, 0x3

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    add-int/lit8 v5, v4, 0x1

    shr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v6, v2, 0x4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    add-int/lit8 v4, v4, 0x2

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public t()[B
    .locals 6

    invoke-static {}, Lcl/b;->k()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcl/m;->d()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    aput-byte v1, v0, v2

    move v3, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcl/m;->i(I)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x1

    add-int/lit16 v4, v4, 0x681

    const v5, 0x13afb

    mul-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1c

    and-int/lit8 v4, v4, 0x1

    aget-byte v5, v0, v2

    shl-int/2addr v4, v3

    int-to-byte v4, v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcl/m;->a:[S

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcl/m;->a:[S

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
