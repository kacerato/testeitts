.class public Ltn/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:F

.field public final c:F

.field public final d:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Optional<",
            "Lwn/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([FFFLjava/util/function/BiFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "origin",
            "tileWidth",
            "tileDepth",
            "heightfieldProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FFF",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/Optional<",
            "Lwn/h;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/y;->a:[F

    iput p2, p0, Ltn/y;->b:F

    iput p3, p0, Ltn/y;->c:F

    iput-object p4, p0, Ltn/y;->d:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public a([F[F)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ltn/y;->c([F[F)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final b(II[F[FFF)Ljava/util/Optional;
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
            "x",
            "z",
            "start",
            "end",
            "tMin",
            "tMax"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F[FFF)",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p0

    iget-object v5, v4, Ltn/y;->d:Ljava/util/function/BiFunction;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Optional;

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn/h;

    aget v6, p4, v3

    aget v7, p3, v3

    sub-float/2addr v6, v7

    aget v8, p4, v2

    aget v9, p3, v2

    sub-float/2addr v8, v9

    aget v10, p4, v1

    aget v11, p3, v1

    sub-float/2addr v10, v11

    mul-float v12, p5, v6

    add-float/2addr v12, v7

    mul-float v13, p5, v8

    add-float/2addr v13, v9

    mul-float v14, p5, v10

    add-float/2addr v14, v11

    new-array v15, v0, [F

    aput v12, v15, v3

    aput v13, v15, v2

    aput v14, v15, v1

    mul-float v12, p6, v6

    add-float/2addr v7, v12

    mul-float v12, p6, v8

    add-float/2addr v9, v12

    mul-float v12, p6, v10

    add-float/2addr v11, v12

    new-array v0, v0, [F

    aput v7, v0, v3

    aput v9, v0, v2

    aput v11, v0, v1

    aget v7, v15, v3

    iget-object v9, v5, Lwn/h;->c:[F

    aget v11, v9, v3

    sub-float/2addr v7, v11

    aget v11, v15, v1

    aget v9, v9, v1

    sub-float/2addr v11, v9

    iget v9, v5, Lwn/h;->e:F

    div-float v9, v7, v9

    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    iget v12, v5, Lwn/h;->e:F

    div-float v12, v11, v12

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    aget v13, v0, v3

    iget-object v14, v5, Lwn/h;->c:[F

    aget v3, v14, v3

    sub-float/2addr v13, v3

    iget v3, v5, Lwn/h;->e:F

    div-float/2addr v13, v3

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v3, v13

    aget v0, v0, v1

    iget-object v13, v5, Lwn/h;->c:[F

    aget v1, v13, v1

    sub-float/2addr v0, v1

    iget v1, v5, Lwn/h;->e:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int v1, v3, v9

    sub-int v13, v0, v12

    const/4 v14, -0x1

    if-gez v1, :cond_0

    move v15, v14

    goto :goto_0

    :cond_0
    move v15, v2

    :goto_0
    if-gez v13, :cond_1

    goto :goto_1

    :cond_1
    move v14, v2

    :goto_1
    iget v2, v5, Lwn/h;->e:F

    rem-float/2addr v7, v2

    add-float/2addr v7, v2

    rem-float/2addr v7, v2

    rem-float/2addr v11, v2

    add-float/2addr v11, v2

    rem-float/2addr v11, v2

    const/16 v17, 0x0

    cmpg-float v18, v6, v17

    if-gez v18, :cond_2

    goto :goto_2

    :cond_2
    sub-float v7, v2, v7

    :goto_2
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v7, v10, v17

    if-gez v7, :cond_3

    goto :goto_3

    :cond_3
    iget v7, v5, Lwn/h;->e:F

    sub-float v11, v7, v11

    :goto_3
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v2, v6

    div-float/2addr v7, v10

    iget v11, v5, Lwn/h;->e:F

    div-float v6, v11, v6

    div-float/2addr v11, v10

    :goto_4
    if-ltz v9, :cond_5

    iget v10, v5, Lwn/h;->a:I

    if-ge v9, v10, :cond_5

    if-ltz v12, :cond_5

    iget v10, v5, Lwn/h;->b:I

    if-ge v12, v10, :cond_5

    const/4 v10, 0x1

    aget v16, p3, v10

    add-float v10, p5, v17

    mul-float v17, v8, v10

    add-float v17, v16, v17

    iget-object v4, v5, Lwn/h;->c:[F

    const/16 v18, 0x1

    aget v4, v4, v18

    sub-float v4, v17, v4

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    add-float v17, p5, v17

    mul-float v17, v17, v8

    add-float v16, v16, v17

    move/from16 p1, v8

    iget-object v8, v5, Lwn/h;->c:[F

    aget v8, v8, v18

    sub-float v8, v16, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 p2, v14

    iget v14, v5, Lwn/h;->f:F

    div-float v16, v16, v14

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v8, v5, Lwn/h;->f:F

    div-float/2addr v4, v8

    iget-object v8, v5, Lwn/h;->g:[Lwn/K;

    iget v14, v5, Lwn/h;->a:I

    mul-int/2addr v14, v12

    add-int/2addr v14, v9

    aget-object v8, v8, v14

    :goto_5
    if-eqz v8, :cond_6

    iget v14, v8, Lwn/K;->a:I

    int-to-float v14, v14

    cmpg-float v14, v14, v16

    if-gtz v14, :cond_4

    iget v14, v8, Lwn/K;->b:I

    int-to-float v14, v14

    cmpl-float v14, v14, v4

    if-ltz v14, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v8, v8, Lwn/K;->d:Lwn/K;

    goto :goto_5

    :cond_5
    move/from16 p1, v8

    move/from16 p2, v14

    const/16 v18, 0x1

    :cond_6
    if-lez v1, :cond_7

    if-lt v9, v3, :cond_9

    goto :goto_6

    :cond_7
    if-gt v9, v3, :cond_9

    :goto_6
    if-lez v13, :cond_8

    if-lt v12, v0, :cond_9

    goto :goto_8

    :cond_8
    if-gt v12, v0, :cond_9

    goto :goto_8

    :cond_9
    cmpg-float v4, v2, v7

    if-gez v4, :cond_a

    add-float v4, v2, v6

    add-int/2addr v9, v15

    move/from16 v8, p1

    move/from16 v14, p2

    move/from16 v17, v2

    move v2, v4

    :goto_7
    move-object/from16 v4, p0

    goto/16 :goto_4

    :cond_a
    add-float v4, v7, v11

    add-int v12, v12, p2

    move/from16 v8, p1

    move/from16 v14, p2

    move/from16 v17, v7

    move v7, v4

    goto :goto_7

    :cond_b
    :goto_8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final c([F[F)Ljava/util/Optional;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F)",
            "Ljava/util/Optional<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, v7, Ltn/y;->a:[F

    aget v3, v2, v0

    sub-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    aget v2, v2, v3

    sub-float/2addr v4, v2

    iget v2, v7, Ltn/y;->b:F

    div-float v2, v1, v2

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    iget v5, v7, Ltn/y;->c:F

    div-float v5, v4, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    aget v6, p2, v0

    iget-object v8, v7, Ltn/y;->a:[F

    aget v8, v8, v0

    sub-float/2addr v6, v8

    iget v8, v7, Ltn/y;->b:F

    div-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    aget v6, p2, v3

    iget-object v9, v7, Ltn/y;->a:[F

    aget v9, v9, v3

    sub-float/2addr v6, v9

    iget v9, v7, Ltn/y;->c:F

    div-float/2addr v6, v9

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    sub-int v10, v8, v2

    sub-int v11, v9, v5

    const/4 v6, 0x1

    const/4 v12, -0x1

    if-gez v10, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v6

    :goto_0
    if-gez v11, :cond_1

    goto :goto_1

    :cond_1
    move v12, v6

    :goto_1
    iget v6, v7, Ltn/y;->b:F

    rem-float/2addr v1, v6

    add-float/2addr v1, v6

    rem-float/2addr v1, v6

    iget v14, v7, Ltn/y;->c:F

    rem-float/2addr v4, v14

    add-float/2addr v4, v14

    rem-float/2addr v4, v14

    aget v14, p2, v0

    aget v0, p1, v0

    sub-float/2addr v14, v0

    aget v0, p2, v3

    aget v3, p1, v3

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    cmpg-float v15, v14, v3

    if-gez v15, :cond_2

    goto :goto_2

    :cond_2
    sub-float v1, v6, v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v6, v0, v3

    if-gez v6, :cond_3

    goto :goto_3

    :cond_3
    iget v6, v7, Ltn/y;->c:F

    sub-float v4, v6, v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float/2addr v1, v6

    div-float/2addr v4, v0

    iget v14, v7, Ltn/y;->b:F

    div-float/2addr v14, v6

    iget v6, v7, Ltn/y;->c:F

    div-float v15, v6, v0

    move v6, v1

    move/from16 v16, v3

    move v3, v5

    move v5, v2

    :goto_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v17

    move-object/from16 v0, p0

    move v1, v5

    move v2, v3

    move v7, v3

    move-object/from16 v3, p1

    move/from16 v18, v4

    move-object/from16 v4, p2

    move/from16 v19, v12

    move v12, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Ltn/y;->b(II[F[FFF)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    if-lez v10, :cond_5

    if-lt v12, v8, :cond_7

    goto :goto_5

    :cond_5
    if-gt v12, v8, :cond_7

    :goto_5
    if-lez v11, :cond_6

    if-lt v7, v9, :cond_7

    goto :goto_6

    :cond_6
    if-gt v7, v9, :cond_7

    :goto_6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_7
    cmpg-float v0, v16, v18

    if-gez v0, :cond_8

    add-float v6, v16, v14

    add-int v5, v12, v13

    move v3, v7

    move/from16 v4, v18

    goto :goto_7

    :cond_8
    add-float v4, v18, v15

    add-int v3, v7, v19

    move v5, v12

    move/from16 v6, v16

    move/from16 v16, v18

    :goto_7
    move-object/from16 v7, p0

    move/from16 v12, v19

    goto :goto_4
.end method
