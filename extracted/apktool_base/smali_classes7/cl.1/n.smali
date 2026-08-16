.class public Lcl/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lcl/m;

.field public b:Lcl/b;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Requires Parameter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcl/b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl/n;->b:Lcl/b;

    invoke-virtual {p1}, Lcl/b;->n()I

    move-result v0

    iput v0, p0, Lcl/n;->c:I

    invoke-virtual {p1}, Lcl/b;->p()I

    move-result v0

    iput v0, p0, Lcl/n;->d:I

    iget v0, p0, Lcl/n;->c:I

    new-array v0, v0, [Lcl/m;

    iput-object v0, p0, Lcl/n;->a:[Lcl/m;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcl/n;->a:[Lcl/m;

    new-instance v2, Lcl/m;

    invoke-direct {v2, p1}, Lcl/m;-><init>(Lcl/b;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static g(Lcl/m;Lcl/n;Lcl/n;Lcl/b;)V
    .locals 4

    new-instance v0, Lcl/m;

    invoke-direct {v0, p3}, Lcl/m;-><init>(Lcl/b;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcl/n;->f(I)Lcl/m;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcl/m;->b(Lcl/m;Lcl/m;Lcl/m;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p3}, Lcl/b;->n()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lcl/n;->f(I)Lcl/m;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcl/n;->f(I)Lcl/m;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcl/m;->b(Lcl/m;Lcl/m;Lcl/m;)V

    invoke-virtual {p0, v0}, Lcl/m;->a(Lcl/m;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcl/m;->p()V

    return-void
.end method


# virtual methods
.method public a(Lcl/n;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/m;->a(Lcl/m;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()[B
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcl/n;->c()V

    iget-object v1, v0, Lcl/n;->b:Lcl/b;

    invoke-virtual {v1}, Lcl/b;->q()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, v0, Lcl/n;->b:Lcl/b;

    invoke-virtual {v2}, Lcl/b;->q()I

    move-result v2

    iget v3, v0, Lcl/n;->c:I

    mul-int/lit16 v3, v3, 0x140

    const/16 v4, 0x20

    const/16 v5, 0xa

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v2, v3, :cond_2

    new-array v2, v10, [S

    move v3, v12

    move v13, v3

    :goto_0
    iget v14, v0, Lcl/n;->c:I

    if-ge v3, v14, :cond_5

    move v14, v12

    :goto_1
    const/16 v15, 0x40

    if-ge v14, v15, :cond_1

    move v15, v12

    :goto_2
    if-ge v15, v10, :cond_0

    invoke-virtual {v0, v3}, Lcl/n;->f(I)Lcl/m;

    move-result-object v6

    mul-int/lit8 v17, v14, 0x4

    add-int v10, v17, v15

    invoke-virtual {v6, v10}, Lcl/m;->i(I)S

    move-result v6

    int-to-long v9, v6

    shl-long/2addr v9, v5

    const-wide/16 v19, 0x681

    add-long v9, v9, v19

    const-wide/32 v19, 0x13afb7

    mul-long v9, v9, v19

    shr-long/2addr v9, v4

    const-wide/16 v19, 0x3ff

    and-long v9, v9, v19

    long-to-int v6, v9

    int-to-short v6, v6

    aput-short v6, v2, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x4

    goto :goto_2

    :cond_0
    aget-short v6, v2, v12

    int-to-byte v9, v6

    aput-byte v9, v1, v13

    add-int/lit8 v9, v13, 0x1

    shr-int/2addr v6, v8

    aget-short v10, v2, v11

    shl-int/lit8 v15, v10, 0x2

    or-int/2addr v6, v15

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    add-int/lit8 v6, v13, 0x2

    shr-int/lit8 v9, v10, 0x6

    const/4 v10, 0x2

    aget-short v15, v2, v10

    shl-int/lit8 v10, v15, 0x4

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v13, 0x3

    const/4 v9, 0x4

    shr-int/lit8 v10, v15, 0x4

    const/4 v9, 0x3

    aget-short v15, v2, v9

    shl-int/lit8 v9, v15, 0x6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v1, v6

    add-int/lit8 v6, v13, 0x4

    const/4 v9, 0x2

    shr-int/lit8 v10, v15, 0x2

    int-to-byte v9, v10

    aput-byte v9, v1, v6

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x4

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcl/n;->b:Lcl/b;

    invoke-virtual {v2}, Lcl/b;->q()I

    move-result v2

    iget v3, v0, Lcl/n;->c:I

    mul-int/lit16 v3, v3, 0x160

    if-ne v2, v3, :cond_6

    new-array v2, v8, [S

    move v3, v12

    move v6, v3

    :goto_3
    iget v9, v0, Lcl/n;->c:I

    if-ge v3, v9, :cond_5

    move v9, v12

    :goto_4
    if-ge v9, v4, :cond_4

    move v10, v12

    :goto_5
    if-ge v10, v8, :cond_3

    invoke-virtual {v0, v3}, Lcl/n;->f(I)Lcl/m;

    move-result-object v13

    mul-int/lit8 v14, v9, 0x8

    add-int/2addr v14, v10

    invoke-virtual {v13, v14}, Lcl/m;->i(I)S

    move-result v13

    int-to-long v13, v13

    const/16 v15, 0xb

    shl-long/2addr v13, v15

    const-wide/16 v19, 0x680

    add-long v13, v13, v19

    const-wide/32 v19, 0x9d7dc

    mul-long v13, v13, v19

    const/16 v15, 0x1f

    shr-long/2addr v13, v15

    const-wide/16 v19, 0x7ff

    and-long v13, v13, v19

    long-to-int v13, v13

    int-to-short v13, v13

    aput-short v13, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_3
    aget-short v10, v2, v12

    int-to-byte v13, v10

    aput-byte v13, v1, v6

    add-int/lit8 v13, v6, 0x1

    shr-int/2addr v10, v8

    aget-short v14, v2, v11

    shl-int/lit8 v15, v14, 0x3

    or-int/2addr v10, v15

    int-to-byte v10, v10

    aput-byte v10, v1, v13

    add-int/lit8 v10, v6, 0x2

    const/4 v13, 0x5

    shr-int/2addr v14, v13

    const/4 v15, 0x2

    aget-short v17, v2, v15

    shl-int/lit8 v19, v17, 0x6

    or-int v14, v14, v19

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x3

    shr-int/lit8 v14, v17, 0x2

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x4

    shr-int/lit8 v14, v17, 0xa

    const/16 v16, 0x3

    aget-short v17, v2, v16

    shl-int/lit8 v19, v17, 0x1

    or-int v14, v14, v19

    int-to-byte v14, v14

    aput-byte v14, v1, v10

    add-int/lit8 v10, v6, 0x5

    const/4 v14, 0x7

    shr-int/lit8 v17, v17, 0x7

    const/16 v18, 0x4

    aget-short v19, v2, v18

    shl-int/lit8 v20, v19, 0x4

    or-int v4, v17, v20

    int-to-byte v4, v4

    aput-byte v4, v1, v10

    add-int/lit8 v4, v6, 0x6

    shr-int/lit8 v10, v19, 0x4

    aget-short v13, v2, v13

    shl-int/lit8 v17, v13, 0x7

    or-int v10, v10, v17

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0x7

    shr-int/lit8 v10, v13, 0x1

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0x8

    shr-int/lit8 v10, v13, 0x9

    aget-short v13, v2, v7

    shl-int/lit8 v17, v13, 0x2

    or-int v10, v10, v17

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0x9

    shr-int/lit8 v10, v13, 0x6

    aget-short v13, v2, v14

    shl-int/lit8 v14, v13, 0x5

    or-int/2addr v10, v14

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    add-int/lit8 v4, v6, 0xa

    const/4 v10, 0x3

    shr-int/2addr v13, v10

    int-to-byte v13, v13

    aput-byte v13, v1, v4

    add-int/lit8 v6, v6, 0xb

    add-int/lit8 v9, v9, 0x1

    const/16 v4, 0x20

    goto/16 :goto_4

    :cond_4
    const/4 v10, 0x3

    const/4 v15, 0x2

    const/16 v18, 0x4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x20

    goto/16 :goto_3

    :cond_5
    return-object v1

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    invoke-virtual {v1}, Lcl/m;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d([B)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    iget-object v5, v0, Lcl/n;->b:Lcl/b;

    invoke-virtual {v5}, Lcl/b;->q()I

    move-result v5

    iget v6, v0, Lcl/n;->c:I

    mul-int/lit16 v6, v6, 0x140

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-ne v5, v6, :cond_2

    move v1, v11

    move v5, v1

    :goto_0
    iget v6, v0, Lcl/n;->c:I

    if-ge v1, v6, :cond_5

    move v6, v11

    :goto_1
    const/16 v12, 0x40

    if-ge v6, v12, :cond_1

    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    shl-int/2addr v14, v8

    int-to-short v14, v14

    or-int/2addr v12, v14

    int-to-short v12, v12

    and-int/lit16 v13, v13, 0xff

    shr-int/2addr v13, v9

    add-int/lit8 v14, v5, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v15, v14, 0xff

    shl-int/2addr v15, v7

    int-to-short v15, v15

    or-int/2addr v13, v15

    int-to-short v13, v13

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v10

    add-int/lit8 v15, v5, 0x3

    aget-byte v15, p1, v15

    and-int/lit16 v8, v15, 0xff

    shl-int/2addr v8, v10

    int-to-short v8, v8

    or-int/2addr v8, v14

    int-to-short v8, v8

    and-int/lit16 v14, v15, 0xff

    shr-int/2addr v14, v7

    add-int/lit8 v15, v5, 0x4

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v9

    int-to-short v15, v15

    or-int/2addr v14, v15

    int-to-short v14, v14

    new-array v15, v10, [S

    aput-short v12, v15, v11

    aput-short v13, v15, v4

    aput-short v8, v15, v9

    aput-short v14, v15, v3

    add-int/2addr v5, v2

    move v8, v11

    :goto_2
    if-ge v8, v10, :cond_0

    iget-object v12, v0, Lcl/n;->a:[Lcl/m;

    aget-object v12, v12, v1

    mul-int/lit8 v13, v6, 0x4

    add-int/2addr v13, v8

    aget-short v14, v15, v8

    and-int/lit16 v14, v14, 0x3ff

    mul-int/lit16 v14, v14, 0xd01

    add-int/lit16 v14, v14, 0x200

    shr-int/lit8 v14, v14, 0xa

    int-to-short v14, v14

    invoke-virtual {v12, v13, v14}, Lcl/m;->q(IS)V

    add-int/2addr v8, v4

    goto :goto_2

    :cond_0
    add-int/2addr v6, v4

    const/16 v8, 0x8

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    const/16 v8, 0x8

    goto :goto_0

    :cond_2
    iget-object v5, v0, Lcl/n;->b:Lcl/b;

    invoke-virtual {v5}, Lcl/b;->q()I

    move-result v5

    iget v6, v0, Lcl/n;->c:I

    mul-int/lit16 v6, v6, 0x160

    if-ne v5, v6, :cond_6

    move v5, v11

    move v6, v5

    :goto_3
    iget v8, v0, Lcl/n;->c:I

    if-ge v5, v8, :cond_5

    move v8, v11

    :goto_4
    const/16 v12, 0x20

    if-ge v8, v12, :cond_4

    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v6, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v14, v13, 0xff

    int-to-short v14, v14

    const/16 v15, 0x8

    shl-int/2addr v14, v15

    or-int/2addr v12, v14

    int-to-short v12, v12

    and-int/lit16 v13, v13, 0xff

    shr-int/2addr v13, v3

    add-int/lit8 v14, v6, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v15, v14, 0xff

    int-to-short v15, v15

    shl-int/2addr v15, v2

    or-int/2addr v13, v15

    int-to-short v13, v13

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v7

    add-int/lit8 v15, v6, 0x3

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    int-to-short v15, v15

    shl-int/2addr v15, v9

    or-int/2addr v14, v15

    add-int/lit8 v15, v6, 0x4

    aget-byte v15, p1, v15

    and-int/lit16 v11, v15, 0xff

    shl-int/lit8 v11, v11, 0xa

    int-to-short v11, v11

    or-int/2addr v11, v14

    int-to-short v11, v11

    and-int/lit16 v14, v15, 0xff

    shr-int/2addr v14, v4

    add-int/lit8 v15, v6, 0x5

    aget-byte v15, p1, v15

    and-int/lit16 v3, v15, 0xff

    int-to-short v3, v3

    shl-int/2addr v3, v1

    or-int/2addr v3, v14

    int-to-short v3, v3

    and-int/lit16 v14, v15, 0xff

    shr-int/2addr v14, v10

    add-int/lit8 v15, v6, 0x6

    aget-byte v15, p1, v15

    and-int/lit16 v2, v15, 0xff

    int-to-short v2, v2

    shl-int/2addr v2, v10

    or-int/2addr v2, v14

    int-to-short v2, v2

    and-int/lit16 v14, v15, 0xff

    shr-int/2addr v14, v1

    add-int/lit8 v15, v6, 0x7

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    int-to-short v15, v15

    shl-int/2addr v15, v4

    or-int/2addr v14, v15

    const/16 v15, 0x8

    add-int/lit8 v18, v6, 0x8

    aget-byte v15, p1, v18

    and-int/lit16 v1, v15, 0xff

    shl-int/lit8 v1, v1, 0x9

    int-to-short v1, v1

    or-int/2addr v1, v14

    int-to-short v1, v1

    and-int/lit16 v14, v15, 0xff

    shr-int/2addr v14, v9

    add-int/lit8 v15, v6, 0x9

    aget-byte v15, p1, v15

    and-int/lit16 v10, v15, 0xff

    int-to-short v10, v10

    shl-int/2addr v10, v7

    or-int/2addr v10, v14

    int-to-short v10, v10

    and-int/lit16 v14, v15, 0xff

    const/4 v15, 0x5

    shr-int/2addr v14, v15

    add-int/lit8 v15, v6, 0xa

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    int-to-short v15, v15

    const/16 v17, 0x3

    shl-int/lit8 v15, v15, 0x3

    or-int/2addr v14, v15

    int-to-short v14, v14

    const/16 v15, 0x8

    new-array v7, v15, [S

    const/16 v16, 0x0

    aput-short v12, v7, v16

    aput-short v13, v7, v4

    aput-short v11, v7, v9

    aput-short v3, v7, v17

    const/4 v3, 0x4

    aput-short v2, v7, v3

    const/4 v2, 0x5

    aput-short v1, v7, v2

    const/4 v1, 0x6

    aput-short v10, v7, v1

    const/4 v10, 0x7

    aput-short v14, v7, v10

    add-int/lit8 v6, v6, 0xb

    move/from16 v11, v16

    :goto_5
    if-ge v11, v15, :cond_3

    iget-object v12, v0, Lcl/n;->a:[Lcl/m;

    aget-object v12, v12, v5

    mul-int/lit8 v13, v8, 0x8

    add-int/2addr v13, v11

    aget-short v14, v7, v11

    and-int/lit16 v14, v14, 0x7ff

    mul-int/lit16 v14, v14, 0xd01

    add-int/lit16 v14, v14, 0x400

    shr-int/lit8 v14, v14, 0xb

    int-to-short v14, v14

    invoke-virtual {v12, v13, v14}, Lcl/m;->q(IS)V

    add-int/2addr v11, v4

    goto :goto_5

    :cond_3
    add-int/2addr v8, v4

    move v7, v1

    move v1, v10

    move/from16 v11, v16

    move v10, v3

    move/from16 v3, v17

    goto/16 :goto_4

    :cond_4
    move/from16 v17, v3

    move v3, v10

    move/from16 v16, v11

    const/16 v15, 0x8

    move v10, v1

    move v1, v7

    add-int/2addr v5, v4

    move v1, v10

    move v10, v3

    move/from16 v3, v17

    goto/16 :goto_3

    :cond_5
    return-void

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x180

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0x180

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcl/m;->g([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(I)Lcl/m;
    .locals 1

    iget-object v0, p0, Lcl/n;->a:[Lcl/m;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    invoke-virtual {v1}, Lcl/m;->m()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    invoke-virtual {v1}, Lcl/m;->n()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcl/n;->c:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcl/n;->f(I)Lcl/m;

    move-result-object v1

    invoke-virtual {v1}, Lcl/m;->p()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k()[B
    .locals 6

    iget v0, p0, Lcl/n;->d:I

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcl/n;->c:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcl/n;->a:[Lcl/m;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcl/m;->s()[B

    move-result-object v3

    mul-int/lit16 v4, v2, 0x180

    const/16 v5, 0x180

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcl/n;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcl/n;->a:[Lcl/m;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcl/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcl/n;->c:I

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
