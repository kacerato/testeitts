.class public Lwn/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lwn/h;IIIIII)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hf",
            "x",
            "y",
            "smin",
            "smax",
            "area",
            "flagMergeThr"
        }
    .end annotation

    iget v0, p0, Lwn/h;->a:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    new-instance p2, Lwn/K;

    invoke-direct {p2}, Lwn/K;-><init>()V

    iput p3, p2, Lwn/K;->a:I

    iput p4, p2, Lwn/K;->b:I

    iput p5, p2, Lwn/K;->c:I

    const/4 p3, 0x0

    iput-object p3, p2, Lwn/K;->d:Lwn/K;

    iget-object p4, p0, Lwn/h;->g:[Lwn/K;

    aget-object p5, p4, p1

    if-nez p5, :cond_0

    aput-object p2, p4, p1

    return-void

    :cond_0
    move-object p4, p3

    move-object p3, p5

    :goto_0
    if-eqz p3, :cond_7

    iget p5, p3, Lwn/K;->a:I

    iget v0, p2, Lwn/K;->b:I

    if-le p5, v0, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p3, Lwn/K;->b:I

    iget v2, p2, Lwn/K;->a:I

    if-ge v1, v2, :cond_2

    iget-object p4, p3, Lwn/K;->d:Lwn/K;

    move-object v3, p4

    move-object p4, p3

    move-object p3, v3

    goto :goto_0

    :cond_2
    if-ge p5, v2, :cond_3

    iput p5, p2, Lwn/K;->a:I

    :cond_3
    if-le v1, v0, :cond_4

    iput v1, p2, Lwn/K;->b:I

    :cond_4
    iget p5, p2, Lwn/K;->b:I

    iget v0, p3, Lwn/K;->b:I

    sub-int/2addr p5, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    if-gt p5, p6, :cond_5

    iget p5, p2, Lwn/K;->c:I

    iget v0, p3, Lwn/K;->c:I

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p2, Lwn/K;->c:I

    :cond_5
    iget-object p3, p3, Lwn/K;->d:Lwn/K;

    if-eqz p4, :cond_6

    iput-object p3, p4, Lwn/K;->d:Lwn/K;

    goto :goto_0

    :cond_6
    iget-object p5, p0, Lwn/h;->g:[Lwn/K;

    aput-object p3, p5, p1

    goto :goto_0

    :cond_7
    :goto_1
    if-eqz p4, :cond_8

    iget-object p0, p4, Lwn/K;->d:Lwn/K;

    iput-object p0, p2, Lwn/K;->d:Lwn/K;

    iput-object p2, p4, Lwn/K;->d:Lwn/K;

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lwn/h;->g:[Lwn/K;

    aget-object p3, p0, p1

    iput-object p3, p2, Lwn/K;->d:Lwn/K;

    aput-object p2, p0, p1

    :goto_2
    return-void
.end method

.method public static b([FIIIIFI)[I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "in",
            "nin",
            "out1",
            "out2",
            "x",
            "axis"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0xc

    new-array v2, v2, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    mul-int/lit8 v5, v4, 0x3

    add-int v5, p1, v5

    add-int v5, v5, p6

    aget v5, v0, v5

    sub-float v5, p5, v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    move v6, v3

    move v7, v6

    move v5, v4

    move v4, v7

    :goto_1
    if-ge v4, v1, :cond_7

    aget v8, v2, v5

    const/4 v9, 0x0

    cmpl-float v10, v8, v9

    const/4 v11, 0x1

    if-ltz v10, :cond_1

    move v10, v11

    goto :goto_2

    :cond_1
    move v10, v3

    :goto_2
    aget v12, v2, v4

    cmpl-float v13, v12, v9

    if-ltz v13, :cond_2

    goto :goto_3

    :cond_2
    move v11, v3

    :goto_3
    if-eq v10, v11, :cond_5

    sub-float v10, v8, v12

    div-float/2addr v8, v10

    mul-int/lit8 v10, v6, 0x3

    add-int v10, p3, v10

    mul-int/lit8 v5, v5, 0x3

    add-int v5, p1, v5

    aget v11, v0, v5

    mul-int/lit8 v12, v4, 0x3

    add-int v12, p1, v12

    aget v13, v0, v12

    sub-float/2addr v13, v11

    mul-float/2addr v13, v8

    add-float/2addr v11, v13

    aput v11, v0, v10

    add-int/lit8 v11, v10, 0x1

    add-int/lit8 v13, v5, 0x1

    aget v13, v0, v13

    add-int/lit8 v14, v12, 0x1

    aget v14, v0, v14

    sub-float/2addr v14, v13

    mul-float/2addr v14, v8

    add-float/2addr v13, v14

    aput v13, v0, v11

    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v5, v0, v5

    add-int/lit8 v13, v12, 0x2

    aget v13, v0, v13

    sub-float/2addr v13, v5

    mul-float/2addr v13, v8

    add-float/2addr v5, v13

    aput v5, v0, v11

    mul-int/lit8 v5, v7, 0x3

    add-int v5, p4, v5

    invoke-static {v0, v5, v0, v10}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v8, v7, 0x1

    aget v10, v2, v4

    cmpl-float v11, v10, v9

    if-lez v11, :cond_4

    mul-int/lit8 v5, v5, 0x3

    add-int v5, p3, v5

    invoke-static {v0, v5, v0, v12}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v5, v6, 0x2

    :cond_3
    move v7, v8

    goto :goto_4

    :cond_4
    cmpg-float v6, v10, v9

    if-gez v6, :cond_3

    mul-int/lit8 v8, v8, 0x3

    add-int v6, p4, v8

    invoke-static {v0, v6, v0, v12}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v7, v7, 0x2

    :goto_4
    move v6, v5

    goto :goto_5

    :cond_5
    cmpl-float v5, v12, v9

    if-ltz v5, :cond_6

    mul-int/lit8 v5, v6, 0x3

    add-int v5, p3, v5

    mul-int/lit8 v8, v4, 0x3

    add-int v8, p1, v8

    invoke-static {v0, v5, v0, v8}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v6, v6, 0x1

    aget v5, v2, v4

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_6

    goto :goto_5

    :cond_6
    mul-int/lit8 v5, v7, 0x3

    add-int v5, p4, v5

    mul-int/lit8 v8, v4, 0x3

    add-int v8, p1, v8

    invoke-static {v0, v5, v0, v8}, Lwn/I;->c([FI[FI)V

    add-int/lit8 v7, v7, 0x1

    :goto_5
    add-int/lit8 v5, v4, 0x1

    move v15, v5

    move v5, v4

    move v4, v15

    goto/16 :goto_1

    :cond_7
    filled-new-array {v6, v7}, [I

    move-result-object v0

    return-object v0
.end method

.method public static c([F[F[F[F)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bmin",
            "bmax"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p3, v0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    if-gtz v1, :cond_1

    aget v1, p1, v0

    aget v3, p2, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    aget v3, p0, v2

    aget v4, p3, v2

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    aget v3, p1, v2

    aget v2, p2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    const/4 v2, 0x2

    aget p0, p0, v2

    aget p3, p3, v2

    cmpl-float p0, p0, p3

    if-gtz p0, :cond_5

    aget p0, p1, v2

    aget p1, p2, v2

    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    return v0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIILwn/h;[F[FFFFI)V
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "v0",
            "v1",
            "v2",
            "area",
            "hf",
            "bmin",
            "bmax",
            "cs",
            "ics",
            "ich",
            "flagMergeThr"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v1, p7

    iget v9, v7, Lwn/h;->a:I

    iget v2, v7, Lwn/h;->b:I

    const/4 v10, 0x3

    new-array v3, v10, [F

    new-array v4, v10, [F

    const/4 v11, 0x1

    aget v5, v1, v11

    aget v6, v8, v11

    sub-float v12, v5, v6

    mul-int/lit8 v5, p1, 0x3

    invoke-static {v3, v0, v5}, Lwn/I;->d([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    invoke-static {v4, v0, v5}, Lwn/I;->d([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    mul-int/lit8 v6, p2, 0x3

    invoke-static {v3, v0, v6}, Lwn/I;->k([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    mul-int/lit8 v13, p3, 0x3

    invoke-static {v3, v0, v13}, Lwn/I;->k([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    invoke-static {v4, v0, v6}, Lwn/I;->i([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    invoke-static {v4, v0, v13}, Lwn/I;->i([FLcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    invoke-static {v8, v1, v3, v4}, Lwn/G;->c([F[F[F[F)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v14, 0x2

    aget v1, v3, v14

    aget v3, v8, v14

    sub-float/2addr v1, v3

    mul-float v1, v1, p9

    float-to-int v1, v1

    aget v4, v4, v14

    sub-float/2addr v4, v3

    mul-float v4, v4, p9

    float-to-int v3, v4

    sub-int/2addr v2, v11

    const/4 v15, -0x1

    invoke-static {v1, v15, v2}, Lwn/r;->e(III)I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lwn/r;->e(III)I

    move-result v3

    const/16 v2, 0x54

    new-array v2, v2, [F

    invoke-static {v2, v4, v0, v5}, Lwn/I;->b([FILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    invoke-static {v2, v10, v0, v6}, Lwn/I;->b([FILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    const/4 v5, 0x6

    invoke-static {v2, v5, v0, v13}, Lwn/I;->b([FILcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;I)V

    const/16 v0, 0x15

    const/16 v5, 0x2a

    const/16 v6, 0x3f

    move v13, v1

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v18, v10

    :goto_0
    if-gt v13, v3, :cond_e

    aget v1, v8, v14

    int-to-float v5, v13

    mul-float v5, v5, p8

    add-float/2addr v1, v5

    add-float v21, v1, p8

    const/16 v22, 0x2

    move-object/from16 v16, v2

    move/from16 v17, v23

    move/from16 v19, v0

    move/from16 v20, v24

    invoke-static/range {v16 .. v22}, Lwn/G;->b([FIIIIFI)[I

    move-result-object v1

    aget v5, v1, v4

    aget v25, v1, v11

    if-ge v5, v10, :cond_1

    :goto_1
    move-object/from16 v16, v2

    move/from16 v19, v3

    move v15, v4

    move/from16 v20, v10

    move/from16 v17, v11

    goto/16 :goto_8

    :cond_1
    if-gez v13, :cond_2

    goto :goto_1

    :cond_2
    aget v1, v2, v0

    move v14, v1

    move v10, v11

    :goto_2
    if-ge v10, v5, :cond_3

    mul-int/lit8 v16, v10, 0x3

    add-int v16, v0, v16

    aget v11, v2, v16

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v14, v11}, Ljava/lang/Math;->max(FF)F

    move-result v14

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    aget v10, v8, v4

    sub-float/2addr v1, v10

    mul-float v1, v1, p9

    float-to-int v1, v1

    sub-float/2addr v14, v10

    mul-float v14, v14, p9

    float-to-int v10, v14

    if-ltz v10, :cond_4

    if-lt v1, v9, :cond_5

    :cond_4
    move-object/from16 v16, v2

    move/from16 v19, v3

    move v15, v4

    const/16 v17, 0x1

    const/16 v20, 0x3

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v11, v9, -0x1

    invoke-static {v1, v15, v11}, Lwn/r;->e(III)I

    move-result v1

    invoke-static {v10, v4, v11}, Lwn/r;->e(III)I

    move-result v10

    move v11, v0

    move/from16 v18, v5

    move v14, v6

    move v6, v1

    :goto_3
    if-gt v6, v10, :cond_d

    aget v0, v8, v4

    int-to-float v1, v6

    mul-float v1, v1, p8

    add-float/2addr v0, v1

    add-float v21, v0, p8

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move/from16 v17, v11

    move/from16 v19, v23

    move/from16 v20, v14

    invoke-static/range {v16 .. v22}, Lwn/G;->b([FIIIIFI)[I

    move-result-object v0

    aget v1, v0, v4

    const/4 v5, 0x1

    aget v18, v0, v5

    const/4 v5, 0x3

    if-ge v1, v5, :cond_6

    :goto_4
    move-object/from16 v16, v2

    move/from16 v19, v3

    move v15, v4

    move/from16 v20, v5

    move/from16 v21, v6

    const/16 v17, 0x1

    goto/16 :goto_7

    :cond_6
    if-gez v6, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v23, 0x1

    aget v0, v2, v0

    move v5, v0

    const/4 v15, 0x1

    :goto_5
    if-ge v15, v1, :cond_8

    mul-int/lit8 v16, v15, 0x3

    add-int v16, v23, v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aget v4, v2, v16

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aget v4, v2, v16

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    const/16 v17, 0x1

    aget v1, v8, v17

    sub-float/2addr v0, v1

    sub-float/2addr v5, v1

    const/4 v1, 0x0

    cmpg-float v4, v5, v1

    if-gez v4, :cond_9

    :goto_6
    move-object/from16 v16, v2

    move/from16 v19, v3

    move/from16 v21, v6

    const/4 v15, 0x0

    const/16 v20, 0x3

    goto :goto_7

    :cond_9
    cmpl-float v4, v0, v12

    if-lez v4, :cond_a

    goto :goto_6

    :cond_a
    cmpg-float v4, v0, v1

    if-gez v4, :cond_b

    move v0, v1

    :cond_b
    cmpl-float v1, v5, v12

    if-lez v1, :cond_c

    move v5, v12

    :cond_c
    mul-float v0, v0, p10

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lwn/u;->d:I

    const/4 v4, 0x0

    invoke-static {v0, v4, v1}, Lwn/r;->e(III)I

    move-result v15

    mul-float v5, v5, p10

    float-to-double v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v1, v15, 0x1

    sget v5, Lwn/u;->d:I

    invoke-static {v0, v1, v5}, Lwn/r;->e(III)I

    move-result v5

    move-object/from16 v0, p5

    move v1, v6

    move-object/from16 v16, v2

    move v2, v13

    move/from16 v19, v3

    move v3, v15

    move v15, v4

    move v4, v5

    const/16 v20, 0x3

    move/from16 v5, p4

    move/from16 v21, v6

    move/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lwn/G;->a(Lwn/h;IIIIII)V

    :goto_7
    add-int/lit8 v6, v21, 0x1

    move v4, v15

    move-object/from16 v2, v16

    move/from16 v3, v19

    const/4 v15, -0x1

    move/from16 v26, v14

    move v14, v11

    move/from16 v11, v26

    goto/16 :goto_3

    :cond_d
    move-object/from16 v16, v2

    move/from16 v19, v3

    move v15, v4

    const/16 v17, 0x1

    const/16 v20, 0x3

    move v0, v11

    move v6, v14

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move v4, v15

    move-object/from16 v2, v16

    move/from16 v11, v17

    move/from16 v3, v19

    move/from16 v10, v20

    move/from16 v18, v25

    const/4 v14, 0x2

    const/4 v15, -0x1

    move/from16 v26, v24

    move/from16 v24, v23

    move/from16 v23, v26

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public static e(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIIILwn/N;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "solid",
            "verts",
            "v0",
            "v1",
            "v2",
            "area",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object v5, p0

    move-object/from16 v12, p7

    const-string v13, "RASTERIZE_TRIANGLES"

    invoke-virtual {v12, v13}, Lwn/N;->f(Ljava/lang/String;)V

    iget v8, v5, Lwn/h;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v9, v0, v8

    iget v1, v5, Lwn/h;->f:F

    div-float v10, v0, v1

    iget-object v6, v5, Lwn/h;->c:[F

    iget-object v7, v5, Lwn/h;->d:[F

    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lwn/G;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIILwn/h;[F[FFFFI)V

    invoke-virtual {v12, v13}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;[IIILwn/N;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "solid",
            "verts",
            "tris",
            "areas",
            "nt",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    const-string v15, "RASTERIZE_TRIANGLES"

    invoke-virtual {v14, v15}, Lwn/N;->f(Ljava/lang/String;)V

    iget v0, v12, Lwn/h;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v16, v1, v0

    iget v0, v12, Lwn/h;->f:F

    div-float v17, v1, v0

    const/4 v0, 0x0

    move/from16 v10, p4

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_0

    mul-int/lit8 v0, v11, 0x3

    invoke-virtual {v13, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v13, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v13, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->get(I)I

    move-result v3

    aget v4, p3, v11

    iget-object v6, v12, Lwn/h;->c:[F

    iget-object v7, v12, Lwn/h;->d:[F

    iget v8, v12, Lwn/h;->e:F

    move-object/from16 v0, p1

    move-object/from16 v5, p0

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v18, v11

    move/from16 v11, p5

    invoke-static/range {v0 .. v11}, Lwn/G;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIILwn/h;[F[FFFFI)V

    add-int/lit8 v11, v18, 0x1

    move/from16 v10, p4

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v15}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Lwn/h;Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;[IIILwn/N;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "solid",
            "verts",
            "areas",
            "nt",
            "flagMergeThr",
            "ctx"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p5

    const-string v14, "RASTERIZE_TRIANGLES"

    invoke-virtual {v13, v14}, Lwn/N;->f(Ljava/lang/String;)V

    iget v0, v12, Lwn/h;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v15, v1, v0

    iget v0, v12, Lwn/h;->f:F

    div-float v16, v1, v0

    const/4 v0, 0x0

    move/from16 v10, p3

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_0

    mul-int/lit8 v1, v11, 0x3

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x2

    aget v4, p2, v11

    iget-object v6, v12, Lwn/h;->c:[F

    iget-object v7, v12, Lwn/h;->d:[F

    iget v8, v12, Lwn/h;->e:F

    move-object/from16 v0, p1

    move-object/from16 v5, p0

    move v9, v15

    move/from16 v10, v16

    move/from16 v17, v11

    move/from16 v11, p4

    invoke-static/range {v0 .. v11}, Lwn/G;->d(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;IIIILwn/h;[F[FFFFI)V

    add-int/lit8 v11, v17, 0x1

    move/from16 v10, p3

    goto :goto_0

    :cond_0
    invoke-virtual {v13, v14}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method
