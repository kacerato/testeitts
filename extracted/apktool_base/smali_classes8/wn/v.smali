.class public Lwn/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn/v$e;,
        Lwn/v$d;,
        Lwn/v$c;,
        Lwn/v$f;,
        Lwn/v$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lwn/N;Lwn/c;FII)Lwn/f;
    .locals 26
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
            "chf",
            "maxError",
            "maxEdgeLen",
            "buildFlags"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget v9, v7, Lwn/c;->a:I

    iget v10, v7, Lwn/c;->b:I

    iget v11, v7, Lwn/c;->f:I

    new-instance v12, Lwn/f;

    invoke-direct {v12}, Lwn/f;-><init>()V

    const-string v13, "CONTOURS"

    invoke-virtual {v0, v13}, Lwn/N;->f(Ljava/lang/String;)V

    iget-object v1, v12, Lwn/f;->b:[F

    iget-object v2, v7, Lwn/c;->i:[F

    const/4 v14, 0x0

    invoke-static {v1, v2, v14}, Lwn/I;->f([F[FI)V

    iget-object v1, v12, Lwn/f;->c:[F

    iget-object v2, v7, Lwn/c;->j:[F

    invoke-static {v1, v2, v14}, Lwn/I;->f([F[FI)V

    const/4 v15, 0x2

    if-lez v11, :cond_0

    int-to-float v1, v11

    iget v2, v7, Lwn/c;->k:F

    mul-float/2addr v1, v2

    iget-object v2, v12, Lwn/f;->b:[F

    aget v3, v2, v14

    add-float/2addr v3, v1

    aput v3, v2, v14

    aget v3, v2, v15

    add-float/2addr v3, v1

    aput v3, v2, v15

    iget-object v2, v12, Lwn/f;->c:[F

    aget v3, v2, v14

    sub-float/2addr v3, v1

    aput v3, v2, v14

    aget v3, v2, v15

    sub-float/2addr v3, v1

    aput v3, v2, v15

    :cond_0
    iget v1, v7, Lwn/c;->k:F

    iput v1, v12, Lwn/f;->d:F

    iget v1, v7, Lwn/c;->l:F

    iput v1, v12, Lwn/f;->e:F

    iget v1, v7, Lwn/c;->a:I

    iget v2, v7, Lwn/c;->f:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iput v1, v12, Lwn/f;->f:I

    iget v1, v7, Lwn/c;->b:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iput v1, v12, Lwn/f;->g:I

    iput v2, v12, Lwn/f;->h:I

    iput v8, v12, Lwn/f;->i:F

    iget v1, v7, Lwn/c;->c:I

    new-array v6, v1, [I

    const-string v1, "CONTOURS_TRACE"

    invoke-virtual {v0, v1}, Lwn/N;->f(Ljava/lang/String;)V

    move v2, v14

    :goto_0
    const/16 v16, 0x1

    if-ge v2, v10, :cond_8

    move v3, v14

    :goto_1
    if-ge v3, v9, :cond_7

    iget-object v4, v7, Lwn/c;->m:[Lwn/b;

    mul-int v17, v2, v9

    add-int v17, v3, v17

    aget-object v4, v4, v17

    iget v15, v4, Lwn/b;->a:I

    iget v4, v4, Lwn/b;->b:I

    add-int/2addr v4, v15

    :goto_2
    if-ge v15, v4, :cond_6

    iget-object v14, v7, Lwn/c;->n:[Lwn/d;

    aget-object v14, v14, v15

    iget v5, v14, Lwn/d;->b:I

    if-eqz v5, :cond_1

    sget v19, Lwn/u;->e:I

    and-int v5, v5, v19

    if-eqz v5, :cond_2

    :cond_1
    move/from16 v21, v4

    move/from16 v22, v11

    move-object/from16 v19, v13

    const/4 v4, 0x0

    goto :goto_5

    :cond_2
    move-object/from16 v19, v13

    const/4 v5, 0x0

    const/4 v13, 0x4

    const/16 v18, 0x0

    :goto_3
    if-ge v5, v13, :cond_5

    invoke-static {v14, v5}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    move/from16 v21, v4

    const/16 v4, 0x3f

    if-eq v13, v4, :cond_3

    invoke-static {v5}, Lwn/r;->b(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v5}, Lwn/r;->c(I)I

    move-result v13

    add-int/2addr v13, v2

    move/from16 v22, v11

    iget-object v11, v7, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v13, v9

    add-int/2addr v4, v13

    aget-object v4, v11, v4

    iget v4, v4, Lwn/b;->a:I

    invoke-static {v14, v5}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v7, Lwn/c;->n:[Lwn/d;

    aget-object v4, v11, v4

    iget v4, v4, Lwn/d;->b:I

    goto :goto_4

    :cond_3
    move/from16 v22, v11

    const/4 v4, 0x0

    :goto_4
    iget-object v11, v7, Lwn/c;->n:[Lwn/d;

    aget-object v11, v11, v15

    iget v11, v11, Lwn/d;->b:I

    if-ne v4, v11, :cond_4

    shl-int v4, v16, v5

    or-int v4, v18, v4

    move/from16 v18, v4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v21

    move/from16 v11, v22

    const/4 v13, 0x4

    goto :goto_3

    :cond_5
    move/from16 v21, v4

    move/from16 v22, v11

    xor-int/lit8 v4, v18, 0xf

    aput v4, v6, v15

    goto :goto_6

    :goto_5
    aput v4, v6, v15

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v13, v19

    move/from16 v4, v21

    move/from16 v11, v22

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    move/from16 v22, v11

    move-object/from16 v19, v13

    add-int/lit8 v3, v3, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto/16 :goto_1

    :cond_7
    move/from16 v22, v11

    move-object/from16 v19, v13

    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    goto/16 :goto_0

    :cond_8
    move/from16 v22, v11

    move-object/from16 v19, v13

    invoke-virtual {v0, v1}, Lwn/N;->g(Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v13, Ljava/util/ArrayList;

    const/16 v1, 0x40

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v10, :cond_14

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v9, :cond_13

    iget-object v1, v7, Lwn/c;->m:[Lwn/b;

    mul-int v2, v14, v9

    add-int/2addr v2, v15

    aget-object v1, v1, v2

    iget v2, v1, Lwn/b;->a:I

    iget v1, v1, Lwn/b;->b:I

    add-int v5, v2, v1

    move v4, v2

    :goto_9
    if-ge v4, v5, :cond_12

    aget v1, v6, v4

    if-eqz v1, :cond_11

    const/16 v2, 0xf

    if-ne v1, v2, :cond_9

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v18, v9

    move/from16 v21, v10

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/16 v20, 0x4

    goto/16 :goto_e

    :cond_9
    iget-object v1, v7, Lwn/c;->n:[Lwn/d;

    aget-object v1, v1, v4

    iget v3, v1, Lwn/d;->b:I

    if-eqz v3, :cond_a

    sget v1, Lwn/u;->e:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_b

    :cond_a
    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v18, v9

    move/from16 v21, v10

    const/4 v9, 0x2

    const/16 v20, 0x4

    goto/16 :goto_f

    :cond_b
    iget-object v1, v7, Lwn/c;->p:[I

    aget v2, v1, v4

    invoke-interface {v11}, Ljava/util/List;->clear()V

    invoke-interface {v13}, Ljava/util/List;->clear()V

    const-string v1, "CONTOURS_WALK"

    invoke-virtual {v0, v1}, Lwn/N;->f(Ljava/lang/String;)V

    move/from16 v18, v9

    move-object v9, v1

    move v1, v15

    move/from16 v21, v10

    move v10, v2

    move v2, v14

    move v7, v3

    move v3, v4

    move/from16 v23, v4

    move-object/from16 v4, p1

    move/from16 v24, v5

    const/16 v20, 0x4

    move-object v5, v6

    move-object/from16 v25, v6

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lwn/v;->l(IIILwn/c;[ILjava/util/List;)V

    invoke-virtual {v0, v9}, Lwn/N;->g(Ljava/lang/String;)V

    const-string v1, "CONTOURS_SIMPLIFY"

    invoke-virtual {v0, v1}, Lwn/N;->f(Ljava/lang/String;)V

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v11, v13, v8, v2, v3}, Lwn/v;->k(Ljava/util/List;Ljava/util/List;FII)V

    invoke-static {v13}, Lwn/v;->j(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lwn/N;->g(Ljava/lang/String;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v4, 0x3

    if-lt v1, v4, :cond_10

    new-instance v1, Lwn/e;

    invoke-direct {v1}, Lwn/e;-><init>()V

    iget-object v4, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    iput v4, v1, Lwn/e;->b:I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v1, Lwn/e;->a:[I

    const/4 v4, 0x0

    :goto_a
    iget-object v5, v1, Lwn/e;->a:[I

    array-length v6, v5

    if-ge v4, v6, :cond_c

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    if-lez v22, :cond_d

    const/4 v4, 0x0

    :goto_b
    iget v5, v1, Lwn/e;->b:I

    if-ge v4, v5, :cond_d

    iget-object v5, v1, Lwn/e;->a:[I

    mul-int/lit8 v6, v4, 0x4

    aget v9, v5, v6

    sub-int v9, v9, v22

    aput v9, v5, v6

    const/4 v9, 0x2

    add-int/2addr v6, v9

    aget v9, v5, v6

    sub-int v9, v9, v22

    aput v9, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    iput v4, v1, Lwn/e;->d:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v1, Lwn/e;->c:[I

    const/4 v4, 0x0

    :goto_c
    iget-object v5, v1, Lwn/e;->c:[I

    array-length v6, v5

    if-ge v4, v6, :cond_e

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_e
    if-lez v22, :cond_f

    const/4 v4, 0x0

    :goto_d
    iget v5, v1, Lwn/e;->d:I

    if-ge v4, v5, :cond_f

    iget-object v5, v1, Lwn/e;->c:[I

    mul-int/lit8 v6, v4, 0x4

    aget v9, v5, v6

    sub-int v9, v9, v22

    aput v9, v5, v6

    const/4 v9, 0x2

    add-int/2addr v6, v9

    aget v17, v5, v6

    sub-int v17, v17, v22

    aput v17, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_f
    const/4 v9, 0x2

    iput v7, v1, Lwn/e;->f:I

    iput v10, v1, Lwn/e;->e:I

    goto :goto_f

    :cond_10
    const/4 v9, 0x2

    goto :goto_f

    :cond_11
    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v23, v4

    move/from16 v24, v5

    move-object/from16 v25, v6

    move/from16 v18, v9

    move/from16 v21, v10

    const/4 v9, 0x2

    const/16 v20, 0x4

    const/4 v1, 0x0

    :goto_e
    aput v1, v25, v23

    :goto_f
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v7, p1

    move/from16 v9, v18

    move/from16 v10, v21

    move/from16 v5, v24

    move-object/from16 v6, v25

    goto/16 :goto_9

    :cond_12
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v25, v6

    move/from16 v18, v9

    move/from16 v21, v10

    const/4 v9, 0x2

    const/16 v20, 0x4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p1

    move/from16 v9, v18

    goto/16 :goto_8

    :cond_13
    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v25, v6

    move/from16 v18, v9

    move/from16 v21, v10

    const/4 v9, 0x2

    const/16 v20, 0x4

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p1

    move/from16 v9, v18

    goto/16 :goto_7

    :cond_14
    iget-object v1, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    iget-object v1, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_10
    iget-object v3, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_17

    iget-object v3, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwn/e;

    iget-object v5, v3, Lwn/e;->a:[I

    iget v3, v3, Lwn/e;->b:I

    invoke-static {v5, v3}, Lwn/v;->b([II)I

    move-result v3

    if-gez v3, :cond_15

    const/4 v3, -0x1

    goto :goto_11

    :cond_15
    move/from16 v3, v16

    :goto_11
    aput v3, v1, v4

    if-gez v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_17
    if-lez v2, :cond_23

    move-object/from16 v2, p1

    iget v2, v2, Lwn/c;->h:I

    add-int/lit8 v2, v2, 0x1

    new-array v3, v2, [Lwn/v$e;

    const/4 v4, 0x0

    :goto_12
    const/4 v5, 0x0

    if-ge v4, v2, :cond_18

    new-instance v6, Lwn/v$e;

    invoke-direct {v6, v5}, Lwn/v$e;-><init>(Lwn/v$a;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_18
    const/4 v4, 0x0

    :goto_13
    iget-object v6, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1b

    iget-object v6, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lwn/e;

    aget v7, v1, v4

    if-lez v7, :cond_1a

    iget v7, v6, Lwn/e;->f:I

    aget-object v7, v3, v7

    iget-object v8, v7, Lwn/v$e;->a:Lwn/e;

    if-nez v8, :cond_19

    iput-object v6, v7, Lwn/v$e;->a:Lwn/e;

    goto :goto_14

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildContours: Multiple outlines for region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lwn/e;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget v6, v6, Lwn/e;->f:I

    aget-object v6, v3, v6

    iget v7, v6, Lwn/v$e;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lwn/v$e;->c:I

    :goto_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_1b
    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_1e

    aget-object v6, v3, v4

    iget v7, v6, Lwn/v$e;->c:I

    if-lez v7, :cond_1d

    new-array v7, v7, [Lwn/v$d;

    iput-object v7, v6, Lwn/v$e;->b:[Lwn/v$d;

    const/4 v6, 0x0

    :goto_16
    aget-object v7, v3, v4

    iget v8, v7, Lwn/v$e;->c:I

    if-ge v6, v8, :cond_1c

    iget-object v7, v7, Lwn/v$e;->b:[Lwn/v$d;

    new-instance v8, Lwn/v$d;

    invoke-direct {v8, v5}, Lwn/v$d;-><init>(Lwn/v$a;)V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1c
    const/4 v6, 0x0

    iput v6, v7, Lwn/v$e;->c:I

    goto :goto_17

    :cond_1d
    const/4 v6, 0x0

    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_1e
    const/4 v6, 0x0

    move v4, v6

    :goto_18
    iget-object v5, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_20

    iget-object v5, v12, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn/e;

    iget v7, v5, Lwn/e;->f:I

    aget-object v7, v3, v7

    aget v8, v1, v4

    if-gez v8, :cond_1f

    iget-object v8, v7, Lwn/v$e;->b:[Lwn/v$d;

    iget v9, v7, Lwn/v$e;->c:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v7, Lwn/v$e;->c:I

    aget-object v7, v8, v9

    iput-object v5, v7, Lwn/v$d;->d:Lwn/e;

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_20
    move v14, v6

    :goto_19
    if-ge v14, v2, :cond_23

    aget-object v1, v3, v14

    iget v4, v1, Lwn/v$e;->c:I

    if-nez v4, :cond_21

    goto :goto_1a

    :cond_21
    iget-object v4, v1, Lwn/v$e;->a:Lwn/e;

    if-eqz v4, :cond_22

    invoke-static {v0, v1}, Lwn/v;->i(Lwn/N;Lwn/v$e;)V

    :goto_1a
    add-int/lit8 v14, v14, 0x1

    goto :goto_19

    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildContours: Bad outline for region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", contour simplification is likely too aggressive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lwn/N;->g(Ljava/lang/String;)V

    return-object v12
.end method

.method public static b([II)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "verts",
            "nverts"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    move v0, v2

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v3, v0, 0x4

    mul-int/lit8 v1, v1, 0x4

    aget v4, p0, v3

    add-int/lit8 v5, v1, 0x2

    aget v5, p0, v5

    mul-int/2addr v4, v5

    aget v1, p0, v1

    add-int/lit8 v3, v3, 0x2

    aget v3, p0, v3

    mul-int/2addr v1, v3

    sub-int/2addr v4, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v0, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    return v2
.end method

.method public static c(IIIIII)F
    .locals 4
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
            "px",
            "pz",
            "qx",
            "qz"
        }
    .end annotation

    sub-int/2addr p4, p2

    int-to-float p4, p4

    sub-int/2addr p5, p3

    int-to-float p5, p5

    sub-int v0, p0, p2

    int-to-float v0, v0

    sub-int v1, p1, p3

    int-to-float v1, v1

    mul-float v2, p4, p4

    mul-float v3, p5, p5

    add-float/2addr v2, v3

    mul-float/2addr v0, p4

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    div-float/2addr v0, v2

    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    int-to-float p2, p2

    mul-float/2addr p4, v1

    add-float/2addr p2, p4

    int-to-float p0, p0

    sub-float/2addr p2, p0

    int-to-float p0, p3

    mul-float/2addr v1, p5

    add-float/2addr p0, v1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    mul-float/2addr p2, p2

    mul-float/2addr p0, p0

    add-float/2addr p2, p0

    return p2
.end method

.method public static d(Lwn/e;)[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contour"
        }
    .end annotation

    iget-object v0, p0, Lwn/e;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v0, v0, v3

    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lwn/e;->b:I

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lwn/e;->a:[I

    mul-int/lit8 v6, v4, 0x4

    aget v7, v5, v6

    add-int/2addr v6, v3

    aget v5, v5, v6

    if-lt v7, v2, :cond_0

    if-ne v7, v2, :cond_1

    if-ge v5, v0, :cond_1

    :cond_0
    move v1, v4

    move v0, v5

    move v2, v7

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    filled-new-array {v2, v0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static e(IIIILwn/c;Z)I
    .locals 16
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
            "y",
            "i",
            "dir",
            "chf",
            "isBorderVertex"
        }
    .end annotation

    move/from16 v0, p3

    move-object/from16 v1, p4

    iget-object v2, v1, Lwn/c;->n:[Lwn/d;

    aget-object v2, v2, p2

    iget v3, v2, Lwn/d;->a:I

    add-int/lit8 v4, v0, 0x1

    const/4 v5, 0x3

    and-int/2addr v4, v5

    const/4 v6, 0x4

    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v8, v7, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    const/4 v10, 0x2

    aput v8, v7, v10

    aput v8, v7, v5

    iget v11, v2, Lwn/d;->b:I

    iget-object v12, v1, Lwn/c;->p:[I

    aget v12, v12, p2

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    aput v11, v7, v8

    invoke-static {v2, v0}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_0

    invoke-static/range {p3 .. p3}, Lwn/r;->b(I)I

    move-result v11

    add-int v11, p0, v11

    invoke-static/range {p3 .. p3}, Lwn/r;->c(I)I

    move-result v13

    add-int v13, p1, v13

    iget-object v14, v1, Lwn/c;->m:[Lwn/b;

    iget v15, v1, Lwn/c;->a:I

    mul-int/2addr v15, v13

    add-int/2addr v15, v11

    aget-object v14, v14, v15

    iget v14, v14, Lwn/b;->a:I

    invoke-static {v2, v0}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v1, Lwn/c;->n:[Lwn/d;

    aget-object v15, v15, v14

    iget v8, v15, Lwn/d;->a:I

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v8, v1, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v14

    iget v8, v8, Lwn/d;->b:I

    iget-object v6, v1, Lwn/c;->p:[I

    aget v6, v6, v14

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v8

    aput v6, v7, v9

    invoke-static {v15, v4}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    if-eq v6, v12, :cond_0

    invoke-static {v4}, Lwn/r;->b(I)I

    move-result v6

    add-int/2addr v11, v6

    invoke-static {v4}, Lwn/r;->c(I)I

    move-result v6

    add-int/2addr v13, v6

    iget-object v6, v1, Lwn/c;->m:[Lwn/b;

    iget v8, v1, Lwn/c;->a:I

    mul-int/2addr v13, v8

    add-int/2addr v11, v13

    aget-object v6, v6, v11

    iget v6, v6, Lwn/b;->a:I

    invoke-static {v15, v4}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    add-int/2addr v6, v8

    iget-object v8, v1, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v6

    iget v8, v8, Lwn/d;->a:I

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v8, v1, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v6

    iget v8, v8, Lwn/d;->b:I

    iget-object v11, v1, Lwn/c;->p:[I

    aget v6, v11, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v8

    aput v6, v7, v10

    :cond_0
    invoke-static {v2, v4}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    if-eq v6, v12, :cond_1

    invoke-static {v4}, Lwn/r;->b(I)I

    move-result v6

    add-int v6, p0, v6

    invoke-static {v4}, Lwn/r;->c(I)I

    move-result v8

    add-int v8, p1, v8

    iget-object v11, v1, Lwn/c;->m:[Lwn/b;

    iget v13, v1, Lwn/c;->a:I

    mul-int/2addr v13, v8

    add-int/2addr v13, v6

    aget-object v11, v11, v13

    iget v11, v11, Lwn/b;->a:I

    invoke-static {v2, v4}, Lwn/r;->a(Lwn/d;I)I

    move-result v2

    add-int/2addr v11, v2

    iget-object v2, v1, Lwn/c;->n:[Lwn/d;

    aget-object v2, v2, v11

    iget v4, v2, Lwn/d;->a:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v1, Lwn/c;->n:[Lwn/d;

    aget-object v4, v4, v11

    iget v4, v4, Lwn/d;->b:I

    iget-object v13, v1, Lwn/c;->p:[I

    aget v11, v13, v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v4, v11

    aput v4, v7, v5

    invoke-static {v2, v0}, Lwn/r;->a(Lwn/d;I)I

    move-result v4

    if-eq v4, v12, :cond_1

    invoke-static/range {p3 .. p3}, Lwn/r;->b(I)I

    move-result v4

    add-int/2addr v6, v4

    invoke-static/range {p3 .. p3}, Lwn/r;->c(I)I

    move-result v4

    add-int/2addr v8, v4

    iget-object v4, v1, Lwn/c;->m:[Lwn/b;

    iget v11, v1, Lwn/c;->a:I

    mul-int/2addr v8, v11

    add-int/2addr v6, v8

    aget-object v4, v4, v6

    iget v4, v4, Lwn/b;->a:I

    invoke-static {v2, v0}, Lwn/r;->a(Lwn/d;I)I

    move-result v0

    add-int/2addr v4, v0

    iget-object v0, v1, Lwn/c;->n:[Lwn/d;

    aget-object v0, v0, v4

    iget v0, v0, Lwn/d;->a:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v0, v1, Lwn/c;->n:[Lwn/d;

    aget-object v0, v0, v4

    iget v0, v0, Lwn/d;->b:I

    iget-object v1, v1, Lwn/c;->p:[I

    aget v1, v1, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aput v0, v7, v10

    :cond_1
    const/4 v0, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v4, v2, 0x3

    add-int/lit8 v6, v1, 0x2

    and-int/2addr v6, v5

    add-int/lit8 v8, v1, 0x3

    and-int/2addr v8, v5

    aget v1, v7, v1

    aget v4, v7, v4

    and-int v10, v1, v4

    sget v11, Lwn/u;->e:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    if-ne v1, v4, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    aget v6, v7, v6

    aget v8, v7, v8

    or-int v12, v6, v8

    and-int/2addr v11, v12

    if-nez v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    shr-int/lit8 v12, v6, 0x10

    shr-int/lit8 v13, v8, 0x10

    if-ne v12, v13, :cond_4

    move v12, v9

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    if-eqz v8, :cond_5

    move v1, v9

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    if-eqz v10, :cond_6

    if-eqz v11, :cond_6

    if-eqz v12, :cond_6

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    :goto_5
    return v3
.end method

.method public static f(II[II[I)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "n",
            "verts",
            "pj",
            "vertpj"
        }
    .end annotation

    mul-int/lit8 v0, p0, 0x4

    invoke-static {p0, p1}, Lwn/E;->x(II)I

    move-result v1

    const/4 v2, 0x4

    mul-int/2addr v1, v2

    invoke-static {p0, p1}, Lwn/E;->y(II)I

    move-result p0

    mul-int/2addr p0, v2

    const/16 p1, 0x10

    new-array p1, p1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    add-int v5, v0, v4

    aget v5, p2, v5

    aput v5, p1, v4

    add-int/lit8 v5, v4, 0x4

    add-int v6, v1, v4

    aget v6, p2, v6

    aput v6, p1, v5

    add-int/lit8 v5, v4, 0x8

    add-int v6, p0, v4

    aget v6, p2, v6

    aput v6, p1, v5

    add-int/lit8 v5, v4, 0xc

    add-int v6, p3, v4

    aget v6, p4, v6

    aput v6, p1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-static {p1, p0, v3, v2}, Lwn/E;->u([IIII)Z

    move-result p2

    const/16 p3, 0xc

    const/4 p4, 0x1

    if-eqz p2, :cond_2

    invoke-static {p1, v3, p3, p0}, Lwn/E;->t([IIII)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, p3, v3, v2}, Lwn/E;->t([IIII)Z

    move-result p0

    if-eqz p0, :cond_1

    move v3, p4

    :cond_1
    return v3

    :cond_2
    invoke-static {p1, v3, p3, v2}, Lwn/E;->u([IIII)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1, p3, v3, p0}, Lwn/E;->u([IIII)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    move v3, p4

    :cond_4
    return v3
.end method

.method public static g(IIII[I[I[I)Z
    .locals 5
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
            "d0",
            "d1",
            "i",
            "n",
            "verts",
            "d0verts",
            "d1verts"
        }
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    add-int v3, p0, v2

    aget v3, p5, v3

    aput v3, v0, v2

    add-int/lit8 v3, v2, 0x4

    add-int v4, p1, v2

    aget v4, p6, v4

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    if-ge p0, p3, :cond_5

    invoke-static {p0, p3}, Lwn/E;->x(II)I

    move-result p1

    if-eq p2, p0, :cond_4

    if-ne p2, p1, :cond_1

    goto :goto_3

    :cond_1
    mul-int/lit8 p5, p0, 0x4

    mul-int/lit8 p1, p1, 0x4

    move p6, v1

    :goto_2
    if-ge p6, v3, :cond_2

    add-int/lit8 v2, p6, 0x8

    add-int v4, p5, p6

    aget v4, p4, v4

    aput v4, v0, v2

    add-int/lit8 v2, p6, 0xc

    add-int v4, p1, p6

    aget v4, p4, v4

    aput v4, v0, v2

    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    invoke-static {v0, v1, p1}, Lwn/E;->E([III)Z

    move-result p5

    if-nez p5, :cond_4

    invoke-static {v0, v3, p1}, Lwn/E;->E([III)Z

    move-result p5

    if-nez p5, :cond_4

    const/16 p5, 0xc

    invoke-static {v0, v1, p5}, Lwn/E;->E([III)Z

    move-result p6

    if-nez p6, :cond_4

    invoke-static {v0, v3, p5}, Lwn/E;->E([III)Z

    move-result p6

    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0, v1, v3, p1, p5}, Lwn/E;->r([IIIII)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public static h(Lwn/e;Lwn/e;II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ca",
            "cb",
            "ia",
            "ib"
        }
    .end annotation

    iget v0, p0, Lwn/e;->b:I

    iget v1, p1, Lwn/e;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lwn/e;->b:I

    if-gt v2, v4, :cond_0

    mul-int/lit8 v5, v3, 0x4

    add-int v6, p2, v2

    rem-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x4

    iget-object v4, p0, Lwn/e;->a:[I

    aget v7, v4, v6

    aput v7, v0, v5

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v8, v6, 0x1

    aget v8, v4, v8

    aput v8, v0, v7

    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v8, v6, 0x2

    aget v8, v4, v8

    aput v8, v0, v7

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x3

    aget v4, v4, v6

    aput v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_1
    iget v2, p1, Lwn/e;->b:I

    if-gt p2, v2, :cond_1

    mul-int/lit8 v4, v3, 0x4

    add-int v5, p3, p2

    rem-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x4

    iget-object v2, p1, Lwn/e;->a:[I

    aget v6, v2, v5

    aput v6, v0, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    aput v7, v0, v6

    add-int/lit8 v6, v4, 0x2

    add-int/lit8 v7, v5, 0x2

    aget v7, v2, v7

    aput v7, v0, v6

    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v5, 0x3

    aget v2, v2, v5

    aput v2, v0, v4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lwn/e;->a:[I

    iput v3, p0, Lwn/e;->b:I

    const/4 p0, 0x0

    iput-object p0, p1, Lwn/e;->a:[I

    iput v1, p1, Lwn/e;->b:I

    return-void
.end method

.method public static i(Lwn/N;Lwn/v$e;)V
    .locals 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "region"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, v0, Lwn/v$e;->c:I

    const/4 v4, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lwn/v$e;->b:[Lwn/v$d;

    aget-object v3, v3, v2

    iget-object v3, v3, Lwn/v$d;->d:Lwn/e;

    invoke-static {v3}, Lwn/v;->d(Lwn/e;)[I

    move-result-object v3

    iget-object v5, v0, Lwn/v$e;->b:[Lwn/v$d;

    aget-object v5, v5, v2

    aget v6, v3, v1

    iput v6, v5, Lwn/v$d;->b:I

    const/4 v6, 0x1

    aget v6, v3, v6

    iput v6, v5, Lwn/v$d;->c:I

    aget v3, v3, v4

    iput v3, v5, Lwn/v$d;->a:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lwn/v$e;->b:[Lwn/v$d;

    new-instance v3, Lwn/v$c;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lwn/v$c;-><init>(Lwn/v$a;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object v2, v0, Lwn/v$e;->a:Lwn/e;

    iget v2, v2, Lwn/e;->b:I

    move v3, v1

    :goto_1
    iget v6, v0, Lwn/v$e;->c:I

    if-ge v3, v6, :cond_1

    iget-object v6, v0, Lwn/v$e;->b:[Lwn/v$d;

    aget-object v6, v6, v3

    iget-object v6, v6, Lwn/v$d;->d:Lwn/e;

    iget v6, v6, Lwn/e;->b:I

    add-int/2addr v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v3, v2, [Lwn/v$f;

    move v6, v1

    :goto_2
    if-ge v6, v2, :cond_2

    new-instance v7, Lwn/v$f;

    invoke-direct {v7, v5}, Lwn/v$f;-><init>(Lwn/v$a;)V

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lwn/v$e;->a:Lwn/e;

    move v6, v1

    :goto_3
    iget v7, v0, Lwn/v$e;->c:I

    if-ge v6, v7, :cond_b

    iget-object v7, v0, Lwn/v$e;->b:[Lwn/v$d;

    aget-object v7, v7, v6

    iget-object v8, v7, Lwn/v$d;->d:Lwn/e;

    iget v7, v7, Lwn/v$d;->a:I

    move v10, v1

    const/4 v11, -0x1

    :goto_4
    iget v12, v8, Lwn/e;->b:I

    if-ge v10, v12, :cond_9

    mul-int/lit8 v11, v7, 0x4

    move v12, v1

    move v15, v12

    :goto_5
    iget v13, v2, Lwn/e;->b:I

    if-ge v12, v13, :cond_4

    iget-object v14, v2, Lwn/e;->a:[I

    iget-object v9, v8, Lwn/e;->a:[I

    invoke-static {v12, v13, v14, v11, v9}, Lwn/v;->f(II[II[I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v2, Lwn/e;->a:[I

    mul-int/lit8 v13, v12, 0x4

    aget v14, v9, v13

    iget-object v1, v8, Lwn/e;->a:[I

    aget v16, v1, v11

    sub-int v14, v14, v16

    add-int/2addr v13, v4

    aget v9, v9, v13

    add-int/lit8 v13, v11, 0x2

    aget v1, v1, v13

    sub-int/2addr v9, v1

    aget-object v1, v3, v15

    iput v12, v1, Lwn/v$f;->b:I

    mul-int/2addr v14, v14

    mul-int/2addr v9, v9

    add-int/2addr v14, v9

    iput v14, v1, Lwn/v$f;->a:I

    add-int/lit8 v15, v15, 0x1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_5

    :cond_4
    new-instance v1, Lwn/v$b;

    invoke-direct {v1, v5}, Lwn/v$b;-><init>(Lwn/v$a;)V

    const/4 v9, 0x0

    invoke-static {v3, v9, v15, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    move v1, v9

    :goto_6
    if-ge v1, v15, :cond_7

    aget-object v12, v3, v1

    iget v12, v12, Lwn/v$f;->b:I

    mul-int/lit8 v20, v12, 0x4

    iget v14, v2, Lwn/e;->b:I

    iget-object v13, v2, Lwn/e;->a:[I

    iget-object v4, v8, Lwn/e;->a:[I

    move-object/from16 v18, v13

    move/from16 v13, v20

    move/from16 v16, v14

    move v14, v11

    move/from16 v21, v15

    move v15, v12

    move-object/from16 v17, v18

    move-object/from16 v19, v4

    invoke-static/range {v13 .. v19}, Lwn/v;->g(IIII[I[I[I)Z

    move-result v4

    move v12, v6

    :goto_7
    iget v13, v0, Lwn/v$e;->c:I

    if-ge v12, v13, :cond_5

    if-nez v4, :cond_5

    iget-object v13, v0, Lwn/v$e;->b:[Lwn/v$d;

    aget-object v13, v13, v12

    iget-object v13, v13, Lwn/v$d;->d:Lwn/e;

    iget v15, v13, Lwn/e;->b:I

    iget-object v14, v13, Lwn/e;->a:[I

    iget-object v13, v2, Lwn/e;->a:[I

    iget-object v5, v8, Lwn/e;->a:[I

    const/16 v16, -0x1

    move-object/from16 v18, v13

    move/from16 v13, v20

    move-object/from16 v17, v14

    move v14, v11

    move/from16 v19, v15

    move/from16 v15, v16

    move/from16 v16, v19

    move-object/from16 v19, v5

    invoke-static/range {v13 .. v19}, Lwn/v;->g(IIII[I[I[I)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_7

    :cond_5
    if-nez v4, :cond_6

    aget-object v1, v3, v1

    iget v1, v1, Lwn/v$f;->b:I

    move v11, v1

    const/4 v1, -0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v21

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto :goto_6

    :cond_7
    const/4 v1, -0x1

    const/4 v11, -0x1

    :goto_8
    if-eq v11, v1, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v7, v7, 0x1

    iget v4, v8, Lwn/e;->b:I

    rem-int/2addr v7, v4

    add-int/lit8 v10, v10, 0x1

    move v1, v9

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_9
    move v9, v1

    const/4 v1, -0x1

    :goto_9
    if-ne v11, v1, :cond_a

    const-string v1, "mergeHoles: Failed to find merge points for"

    move-object/from16 v4, p0

    invoke-virtual {v4, v1}, Lwn/N;->h(Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    move-object/from16 v4, p0

    iget-object v1, v0, Lwn/v$e;->a:Lwn/e;

    invoke-static {v1, v8, v11, v7}, Lwn/v;->h(Lwn/e;Lwn/e;II)V

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v1, v9

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_b
    return-void
.end method

.method public static j(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "simplified"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {v1, v0}, Lwn/E;->x(II)I

    move-result v2

    mul-int/lit8 v3, v1, 0x4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v2, v2, 0x4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x2

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k(Ljava/util/List;Ljava/util/List;FII)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "points",
            "simplified",
            "maxError",
            "maxEdgeLen",
            "buildFlags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FII)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    add-int/lit8 v4, v3, 0x3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v6, Lwn/u;->i:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_5

    add-int/lit8 v6, v4, 0x1

    rem-int v7, v6, v3

    mul-int/lit8 v8, v4, 0x4

    add-int/lit8 v9, v8, 0x3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget v11, Lwn/u;->i:I

    and-int/2addr v10, v11

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget v12, Lwn/u;->i:I

    and-int/2addr v11, v12

    if-eq v10, v11, :cond_0

    move v10, v5

    goto :goto_2

    :cond_0
    move v10, v2

    :goto_2
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget v11, Lwn/u;->h:I

    and-int/2addr v9, v11

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v11, Lwn/u;->h:I

    and-int/2addr v7, v11

    if-eq v9, v7, :cond_1

    move v7, v5

    goto :goto_3

    :cond_1
    move v7, v2

    :goto_3
    if-nez v10, :cond_2

    if-eqz v7, :cond_3

    :cond_2
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v8, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v4, v6

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_0

    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v11, v2

    move v12, v11

    move v13, v12

    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_a

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v15, v11, 0x1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v2, v11, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v14, v3, :cond_6

    if-ne v14, v3, :cond_7

    if-ge v2, v7, :cond_7

    :cond_6
    div-int/lit8 v12, v11, 0x4

    move v7, v2

    move v3, v14

    move v6, v15

    :cond_7
    if-gt v14, v8, :cond_8

    if-ne v14, v8, :cond_9

    if-le v2, v10, :cond_9

    :cond_8
    div-int/lit8 v13, v11, 0x4

    move v10, v2

    move v8, v14

    move v9, v15

    :cond_9
    add-int/lit8 v11, v11, 0x4

    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    const/4 v7, -0x1

    if-ge v3, v6, :cond_13

    add-int/lit8 v6, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    rem-int v8, v6, v8

    mul-int/lit8 v9, v3, 0x4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v11, v9, 0x2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v9, v9, 0x3

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v8, v8, 0x4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v13, v8, 0x2

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v8, v8, 0x3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-gt v12, v10, :cond_d

    if-ne v12, v10, :cond_c

    if-le v13, v11, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v14, v2, -0x1

    add-int/2addr v8, v14

    rem-int/2addr v8, v2

    move/from16 v17, v10

    move/from16 v19, v11

    move/from16 v16, v12

    move/from16 v18, v13

    move/from16 v20, v14

    goto :goto_7

    :cond_d
    :goto_6
    add-int/lit8 v9, v9, 0x1

    rem-int/2addr v9, v2

    move/from16 v20, v5

    move/from16 v16, v10

    move/from16 v18, v11

    move/from16 v17, v12

    move/from16 v19, v13

    move/from16 v23, v9

    move v9, v8

    move/from16 v8, v23

    :goto_7
    mul-int/lit8 v10, v8, 0x4

    add-int/lit8 v10, v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget v12, Lwn/u;->i:I

    and-int/2addr v11, v12

    const/4 v12, 0x0

    if-eqz v11, :cond_f

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sget v11, Lwn/u;->h:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_e

    goto :goto_8

    :cond_e
    move v8, v7

    goto :goto_a

    :cond_f
    :goto_8
    move/from16 v22, v7

    move/from16 v21, v12

    :goto_9
    if-eq v8, v9, :cond_11

    mul-int/lit8 v10, v8, 0x4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v4

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v10, v11

    move v11, v12

    move/from16 v12, v16

    move/from16 v13, v18

    move/from16 v14, v17

    move/from16 v15, v19

    invoke-static/range {v10 .. v15}, Lwn/v;->c(IIIIII)F

    move-result v10

    cmpl-float v11, v10, v21

    if-lez v11, :cond_10

    move/from16 v22, v8

    move/from16 v21, v10

    :cond_10
    add-int v8, v8, v20

    rem-int/2addr v8, v2

    goto :goto_9

    :cond_11
    move/from16 v12, v21

    move/from16 v8, v22

    :goto_a
    if-eq v8, v7, :cond_12

    mul-float v7, p2, p2

    cmpl-float v7, v12, v7

    if-lez v7, :cond_12

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v7, v8, 0x4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v1, v6, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v9, v6, 0x1

    add-int/lit8 v10, v7, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v1, v9, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v9, v6, 0x2

    add-int/2addr v7, v4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v1, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_12
    move v3, v6

    goto/16 :goto_5

    :cond_13
    if-lez p3, :cond_1b

    sget v3, Lwn/u;->k:I

    sget v6, Lwn/u;->l:I

    or-int/2addr v3, v6

    and-int v3, p4, v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x0

    :goto_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    if-ge v3, v6, :cond_1b

    add-int/lit8 v6, v3, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    div-int/lit8 v8, v8, 0x4

    rem-int v8, v6, v8

    mul-int/lit8 v9, v3, 0x4

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v11, v9, 0x2

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v9, v9, 0x3

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit8 v8, v8, 0x4

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v13, v8, 0x2

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v8, v8, 0x3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v14, v9, 0x1

    rem-int/2addr v14, v2

    sget v15, Lwn/u;->k:I

    and-int v15, p4, v15

    if-eqz v15, :cond_14

    mul-int/lit8 v15, v14, 0x4

    add-int/lit8 v15, v15, 0x3

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sget v16, Lwn/u;->i:I

    and-int v15, v15, v16

    if-nez v15, :cond_14

    move v15, v5

    goto :goto_c

    :cond_14
    const/4 v15, 0x0

    :goto_c
    sget v16, Lwn/u;->l:I

    and-int v16, p4, v16

    if-eqz v16, :cond_15

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sget v16, Lwn/u;->h:I

    and-int v14, v14, v16

    if-eqz v14, :cond_15

    move v15, v5

    :cond_15
    if-eqz v15, :cond_19

    sub-int v14, v12, v10

    sub-int v15, v13, v11

    mul-int/2addr v14, v14

    mul-int/2addr v15, v15

    add-int/2addr v14, v15

    mul-int v15, p3, p3

    if-le v14, v15, :cond_19

    if-ge v8, v9, :cond_16

    add-int/2addr v8, v2

    :cond_16
    sub-int/2addr v8, v9

    if-le v8, v5, :cond_19

    if-gt v12, v10, :cond_18

    if-ne v12, v10, :cond_17

    if-le v13, v11, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v8, v8, 0x1

    div-int/2addr v8, v4

    add-int/2addr v9, v8

    rem-int/2addr v9, v2

    goto :goto_e

    :cond_18
    :goto_d
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v9, v8

    rem-int/2addr v9, v2

    goto :goto_e

    :cond_19
    move v9, v7

    :goto_e
    if-eq v9, v7, :cond_1a

    mul-int/lit8 v6, v6, 0x4

    mul-int/lit8 v8, v9, 0x4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v1, v6, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v11, v8, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-interface {v1, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v6, 0x2

    add-int/2addr v8, v4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v1, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v6, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_b

    :cond_1a
    move v3, v6

    goto/16 :goto_b

    :cond_1b
    const/4 v3, 0x0

    :goto_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_1c

    mul-int/lit8 v4, v3, 0x4

    add-int/lit8 v4, v4, 0x3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    rem-int/2addr v6, v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v8, Lwn/u;->i:I

    sget v9, Lwn/u;->h:I

    or-int/2addr v8, v9

    and-int/2addr v6, v8

    mul-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lwn/u;->g:I

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1c
    return-void
.end method

.method public static l(IIILwn/c;[ILjava/util/List;)V
    .locals 20
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
            "y",
            "i",
            "chf",
            "flags",
            "points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lwn/c;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    const/4 v10, 0x0

    :goto_0
    aget v1, p4, v0

    const/4 v11, 0x1

    shl-int v2, v11, v10

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v7, Lwn/c;->p:[I

    aget v12, v1, v0

    move/from16 v13, p0

    move/from16 v14, p1

    move v15, v0

    move v6, v10

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v5, v1, 0x1

    const v1, 0x9c40

    if-ge v5, v1, :cond_b

    aget v1, p4, v15

    shl-int v4, v11, v6

    and-int/2addr v1, v4

    const/16 v3, 0x3f

    if-eqz v1, :cond_7

    const/16 v16, 0x0

    move v1, v13

    move v2, v14

    move v9, v3

    move v3, v15

    move/from16 v17, v4

    move v4, v6

    move/from16 v18, v5

    move-object/from16 v5, p3

    move v9, v6

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lwn/v;->e(IIIILwn/c;Z)I

    move-result v1

    if-eqz v9, :cond_3

    if-eq v9, v11, :cond_2

    const/4 v2, 0x2

    if-eq v9, v2, :cond_1

    move v2, v13

    :goto_2
    move v3, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v13, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v13, 0x1

    add-int/lit8 v3, v14, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v14, 0x1

    move v2, v13

    :goto_3
    iget-object v4, v7, Lwn/c;->n:[Lwn/d;

    aget-object v4, v4, v15

    invoke-static {v4, v9}, Lwn/r;->a(Lwn/d;I)I

    move-result v5

    const/16 v6, 0x3f

    if-eq v5, v6, :cond_5

    invoke-static {v9}, Lwn/r;->b(I)I

    move-result v5

    add-int/2addr v5, v13

    invoke-static {v9}, Lwn/r;->c(I)I

    move-result v6

    add-int/2addr v6, v14

    iget-object v11, v7, Lwn/c;->m:[Lwn/b;

    move/from16 v19, v10

    iget v10, v7, Lwn/c;->a:I

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    aget-object v5, v11, v5

    iget v5, v5, Lwn/b;->a:I

    invoke-static {v4, v9}, Lwn/r;->a(Lwn/d;I)I

    move-result v4

    add-int/2addr v5, v4

    iget-object v4, v7, Lwn/c;->n:[Lwn/d;

    aget-object v4, v4, v5

    iget v4, v4, Lwn/d;->b:I

    iget-object v6, v7, Lwn/c;->p:[I

    aget v5, v6, v5

    if-eq v12, v5, :cond_4

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    move/from16 v19, v10

    const/4 v4, 0x0

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_6

    sget v5, Lwn/u;->h:I

    or-int/2addr v4, v5

    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v1, p4, v15

    move/from16 v2, v17

    not-int v2, v2

    and-int/2addr v1, v2

    aput v1, p4, v15

    add-int/lit8 v6, v9, 0x1

    :goto_6
    and-int/lit8 v1, v6, 0x3

    move v6, v1

    goto :goto_8

    :cond_7
    move/from16 v18, v5

    move v9, v6

    move/from16 v19, v10

    invoke-static {v9}, Lwn/r;->b(I)I

    move-result v1

    add-int/2addr v13, v1

    invoke-static {v9}, Lwn/r;->c(I)I

    move-result v1

    add-int/2addr v14, v1

    iget-object v1, v7, Lwn/c;->n:[Lwn/d;

    aget-object v1, v1, v15

    invoke-static {v1, v9}, Lwn/r;->a(Lwn/d;I)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_8

    iget-object v2, v7, Lwn/c;->m:[Lwn/b;

    iget v4, v7, Lwn/c;->a:I

    mul-int/2addr v4, v14

    add-int/2addr v4, v13

    aget-object v2, v2, v4

    iget v2, v2, Lwn/b;->a:I

    invoke-static {v1, v9}, Lwn/r;->a(Lwn/d;I)I

    move-result v1

    add-int/2addr v2, v1

    move v15, v2

    goto :goto_7

    :cond_8
    move v15, v3

    :goto_7
    if-ne v15, v3, :cond_9

    return-void

    :cond_9
    add-int/lit8 v6, v9, 0x3

    goto :goto_6

    :goto_8
    move/from16 v10, v19

    if-ne v0, v15, :cond_a

    if-ne v10, v6, :cond_a

    goto :goto_9

    :cond_a
    move/from16 v1, v18

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_b
    :goto_9
    return-void
.end method
