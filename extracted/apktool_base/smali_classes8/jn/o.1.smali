.class public Ljn/o;
.super Ljn/A;
.source "SourceFile"


# static fields
.field public static n:F = 0.999f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljn/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nav"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljn/A;-><init>(Ljn/v;)V

    return-void
.end method


# virtual methods
.method public Q(I)Ljn/O;
    .locals 45
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxIter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljn/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->a:Ljn/Q;

    invoke-virtual {v0}, Ljn/Q;->c()Z

    move-result v0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v0, v1}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, v9, Ljn/A;->a:Ljn/v;

    iget-object v2, v9, Ljn/A;->d:Ljn/K;

    iget-wide v2, v2, Ljn/K;->d:J

    invoke-virtual {v0, v2, v3}, Ljn/v;->S(J)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v9, Ljn/A;->a:Ljn/v;

    iget-object v2, v9, Ljn/A;->d:Ljn/K;

    iget-wide v2, v2, Ljn/K;->e:J

    invoke-virtual {v0, v2, v3}, Ljn/v;->S(J)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_11

    :cond_1
    move/from16 v11, p1

    move v0, v10

    :goto_0
    if-ge v0, v11, :cond_1c

    iget-object v1, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->c()Z

    move-result v1

    if-nez v1, :cond_1c

    add-int/lit8 v12, v0, 0x1

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0}, Ljn/E;->f()Ljn/B;

    move-result-object v13

    iget v0, v13, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, v13, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    or-int/2addr v0, v1

    iput v0, v13, Ljn/B;->g:I

    iget-wide v14, v13, Ljn/B;->h:J

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    iget-wide v1, v0, Ljn/K;->e:J

    cmp-long v1, v14, v1

    if-nez v1, :cond_2

    iput-object v13, v0, Ljn/K;->b:Ljn/B;

    sget-object v1, Ljn/Q;->SUCCSESS:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v14, v15}, Ljn/v;->J(J)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    sget-object v1, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/U;

    iget-object v1, v1, Ljn/U;->a:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljn/s;

    check-cast v0, Ljn/U;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljn/G;

    iget v0, v13, Ljn/B;->e:I

    const/4 v1, 0x0

    const-wide/16 v29, 0x0

    if-eqz v0, :cond_5

    iget-object v2, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2, v0}, Ljn/C;->g(I)Ljn/B;

    move-result-object v0

    iget-wide v2, v0, Ljn/B;->h:J

    iget v4, v0, Ljn/B;->e:I

    if-eqz v4, :cond_4

    iget-object v5, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v5, v4}, Ljn/C;->g(I)Ljn/B;

    move-result-object v4

    iget-wide v4, v4, Ljn/B;->h:J

    move-wide v10, v4

    move-object v5, v0

    move-wide v3, v2

    goto :goto_1

    :cond_4
    move-object v5, v0

    move-wide v3, v2

    move-wide/from16 v10, v29

    goto :goto_1

    :cond_5
    move-object v5, v1

    move-wide/from16 v3, v29

    move-wide v10, v3

    :goto_1
    cmp-long v0, v3, v29

    if-eqz v0, :cond_8

    iget-object v1, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v1, v3, v4}, Ljn/v;->J(J)Ljn/O;

    move-result-object v1

    invoke-virtual {v1}, Ljn/O;->a()Z

    move-result v2

    if-nez v2, :cond_7

    cmp-long v2, v10, v29

    if-eqz v2, :cond_6

    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v10, v11}, Ljn/v;->S(J)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v1, Ljn/O;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljn/U;

    iget-object v2, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljn/s;

    check-cast v1, Ljn/U;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    move-object/from16 v32, v1

    move-object/from16 v31, v2

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    sget-object v1, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v1, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v31, v1

    move-object/from16 v32, v31

    :goto_3
    iget-object v1, v9, Ljn/A;->d:Ljn/K;

    iget v1, v1, Ljn/K;->i:I

    and-int/lit8 v1, v1, 0x2

    const/16 v33, 0x1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-object v0, v5, Ljn/B;->b:[F

    iget-object v1, v13, Ljn/B;->b:[F

    invoke-static {v0, v1}, Ljn/g;->E([F[F)F

    move-result v0

    iget-object v1, v9, Ljn/A;->d:Ljn/K;

    iget v1, v1, Ljn/K;->j:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    move/from16 v34, v33

    goto :goto_4

    :cond_9
    const/16 v34, 0x0

    :goto_4
    iget-object v0, v8, Ljn/s;->d:[I

    iget v1, v7, Ljn/G;->a:I

    aget v0, v0, v1

    move v6, v0

    :goto_5
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1b

    iget-object v0, v8, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v1, v0, Ljn/p;->a:J

    cmp-long v0, v1, v29

    if-eqz v0, :cond_1a

    cmp-long v0, v1, v3

    if-nez v0, :cond_a

    move-wide/from16 v38, v3

    move-object v0, v5

    move-object/from16 v42, v7

    move-object v1, v8

    move/from16 v35, v12

    move-wide v4, v14

    goto/16 :goto_10

    :cond_a
    iget-object v0, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v1, v2}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    move-wide/from16 v16, v3

    iget-object v3, v0, Ljn/U;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljn/G;

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->h:Ljn/L;

    invoke-interface {v0, v1, v2, v4, v3}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v5

    move-object/from16 v42, v7

    move-object v1, v8

    move/from16 v35, v12

    :goto_6
    move-wide v4, v14

    move-wide/from16 v38, v16

    goto/16 :goto_10

    :cond_b
    iget-object v0, v9, Ljn/A;->b:Ljn/C;

    move/from16 v35, v12

    const/4 v12, 0x0

    invoke-virtual {v0, v1, v2, v12}, Ljn/C;->f(JI)Ljn/B;

    move-result-object v0

    iget v12, v0, Ljn/B;->e:I

    move-wide/from16 v18, v1

    if-eqz v12, :cond_c

    iget v1, v13, Ljn/B;->e:I

    if-ne v12, v1, :cond_c

    move-object v0, v5

    move-object/from16 v42, v7

    move-object v1, v8

    goto :goto_6

    :cond_c
    iget v1, v0, Ljn/B;->g:I

    move-object v12, v0

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    move-wide/from16 v36, v18

    move-wide v1, v14

    move-object/from16 v40, v3

    move-wide/from16 v38, v16

    move-object v3, v7

    move-object/from16 v41, v4

    move-object v4, v8

    move-wide/from16 v16, v14

    move-object v15, v5

    move v14, v6

    move-wide/from16 v5, v36

    move-object/from16 v42, v7

    move-object/from16 v7, v40

    move-object/from16 v43, v8

    move-object/from16 v8, v41

    invoke-virtual/range {v0 .. v8}, Ljn/A;->w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, v12, Ljn/B;->b:[F

    goto :goto_7

    :cond_d
    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-wide/from16 v38, v16

    move-wide/from16 v36, v18

    move-wide/from16 v16, v14

    move-object v15, v5

    move v14, v6

    :cond_e
    :goto_7
    const/16 v44, 0x0

    if-eqz v34, :cond_11

    iget-object v3, v15, Ljn/B;->b:[F

    iget-object v4, v12, Ljn/B;->b:[F

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    iget-object v5, v0, Ljn/K;->h:Ljn/L;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    move-wide v7, v10

    invoke-virtual/range {v0 .. v8}, Ljn/A;->P(J[F[FLjn/L;IJ)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljn/N;

    iget v1, v1, Ljn/N;->a:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_f

    move/from16 v1, v33

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    if-eqz v1, :cond_10

    iget v2, v15, Ljn/B;->c:F

    check-cast v0, Ljn/N;

    iget v0, v0, Ljn/N;->d:F

    add-float/2addr v2, v0

    goto :goto_9

    :cond_10
    move/from16 v2, v44

    goto :goto_9

    :cond_11
    move/from16 v2, v44

    const/4 v1, 0x0

    :goto_9
    if-nez v1, :cond_12

    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    iget-object v0, v0, Ljn/K;->h:Ljn/L;

    iget-object v2, v13, Ljn/B;->b:[F

    iget-object v3, v12, Ljn/B;->b:[F

    move v6, v14

    move-wide/from16 v4, v16

    move-object v14, v0

    move-object v0, v15

    move-object v15, v2

    move-object/from16 v16, v3

    move-wide/from16 v17, v38

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move-wide/from16 v21, v4

    move-object/from16 v23, v43

    move-object/from16 v24, v42

    move-wide/from16 v25, v36

    move-object/from16 v27, v41

    move-object/from16 v28, v40

    invoke-interface/range {v14 .. v28}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v2

    iget v3, v13, Ljn/B;->c:F

    add-float/2addr v2, v3

    goto :goto_a

    :cond_12
    move v6, v14

    move-object v0, v15

    move-wide/from16 v4, v16

    :goto_a
    iget-object v3, v9, Ljn/A;->d:Ljn/K;

    iget-wide v7, v3, Ljn/K;->e:J

    move-wide/from16 v14, v36

    cmp-long v7, v14, v7

    if-nez v7, :cond_13

    iget-object v7, v3, Ljn/K;->h:Ljn/L;

    iget-object v8, v12, Ljn/B;->b:[F

    iget-object v3, v3, Ljn/K;->g:[F

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v25, 0x0

    move-wide/from16 v36, v14

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-object/from16 v19, v43

    move-object/from16 v20, v42

    move-wide/from16 v21, v36

    move-object/from16 v23, v41

    move-object/from16 v24, v40

    invoke-interface/range {v14 .. v28}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v3

    add-float/2addr v2, v3

    :goto_b
    move/from16 v3, v44

    goto :goto_c

    :cond_13
    move-wide/from16 v36, v14

    iget-object v7, v12, Ljn/B;->b:[F

    iget-object v3, v3, Ljn/K;->g:[F

    invoke-static {v7, v3}, Ljn/g;->z([F[F)F

    move-result v3

    sget v7, Ljn/o;->n:F

    mul-float v44, v3, v7

    goto :goto_b

    :goto_c
    add-float v7, v2, v3

    iget v8, v12, Ljn/B;->g:I

    sget v14, Ljn/B;->j:I

    and-int/2addr v14, v8

    if-eqz v14, :cond_15

    iget v14, v12, Ljn/B;->d:F

    cmpl-float v14, v7, v14

    if-ltz v14, :cond_15

    :cond_14
    :goto_d
    move-object/from16 v1, v43

    goto :goto_10

    :cond_15
    sget v14, Ljn/B;->k:I

    and-int/2addr v8, v14

    if-eqz v8, :cond_16

    iget v8, v12, Ljn/B;->d:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_16

    goto :goto_d

    :cond_16
    if-eqz v1, :cond_17

    iget v8, v13, Ljn/B;->e:I

    goto :goto_e

    :cond_17
    iget-object v8, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v8, v13}, Ljn/C;->h(Ljn/B;)I

    move-result v8

    :goto_e
    iput v8, v12, Ljn/B;->e:I

    move-wide/from16 v14, v36

    iput-wide v14, v12, Ljn/B;->h:J

    iget v8, v12, Ljn/B;->g:I

    sget v14, Ljn/B;->k:I

    sget v15, Ljn/B;->l:I

    or-int/2addr v14, v15

    not-int v14, v14

    and-int/2addr v8, v14

    iput v8, v12, Ljn/B;->g:I

    iput v2, v12, Ljn/B;->c:F

    iput v7, v12, Ljn/B;->d:F

    if-eqz v1, :cond_18

    or-int v1, v8, v15

    iput v1, v12, Ljn/B;->g:I

    :cond_18
    iget v1, v12, Ljn/B;->g:I

    sget v2, Ljn/B;->j:I

    and-int v7, v1, v2

    if-eqz v7, :cond_19

    iget-object v1, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1, v12}, Ljn/E;->e(Ljn/B;)V

    goto :goto_f

    :cond_19
    or-int/2addr v1, v2

    iput v1, v12, Ljn/B;->g:I

    iget-object v1, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1, v12}, Ljn/E;->g(Ljn/B;)V

    :goto_f
    iget-object v1, v9, Ljn/A;->d:Ljn/K;

    iget v2, v1, Ljn/K;->c:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_14

    iput v3, v1, Ljn/K;->c:F

    iput-object v12, v1, Ljn/K;->b:Ljn/B;

    goto :goto_d

    :cond_1a
    move-wide/from16 v38, v3

    move-object v0, v5

    move-object/from16 v42, v7

    move/from16 v35, v12

    move-wide v4, v14

    move-object v1, v8

    :goto_10
    iget-object v2, v1, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljn/p;

    iget v6, v2, Ljn/p;->b:I

    move-object v8, v1

    move-wide v14, v4

    move/from16 v12, v35

    move-wide/from16 v3, v38

    move-object/from16 v7, v42

    move-object v5, v0

    goto/16 :goto_5

    :cond_1b
    move/from16 v35, v12

    move/from16 v11, p1

    move/from16 v0, v35

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_1c
    iget-object v1, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->c()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, v9, Ljn/A;->d:Ljn/K;

    sget-object v2, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    iput-object v2, v1, Ljn/K;->a:Ljn/Q;

    :cond_1d
    iget-object v1, v9, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_11
    iget-object v0, v9, Ljn/A;->d:Ljn/K;

    sget-object v2, Ljn/Q;->FAILURE:Ljn/Q;

    iput-object v2, v0, Ljn/K;->a:Ljn/Q;

    invoke-static {v2, v1}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljn/O;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    invoke-virtual {v1}, Ljn/Q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljn/K;

    invoke-direct {v1}, Ljn/K;-><init>()V

    iput-object v1, p0, Ljn/A;->d:Ljn/K;

    invoke-static {v0}, Ljn/O;->c(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-wide v2, v1, Ljn/K;->d:J

    iget-wide v4, v1, Ljn/K;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    iget-object v2, v1, Ljn/K;->b:Ljn/B;

    iget-wide v6, v2, Ljn/B;->h:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    sget-object v3, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    iput-object v3, v1, Ljn/K;->a:Ljn/Q;

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Ljn/A;->b:Ljn/C;

    iget v5, v2, Ljn/B;->e:I

    invoke-virtual {v4, v5}, Ljn/C;->g(I)Ljn/B;

    move-result-object v4

    iget-object v5, p0, Ljn/A;->b:Ljn/C;

    invoke-virtual {v5, v1}, Ljn/C;->h(Ljn/B;)I

    move-result v1

    iput v1, v2, Ljn/B;->e:I

    iget v1, v2, Ljn/B;->g:I

    sget v5, Ljn/B;->l:I

    and-int v6, v1, v5

    not-int v5, v5

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    iput v1, v2, Ljn/B;->g:I

    if-nez v4, :cond_7

    :goto_1
    iget-object v1, p0, Ljn/A;->b:Ljn/C;

    iget v3, v2, Ljn/B;->e:I

    invoke-virtual {v1, v3}, Ljn/C;->g(I)Ljn/B;

    move-result-object v1

    iget v3, v2, Ljn/B;->g:I

    sget v4, Ljn/B;->l:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    iget-wide v5, v2, Ljn/B;->h:J

    iget-object v7, v2, Ljn/B;->b:[F

    iget-object v8, v1, Ljn/B;->b:[F

    iget-object v2, p0, Ljn/A;->d:Ljn/K;

    iget-object v9, v2, Ljn/K;->h:Ljn/L;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Ljn/A;->P(J[F[FLjn/L;IJ)Ljn/O;

    move-result-object v2

    invoke-virtual {v2}, Ljn/O;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Ljn/O;->a:Ljava/lang/Object;

    check-cast v2, Ljn/N;

    iget-object v2, v2, Ljn/N;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v1, Ljn/B;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-wide v2, v2, Ljn/B;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    if-nez v1, :cond_6

    :goto_3
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    new-instance v2, Ljn/K;

    invoke-direct {v2}, Ljn/K;-><init>()V

    iput-object v2, p0, Ljn/A;->d:Ljn/K;

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v2, v1

    goto :goto_1

    :cond_7
    move-object v1, v2

    move-object v2, v4

    move v3, v6

    goto/16 :goto_0
.end method

.method public g(Ljava/util/List;)Ljn/O;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v1, v1, Ljn/K;->a:Ljn/Q;

    invoke-virtual {v1}, Ljn/Q;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Ljn/K;

    invoke-direct {p1}, Ljn/K;-><init>()V

    iput-object p1, p0, Ljn/A;->d:Ljn/K;

    invoke-static {v0}, Ljn/O;->c(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-wide v2, v1, Ljn/K;->d:J

    iget-wide v4, v1, Ljn/K;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ltz v1, :cond_4

    iget-object v3, p0, Ljn/A;->b:Ljn/C;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljn/C;->c(J)Ljn/B;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v3, :cond_5

    iget-object p1, p0, Ljn/A;->d:Ljn/K;

    sget-object v1, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    iput-object v1, p1, Ljn/K;->a:Ljn/Q;

    iget-object v3, p1, Ljn/K;->b:Ljn/B;

    :cond_5
    const/4 p1, 0x0

    move-object v1, v2

    move-object v2, v3

    :goto_2
    iget-object v3, p0, Ljn/A;->b:Ljn/C;

    iget v4, v2, Ljn/B;->e:I

    invoke-virtual {v3, v4}, Ljn/C;->g(I)Ljn/B;

    move-result-object v3

    iget-object v4, p0, Ljn/A;->b:Ljn/C;

    invoke-virtual {v4, v1}, Ljn/C;->h(Ljn/B;)I

    move-result v1

    iput v1, v2, Ljn/B;->e:I

    iget v1, v2, Ljn/B;->g:I

    sget v4, Ljn/B;->l:I

    and-int v5, v1, v4

    not-int v4, v4

    and-int/2addr v1, v4

    or-int/2addr p1, v1

    iput p1, v2, Ljn/B;->g:I

    if-nez v3, :cond_a

    :goto_3
    iget-object p1, p0, Ljn/A;->b:Ljn/C;

    iget v1, v2, Ljn/B;->e:I

    invoke-virtual {p1, v1}, Ljn/C;->g(I)Ljn/B;

    move-result-object p1

    iget v1, v2, Ljn/B;->g:I

    sget v3, Ljn/B;->l:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_7

    iget-wide v4, v2, Ljn/B;->h:J

    iget-object v6, v2, Ljn/B;->b:[F

    iget-object v7, p1, Ljn/B;->b:[F

    iget-object v1, p0, Ljn/A;->d:Ljn/K;

    iget-object v8, v1, Ljn/K;->h:Ljn/L;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Ljn/A;->P(J[F[FLjn/L;IJ)Ljn/O;

    move-result-object v1

    invoke-virtual {v1}, Ljn/O;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v1, v1, Ljn/O;->a:Ljava/lang/Object;

    check-cast v1, Ljn/N;

    iget-object v1, v1, Ljn/N;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p1, Ljn/B;->h:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iget-wide v1, v2, Ljn/B;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    if-nez p1, :cond_9

    :goto_5
    iget-object p1, p0, Ljn/A;->d:Ljn/K;

    iget-object p1, p1, Ljn/K;->a:Ljn/Q;

    new-instance v1, Ljn/K;

    invoke-direct {v1}, Ljn/K;-><init>()V

    iput-object v1, p0, Ljn/A;->d:Ljn/K;

    invoke-static {p1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1

    :cond_9
    move-object v2, p1

    goto :goto_3

    :cond_a
    move-object v1, v2

    move-object v2, v3

    move p1, v5

    goto/16 :goto_2

    :cond_b
    :goto_6
    invoke-static {v0}, Ljn/O;->c(Ljava/lang/Object;)Ljn/O;

    move-result-object p1

    return-object p1
.end method

.method public h(J[FFLjn/L;)Ljn/O;
    .locals 31
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "centerPos",
            "maxRadius",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[FF",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljn/h;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v0, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v0, v1}, Ljn/v;->S(J)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v10, :cond_16

    invoke-static/range {p3 .. p3}, Ljn/g;->I([F)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v12, 0x0

    cmpg-float v2, p4, v12

    if-ltz v2, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v2

    if-eqz v2, :cond_16

    if-nez v11, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v2, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2}, Ljn/C;->a()V

    iget-object v2, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v2}, Ljn/E;->b()V

    iget-object v2, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v2, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v2

    iget-object v3, v2, Ljn/B;->b:[F

    invoke-static {v3, v10}, Ljn/g;->w([F[F)V

    const/4 v13, 0x0

    iput v13, v2, Ljn/B;->e:I

    iput v12, v2, Ljn/B;->c:F

    iput v12, v2, Ljn/B;->d:F

    iput-wide v0, v2, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v2, Ljn/B;->g:I

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v2}, Ljn/E;->g(Ljn/B;)V

    invoke-static/range {p4 .. p4}, Ljn/g;->s(F)F

    move-result v0

    const/4 v14, 0x3

    new-array v15, v14, [F

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    iget-object v3, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->c()Z

    move-result v3

    const/4 v8, 0x1

    if-nez v3, :cond_14

    iget-object v3, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->f()Ljn/B;

    move-result-object v7

    iget v3, v7, Ljn/B;->g:I

    sget v5, Ljn/B;->j:I

    not-int v5, v5

    and-int/2addr v3, v5

    iput v3, v7, Ljn/B;->g:I

    sget v5, Ljn/B;->k:I

    or-int/2addr v3, v5

    iput v3, v7, Ljn/B;->g:I

    iget-wide v5, v7, Ljn/B;->h:J

    iget-object v3, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v3

    iget-object v12, v3, Ljn/U;->a:Ljava/lang/Object;

    check-cast v12, Ljn/s;

    iget-object v3, v3, Ljn/U;->b:Ljava/lang/Object;

    check-cast v3, Ljn/G;

    iget v4, v7, Ljn/B;->e:I

    const-wide/16 v16, 0x0

    if-eqz v4, :cond_1

    iget-object v13, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v13, v4}, Ljn/C;->g(I)Ljn/B;

    move-result-object v4

    move-object v13, v15

    iget-wide v14, v4, Ljn/B;->h:J

    goto :goto_1

    :cond_1
    move-object v13, v15

    move-wide/from16 v14, v16

    :goto_1
    iget v4, v3, Ljn/G;->e:I

    sub-int/2addr v4, v8

    move/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move v0, v4

    const/4 v4, 0x0

    :goto_2
    iget v1, v3, Ljn/G;->e:I

    const/4 v2, -0x1

    if-ge v4, v1, :cond_8

    iget-object v1, v3, Ljn/G;->c:[I

    aget v1, v1, v0

    const v21, 0x8000

    and-int v21, v1, v21

    if-eqz v21, :cond_5

    iget-object v1, v12, Ljn/s;->d:[I

    iget v8, v3, Ljn/G;->a:I

    aget v1, v1, v8

    :goto_3
    if-eq v1, v2, :cond_2

    iget-object v8, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljn/p;

    iget v2, v8, Ljn/p;->c:I

    if-ne v2, v0, :cond_3

    iget-wide v1, v8, Ljn/p;->a:J

    cmp-long v21, v1, v16

    if-eqz v21, :cond_2

    move-object/from16 v22, v7

    iget-object v7, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v7, v1, v2}, Ljn/v;->K(J)Ljn/U;

    move-result-object v1

    iget-object v2, v1, Ljn/U;->a:Ljava/lang/Object;

    check-cast v2, Ljn/s;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    iget-wide v7, v8, Ljn/p;->a:J

    invoke-interface {v11, v7, v8, v2, v1}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_5

    :cond_2
    move-object/from16 v22, v7

    goto :goto_4

    :cond_3
    move-object/from16 v22, v7

    iget-object v2, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/p;

    iget v1, v1, Ljn/p;->b:I

    const/4 v2, -0x1

    goto :goto_3

    :goto_4
    const/4 v1, 0x1

    :goto_5
    if-nez v1, :cond_4

    move-wide/from16 v23, v5

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v23, v5

    goto :goto_6

    :cond_5
    move-object/from16 v22, v7

    if-eqz v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v12}, Ljn/v;->G(Ljn/s;)J

    move-result-wide v7

    move-wide/from16 v23, v5

    int-to-long v5, v1

    or-long/2addr v5, v7

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->c:[Ljn/G;

    aget-object v1, v2, v1

    invoke-interface {v11, v5, v6, v12, v1}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_7

    :cond_6
    :goto_6
    iget-object v1, v3, Ljn/G;->b:[I

    aget v0, v1, v0

    const/4 v2, 0x3

    mul-int/2addr v0, v2

    aget v1, v1, v4

    mul-int/2addr v1, v2

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    invoke-static {v10, v2, v0, v1}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v2

    iget-object v5, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v6, v5, v18

    if-lez v6, :cond_7

    goto :goto_7

    :cond_7
    iget-object v6, v12, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    aget v7, v6, v0

    aget v8, v6, v1

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/4 v8, 0x0

    aput v7, v13, v8

    add-int/lit8 v7, v0, 0x1

    aget v7, v6, v7

    add-int/lit8 v8, v1, 0x1

    aget v8, v6, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v13, v8

    add-int/lit8 v7, v0, 0x2

    aget v7, v6, v7

    add-int/lit8 v8, v1, 0x2

    aget v8, v6, v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v2

    add-float/2addr v7, v8

    const/4 v2, 0x2

    aput v7, v13, v2

    new-instance v2, Ljn/W;

    invoke-direct {v2, v6, v0}, Ljn/W;-><init>([FI)V

    new-instance v0, Ljn/W;

    iget-object v6, v12, Ljn/s;->c:Ljn/q;

    iget-object v6, v6, Ljn/q;->b:[F

    invoke-direct {v0, v6, v1}, Ljn/W;-><init>([FI)V

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v18, v5

    :goto_7
    add-int/lit8 v0, v4, 0x1

    move-object/from16 v7, v22

    move-wide/from16 v5, v23

    const/4 v8, 0x1

    move/from16 v30, v4

    move v4, v0

    move/from16 v0, v30

    goto/16 :goto_2

    :cond_8
    move-wide/from16 v23, v5

    move-object/from16 v22, v7

    iget-object v0, v12, Ljn/s;->d:[I

    iget v1, v3, Ljn/G;->a:I

    aget v0, v0, v1

    move v8, v0

    const/4 v1, -0x1

    :goto_8
    if-eq v8, v1, :cond_13

    iget-object v0, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v5, v0, Ljn/p;->a:J

    cmp-long v2, v5, v16

    if-eqz v2, :cond_9

    cmp-long v2, v5, v14

    if-nez v2, :cond_a

    :cond_9
    move/from16 v25, v1

    move-object/from16 v26, v3

    move v11, v8

    move-object/from16 p4, v13

    move-object/from16 v10, v22

    const/16 v21, 0x1

    goto/16 :goto_b

    :cond_a
    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v2

    iget-object v4, v2, Ljn/U;->a:Ljava/lang/Object;

    move-object v7, v4

    check-cast v7, Ljn/s;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljn/G;

    invoke-virtual {v4}, Ljn/G;->b()I

    move-result v2

    move/from16 v21, v8

    const/4 v8, 0x1

    if-ne v2, v8, :cond_b

    move/from16 v25, v1

    move-object/from16 v26, v3

    move-object/from16 p4, v13

    move/from16 v11, v21

    move-object/from16 v10, v22

    move/from16 v21, v8

    goto/16 :goto_b

    :cond_b
    iget-object v2, v3, Ljn/G;->b:[I

    iget v0, v0, Ljn/p;->c:I

    aget v25, v2, v0

    const/16 v26, 0x3

    mul-int/lit8 v1, v25, 0x3

    add-int/2addr v0, v8

    iget v8, v3, Ljn/G;->e:I

    rem-int/2addr v0, v8

    aget v0, v2, v0

    mul-int/lit8 v0, v0, 0x3

    iget-object v2, v12, Ljn/s;->c:Ljn/q;

    iget-object v2, v2, Ljn/q;->b:[F

    invoke-static {v10, v2, v1, v0}, Ljn/g;->e([F[FII)Ljn/U;

    move-result-object v0

    iget-object v0, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v18

    if-lez v0, :cond_c

    :goto_9
    move-object/from16 v26, v3

    move-object/from16 p4, v13

    move/from16 v11, v21

    move-object/from16 v10, v22

    const/16 v21, 0x1

    const/16 v25, -0x1

    goto/16 :goto_b

    :cond_c
    invoke-interface {v11, v5, v6, v7, v4}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_9

    :cond_d
    iget-object v0, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v0, v5, v6}, Ljn/C;->e(J)Ljn/B;

    move-result-object v8

    iget v0, v8, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    if-nez v0, :cond_f

    move-object/from16 v0, p0

    const/16 v25, -0x1

    move-wide/from16 v1, v23

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-object v4, v12

    move-wide/from16 v28, v5

    move-object/from16 v10, v22

    move-object/from16 v22, v7

    move-object/from16 v7, v27

    move-object/from16 p4, v13

    move/from16 v11, v21

    const/16 v21, 0x1

    move-object v13, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Ljn/A;->w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, v13, Ljn/B;->b:[F

    goto :goto_a

    :cond_f
    move-object/from16 v26, v3

    move-wide/from16 v28, v5

    move-object/from16 p4, v13

    move/from16 v11, v21

    move-object/from16 v10, v22

    const/16 v21, 0x1

    const/16 v25, -0x1

    move-object v13, v8

    :cond_10
    :goto_a
    iget v0, v10, Ljn/B;->d:F

    iget-object v1, v10, Ljn/B;->b:[F

    iget-object v2, v13, Ljn/B;->b:[F

    invoke-static {v1, v2}, Ljn/g;->z([F[F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v13, Ljn/B;->g:I

    sget v2, Ljn/B;->j:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    iget v2, v13, Ljn/B;->d:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_11

    goto :goto_b

    :cond_11
    move-wide/from16 v2, v28

    iput-wide v2, v13, Ljn/B;->h:J

    sget v2, Ljn/B;->k:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v13, Ljn/B;->g:I

    iget-object v1, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v10}, Ljn/C;->h(Ljn/B;)I

    move-result v1

    iput v1, v13, Ljn/B;->e:I

    iput v0, v13, Ljn/B;->d:F

    iget v0, v13, Ljn/B;->g:I

    sget v1, Ljn/B;->j:I

    and-int v2, v0, v1

    if-eqz v2, :cond_12

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v13}, Ljn/E;->e(Ljn/B;)V

    goto :goto_b

    :cond_12
    or-int/2addr v0, v1

    iput v0, v13, Ljn/B;->g:I

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v13}, Ljn/E;->g(Ljn/B;)V

    :goto_b
    iget-object v0, v12, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v8, v0, Ljn/p;->b:I

    move-object/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v22, v10

    move/from16 v1, v25

    move-object/from16 v3, v26

    move-object/from16 v10, p3

    goto/16 :goto_8

    :cond_13
    move-object/from16 v10, p3

    move-object/from16 v11, p5

    move-object v15, v13

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    goto/16 :goto_0

    :cond_14
    move/from16 v21, v8

    move v3, v14

    move-object/from16 p4, v15

    new-array v3, v3, [F

    if-eqz v1, :cond_15

    if-eqz v2, :cond_15

    invoke-static {v1, v2}, Ljn/g;->V(Ljn/W;Ljn/W;)[F

    move-result-object v1

    const/4 v2, 0x2

    aget v4, v1, v2

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v21

    aget v1, v1, v5

    neg-float v1, v1

    aput v1, v3, v2

    invoke-static {v3}, Ljn/g;->R([F)V

    :cond_15
    new-instance v1, Ljn/h;

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move-object/from16 v2, p4

    invoke-direct {v1, v0, v2, v3}, Ljn/h;-><init>(F[F[F)V

    invoke-static {v1}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_c
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public k(JJ[F[FLjn/L;)Ljn/O;
    .locals 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[F[F",
            "Ljn/L;",
            ")",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v0, p1

    move-wide/from16 v10, p3

    move-object/from16 v2, p5

    move-object/from16 v15, p6

    move-object/from16 v14, p7

    iget-object v3, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v0, v1}, Ljn/v;->S(J)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v3, v10, v11}, Ljn/v;->S(J)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v2, :cond_13

    invoke-static/range {p5 .. p5}, Ljn/g;->I([F)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v15, :cond_13

    invoke-static/range {p6 .. p6}, Ljn/g;->I([F)Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v14, :cond_0

    goto/16 :goto_c

    :cond_0
    cmp-long v3, v0, v10

    const/4 v13, 0x1

    if-nez v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljn/O;->k(Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3}, Ljn/C;->a()V

    iget-object v3, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v3}, Ljn/E;->b()V

    iget-object v3, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v3, v0, v1}, Ljn/C;->e(J)Ljn/B;

    move-result-object v3

    iget-object v4, v3, Ljn/B;->b:[F

    invoke-static {v4, v2}, Ljn/g;->w([F[F)V

    const/4 v12, 0x0

    iput v12, v3, Ljn/B;->e:I

    const/4 v8, 0x0

    iput v8, v3, Ljn/B;->c:F

    invoke-static/range {p5 .. p6}, Ljn/g;->z([F[F)F

    move-result v2

    sget v4, Ljn/o;->n:F

    mul-float/2addr v2, v4

    iput v2, v3, Ljn/B;->d:F

    iput-wide v0, v3, Ljn/B;->h:J

    sget v0, Ljn/B;->j:I

    iput v0, v3, Ljn/B;->g:I

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v3}, Ljn/E;->g(Ljn/B;)V

    iget v0, v3, Ljn/B;->d:F

    sget-object v31, Ljn/Q;->SUCCSESS:Ljn/Q;

    :goto_0
    iget-object v1, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->c()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v1}, Ljn/E;->f()Ljn/B;

    move-result-object v7

    iget v1, v7, Ljn/B;->g:I

    sget v2, Ljn/B;->j:I

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v7, Ljn/B;->g:I

    sget v2, Ljn/B;->k:I

    or-int/2addr v1, v2

    iput v1, v7, Ljn/B;->g:I

    iget-wide v5, v7, Ljn/B;->h:J

    cmp-long v1, v5, v10

    if-nez v1, :cond_2

    move-object v3, v7

    goto/16 :goto_b

    :cond_2
    iget-object v1, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v1, v5, v6}, Ljn/v;->K(J)Ljn/U;

    move-result-object v1

    iget-object v2, v1, Ljn/U;->a:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljn/s;

    iget-object v1, v1, Ljn/U;->b:Ljava/lang/Object;

    check-cast v1, Ljn/G;

    iget v2, v7, Ljn/B;->e:I

    const-wide/16 v32, 0x0

    if-eqz v2, :cond_3

    iget-object v8, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v8, v2}, Ljn/C;->g(I)Ljn/B;

    move-result-object v2

    iget-wide v12, v2, Ljn/B;->h:J

    goto :goto_1

    :cond_3
    move-wide/from16 v12, v32

    :goto_1
    cmp-long v2, v12, v32

    if-eqz v2, :cond_4

    iget-object v2, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v2, v12, v13}, Ljn/v;->K(J)Ljn/U;

    move-result-object v2

    iget-object v8, v2, Ljn/U;->a:Ljava/lang/Object;

    check-cast v8, Ljn/s;

    iget-object v2, v2, Ljn/U;->b:Ljava/lang/Object;

    check-cast v2, Ljn/G;

    move-object/from16 v35, v2

    move-object/from16 v36, v8

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    move-object/from16 v35, v8

    move-object/from16 v36, v35

    :goto_2
    iget-object v2, v4, Ljn/s;->d:[I

    iget v8, v1, Ljn/G;->a:I

    aget v2, v2, v8

    move/from16 v37, v0

    move v8, v2

    move-object/from16 v38, v3

    :goto_3
    const/4 v0, -0x1

    if-eq v8, v0, :cond_10

    iget-object v0, v4, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget-wide v2, v0, Ljn/p;->a:J

    cmp-long v0, v2, v32

    if-eqz v0, :cond_5

    cmp-long v0, v2, v12

    if-nez v0, :cond_6

    :cond_5
    move-object/from16 v40, v1

    :goto_4
    move-object/from16 p5, v4

    move-wide/from16 v42, v5

    move-object v3, v7

    move/from16 v45, v8

    move-wide v5, v12

    move-object v8, v15

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v44, 0x0

    goto/16 :goto_a

    :cond_6
    iget-object v0, v9, Ljn/A;->a:Ljn/v;

    invoke-virtual {v0, v2, v3}, Ljn/v;->K(J)Ljn/U;

    move-result-object v0

    move-object/from16 p1, v1

    iget-object v1, v0, Ljn/U;->a:Ljava/lang/Object;

    check-cast v1, Ljn/s;

    iget-object v0, v0, Ljn/U;->b:Ljava/lang/Object;

    check-cast v0, Ljn/G;

    invoke-interface {v14, v2, v3, v1, v0}, Ljn/L;->b(JLjn/s;Ljn/G;)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v40, p1

    goto :goto_4

    :cond_7
    move-object/from16 p2, v0

    iget-object v0, v4, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->d:I

    move-object/from16 p5, v1

    const/16 v1, 0xff

    if-eq v0, v1, :cond_8

    iget-object v0, v4, Ljn/s;->e:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->d:I

    const/16 v34, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const/16 v34, 0x1

    const/4 v0, 0x0

    :goto_5
    iget-object v1, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v1, v2, v3, v0}, Ljn/C;->f(JI)Ljn/B;

    move-result-object v1

    iget v0, v1, Ljn/B;->g:I

    if-nez v0, :cond_a

    move-object/from16 v39, p2

    move-object/from16 v0, p0

    move-object/from16 v40, p1

    move-object/from16 v41, p5

    move-wide/from16 p1, v2

    move-object v3, v1

    move-wide v1, v5

    move-object v9, v3

    move-object/from16 v3, v40

    move-object/from16 p5, v4

    move-wide/from16 v42, v5

    move-wide/from16 v5, p1

    move-object v15, v7

    move-object/from16 v7, v39

    move/from16 v45, v8

    const/16 v44, 0x0

    move-object/from16 v8, v41

    invoke-virtual/range {v0 .. v8}, Ljn/A;->w(JLjn/G;Ljn/s;JLjn/G;Ljn/s;)Ljn/O;

    move-result-object v0

    invoke-virtual {v0}, Ljn/O;->a()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, [F

    iput-object v0, v9, Ljn/B;->b:[F

    :cond_9
    move-wide/from16 v0, p1

    goto :goto_6

    :cond_a
    move-object/from16 v40, p1

    move-object/from16 v39, p2

    move-object/from16 v41, p5

    move-object v9, v1

    move-object/from16 p5, v4

    move-wide/from16 v42, v5

    move-object v15, v7

    move/from16 v45, v8

    const/16 v44, 0x0

    move-wide v0, v2

    :goto_6
    cmp-long v2, v0, v10

    if-nez v2, :cond_b

    iget-object v2, v15, Ljn/B;->b:[F

    iget-object v3, v9, Ljn/B;->b:[F

    move-object/from16 v16, p7

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v12

    move-object/from16 v21, v36

    move-object/from16 v22, v35

    move-wide/from16 v23, v42

    move-object/from16 v25, p5

    move-object/from16 v26, v40

    move-wide/from16 v27, v0

    move-object/from16 v29, v41

    move-object/from16 v30, v39

    invoke-interface/range {v16 .. v30}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v2

    iget-object v3, v9, Ljn/B;->b:[F

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v23, 0x0

    move-wide v5, v12

    const/4 v4, 0x0

    move-object/from16 v12, p7

    move/from16 v7, v34

    move-object v13, v3

    move-object/from16 v14, p6

    move-object/from16 v8, p6

    move-object v3, v15

    move-wide/from16 v15, v42

    move-object/from16 v17, p5

    move-object/from16 v18, v40

    move-wide/from16 v19, v0

    move-object/from16 v21, v41

    move-object/from16 v22, v39

    invoke-interface/range {v12 .. v26}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v12

    iget v13, v3, Ljn/B;->c:F

    add-float/2addr v13, v2

    add-float/2addr v13, v12

    move/from16 v2, v44

    goto :goto_7

    :cond_b
    move-object/from16 v8, p6

    move-wide v5, v12

    move-object v3, v15

    move/from16 v7, v34

    const/4 v4, 0x0

    iget-object v13, v3, Ljn/B;->b:[F

    iget-object v14, v9, Ljn/B;->b:[F

    move-object/from16 v12, p7

    move-wide v15, v5

    move-object/from16 v17, v36

    move-object/from16 v18, v35

    move-wide/from16 v19, v42

    move-object/from16 v21, p5

    move-object/from16 v22, v40

    move-wide/from16 v23, v0

    move-object/from16 v25, v41

    move-object/from16 v26, v39

    invoke-interface/range {v12 .. v26}, Ljn/L;->a([F[FJLjn/s;Ljn/G;JLjn/s;Ljn/G;JLjn/s;Ljn/G;)F

    move-result v2

    iget v12, v3, Ljn/B;->c:F

    add-float v13, v12, v2

    iget-object v2, v9, Ljn/B;->b:[F

    invoke-static {v2, v8}, Ljn/g;->z([F[F)F

    move-result v2

    sget v12, Ljn/o;->n:F

    mul-float/2addr v2, v12

    :goto_7
    add-float v12, v13, v2

    iget v14, v9, Ljn/B;->g:I

    sget v15, Ljn/B;->j:I

    and-int/2addr v15, v14

    if-eqz v15, :cond_c

    iget v15, v9, Ljn/B;->d:F

    cmpl-float v15, v12, v15

    if-ltz v15, :cond_c

    :goto_8
    move-object/from16 v9, p0

    goto :goto_a

    :cond_c
    sget v15, Ljn/B;->k:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_d

    iget v14, v9, Ljn/B;->d:F

    cmpl-float v14, v12, v14

    if-ltz v14, :cond_d

    goto :goto_8

    :cond_d
    move-object v14, v9

    move-object/from16 v9, p0

    iget-object v15, v9, Ljn/A;->b:Ljn/C;

    invoke-virtual {v15, v3}, Ljn/C;->h(Ljn/B;)I

    move-result v15

    iput v15, v14, Ljn/B;->e:I

    iput-wide v0, v14, Ljn/B;->h:J

    iget v0, v14, Ljn/B;->g:I

    sget v1, Ljn/B;->k:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, v14, Ljn/B;->g:I

    iput v13, v14, Ljn/B;->c:F

    iput v12, v14, Ljn/B;->d:F

    sget v1, Ljn/B;->j:I

    and-int v12, v0, v1

    if-eqz v12, :cond_e

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v14}, Ljn/E;->e(Ljn/B;)V

    goto :goto_9

    :cond_e
    or-int/2addr v0, v1

    iput v0, v14, Ljn/B;->g:I

    iget-object v0, v9, Ljn/A;->c:Ljn/E;

    invoke-virtual {v0, v14}, Ljn/E;->g(Ljn/B;)V

    :goto_9
    cmpg-float v0, v2, v37

    if-gez v0, :cond_f

    move/from16 v37, v2

    move-object/from16 v38, v14

    :cond_f
    :goto_a
    move-object/from16 v2, p5

    iget-object v0, v2, Ljn/s;->e:Ljava/util/List;

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn/p;

    iget v0, v0, Ljn/p;->b:I

    move-object/from16 v14, p7

    move-object v4, v2

    move-object v7, v3

    move-wide v12, v5

    move-object v15, v8

    move-object/from16 v1, v40

    move-wide/from16 v5, v42

    move v8, v0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v14, p7

    move/from16 v0, v37

    move-object/from16 v3, v38

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_b
    invoke-virtual {v9, v3}, Ljn/A;->z(Ljn/B;)Ljava/util/List;

    move-result-object v0

    iget-wide v1, v3, Ljn/B;->h:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_12

    sget-object v31, Ljn/Q;->PARTIAL_RESULT:Ljn/Q;

    :cond_12
    move-object/from16 v1, v31

    invoke-static {v1, v0}, Ljn/O;->g(Ljn/Q;Ljava/lang/Object;)Ljn/O;

    move-result-object v0

    return-object v0

    :cond_13
    :goto_c
    invoke-static {}, Ljn/O;->e()Ljn/O;

    move-result-object v0

    return-object v0
.end method

.method public l(JJ[F[FLjn/L;IF)Ljn/O;
    .locals 0
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
            "startRef",
            "endRef",
            "startPos",
            "endPos",
            "filter",
            "options",
            "raycastLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[F[F",
            "Ljn/L;",
            "IF)",
            "Ljn/O<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Ljn/o;->k(JJ[F[FLjn/L;)Ljn/O;

    move-result-object p1

    return-object p1
.end method
