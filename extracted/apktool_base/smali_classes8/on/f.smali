.class public Lon/f;
.super Lon/b;
.source "SourceFile"


# static fields
.field public static final a:F = 1000.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lon/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertsCount"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public c(Ljava/util/zip/ZipFile;Ljava/lang/String;Lon/g;I)Lon/e;
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "file",
            "filename",
            "meta",
            "maxVertPerPoly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p2}, Lon/b;->a(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    mul-int v4, v2, v3

    new-array v4, v4, [Ljn/q;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_7

    move v7, v5

    :goto_1
    if-ge v7, v2, :cond_6

    mul-int v8, v6, v2

    add-int/2addr v8, v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    if-ne v9, v7, :cond_5

    if-ne v10, v6, :cond_5

    new-instance v9, Ljn/q;

    invoke-direct {v9}, Ljn/q;-><init>()V

    aput-object v9, v4, v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    new-array v10, v9, [I

    move v11, v5

    :goto_2
    if-ge v11, v9, :cond_1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    mul-int/lit8 v10, v9, 0x3

    new-array v11, v10, [F

    move v12, v5

    :goto_3
    if-ge v12, v10, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    const/4 v12, 0x3

    mul-int/2addr v10, v12

    new-array v13, v10, [I

    move v14, v5

    :goto_4
    if-ge v14, v10, :cond_3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    new-array v13, v10, [Ljn/G;

    new-array v14, v10, [Ljn/H;

    new-array v15, v5, [F

    mul-int/lit8 v5, v10, 0x4

    new-array v5, v5, [I

    move-object/from16 v12, p0

    invoke-virtual {v12, v9}, Lon/f;->b(I)I

    move-result v16

    const/high16 v17, 0x7f800000    # Float.POSITIVE_INFINITY

    const/high16 v18, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v12, 0x0

    move/from16 v24, v17

    move/from16 v17, v2

    move/from16 v2, v24

    move/from16 v25, v18

    move/from16 v18, v3

    move/from16 v3, v25

    :goto_5
    const/16 v19, 0x2

    if-ge v12, v10, :cond_4

    new-instance v0, Ljn/G;

    move/from16 v21, v9

    move/from16 v9, p4

    invoke-direct {v0, v12, v9}, Ljn/G;-><init>(II)V

    aput-object v0, v13, v12

    const/4 v9, 0x3

    iput v9, v0, Ljn/G;->e:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    aget-object v0, v13, v12

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v0, Ljn/G;->d:I

    aget-object v0, v13, v12

    iget-object v0, v0, Ljn/G;->b:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    and-int v9, v9, v16

    const/16 v22, 0x0

    aput v9, v0, v22

    aget-object v0, v13, v12

    iget-object v0, v0, Ljn/G;->b:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    and-int v9, v9, v16

    move/from16 v22, v10

    const/4 v10, 0x1

    aput v9, v0, v10

    aget-object v0, v13, v12

    iget-object v0, v0, Ljn/G;->b:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    and-int v9, v9, v16

    aput v9, v0, v19

    aget-object v0, v13, v12

    iget-object v0, v0, Ljn/G;->b:[I

    const/4 v9, 0x0

    aget v0, v0, v9

    const/4 v9, 0x3

    mul-int/2addr v0, v9

    add-int/2addr v0, v10

    aget v0, v11, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget-object v2, v13, v12

    iget-object v2, v2, Ljn/G;->b:[I

    aget v2, v2, v10

    mul-int/2addr v2, v9

    add-int/2addr v2, v10

    aget v2, v11, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget-object v2, v13, v12

    iget-object v2, v2, Ljn/G;->b:[I

    aget v2, v2, v19

    mul-int/2addr v2, v9

    add-int/2addr v2, v10

    aget v2, v11, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aget-object v0, v13, v12

    iget-object v0, v0, Ljn/G;->b:[I

    const/16 v20, 0x0

    aget v0, v0, v20

    mul-int/2addr v0, v9

    add-int/2addr v0, v10

    aget v0, v11, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aget-object v3, v13, v12

    iget-object v3, v3, Ljn/G;->b:[I

    aget v3, v3, v10

    mul-int/2addr v3, v9

    add-int/2addr v3, v10

    aget v3, v11, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aget-object v3, v13, v12

    iget-object v3, v3, Ljn/G;->b:[I

    aget v3, v3, v19

    mul-int/2addr v3, v9

    add-int/2addr v3, v10

    aget v3, v11, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    new-instance v0, Ljn/H;

    invoke-direct {v0}, Ljn/H;-><init>()V

    aput-object v0, v14, v12

    const/4 v9, 0x0

    iput v9, v0, Ljn/H;->a:I

    iput v9, v0, Ljn/H;->c:I

    iput v12, v0, Ljn/H;->b:I

    iput v10, v0, Ljn/H;->d:I

    mul-int/lit8 v0, v12, 0x4

    aput v9, v5, v0

    add-int/lit8 v9, v0, 0x1

    aput v10, v5, v9

    add-int/lit8 v9, v0, 0x2

    aput v19, v5, v9

    const/4 v9, 0x3

    add-int/2addr v0, v9

    const/16 v10, 0x15

    aput v10, v5, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p3

    move/from16 v9, v21

    move/from16 v10, v22

    goto/16 :goto_5

    :cond_4
    move/from16 v21, v9

    move/from16 v22, v10

    const/4 v10, 0x1

    aget-object v0, v4, v8

    iput-object v11, v0, Ljn/q;->b:[F

    iput-object v13, v0, Ljn/q;->c:[Ljn/G;

    iput-object v14, v0, Ljn/q;->d:[Ljn/H;

    iput-object v15, v0, Ljn/q;->e:[F

    iput-object v5, v0, Ljn/q;->f:[I

    new-instance v0, Ljn/r;

    invoke-direct {v0}, Ljn/r;-><init>()V

    const v5, 0x444e4156

    iput v5, v0, Ljn/r;->a:I

    const/4 v5, 0x7

    iput v5, v0, Ljn/r;->b:I

    iput v7, v0, Ljn/r;->c:I

    iput v6, v0, Ljn/r;->d:I

    move/from16 v5, v22

    iput v5, v0, Ljn/r;->g:I

    iput v9, v0, Ljn/r;->h:I

    iput v5, v0, Ljn/r;->j:I

    iput v5, v0, Ljn/r;->l:I

    mul-int/lit8 v9, v5, 0x6

    iput v9, v0, Ljn/r;->i:I

    iget-object v9, v0, Ljn/r;->s:[F

    move v11, v10

    move-object/from16 v10, p3

    iget-object v12, v10, Lon/g;->m:Lmn/d;

    iget v13, v12, Lmn/d;->a:F

    iget-object v14, v10, Lon/g;->n:Lmn/d;

    iget v15, v14, Lmn/d;->a:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v20, v15, v16

    sub-float v20, v13, v20

    iget v11, v10, Lon/g;->c:F

    move-object/from16 v21, v1

    iget v1, v10, Lon/g;->i:F

    mul-float v22, v11, v1

    move-object/from16 v23, v4

    int-to-float v4, v7

    mul-float v22, v22, v4

    add-float v20, v20, v22

    const/4 v4, 0x0

    aput v20, v9, v4

    const/4 v4, 0x1

    aput v2, v9, v4

    iget v2, v12, Lmn/d;->c:F

    iget v4, v14, Lmn/d;->c:F

    mul-float v12, v4, v16

    sub-float v12, v2, v12

    iget v14, v10, Lon/g;->j:F

    mul-float v20, v11, v14

    int-to-float v10, v6

    mul-float v20, v20, v10

    add-float v12, v12, v20

    aput v12, v9, v19

    iget-object v9, v0, Ljn/r;->t:[F

    mul-float v15, v15, v16

    sub-float/2addr v13, v15

    mul-float/2addr v1, v11

    add-int/lit8 v7, v7, 0x1

    int-to-float v10, v7

    mul-float/2addr v1, v10

    add-float/2addr v13, v1

    const/4 v1, 0x0

    aput v13, v9, v1

    const/4 v10, 0x1

    aput v3, v9, v10

    mul-float v4, v4, v16

    sub-float/2addr v2, v4

    mul-float/2addr v14, v11

    add-int/lit8 v3, v6, 0x1

    int-to-float v3, v3

    mul-float/2addr v14, v3

    add-float/2addr v2, v14

    aput v2, v9, v19

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v11

    iput v2, v0, Ljn/r;->u:F

    iput v5, v0, Ljn/r;->o:I

    aget-object v2, v23, v8

    iput-object v0, v2, Ljn/q;->a:Ljn/r;

    move-object/from16 v0, p3

    move v5, v1

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v1, v21

    move-object/from16 v4, v23

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inconsistent tile positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v21, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v23, v4

    move v1, v5

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    goto/16 :goto_0

    :cond_7
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v23, v4

    new-instance v0, Lon/e;

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lon/e;-><init>(II[Ljn/q;)V

    return-object v0
.end method
