.class public Lwn/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lwn/N;ILwn/c;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "radius",
            "chf"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v1, Lwn/c;->a:I

    iget v3, v1, Lwn/c;->b:I

    const-string v4, "ERODE_AREA"

    invoke-virtual {v0, v4}, Lwn/N;->f(Ljava/lang/String;)V

    iget v5, v1, Lwn/c;->c:I

    new-array v5, v5, [I

    const/16 v6, 0xff

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/16 v9, 0x3f

    if-ge v8, v3, :cond_6

    move v10, v7

    :goto_1
    if-ge v10, v2, :cond_5

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    mul-int v12, v8, v2

    add-int/2addr v12, v10

    aget-object v11, v11, v12

    iget v12, v11, Lwn/b;->a:I

    iget v11, v11, Lwn/b;->b:I

    add-int/2addr v11, v12

    :goto_2
    if-ge v12, v11, :cond_4

    iget-object v13, v1, Lwn/c;->p:[I

    aget v13, v13, v12

    if-nez v13, :cond_0

    aput v7, v5, v12

    goto :goto_4

    :cond_0
    iget-object v13, v1, Lwn/c;->n:[Lwn/d;

    aget-object v13, v13, v12

    move v14, v7

    move v15, v14

    :goto_3
    const/4 v6, 0x4

    if-ge v14, v6, :cond_2

    invoke-static {v13, v14}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    if-eq v6, v9, :cond_1

    invoke-static {v14}, Lwn/r;->b(I)I

    move-result v6

    add-int/2addr v6, v10

    invoke-static {v14}, Lwn/r;->c(I)I

    move-result v16

    add-int v16, v8, v16

    iget-object v9, v1, Lwn/c;->m:[Lwn/b;

    mul-int v16, v16, v2

    add-int v6, v6, v16

    aget-object v6, v9, v6

    iget v6, v6, Lwn/b;->a:I

    invoke-static {v13, v14}, Lwn/r;->a(Lwn/d;I)I

    move-result v9

    add-int/2addr v6, v9

    iget-object v9, v1, Lwn/c;->p:[I

    aget v6, v9, v6

    if-eqz v6, :cond_1

    add-int/lit8 v15, v15, 0x1

    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/16 v9, 0x3f

    goto :goto_3

    :cond_2
    if-eq v15, v6, :cond_3

    aput v7, v5, v12

    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    const/16 v6, 0xff

    const/16 v9, 0x3f

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, 0x1

    const/16 v6, 0xff

    const/16 v9, 0x3f

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    const/16 v6, 0xff

    goto :goto_0

    :cond_6
    move v6, v7

    :goto_5
    const/4 v9, 0x2

    if-ge v6, v3, :cond_e

    move v10, v7

    :goto_6
    if-ge v10, v2, :cond_d

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    mul-int v12, v6, v2

    add-int/2addr v12, v10

    aget-object v11, v11, v12

    iget v12, v11, Lwn/b;->a:I

    iget v11, v11, Lwn/b;->b:I

    add-int/2addr v11, v12

    :goto_7
    if-ge v12, v11, :cond_c

    iget-object v13, v1, Lwn/c;->n:[Lwn/d;

    aget-object v13, v13, v12

    invoke-static {v13, v7}, Lwn/r;->a(Lwn/d;I)I

    move-result v14

    const/16 v15, 0x3f

    if-eq v14, v15, :cond_8

    invoke-static {v7}, Lwn/r;->b(I)I

    move-result v14

    add-int/2addr v14, v10

    invoke-static {v7}, Lwn/r;->c(I)I

    move-result v15

    add-int/2addr v15, v6

    iget-object v8, v1, Lwn/c;->m:[Lwn/b;

    mul-int v17, v15, v2

    add-int v17, v14, v17

    aget-object v8, v8, v17

    iget v8, v8, Lwn/b;->a:I

    invoke-static {v13, v7}, Lwn/r;->a(Lwn/d;I)I

    move-result v17

    add-int v8, v8, v17

    iget-object v7, v1, Lwn/c;->n:[Lwn/d;

    aget-object v7, v7, v8

    aget v8, v5, v8

    add-int/2addr v8, v9

    const/16 v9, 0xff

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget v9, v5, v12

    if-ge v8, v9, :cond_7

    aput v8, v5, v12

    :cond_7
    const/4 v8, 0x3

    invoke-static {v7, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v9

    move/from16 v18, v11

    const/16 v11, 0x3f

    if-eq v9, v11, :cond_9

    invoke-static {v8}, Lwn/r;->b(I)I

    move-result v9

    add-int/2addr v14, v9

    invoke-static {v8}, Lwn/r;->c(I)I

    move-result v9

    add-int/2addr v15, v9

    iget-object v9, v1, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v15, v2

    add-int/2addr v14, v15

    aget-object v9, v9, v14

    iget v9, v9, Lwn/b;->a:I

    invoke-static {v7, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v7

    add-int/2addr v9, v7

    aget v7, v5, v9

    add-int/2addr v7, v8

    const/16 v9, 0xff

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v9, v5, v12

    if-ge v7, v9, :cond_9

    aput v7, v5, v12

    goto :goto_8

    :cond_8
    move/from16 v18, v11

    const/4 v8, 0x3

    :cond_9
    :goto_8
    invoke-static {v13, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v7

    const/16 v9, 0x3f

    if-eq v7, v9, :cond_b

    invoke-static {v8}, Lwn/r;->b(I)I

    move-result v7

    add-int/2addr v7, v10

    invoke-static {v8}, Lwn/r;->c(I)I

    move-result v9

    add-int/2addr v9, v6

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    mul-int v14, v9, v2

    add-int/2addr v14, v7

    aget-object v11, v11, v14

    iget v11, v11, Lwn/b;->a:I

    invoke-static {v13, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    add-int/2addr v11, v13

    iget-object v8, v1, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v11

    aget v11, v5, v11

    const/4 v13, 0x2

    add-int/2addr v11, v13

    const/16 v14, 0xff

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    aget v14, v5, v12

    if-ge v11, v14, :cond_a

    aput v11, v5, v12

    :cond_a
    invoke-static {v8, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    const/16 v14, 0x3f

    if-eq v11, v14, :cond_b

    invoke-static {v13}, Lwn/r;->b(I)I

    move-result v11

    add-int/2addr v7, v11

    invoke-static {v13}, Lwn/r;->c(I)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v9, v2

    add-int/2addr v7, v9

    aget-object v7, v11, v7

    iget v7, v7, Lwn/b;->a:I

    invoke-static {v8, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    add-int/2addr v7, v8

    aget v7, v5, v7

    const/4 v8, 0x3

    add-int/2addr v7, v8

    const/16 v8, 0xff

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aget v8, v5, v12

    if-ge v7, v8, :cond_b

    aput v7, v5, v12

    :cond_b
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v18

    const/4 v7, 0x0

    const/4 v9, 0x2

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v10, v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    goto/16 :goto_6

    :cond_d
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_e
    const/4 v6, 0x1

    sub-int/2addr v3, v6

    :goto_9
    if-ltz v3, :cond_17

    add-int/lit8 v7, v2, -0x1

    :goto_a
    if-ltz v7, :cond_16

    iget-object v8, v1, Lwn/c;->m:[Lwn/b;

    mul-int v9, v3, v2

    add-int/2addr v9, v7

    aget-object v8, v8, v9

    iget v9, v8, Lwn/b;->a:I

    iget v8, v8, Lwn/b;->b:I

    add-int/2addr v8, v9

    :goto_b
    if-ge v9, v8, :cond_15

    iget-object v10, v1, Lwn/c;->n:[Lwn/d;

    aget-object v10, v10, v9

    const/4 v11, 0x2

    invoke-static {v10, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    const/16 v13, 0x3f

    if-eq v12, v13, :cond_10

    invoke-static {v11}, Lwn/r;->b(I)I

    move-result v12

    add-int/2addr v12, v7

    invoke-static {v11}, Lwn/r;->c(I)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v1, Lwn/c;->m:[Lwn/b;

    mul-int v15, v13, v2

    add-int/2addr v15, v12

    aget-object v14, v14, v15

    iget v14, v14, Lwn/b;->a:I

    invoke-static {v10, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v1, Lwn/c;->n:[Lwn/d;

    aget-object v15, v15, v14

    aget v14, v5, v14

    add-int/2addr v14, v11

    const/16 v11, 0xff

    invoke-static {v14, v11}, Ljava/lang/Math;->min(II)I

    move-result v14

    aget v11, v5, v9

    if-ge v14, v11, :cond_f

    aput v14, v5, v9

    :cond_f
    invoke-static {v15, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    const/16 v14, 0x3f

    if-eq v11, v14, :cond_10

    invoke-static {v6}, Lwn/r;->b(I)I

    move-result v11

    add-int/2addr v12, v11

    invoke-static {v6}, Lwn/r;->c(I)I

    move-result v11

    add-int/2addr v13, v11

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v13, v2

    add-int/2addr v12, v13

    aget-object v11, v11, v12

    iget v11, v11, Lwn/b;->a:I

    invoke-static {v15, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    add-int/2addr v11, v12

    aget v11, v5, v11

    const/4 v12, 0x3

    add-int/2addr v11, v12

    const/16 v12, 0xff

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aget v12, v5, v9

    if-ge v11, v12, :cond_10

    aput v11, v5, v9

    :cond_10
    invoke-static {v10, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_13

    invoke-static {v6}, Lwn/r;->b(I)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v6}, Lwn/r;->c(I)I

    move-result v12

    add-int/2addr v12, v3

    iget-object v13, v1, Lwn/c;->m:[Lwn/b;

    mul-int v14, v12, v2

    add-int/2addr v14, v11

    aget-object v13, v13, v14

    iget v13, v13, Lwn/b;->a:I

    invoke-static {v10, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    add-int/2addr v13, v10

    iget-object v10, v1, Lwn/c;->n:[Lwn/d;

    aget-object v10, v10, v13

    aget v13, v5, v13

    const/4 v14, 0x2

    add-int/2addr v13, v14

    const/16 v14, 0xff

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget v14, v5, v9

    if-ge v13, v14, :cond_11

    aput v13, v5, v9

    :cond_11
    const/4 v13, 0x0

    invoke-static {v10, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v14

    const/16 v15, 0x3f

    if-eq v14, v15, :cond_12

    invoke-static {v13}, Lwn/r;->b(I)I

    move-result v14

    add-int/2addr v11, v14

    invoke-static {v13}, Lwn/r;->c(I)I

    move-result v14

    add-int/2addr v12, v14

    iget-object v14, v1, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v12, v2

    add-int/2addr v11, v12

    aget-object v11, v14, v11

    iget v11, v11, Lwn/b;->a:I

    invoke-static {v10, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    add-int/2addr v11, v10

    aget v10, v5, v11

    const/4 v11, 0x3

    add-int/2addr v10, v11

    const/16 v12, 0xff

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v13, v5, v9

    if-ge v10, v13, :cond_14

    aput v10, v5, v9

    goto :goto_d

    :cond_12
    :goto_c
    const/4 v11, 0x3

    const/16 v12, 0xff

    goto :goto_d

    :cond_13
    move v15, v12

    goto :goto_c

    :cond_14
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_b

    :cond_15
    const/4 v11, 0x3

    const/16 v12, 0xff

    const/16 v15, 0x3f

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_a

    :cond_16
    const/4 v11, 0x3

    const/16 v12, 0xff

    const/16 v15, 0x3f

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_9

    :cond_17
    const/4 v3, 0x2

    mul-int/lit8 v2, p1, 0x2

    const/4 v13, 0x0

    :goto_e
    iget v3, v1, Lwn/c;->c:I

    if-ge v13, v3, :cond_19

    aget v3, v5, v13

    if-ge v3, v2, :cond_18

    iget-object v3, v1, Lwn/c;->p:[I

    const/4 v6, 0x0

    aput v6, v3, v13

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    :goto_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    :cond_19
    invoke-virtual {v0, v4}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lwn/N;[FFFLwn/a;Lwn/c;)V
    .locals 19
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
            "ctx",
            "verts",
            "hmin",
            "hmax",
            "areaMod",
            "chf"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "MARK_CONVEXPOLY_AREA"

    invoke-virtual {v0, v5}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v6, 0x3

    new-array v7, v6, [F

    new-array v8, v6, [F

    const/4 v9, 0x0

    invoke-static {v7, v1, v9}, Lwn/I;->f([F[FI)V

    invoke-static {v8, v1, v9}, Lwn/I;->f([F[FI)V

    move v10, v6

    :goto_0
    array-length v11, v1

    if-ge v10, v11, :cond_0

    invoke-static {v7, v1, v10}, Lwn/I;->l([F[FI)V

    invoke-static {v8, v1, v10}, Lwn/I;->j([F[FI)V

    add-int/2addr v10, v6

    goto :goto_0

    :cond_0
    aput p2, v7, v4

    aput p3, v8, v4

    aget v10, v7, v9

    iget-object v11, v2, Lwn/c;->i:[F

    aget v12, v11, v9

    sub-float/2addr v10, v12

    iget v13, v2, Lwn/c;->k:F

    div-float/2addr v10, v13

    float-to-int v10, v10

    aget v14, v7, v4

    aget v15, v11, v4

    sub-float/2addr v14, v15

    iget v6, v2, Lwn/c;->l:F

    div-float/2addr v14, v6

    float-to-int v14, v14

    aget v7, v7, v3

    aget v11, v11, v3

    sub-float/2addr v7, v11

    div-float/2addr v7, v13

    float-to-int v7, v7

    aget v17, v8, v9

    sub-float v17, v17, v12

    div-float v12, v17, v13

    float-to-int v12, v12

    sub-float v15, p3, v15

    div-float/2addr v15, v6

    float-to-int v6, v15

    aget v8, v8, v3

    sub-float/2addr v8, v11

    div-float/2addr v8, v13

    float-to-int v8, v8

    if-gez v12, :cond_1

    return-void

    :cond_1
    iget v11, v2, Lwn/c;->a:I

    if-lt v10, v11, :cond_2

    return-void

    :cond_2
    if-gez v8, :cond_3

    return-void

    :cond_3
    iget v13, v2, Lwn/c;->b:I

    if-lt v7, v13, :cond_4

    return-void

    :cond_4
    if-gez v10, :cond_5

    move v10, v9

    :cond_5
    if-lt v12, v11, :cond_6

    add-int/lit8 v12, v11, -0x1

    :cond_6
    if-gez v7, :cond_7

    move v7, v9

    :cond_7
    if-lt v8, v13, :cond_8

    add-int/lit8 v8, v13, -0x1

    :cond_8
    :goto_1
    if-gt v7, v8, :cond_e

    move v11, v10

    :goto_2
    if-gt v11, v12, :cond_d

    iget-object v13, v2, Lwn/c;->m:[Lwn/b;

    iget v15, v2, Lwn/c;->a:I

    mul-int/2addr v15, v7

    add-int/2addr v15, v11

    aget-object v13, v13, v15

    iget v15, v13, Lwn/b;->a:I

    iget v13, v13, Lwn/b;->b:I

    add-int/2addr v13, v15

    :goto_3
    if-ge v15, v13, :cond_c

    iget-object v4, v2, Lwn/c;->n:[Lwn/d;

    aget-object v4, v4, v15

    iget-object v3, v2, Lwn/c;->p:[I

    aget v3, v3, v15

    if-nez v3, :cond_9

    move-object/from16 v4, p4

    move/from16 p2, v6

    move/from16 v16, v9

    const/4 v3, 0x1

    const/4 v6, 0x3

    goto :goto_5

    :cond_9
    iget v3, v4, Lwn/d;->a:I

    if-lt v3, v14, :cond_b

    if-gt v3, v6, :cond_b

    iget-object v3, v2, Lwn/c;->i:[F

    aget v4, v3, v9

    int-to-float v9, v11

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v9, v9, v18

    move/from16 p2, v6

    iget v6, v2, Lwn/c;->k:F

    mul-float/2addr v9, v6

    add-float/2addr v4, v9

    const/4 v9, 0x2

    aget v3, v3, v9

    int-to-float v9, v7

    add-float v9, v9, v18

    mul-float/2addr v9, v6

    add-float/2addr v3, v9

    const/4 v6, 0x3

    new-array v9, v6, [F

    const/16 v16, 0x0

    aput v4, v9, v16

    const/4 v4, 0x0

    const/16 v17, 0x1

    aput v4, v9, v17

    const/4 v4, 0x2

    aput v3, v9, v4

    invoke-static {v1, v9}, Lwn/n;->g([F[F)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lwn/c;->p:[I

    aget v9, v3, v15

    move-object/from16 v4, p4

    invoke-virtual {v4, v9}, Lwn/a;->a(I)I

    move-result v9

    aput v9, v3, v15

    :goto_4
    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v4, p4

    goto :goto_4

    :cond_b
    move-object/from16 v4, p4

    move/from16 p2, v6

    move/from16 v16, v9

    const/4 v6, 0x3

    goto :goto_4

    :goto_5
    add-int/2addr v15, v3

    move/from16 v6, p2

    move v4, v3

    move/from16 v9, v16

    const/4 v3, 0x2

    goto :goto_3

    :cond_c
    move v3, v4

    move/from16 p2, v6

    move/from16 v16, v9

    const/4 v6, 0x3

    move-object/from16 v4, p4

    add-int/2addr v11, v3

    move/from16 v6, p2

    move v4, v3

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_d
    move v3, v4

    move/from16 p2, v6

    move/from16 v16, v9

    const/4 v6, 0x3

    move-object/from16 v4, p4

    add-int/2addr v7, v3

    move/from16 v6, p2

    move v4, v3

    const/4 v3, 0x2

    goto/16 :goto_1

    :cond_e
    invoke-virtual {v0, v5}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static g([F[F)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verts",
            "p"
        }
    .end annotation

    array-length v0, p0

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x2

    aget v4, p0, v4

    const/4 v5, 0x2

    aget v5, p1, v5

    cmpl-float v6, v4, v5

    const/4 v7, 0x1

    if-lez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    add-int/lit8 v8, v2, 0x2

    aget v8, p0, v8

    cmpl-float v9, v8, v5

    if-lez v9, :cond_1

    goto :goto_2

    :cond_1
    move v7, v1

    :goto_2
    if-eq v6, v7, :cond_2

    aget v6, p1, v1

    aget v2, p0, v2

    aget v7, p0, v0

    sub-float/2addr v2, v7

    sub-float/2addr v5, v4

    mul-float/2addr v2, v5

    sub-float/2addr v8, v4

    div-float/2addr v2, v8

    add-float/2addr v2, v7

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2

    xor-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v0, 0x3

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_0

    :cond_3
    return v3
.end method


# virtual methods
.method public b(Lwn/N;[F[FLwn/a;Lwn/c;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "bmin",
            "bmax",
            "areaMod",
            "chf"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    const-string v2, "MARK_BOX_AREA"

    invoke-virtual {v0, v2}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v4, p2, v3

    iget-object v5, v1, Lwn/c;->i:[F

    aget v6, v5, v3

    sub-float/2addr v4, v6

    iget v7, v1, Lwn/c;->k:F

    div-float/2addr v4, v7

    float-to-int v4, v4

    const/4 v8, 0x1

    aget v9, p2, v8

    aget v10, v5, v8

    sub-float/2addr v9, v10

    iget v11, v1, Lwn/c;->l:F

    div-float/2addr v9, v11

    float-to-int v9, v9

    const/4 v12, 0x2

    aget v13, p2, v12

    aget v5, v5, v12

    sub-float/2addr v13, v5

    div-float/2addr v13, v7

    float-to-int v13, v13

    aget v14, p3, v3

    sub-float/2addr v14, v6

    div-float/2addr v14, v7

    float-to-int v6, v14

    aget v14, p3, v8

    sub-float/2addr v14, v10

    div-float/2addr v14, v11

    float-to-int v10, v14

    aget v11, p3, v12

    sub-float/2addr v11, v5

    div-float/2addr v11, v7

    float-to-int v5, v11

    if-gez v6, :cond_0

    return-void

    :cond_0
    iget v7, v1, Lwn/c;->a:I

    if-lt v4, v7, :cond_1

    return-void

    :cond_1
    if-gez v5, :cond_2

    return-void

    :cond_2
    iget v11, v1, Lwn/c;->b:I

    if-lt v13, v11, :cond_3

    return-void

    :cond_3
    if-gez v4, :cond_4

    move v4, v3

    :cond_4
    if-lt v6, v7, :cond_5

    add-int/lit8 v6, v7, -0x1

    :cond_5
    if-gez v13, :cond_6

    goto :goto_0

    :cond_6
    move v3, v13

    :goto_0
    if-lt v5, v11, :cond_7

    add-int/lit8 v5, v11, -0x1

    :cond_7
    :goto_1
    if-gt v3, v5, :cond_b

    move v7, v4

    :goto_2
    if-gt v7, v6, :cond_a

    iget-object v8, v1, Lwn/c;->m:[Lwn/b;

    iget v11, v1, Lwn/c;->a:I

    mul-int/2addr v11, v3

    add-int/2addr v11, v7

    aget-object v8, v8, v11

    iget v11, v8, Lwn/b;->a:I

    iget v8, v8, Lwn/b;->b:I

    add-int/2addr v8, v11

    :goto_3
    if-ge v11, v8, :cond_9

    iget-object v12, v1, Lwn/c;->n:[Lwn/d;

    aget-object v12, v12, v11

    iget v12, v12, Lwn/d;->a:I

    if-lt v12, v9, :cond_8

    if-gt v12, v10, :cond_8

    iget-object v12, v1, Lwn/c;->p:[I

    aget v13, v12, v11

    if-eqz v13, :cond_8

    move-object/from16 v14, p4

    invoke-virtual {v14, v13}, Lwn/a;->a(I)I

    move-result v13

    aput v13, v12, v11

    goto :goto_4

    :cond_8
    move-object/from16 v14, p4

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v14, p4

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v14, p4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v2}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lwn/N;[FFFLwn/a;Lwn/c;)V
    .locals 21
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
            "ctx",
            "pos",
            "r",
            "h",
            "areaMod",
            "chf"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    const-string v2, "MARK_CYLINDER_AREA"

    invoke-virtual {v0, v2}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v4, p2, v3

    sub-float v5, v4, p3

    const/4 v6, 0x1

    aget v7, p2, v6

    const/4 v8, 0x2

    aget v9, p2, v8

    sub-float v10, v9, p3

    const/4 v11, 0x3

    new-array v12, v11, [F

    aput v5, v12, v3

    aput v7, v12, v6

    aput v10, v12, v8

    add-float v4, v4, p3

    add-float v7, v7, p4

    add-float v9, v9, p3

    new-array v5, v11, [F

    aput v4, v5, v3

    aput v7, v5, v6

    aput v9, v5, v8

    mul-float v4, p3, p3

    aget v7, v12, v3

    iget-object v9, v1, Lwn/c;->i:[F

    aget v10, v9, v3

    sub-float/2addr v7, v10

    iget v11, v1, Lwn/c;->k:F

    div-float/2addr v7, v11

    float-to-int v7, v7

    aget v13, v12, v6

    aget v14, v9, v6

    sub-float/2addr v13, v14

    iget v15, v1, Lwn/c;->l:F

    div-float/2addr v13, v15

    float-to-int v13, v13

    aget v12, v12, v8

    aget v9, v9, v8

    sub-float/2addr v12, v9

    div-float/2addr v12, v11

    float-to-int v12, v12

    aget v16, v5, v3

    sub-float v16, v16, v10

    div-float v10, v16, v11

    float-to-int v10, v10

    aget v16, v5, v6

    sub-float v16, v16, v14

    div-float v14, v16, v15

    float-to-int v14, v14

    aget v5, v5, v8

    sub-float/2addr v5, v9

    div-float/2addr v5, v11

    float-to-int v5, v5

    if-gez v10, :cond_0

    return-void

    :cond_0
    iget v9, v1, Lwn/c;->a:I

    if-lt v7, v9, :cond_1

    return-void

    :cond_1
    if-gez v5, :cond_2

    return-void

    :cond_2
    iget v11, v1, Lwn/c;->b:I

    if-lt v12, v11, :cond_3

    return-void

    :cond_3
    if-gez v7, :cond_4

    move v7, v3

    :cond_4
    if-lt v10, v9, :cond_5

    add-int/lit8 v10, v9, -0x1

    :cond_5
    if-gez v12, :cond_6

    move v12, v3

    :cond_6
    if-lt v5, v11, :cond_7

    add-int/lit8 v5, v11, -0x1

    :cond_7
    :goto_0
    if-gt v12, v5, :cond_d

    move v9, v7

    :goto_1
    if-gt v9, v10, :cond_c

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    iget v15, v1, Lwn/c;->a:I

    mul-int/2addr v15, v12

    add-int/2addr v15, v9

    aget-object v11, v11, v15

    iget v15, v11, Lwn/b;->a:I

    iget v11, v11, Lwn/b;->b:I

    add-int/2addr v11, v15

    :goto_2
    if-ge v15, v11, :cond_b

    iget-object v6, v1, Lwn/c;->n:[Lwn/d;

    aget-object v6, v6, v15

    iget-object v8, v1, Lwn/c;->p:[I

    aget v3, v8, v15

    if-nez v3, :cond_8

    move-object/from16 v6, p5

    move/from16 p3, v5

    move/from16 p4, v7

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x2

    goto :goto_4

    :cond_8
    iget v6, v6, Lwn/d;->a:I

    if-lt v6, v13, :cond_a

    if-gt v6, v14, :cond_a

    iget-object v6, v1, Lwn/c;->i:[F

    const/16 v18, 0x0

    aget v19, v6, v18

    move/from16 p3, v5

    int-to-float v5, v9

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v5, v5, v20

    move/from16 p4, v7

    iget v7, v1, Lwn/c;->k:F

    mul-float/2addr v5, v7

    add-float v19, v19, v5

    const/4 v5, 0x2

    aget v6, v6, v5

    int-to-float v5, v12

    add-float v5, v5, v20

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    const/4 v5, 0x0

    aget v7, p2, v5

    sub-float v19, v19, v7

    const/4 v7, 0x2

    aget v17, p2, v7

    sub-float v6, v6, v17

    mul-float v19, v19, v19

    mul-float/2addr v6, v6

    add-float v19, v19, v6

    cmpg-float v6, v19, v4

    if-gez v6, :cond_9

    move-object/from16 v6, p5

    invoke-virtual {v6, v3}, Lwn/a;->a(I)I

    move-result v3

    aput v3, v8, v15

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_9
    move-object/from16 v6, p5

    goto :goto_3

    :cond_a
    move-object/from16 v6, p5

    move/from16 p3, v5

    move/from16 p4, v7

    const/4 v5, 0x0

    const/4 v7, 0x2

    goto :goto_3

    :goto_4
    add-int/2addr v15, v3

    move v6, v3

    move v3, v5

    move v8, v7

    move/from16 v5, p3

    move/from16 v7, p4

    goto :goto_2

    :cond_b
    move/from16 p3, v5

    move/from16 p4, v7

    move v7, v8

    move v5, v3

    move v3, v6

    move-object/from16 v6, p5

    add-int/2addr v9, v3

    move v6, v3

    move v3, v5

    move/from16 v5, p3

    move/from16 v7, p4

    goto/16 :goto_1

    :cond_c
    move/from16 p3, v5

    move/from16 p4, v7

    move v7, v8

    move v5, v3

    move v3, v6

    move-object/from16 v6, p5

    add-int/2addr v12, v3

    move v6, v3

    move v3, v5

    move/from16 v5, p3

    move/from16 v7, p4

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0, v2}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lwn/N;Lwn/c;)Z
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "chf"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget v2, v1, Lwn/c;->a:I

    iget v3, v1, Lwn/c;->b:I

    const-string v4, "MEDIAN_AREA"

    invoke-virtual {v0, v4}, Lwn/N;->f(Ljava/lang/String;)V

    iget v5, v1, Lwn/c;->c:I

    new-array v5, v5, [I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_7

    iget-object v10, v1, Lwn/c;->m:[Lwn/b;

    mul-int v11, v7, v2

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    iget v11, v10, Lwn/b;->a:I

    iget v10, v10, Lwn/b;->b:I

    add-int/2addr v10, v11

    :goto_2
    if-ge v11, v10, :cond_6

    iget-object v12, v1, Lwn/c;->n:[Lwn/d;

    aget-object v12, v12, v11

    iget-object v13, v1, Lwn/c;->p:[I

    aget v13, v13, v11

    if-nez v13, :cond_0

    aput v13, v5, v11

    move/from16 v18, v3

    move/from16 v19, v10

    goto/16 :goto_6

    :cond_0
    const/16 v13, 0x9

    new-array v14, v13, [I

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v13, :cond_1

    iget-object v6, v1, Lwn/c;->p:[I

    aget v6, v6, v11

    aput v6, v14, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_4
    const/4 v13, 0x4

    if-ge v6, v13, :cond_5

    invoke-static {v12, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    const/16 v15, 0x3f

    if-eq v13, v15, :cond_3

    invoke-static {v6}, Lwn/r;->b(I)I

    move-result v13

    add-int/2addr v13, v9

    invoke-static {v6}, Lwn/r;->c(I)I

    move-result v16

    add-int v16, v7, v16

    iget-object v8, v1, Lwn/c;->m:[Lwn/b;

    mul-int v17, v16, v2

    add-int v17, v13, v17

    aget-object v8, v8, v17

    iget v8, v8, Lwn/b;->a:I

    invoke-static {v12, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v17

    add-int v8, v8, v17

    iget-object v15, v1, Lwn/c;->p:[I

    aget v15, v15, v8

    if-eqz v15, :cond_2

    mul-int/lit8 v18, v6, 0x2

    aput v15, v14, v18

    :cond_2
    iget-object v15, v1, Lwn/c;->n:[Lwn/d;

    aget-object v8, v15, v8

    add-int/lit8 v15, v6, 0x1

    and-int/lit8 v15, v15, 0x3

    move/from16 v18, v3

    invoke-static {v8, v15}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    move/from16 v19, v10

    const/16 v10, 0x3f

    if-eq v3, v10, :cond_4

    invoke-static {v15}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v13, v3

    invoke-static {v15}, Lwn/r;->c(I)I

    move-result v3

    add-int v16, v16, v3

    iget-object v3, v1, Lwn/c;->m:[Lwn/b;

    mul-int v16, v16, v2

    add-int v13, v13, v16

    aget-object v3, v3, v13

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v8, v15}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    add-int/2addr v3, v8

    iget-object v8, v1, Lwn/c;->p:[I

    aget v3, v8, v3

    if-eqz v3, :cond_4

    mul-int/lit8 v8, v6, 0x2

    const/4 v10, 0x1

    add-int/2addr v8, v10

    aput v3, v14, v8

    goto :goto_5

    :cond_3
    move/from16 v18, v3

    move/from16 v19, v10

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move/from16 v10, v19

    goto :goto_4

    :cond_5
    move/from16 v18, v3

    move/from16 v19, v10

    invoke-static {v14}, Ljava/util/Arrays;->sort([I)V

    aget v3, v14, v13

    aput v3, v5, v11

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v18

    move/from16 v10, v19

    goto/16 :goto_2

    :cond_6
    move/from16 v18, v3

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_7
    move/from16 v18, v3

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_8
    iput-object v5, v1, Lwn/c;->p:[I

    invoke-virtual {v0, v4}, Lwn/N;->g(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public f([FIF[FI)I
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "nverts",
            "offset",
            "outVerts",
            "maxOutVerts"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p5

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_7

    add-int v5, v3, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    rem-int/2addr v5, v0

    add-int/lit8 v7, v3, 0x1

    rem-int v8, v7, v0

    mul-int/lit8 v5, v5, 0x3

    mul-int/lit8 v3, v3, 0x3

    mul-int/lit8 v8, v8, 0x3

    aget v9, p1, v3

    aget v10, p1, v5

    sub-float/2addr v9, v10

    add-int/lit8 v10, v3, 0x2

    aget v11, p1, v10

    add-int/lit8 v5, v5, 0x2

    aget v5, p1, v5

    sub-float/2addr v11, v5

    mul-float v5, v9, v9

    mul-float v12, v11, v11

    add-float/2addr v5, v12

    const v12, 0x358637bd    # 1.0E-6f

    cmpl-float v13, v5, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move/from16 v16, v7

    if-lez v13, :cond_0

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    div-double v5, v14, v5

    double-to-float v5, v5

    mul-float/2addr v9, v5

    mul-float/2addr v11, v5

    :cond_0
    aget v5, p1, v8

    aget v6, p1, v3

    sub-float/2addr v5, v6

    add-int/lit8 v8, v8, 0x2

    aget v6, p1, v8

    aget v7, p1, v10

    sub-float/2addr v6, v7

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    cmpl-float v8, v7, v12

    if-lez v8, :cond_1

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v14, v7

    double-to-float v7, v14

    mul-float/2addr v5, v7

    mul-float/2addr v6, v7

    :cond_1
    neg-float v7, v11

    neg-float v8, v6

    mul-float v14, v5, v11

    mul-float v15, v9, v6

    sub-float/2addr v14, v15

    add-float v15, v7, v8

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v15, v15, v17

    add-float v18, v9, v5

    mul-float v18, v18, v17

    mul-float v19, v15, v15

    mul-float v20, v18, v18

    add-float v19, v19, v20

    const v20, 0x3f99999a    # 1.2f

    mul-float v21, v19, v20

    mul-float v21, v21, v20

    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v21, v21, v20

    if-gez v21, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move v13, v2

    :goto_1
    cmpl-float v12, v19, v12

    if-lez v12, :cond_3

    div-float v12, v20, v19

    mul-float/2addr v15, v12

    mul-float v18, v18, v12

    :cond_3
    if-eqz v13, :cond_5

    const/4 v12, 0x0

    cmpg-float v12, v14, v12

    if-gez v12, :cond_5

    add-int/lit8 v12, v4, 0x2

    if-lt v12, v1, :cond_4

    return v2

    :cond_4
    mul-float v12, v9, v5

    mul-float v13, v11, v6

    add-float/2addr v12, v13

    sub-float v20, v20, v12

    mul-float v20, v20, v17

    mul-int/lit8 v12, v4, 0x3

    aget v13, p1, v3

    neg-float v7, v7

    mul-float v14, v9, v20

    add-float/2addr v7, v14

    mul-float v7, v7, p3

    add-float/2addr v13, v7

    aput v13, p4, v12

    add-int/lit8 v7, v12, 0x1

    add-int/lit8 v13, v3, 0x1

    aget v14, p1, v13

    aput v14, p4, v7

    add-int/lit8 v12, v12, 0x2

    aget v7, p1, v10

    neg-float v9, v9

    mul-float v11, v11, v20

    add-float/2addr v9, v11

    mul-float v9, v9, p3

    add-float/2addr v7, v9

    aput v7, p4, v12

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x3

    aget v3, p1, v3

    neg-float v8, v8

    mul-float v9, v5, v20

    sub-float/2addr v8, v9

    mul-float v8, v8, p3

    add-float/2addr v3, v8

    aput v3, p4, v7

    add-int/lit8 v3, v7, 0x1

    aget v8, p1, v13

    aput v8, p4, v3

    add-int/lit8 v7, v7, 0x2

    aget v3, p1, v10

    neg-float v5, v5

    mul-float v6, v6, v20

    sub-float/2addr v5, v6

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    aput v3, p4, v7

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v4, 0x1

    if-lt v5, v1, :cond_6

    return v2

    :cond_6
    mul-int/lit8 v4, v4, 0x3

    aget v6, p1, v3

    mul-float v15, v15, p3

    sub-float/2addr v6, v15

    aput v6, p4, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, p1, v3

    aput v3, p4, v6

    add-int/lit8 v4, v4, 0x2

    aget v3, p1, v10

    mul-float v18, v18, p3

    sub-float v3, v3, v18

    aput v3, p4, v4

    move v4, v5

    :goto_2
    move/from16 v3, v16

    goto/16 :goto_0

    :cond_7
    return v4
.end method
