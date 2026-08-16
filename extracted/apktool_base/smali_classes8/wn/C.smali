.class public Lwn/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lwn/N;IILwn/h;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "walkableHeight",
            "walkableClimb",
            "solid"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "FILTER_LEDGE"

    invoke-virtual {v0, v4}, Lwn/N;->f(Ljava/lang/String;)V

    iget v5, v3, Lwn/h;->a:I

    iget v6, v3, Lwn/h;->b:I

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_f

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_e

    iget-object v10, v3, Lwn/h;->g:[Lwn/K;

    mul-int v11, v8, v5

    add-int/2addr v11, v9

    aget-object v10, v10, v11

    :goto_2
    if-eqz v10, :cond_d

    iget v11, v10, Lwn/K;->c:I

    if-nez v11, :cond_0

    move/from16 v17, v6

    const/4 v0, 0x0

    goto/16 :goto_b

    :cond_0
    iget v11, v10, Lwn/K;->b:I

    iget-object v12, v10, Lwn/K;->d:Lwn/K;

    if-eqz v12, :cond_1

    iget v12, v12, Lwn/K;->a:I

    goto :goto_3

    :cond_1
    sget v12, Lwn/u;->d:I

    :goto_3
    sget v13, Lwn/u;->d:I

    move v15, v11

    move/from16 v16, v15

    const/4 v14, 0x0

    :goto_4
    const/4 v7, 0x4

    if-ge v14, v7, :cond_a

    invoke-static {v14}, Lwn/r;->b(I)I

    move-result v7

    add-int/2addr v7, v9

    invoke-static {v14}, Lwn/r;->c(I)I

    move-result v17

    add-int v0, v8, v17

    if-ltz v7, :cond_2

    if-ltz v0, :cond_2

    if-ge v7, v5, :cond_2

    if-lt v0, v6, :cond_3

    :cond_2
    move/from16 v17, v6

    goto :goto_8

    :cond_3
    move/from16 v17, v6

    iget-object v6, v3, Lwn/h;->g:[Lwn/K;

    mul-int/2addr v0, v5

    add-int/2addr v7, v0

    aget-object v0, v6, v7

    neg-int v6, v2

    if-eqz v0, :cond_4

    iget v0, v0, Lwn/K;->a:I

    goto :goto_5

    :cond_4
    sget v0, Lwn/u;->d:I

    :goto_5
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    sub-int v0, v0, v18

    if-le v0, v1, :cond_5

    sub-int/2addr v6, v11

    invoke-static {v13, v6}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_5
    iget-object v0, v3, Lwn/h;->g:[Lwn/K;

    aget-object v0, v0, v7

    move/from16 v6, v16

    :goto_6
    if-eqz v0, :cond_9

    iget v7, v0, Lwn/K;->b:I

    iget-object v3, v0, Lwn/K;->d:Lwn/K;

    if-eqz v3, :cond_6

    iget v3, v3, Lwn/K;->a:I

    goto :goto_7

    :cond_6
    sget v3, Lwn/u;->d:I

    :goto_7
    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v16

    sub-int v3, v3, v16

    if-le v3, v1, :cond_8

    sub-int v3, v7, v11

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v2, :cond_8

    if-ge v7, v15, :cond_7

    move v15, v7

    :cond_7
    if-le v7, v6, :cond_8

    move v6, v7

    :cond_8
    iget-object v0, v0, Lwn/K;->d:Lwn/K;

    move-object/from16 v3, p3

    goto :goto_6

    :cond_9
    move/from16 v16, v6

    goto :goto_9

    :goto_8
    neg-int v0, v2

    sub-int/2addr v0, v11

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v13, v0

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v6, v17

    goto/16 :goto_4

    :cond_a
    move/from16 v17, v6

    neg-int v0, v2

    if-ge v13, v0, :cond_b

    const/4 v0, 0x0

    iput v0, v10, Lwn/K;->c:I

    goto :goto_a

    :cond_b
    const/4 v0, 0x0

    :goto_a
    sub-int v3, v16, v15

    if-le v3, v2, :cond_c

    iput v0, v10, Lwn/K;->c:I

    :cond_c
    :goto_b
    iget-object v10, v10, Lwn/K;->d:Lwn/K;

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move/from16 v6, v17

    goto/16 :goto_2

    :cond_d
    move/from16 v17, v6

    const/4 v0, 0x0

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    goto/16 :goto_1

    :cond_e
    move/from16 v17, v6

    const/4 v0, 0x0

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_f
    move-object v3, v0

    invoke-virtual {v3, v4}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lwn/N;ILwn/h;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "walkableClimb",
            "solid"
        }
    .end annotation

    const-string v0, "FILTER_LOW_OBSTACLES"

    invoke-virtual {p0, v0}, Lwn/N;->f(Ljava/lang/String;)V

    iget v1, p2, Lwn/h;->a:I

    iget v2, p2, Lwn/h;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    iget-object v6, p2, Lwn/h;->g:[Lwn/K;

    mul-int v7, v4, v1

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    const/4 v7, 0x0

    move v8, v3

    move v9, v8

    :goto_2
    if-eqz v6, :cond_2

    iget v10, v6, Lwn/K;->c:I

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_3

    :cond_0
    move v10, v3

    :goto_3
    if-nez v10, :cond_1

    if-eqz v8, :cond_1

    iget v8, v6, Lwn/K;->b:I

    iget v7, v7, Lwn/K;->b:I

    sub-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, p1, :cond_1

    iput v9, v6, Lwn/K;->c:I

    :cond_1
    iget v9, v6, Lwn/K;->c:I

    iget-object v7, v6, Lwn/K;->d:Lwn/K;

    move v8, v10

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lwn/N;ILwn/h;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "walkableHeight",
            "solid"
        }
    .end annotation

    const-string v0, "FILTER_WALKABLE"

    invoke-virtual {p0, v0}, Lwn/N;->f(Ljava/lang/String;)V

    iget v1, p2, Lwn/h;->a:I

    iget v2, p2, Lwn/h;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    iget-object v6, p2, Lwn/h;->g:[Lwn/K;

    mul-int v7, v4, v1

    add-int/2addr v7, v5

    aget-object v6, v6, v7

    :goto_2
    if-eqz v6, :cond_2

    iget v7, v6, Lwn/K;->b:I

    iget-object v8, v6, Lwn/K;->d:Lwn/K;

    if-eqz v8, :cond_0

    iget v9, v8, Lwn/K;->a:I

    goto :goto_3

    :cond_0
    sget v9, Lwn/u;->d:I

    :goto_3
    sub-int/2addr v9, v7

    if-gt v9, p1, :cond_1

    iput v3, v6, Lwn/K;->c:I

    :cond_1
    move-object v6, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method
