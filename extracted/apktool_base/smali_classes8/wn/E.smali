.class public Lwn/E;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn/E$b;
    }
.end annotation


# static fields
.field public static final a:I = 0xffff

.field public static b:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(I[II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "arr",
            "an"
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    aget v1, p1, v1

    aput v1, p1, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    aput p0, p1, p2

    return v0
.end method

.method public static B(Lwn/N;Lwn/k;II)V
    .locals 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "mesh",
            "rem",
            "maxTris"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    iget v10, v0, Lwn/k;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lwn/k;->f:I

    const/4 v12, 0x2

    if-ge v3, v5, :cond_2

    mul-int v5, v3, v10

    mul-int/2addr v5, v12

    iget-object v6, v0, Lwn/k;->b:[I

    invoke-static {v6, v5, v10}, Lwn/E;->j([III)I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    iget-object v8, v0, Lwn/k;->b:[I

    add-int v9, v5, v7

    aget v8, v8, v9

    if-ne v8, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    mul-int/2addr v4, v10

    mul-int/lit8 v3, v4, 0x4

    new-array v3, v3, [I

    new-array v5, v4, [I

    new-array v6, v4, [I

    new-array v4, v4, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    iget v9, v0, Lwn/k;->f:I

    if-ge v7, v9, :cond_9

    mul-int v9, v7, v10

    mul-int/2addr v9, v12

    iget-object v15, v0, Lwn/k;->b:[I

    invoke-static {v15, v9, v10}, Lwn/E;->j([III)I

    move-result v15

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_3
    if-ge v11, v15, :cond_4

    iget-object v12, v0, Lwn/k;->b:[I

    add-int v19, v9, v11

    aget v12, v12, v19

    if-ne v12, v1, :cond_3

    const/16 v17, 0x1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    goto :goto_3

    :cond_4
    if-eqz v17, :cond_8

    add-int/lit8 v11, v15, -0x1

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_6

    iget-object v14, v0, Lwn/k;->b:[I

    add-int v19, v9, v12

    aget v13, v14, v19

    if-eq v13, v1, :cond_5

    add-int/2addr v11, v9

    aget v11, v14, v11

    if-eq v11, v1, :cond_5

    mul-int/lit8 v13, v8, 0x4

    aput v11, v3, v13

    add-int/lit8 v11, v13, 0x1

    aget v14, v14, v19

    aput v14, v3, v11

    add-int/lit8 v11, v13, 0x2

    iget-object v14, v0, Lwn/k;->c:[I

    aget v14, v14, v7

    aput v14, v3, v11

    const/4 v11, 0x3

    add-int/2addr v13, v11

    iget-object v11, v0, Lwn/k;->d:[I

    aget v11, v11, v7

    aput v11, v3, v13

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v11, v12, 0x1

    move/from16 v23, v12

    move v12, v11

    move/from16 v11, v23

    goto :goto_4

    :cond_6
    iget v11, v0, Lwn/k;->f:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/2addr v11, v10

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    if-eq v9, v11, :cond_7

    iget-object v12, v0, Lwn/k;->b:[I

    invoke-static {v12, v11, v12, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v11, v0, Lwn/k;->b:[I

    add-int/2addr v9, v10

    add-int v12, v9, v10

    sget v13, Lwn/u;->j:I

    invoke-static {v11, v9, v12, v13}, Ljava/util/Arrays;->fill([IIII)V

    iget-object v9, v0, Lwn/k;->c:[I

    iget v11, v0, Lwn/k;->f:I

    add-int/lit8 v12, v11, -0x1

    aget v12, v9, v12

    aput v12, v9, v7

    iget-object v9, v0, Lwn/k;->d:[I

    add-int/lit8 v12, v11, -0x1

    aget v12, v9, v12

    aput v12, v9, v7

    const/4 v9, 0x1

    sub-int/2addr v11, v9

    iput v11, v0, Lwn/k;->f:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x1

    :goto_5
    add-int/2addr v7, v9

    const/4 v12, 0x2

    goto/16 :goto_2

    :cond_9
    move v7, v1

    :goto_6
    iget v9, v0, Lwn/k;->e:I

    add-int/lit8 v11, v9, -0x1

    if-ge v7, v11, :cond_a

    iget-object v9, v0, Lwn/k;->a:[I

    mul-int/lit8 v11, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v12, v7, 0x3

    aget v13, v9, v12

    aput v13, v9, v11

    add-int/lit8 v13, v11, 0x1

    add-int/lit8 v14, v12, 0x1

    aget v14, v9, v14

    aput v14, v9, v13

    const/4 v13, 0x2

    add-int/2addr v11, v13

    add-int/2addr v12, v13

    aget v12, v9, v12

    aput v12, v9, v11

    goto :goto_6

    :cond_a
    const/4 v7, 0x1

    const/4 v13, 0x2

    sub-int/2addr v9, v7

    iput v9, v0, Lwn/k;->e:I

    const/4 v7, 0x0

    :goto_7
    iget v9, v0, Lwn/k;->f:I

    if-ge v7, v9, :cond_d

    mul-int v9, v7, v10

    mul-int/2addr v9, v13

    iget-object v11, v0, Lwn/k;->b:[I

    invoke-static {v11, v9, v10}, Lwn/E;->j([III)I

    move-result v11

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v11, :cond_c

    iget-object v13, v0, Lwn/k;->b:[I

    add-int v14, v9, v12

    aget v15, v13, v14

    if-le v15, v1, :cond_b

    add-int/lit8 v15, v15, -0x1

    aput v15, v13, v14

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x2

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v8, :cond_10

    mul-int/lit8 v9, v7, 0x4

    aget v11, v3, v9

    if-le v11, v1, :cond_e

    add-int/lit8 v11, v11, -0x1

    aput v11, v3, v9

    :cond_e
    add-int/lit8 v9, v9, 0x1

    aget v11, v3, v9

    if-le v11, v1, :cond_f

    add-int/lit8 v11, v11, -0x1

    aput v11, v3, v9

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_10
    if-nez v8, :cond_11

    return-void

    :cond_11
    const/4 v1, 0x0

    aget v7, v3, v1

    invoke-static {v7, v5, v1}, Lwn/E;->z(I[II)I

    const/4 v7, 0x2

    aget v9, v3, v7

    invoke-static {v9, v6, v1}, Lwn/E;->z(I[II)I

    const/4 v7, 0x3

    aget v9, v3, v7

    invoke-static {v9, v4, v1}, Lwn/E;->z(I[II)I

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_a
    if-eqz v8, :cond_17

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    if-ge v11, v8, :cond_15

    mul-int/lit8 v13, v11, 0x4

    aget v14, v3, v13

    add-int/lit8 v15, v13, 0x1

    aget v2, v3, v15

    add-int/lit8 v19, v13, 0x2

    move/from16 v21, v10

    aget v10, v3, v19

    add-int/lit8 v22, v13, 0x3

    aget v0, v3, v22

    move/from16 p2, v12

    const/16 v16, 0x0

    aget v12, v5, v16

    if-ne v12, v2, :cond_12

    invoke-static {v14, v5, v1}, Lwn/E;->A(I[II)I

    invoke-static {v10, v6, v7}, Lwn/E;->A(I[II)I

    invoke-static {v0, v4, v9}, Lwn/E;->A(I[II)I

    :goto_c
    const/4 v0, 0x1

    goto :goto_d

    :cond_12
    add-int/lit8 v12, v1, -0x1

    aget v12, v5, v12

    if-ne v12, v14, :cond_13

    invoke-static {v2, v5, v1}, Lwn/E;->z(I[II)I

    move-result v1

    invoke-static {v10, v6, v7}, Lwn/E;->z(I[II)I

    move-result v2

    invoke-static {v0, v4, v9}, Lwn/E;->z(I[II)I

    move-result v0

    move v9, v0

    move v7, v2

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_14

    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x4

    aget v2, v3, v0

    aput v2, v3, v13

    add-int/lit8 v2, v0, 0x1

    aget v2, v3, v2

    aput v2, v3, v15

    add-int/lit8 v2, v0, 0x2

    aget v2, v3, v2

    aput v2, v3, v19

    const/4 v2, 0x3

    add-int/2addr v0, v2

    aget v0, v3, v0

    aput v0, v3, v22

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_e

    :cond_14
    move/from16 v12, p2

    const/4 v0, 0x1

    :goto_e
    add-int/2addr v11, v0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v10, v21

    goto :goto_b

    :cond_15
    move/from16 v21, v10

    move/from16 p2, v12

    if-nez p2, :cond_16

    goto :goto_f

    :cond_16
    move-object/from16 v0, p1

    move/from16 v2, p3

    move/from16 v10, v21

    goto :goto_a

    :cond_17
    move/from16 v21, v10

    :goto_f
    mul-int/lit8 v0, v1, 0x3

    new-array v0, v0, [I

    mul-int/lit8 v2, v1, 0x4

    new-array v2, v2, [I

    new-array v3, v1, [I

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v1, :cond_18

    aget v8, v5, v7

    mul-int/lit8 v9, v7, 0x4

    move-object/from16 v10, p1

    iget-object v11, v10, Lwn/k;->a:[I

    const/4 v12, 0x3

    mul-int/2addr v8, v12

    aget v12, v11, v8

    aput v12, v2, v9

    add-int/lit8 v12, v9, 0x1

    add-int/lit8 v13, v8, 0x1

    aget v13, v11, v13

    aput v13, v2, v12

    add-int/lit8 v12, v9, 0x2

    const/4 v13, 0x2

    add-int/2addr v8, v13

    aget v8, v11, v8

    aput v8, v2, v12

    const/4 v8, 0x3

    add-int/2addr v9, v8

    const/4 v8, 0x0

    aput v8, v2, v9

    aput v7, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_18
    move-object/from16 v10, p1

    invoke-static {v1, v2, v3, v0}, Lwn/E;->C(I[I[I[I)I

    move-result v1

    if-gez v1, :cond_19

    neg-int v1, v1

    const-string v2, "removeVertex: triangulate() returned bad results."

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lwn/N;->h(Ljava/lang/String;)V

    :cond_19
    add-int/lit8 v2, v1, 0x1

    mul-int v2, v2, v21

    new-array v2, v2, [I

    new-array v11, v1, [I

    new-array v12, v1, [I

    mul-int v13, v1, v21

    sget v3, Lwn/u;->j:I

    const/4 v7, 0x0

    invoke-static {v2, v7, v13, v3}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_11
    if-ge v3, v1, :cond_1e

    mul-int/lit8 v8, v3, 0x3

    aget v9, v0, v8

    add-int/lit8 v14, v8, 0x1

    aget v15, v0, v14

    if-eq v9, v15, :cond_1c

    add-int/lit8 v19, v8, 0x2

    move/from16 p0, v1

    aget v1, v0, v19

    if-eq v9, v1, :cond_1d

    if-eq v15, v1, :cond_1d

    mul-int v1, v7, v21

    aget v9, v5, v9

    aput v9, v2, v1

    add-int/lit8 v9, v1, 0x1

    aget v15, v0, v14

    aget v15, v5, v15

    aput v15, v2, v9

    const/4 v9, 0x2

    add-int/2addr v1, v9

    aget v9, v0, v19

    aget v9, v5, v9

    aput v9, v2, v1

    aget v1, v0, v8

    aget v1, v6, v1

    aget v9, v0, v14

    aget v9, v6, v9

    if-ne v1, v9, :cond_1b

    aget v14, v0, v19

    aget v14, v6, v14

    if-eq v9, v14, :cond_1a

    goto :goto_12

    :cond_1a
    aput v1, v11, v7

    goto :goto_13

    :cond_1b
    :goto_12
    sget v1, Lwn/u;->f:I

    aput v1, v11, v7

    :goto_13
    aget v1, v0, v8

    aget v1, v4, v1

    aput v1, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_1c
    move/from16 p0, v1

    :cond_1d
    :goto_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p0

    goto :goto_11

    :cond_1e
    if-nez v7, :cond_1f

    return-void

    :cond_1f
    move/from16 v0, v21

    const/4 v1, 0x3

    if-le v0, v1, :cond_26

    move v1, v7

    :goto_15
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_16
    add-int/lit8 v9, v1, -0x1

    if-ge v3, v9, :cond_22

    mul-int v5, v3, v0

    add-int/lit8 v8, v3, 0x1

    move v9, v8

    :goto_17
    if-ge v9, v1, :cond_21

    move/from16 v19, v3

    mul-int v3, v9, v0

    move/from16 p0, v6

    iget-object v6, v10, Lwn/k;->a:[I

    invoke-static {v2, v5, v3, v6, v0}, Lwn/E;->o([III[II)[I

    move-result-object v3

    const/16 v16, 0x0

    aget v6, v3, v16

    const/16 v17, 0x1

    aget v20, v3, v17

    const/16 v18, 0x2

    aget v3, v3, v18

    if-le v6, v4, :cond_20

    move v7, v3

    move v4, v6

    move v15, v9

    move/from16 v14, v19

    move/from16 v6, v20

    goto :goto_18

    :cond_20
    move/from16 v6, p0

    :goto_18
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v19

    goto :goto_17

    :cond_21
    move/from16 p0, v6

    const/16 v16, 0x0

    move v3, v8

    goto :goto_16

    :cond_22
    const/16 v16, 0x0

    if-lez v4, :cond_25

    mul-int v4, v14, v0

    mul-int v8, v15, v0

    move-object v3, v2

    move v5, v8

    move v10, v8

    move v8, v13

    move/from16 v19, v9

    move v9, v0

    invoke-static/range {v3 .. v9}, Lwn/E;->w([IIIIIII)V

    aget v3, v11, v14

    aget v4, v11, v15

    if-eq v3, v4, :cond_23

    sget v3, Lwn/u;->f:I

    aput v3, v11, v14

    :cond_23
    mul-int v9, v19, v0

    if-eq v10, v9, :cond_24

    invoke-static {v2, v9, v2, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    aget v3, v11, v19

    aput v3, v11, v15

    aget v3, v12, v19

    aput v3, v12, v15

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v10, p1

    goto :goto_15

    :cond_25
    move v7, v1

    goto :goto_19

    :cond_26
    const/16 v16, 0x0

    :goto_19
    move/from16 v1, v16

    :goto_1a
    if-ge v1, v7, :cond_2a

    move-object/from16 v3, p1

    iget v4, v3, Lwn/k;->f:I

    move/from16 v5, p3

    if-lt v4, v5, :cond_27

    goto :goto_1c

    :cond_27
    mul-int/2addr v4, v0

    const/4 v6, 0x2

    mul-int/2addr v4, v6

    iget-object v8, v3, Lwn/k;->b:[I

    mul-int/lit8 v10, v0, 0x2

    add-int/2addr v10, v4

    sget v9, Lwn/u;->j:I

    invoke-static {v8, v4, v10, v9}, Ljava/util/Arrays;->fill([IIII)V

    move/from16 v8, v16

    :goto_1b
    if-ge v8, v0, :cond_28

    iget-object v9, v3, Lwn/k;->b:[I

    add-int v10, v4, v8

    mul-int v13, v1, v0

    add-int/2addr v13, v8

    aget v13, v2, v13

    aput v13, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_28
    iget-object v4, v3, Lwn/k;->c:[I

    iget v8, v3, Lwn/k;->f:I

    aget v9, v11, v1

    aput v9, v4, v8

    iget-object v4, v3, Lwn/k;->d:[I

    aget v9, v12, v1

    aput v9, v4, v8

    const/4 v4, 0x1

    add-int/2addr v8, v4

    iput v8, v3, Lwn/k;->f:I

    if-gt v8, v5, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeVertex: Too many polygons "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lwn/k;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_1c
    return-void
.end method

.method public static C(I[I[I[I)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "verts",
            "indices",
            "tris"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/high16 v5, -0x80000000

    if-ge v4, v0, :cond_1

    invoke-static {v4, v0}, Lwn/E;->x(II)I

    move-result v6

    invoke-static {v6, v0}, Lwn/E;->x(II)I

    move-result v7

    invoke-static {v4, v7, v0, v1, v2}, Lwn/E;->k(III[I[I)Z

    move-result v7

    if-eqz v7, :cond_0

    aget v7, v2, v6

    or-int/2addr v5, v7

    aput v5, v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x2

    const v8, 0xfffffff

    if-le v0, v6, :cond_d

    const/4 v6, -0x1

    move v9, v3

    move v10, v6

    move v11, v10

    :goto_2
    if-ge v9, v0, :cond_4

    invoke-static {v9, v0}, Lwn/E;->x(II)I

    move-result v12

    aget v13, v2, v12

    and-int/2addr v13, v5

    if-eqz v13, :cond_3

    aget v13, v2, v9

    and-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x4

    invoke-static {v12, v0}, Lwn/E;->x(II)I

    move-result v12

    aget v12, v2, v12

    and-int/2addr v12, v8

    mul-int/lit8 v12, v12, 0x4

    aget v14, v1, v12

    aget v15, v1, v13

    sub-int/2addr v14, v15

    add-int/2addr v12, v7

    aget v12, v1, v12

    add-int/2addr v13, v7

    aget v13, v1, v13

    sub-int/2addr v12, v13

    mul-int/2addr v14, v14

    mul-int/2addr v12, v12

    add-int/2addr v14, v12

    if-ltz v11, :cond_2

    if-ge v14, v11, :cond_3

    :cond_2
    move v10, v9

    move v11, v14

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    if-ne v10, v6, :cond_8

    move v9, v3

    move v10, v6

    move v11, v10

    :goto_3
    if-ge v9, v0, :cond_7

    invoke-static {v9, v0}, Lwn/E;->x(II)I

    move-result v12

    invoke-static {v12, v0}, Lwn/E;->x(II)I

    move-result v12

    invoke-static {v9, v12, v0, v1, v2}, Lwn/E;->l(III[I[I)Z

    move-result v13

    if-eqz v13, :cond_6

    aget v13, v2, v9

    and-int/2addr v13, v8

    mul-int/lit8 v13, v13, 0x4

    invoke-static {v12, v0}, Lwn/E;->x(II)I

    move-result v12

    aget v12, v2, v12

    and-int/2addr v12, v8

    mul-int/lit8 v12, v12, 0x4

    aget v14, v1, v12

    aget v15, v1, v13

    sub-int/2addr v14, v15

    add-int/2addr v12, v7

    aget v12, v1, v12

    add-int/2addr v13, v7

    aget v13, v1, v13

    sub-int/2addr v12, v13

    mul-int/2addr v14, v14

    mul-int/2addr v12, v12

    add-int/2addr v14, v12

    if-ltz v11, :cond_5

    if-ge v14, v11, :cond_6

    :cond_5
    move v10, v9

    move v11, v14

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    if-ne v10, v6, :cond_8

    neg-int v0, v4

    return v0

    :cond_8
    invoke-static {v10, v0}, Lwn/E;->x(II)I

    move-result v6

    invoke-static {v6, v0}, Lwn/E;->x(II)I

    move-result v9

    mul-int/lit8 v11, v4, 0x3

    aget v10, v2, v10

    and-int/2addr v10, v8

    aput v10, p3, v11

    add-int/lit8 v10, v11, 0x1

    aget v12, v2, v6

    and-int/2addr v12, v8

    aput v12, p3, v10

    add-int/2addr v11, v7

    aget v7, v2, v9

    and-int/2addr v7, v8

    aput v7, p3, v11

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    move v7, v6

    :goto_4
    if-ge v7, v0, :cond_9

    add-int/lit8 v9, v7, 0x1

    aget v10, v2, v9

    aput v10, v2, v7

    move v7, v9

    goto :goto_4

    :cond_9
    if-lt v6, v0, :cond_a

    move v6, v3

    :cond_a
    invoke-static {v6, v0}, Lwn/E;->y(II)I

    move-result v7

    invoke-static {v7, v0}, Lwn/E;->y(II)I

    move-result v9

    invoke-static {v9, v6, v0, v1, v2}, Lwn/E;->k(III[I[I)Z

    move-result v9

    if-eqz v9, :cond_b

    aget v9, v2, v7

    or-int/2addr v9, v5

    aput v9, v2, v7

    goto :goto_5

    :cond_b
    aget v9, v2, v7

    and-int/2addr v9, v8

    aput v9, v2, v7

    :goto_5
    invoke-static {v6, v0}, Lwn/E;->x(II)I

    move-result v9

    invoke-static {v7, v9, v0, v1, v2}, Lwn/E;->k(III[I[I)Z

    move-result v7

    if-eqz v7, :cond_c

    aget v7, v2, v6

    or-int/2addr v7, v5

    aput v7, v2, v6

    goto/16 :goto_1

    :cond_c
    aget v7, v2, v6

    and-int/2addr v7, v8

    aput v7, v2, v6

    goto/16 :goto_1

    :cond_d
    mul-int/lit8 v0, v4, 0x3

    aget v1, v2, v3

    and-int/2addr v1, v8

    aput v1, p3, v0

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x1

    aget v5, v2, v3

    and-int/2addr v5, v8

    aput v5, p3, v1

    add-int/2addr v0, v7

    aget v1, v2, v7

    and-int/2addr v1, v8

    aput v1, p3, v0

    add-int/2addr v4, v3

    return v4
.end method

.method public static D([IIII)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    aget v0, p0, p2

    aget v1, p0, p1

    sub-int/2addr v0, v1

    add-int/lit8 v2, p3, 0x2

    aget v2, p0, v2

    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    sub-int/2addr v2, p1

    mul-int/2addr v0, v2

    aget p3, p0, p3

    sub-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x2

    aget p0, p0, p2

    sub-int/2addr p0, p1

    mul-int/2addr p3, p0

    sub-int/2addr v0, p3

    if-gez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static E([III)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b"
        }
    .end annotation

    aget v0, p0, p1

    aget v1, p0, p2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    add-int/lit8 p2, p2, 0x2

    aget p0, p0, p2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(III[I[I[II)[I
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
            "x",
            "y",
            "z",
            "verts",
            "firstVert",
            "nextVert",
            "nv"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lwn/E;->h(III)I

    move-result v0

    aget v1, p4, v0

    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x3

    aget v4, p3, v2

    if-ne v4, p0, :cond_0

    add-int/lit8 v4, v2, 0x1

    aget v4, p3, v4

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x2

    aget v2, p3, v2

    if-ne v2, p2, :cond_0

    filled-new-array {v1, p6}, [I

    move-result-object p0

    return-object p0

    :cond_0
    aget v1, p5, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p6, 0x1

    mul-int/lit8 v2, p6, 0x3

    aput p0, p3, v2

    add-int/lit8 p0, v2, 0x1

    aput p1, p3, p0

    add-int/2addr v2, v3

    aput p2, p3, v2

    aget p0, p4, v0

    aput p0, p5, p6

    aput p6, p4, v0

    filled-new-array {p6, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method public static b([IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    aget v0, p0, p2

    aget v1, p0, p1

    sub-int/2addr v0, v1

    add-int/lit8 v2, p3, 0x2

    aget v2, p0, v2

    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    sub-int/2addr v2, p1

    mul-int/2addr v0, v2

    aget p3, p0, p3

    sub-int/2addr p3, v1

    add-int/lit8 p2, p2, 0x2

    aget p0, p0, p2

    sub-int/2addr p0, p1

    mul-int/2addr p3, p0

    sub-int/2addr v0, p3

    return v0
.end method

.method public static c([IIII)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lwn/E;->g([IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    aget v0, p0, p1

    aget v2, p0, p2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    aget p0, p0, p3

    if-gt v0, p0, :cond_1

    if-le p0, v2, :cond_2

    :cond_1
    if-lt v0, p0, :cond_3

    if-lt p0, v2, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1

    :cond_4
    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    add-int/lit8 p3, p3, 0x2

    aget p3, p0, p3

    if-gt p1, p3, :cond_5

    add-int/lit8 v0, p2, 0x2

    aget v0, p0, v0

    if-le p3, v0, :cond_6

    :cond_5
    if-lt p1, p3, :cond_7

    add-int/lit8 p2, p2, 0x2

    aget p0, p0, p2

    if-lt p3, p0, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    return v1
.end method

.method public static d([IIII)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "polys",
            "npolys",
            "nverts",
            "vertsPerPoly"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    mul-int v3, v0, v2

    add-int v4, v1, v3

    new-array v4, v4, [I

    new-array v3, v3, [Lwn/E$b;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_0

    sget v7, Lwn/u;->j:I

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    move v7, v6

    :goto_1
    const/4 v8, 0x1

    if-ge v6, v0, :cond_6

    mul-int v9, v6, v2

    mul-int/lit8 v9, v9, 0x2

    move v10, v5

    :goto_2
    if-ge v10, v2, :cond_5

    add-int v11, v9, v10

    aget v12, p0, v11

    sget v13, Lwn/u;->j:I

    if-ne v12, v13, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v14, v10, 0x1

    if-ge v14, v2, :cond_2

    add-int/lit8 v11, v11, 0x1

    aget v11, p0, v11

    if-ne v11, v13, :cond_3

    :cond_2
    aget v11, p0, v9

    :cond_3
    if-ge v12, v11, :cond_4

    new-instance v13, Lwn/E$b;

    const/4 v15, 0x0

    invoke-direct {v13, v15}, Lwn/E$b;-><init>(Lwn/E$a;)V

    aput-object v13, v3, v7

    iget-object v15, v13, Lwn/E$b;->a:[I

    aput v12, v15, v5

    aput v11, v15, v8

    iget-object v11, v13, Lwn/E$b;->c:[I

    aput v6, v11, v5

    iget-object v13, v13, Lwn/E$b;->b:[I

    aput v10, v13, v5

    aput v6, v11, v8

    aput v5, v13, v8

    add-int v10, v1, v7

    aget v11, v4, v12

    aput v11, v4, v10

    aput v7, v4, v12

    add-int/lit8 v7, v7, 0x1

    :cond_4
    move v10, v14

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v6, v5

    :goto_4
    if-ge v6, v0, :cond_d

    mul-int v9, v6, v2

    mul-int/lit8 v9, v9, 0x2

    move v10, v5

    :goto_5
    if-ge v10, v2, :cond_c

    add-int v11, v9, v10

    aget v12, p0, v11

    sget v13, Lwn/u;->j:I

    if-ne v12, v13, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v14, v10, 0x1

    if-ge v14, v2, :cond_8

    add-int/lit8 v11, v11, 0x1

    aget v11, p0, v11

    if-ne v11, v13, :cond_9

    :cond_8
    aget v11, p0, v9

    :cond_9
    if-le v12, v11, :cond_b

    aget v11, v4, v11

    :goto_6
    sget v13, Lwn/u;->j:I

    if-eq v11, v13, :cond_b

    aget-object v13, v3, v11

    iget-object v15, v13, Lwn/E$b;->a:[I

    aget v15, v15, v8

    if-ne v15, v12, :cond_a

    iget-object v15, v13, Lwn/E$b;->c:[I

    aget v0, v15, v5

    aget v5, v15, v8

    if-ne v0, v5, :cond_a

    aput v6, v15, v8

    iget-object v0, v13, Lwn/E$b;->b:[I

    aput v10, v0, v8

    goto :goto_7

    :cond_a
    add-int v0, v1, v11

    aget v11, v4, v0

    move/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    :goto_7
    move/from16 v0, p1

    move v10, v14

    const/4 v5, 0x0

    goto :goto_5

    :cond_c
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_9
    if-ge v0, v7, :cond_f

    aget-object v1, v3, v0

    iget-object v4, v1, Lwn/E$b;->c:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    aget v9, v4, v8

    if-eq v6, v9, :cond_e

    mul-int/2addr v6, v2

    mul-int/lit8 v6, v6, 0x2

    mul-int v10, v9, v2

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v6, v2

    iget-object v1, v1, Lwn/E$b;->b:[I

    aget v11, v1, v5

    add-int/2addr v6, v11

    aput v9, p0, v6

    add-int/2addr v10, v2

    aget v1, v1, v8

    add-int/2addr v10, v1

    aget v1, v4, v5

    aput v1, p0, v10

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public static e(Lwn/N;Lwn/f;I)Lwn/k;
    .locals 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "cset",
            "nvp"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    const-string v10, "POLYMESH"

    invoke-virtual {v0, v10}, Lwn/N;->f(Ljava/lang/String;)V

    new-instance v11, Lwn/k;

    invoke-direct {v11}, Lwn/k;-><init>()V

    iget-object v2, v11, Lwn/k;->j:[F

    iget-object v3, v1, Lwn/f;->b:[F

    const/4 v12, 0x0

    invoke-static {v2, v3, v12}, Lwn/I;->f([F[FI)V

    iget-object v2, v11, Lwn/k;->k:[F

    iget-object v3, v1, Lwn/f;->c:[F

    invoke-static {v2, v3, v12}, Lwn/I;->f([F[FI)V

    iget v2, v1, Lwn/f;->d:F

    iput v2, v11, Lwn/k;->l:F

    iget v2, v1, Lwn/f;->e:F

    iput v2, v11, Lwn/k;->m:F

    iget v2, v1, Lwn/f;->h:I

    iput v2, v11, Lwn/k;->n:I

    iget v2, v1, Lwn/f;->i:F

    iput v2, v11, Lwn/k;->o:F

    move v2, v12

    move v3, v2

    move v4, v3

    move v13, v4

    :goto_0
    iget-object v5, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-ge v2, v5, :cond_1

    iget-object v5, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn/e;

    iget v5, v5, Lwn/e;->b:I

    if-ge v5, v14, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn/e;

    iget v5, v5, Lwn/e;->b:I

    add-int/2addr v3, v5

    iget-object v5, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn/e;

    iget v5, v5, Lwn/e;->b:I

    sub-int/2addr v5, v15

    add-int/2addr v13, v5

    iget-object v5, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lwn/e;

    iget v5, v5, Lwn/e;->b:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const v2, 0xfffe

    if-ge v3, v2, :cond_26

    new-array v8, v3, [I

    mul-int/lit8 v2, v3, 0x3

    new-array v2, v2, [I

    iput-object v2, v11, Lwn/k;->a:[I

    mul-int v2, v13, v9

    mul-int/2addr v2, v15

    new-array v2, v2, [I

    iput-object v2, v11, Lwn/k;->b:[I

    sget v5, Lwn/u;->j:I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    new-array v2, v13, [I

    iput-object v2, v11, Lwn/k;->c:[I

    new-array v2, v13, [I

    iput-object v2, v11, Lwn/k;->d:[I

    iput v12, v11, Lwn/k;->e:I

    iput v12, v11, Lwn/k;->f:I

    iput v9, v11, Lwn/k;->g:I

    iput v13, v11, Lwn/k;->h:I

    new-array v7, v3, [I

    sget v2, Lwn/E;->b:I

    new-array v6, v2, [I

    move v2, v12

    :goto_2
    sget v3, Lwn/E;->b:I

    if-ge v2, v3, :cond_2

    const/4 v3, -0x1

    aput v3, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-array v5, v4, [I

    mul-int/lit8 v2, v4, 0x3

    new-array v3, v2, [I

    add-int/lit8 v2, v4, 0x1

    mul-int/2addr v2, v9

    new-array v2, v2, [I

    mul-int v23, v4, v9

    move v4, v12

    :goto_3
    iget-object v15, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v25, 0x1

    if-ge v4, v15, :cond_15

    iget-object v15, v1, Lwn/f;->a:Ljava/util/List;

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lwn/e;

    iget v12, v15, Lwn/e;->b:I

    if-ge v12, v14, :cond_3

    move-object v12, v2

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v17, v6

    move-object v14, v7

    move-object/from16 v18, v8

    move-object/from16 v27, v10

    const/4 v2, 0x2

    const/16 v22, 0x0

    goto/16 :goto_10

    :cond_3
    const/4 v12, 0x0

    :goto_4
    iget v14, v15, Lwn/e;->b:I

    if-ge v12, v14, :cond_4

    aput v12, v5, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    iget-object v12, v15, Lwn/e;->a:[I

    invoke-static {v14, v12, v5, v3}, Lwn/E;->C(I[I[I[I)I

    move-result v12

    if-gtz v12, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v10

    const-string v10, "buildPolyMesh: Bad triangulation Contour "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lwn/N;->h(Ljava/lang/String;)V

    neg-int v12, v12

    goto :goto_5

    :cond_5
    move-object/from16 v27, v10

    :goto_5
    const/4 v10, 0x0

    :goto_6
    iget v14, v15, Lwn/e;->b:I

    if-ge v10, v14, :cond_7

    mul-int/lit8 v14, v10, 0x4

    move/from16 v28, v4

    iget-object v4, v15, Lwn/e;->a:[I

    aget v16, v4, v14

    add-int/lit8 v17, v14, 0x1

    aget v17, v4, v17

    add-int/lit8 v18, v14, 0x2

    aget v18, v4, v18

    iget-object v4, v11, Lwn/k;->a:[I

    iget v1, v11, Lwn/k;->e:I

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move/from16 v22, v1

    invoke-static/range {v16 .. v22}, Lwn/E;->a(III[I[I[II)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v16, v1, v4

    aput v16, v5, v10

    aget v1, v1, v25

    iput v1, v11, Lwn/k;->e:I

    iget-object v1, v15, Lwn/e;->a:[I

    const/4 v4, 0x3

    add-int/2addr v14, v4

    aget v1, v1, v14

    sget v4, Lwn/u;->g:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    aput v25, v8, v16

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v28

    goto :goto_6

    :cond_7
    move/from16 v28, v4

    sget v1, Lwn/u;->j:I

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v12, :cond_a

    mul-int/lit8 v10, v4, 0x3

    aget v14, v3, v10

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v17, v6

    aget v6, v3, v16

    if-eq v14, v6, :cond_8

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v18, v7

    aget v7, v3, v10

    if-eq v14, v7, :cond_9

    if-eq v6, v7, :cond_9

    mul-int v6, v1, v9

    aget v7, v5, v14

    aput v7, v2, v6

    add-int/lit8 v7, v6, 0x1

    aget v14, v3, v16

    aget v14, v5, v14

    aput v14, v2, v7

    const/4 v7, 0x2

    add-int/2addr v6, v7

    aget v7, v3, v10

    aget v7, v5, v7

    aput v7, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v18, v7

    :cond_9
    :goto_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto :goto_7

    :cond_a
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    if-nez v1, :cond_b

    move-object v12, v2

    move-object/from16 v16, v3

    move-object/from16 v20, v5

    move-object/from16 v14, v18

    move/from16 v19, v28

    const/4 v2, 0x2

    const/16 v22, 0x0

    move-object/from16 v18, v8

    goto/16 :goto_10

    :cond_b
    const/4 v4, 0x3

    if-le v9, v4, :cond_11

    :goto_9
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_a
    add-int/lit8 v0, v1, -0x1

    if-ge v4, v0, :cond_e

    mul-int v0, v4, v9

    add-int/lit8 v16, v4, 0x1

    move-object/from16 v19, v3

    move/from16 v3, v16

    :goto_b
    if-ge v3, v1, :cond_d

    move/from16 v20, v4

    mul-int v4, v3, v9

    move-object/from16 v21, v5

    iget-object v5, v11, Lwn/k;->a:[I

    invoke-static {v2, v0, v4, v5, v9}, Lwn/E;->o([III[II)[I

    move-result-object v4

    const/16 v22, 0x0

    aget v5, v4, v22

    aget v26, v4, v25

    const/16 v24, 0x2

    aget v4, v4, v24

    if-le v5, v6, :cond_c

    move v10, v3

    move v14, v4

    move v6, v5

    move/from16 v7, v20

    move/from16 v12, v26

    :cond_c
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    move/from16 v4, v16

    move-object/from16 v3, v19

    goto :goto_a

    :cond_e
    move-object/from16 v19, v3

    move-object/from16 v21, v5

    const/16 v22, 0x0

    if-lez v6, :cond_10

    mul-int v3, v7, v9

    mul-int/2addr v10, v9

    move-object v7, v2

    move-object/from16 v16, v19

    move/from16 v19, v28

    move v4, v10

    move-object/from16 v20, v21

    move v5, v12

    move-object/from16 v12, v17

    move v6, v14

    move-object/from16 v14, v18

    move-object v12, v7

    move/from16 v7, v23

    move-object/from16 v18, v8

    move/from16 v8, p2

    invoke-static/range {v2 .. v8}, Lwn/E;->w([IIIIIII)V

    mul-int/2addr v0, v9

    if-eq v10, v0, :cond_f

    invoke-static {v12, v0, v12, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    move-object v2, v12

    move-object/from16 v3, v16

    move-object/from16 v8, v18

    move/from16 v28, v19

    move-object/from16 v5, v20

    move-object/from16 v18, v14

    goto :goto_9

    :cond_10
    move-object v12, v2

    move-object/from16 v14, v18

    move-object/from16 v16, v19

    move-object/from16 v20, v21

    move/from16 v19, v28

    :goto_c
    move-object/from16 v18, v8

    goto :goto_d

    :cond_11
    move-object v12, v2

    move-object/from16 v16, v3

    move-object/from16 v20, v5

    move-object/from16 v14, v18

    move/from16 v19, v28

    const/16 v22, 0x0

    goto :goto_c

    :goto_d
    move/from16 v4, v22

    :goto_e
    if-ge v4, v1, :cond_14

    iget v0, v11, Lwn/k;->f:I

    mul-int/2addr v0, v9

    const/4 v2, 0x2

    mul-int/2addr v0, v2

    mul-int v3, v4, v9

    move/from16 v5, v22

    :goto_f
    if-ge v5, v9, :cond_12

    iget-object v6, v11, Lwn/k;->b:[I

    add-int v7, v0, v5

    add-int v8, v3, v5

    aget v8, v12, v8

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_12
    iget-object v0, v11, Lwn/k;->c:[I

    iget v3, v11, Lwn/k;->f:I

    iget v5, v15, Lwn/e;->f:I

    aput v5, v0, v3

    iget-object v0, v11, Lwn/k;->d:[I

    iget v5, v15, Lwn/e;->e:I

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v11, Lwn/k;->f:I

    if-gt v3, v13, :cond_13

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildPolyMesh: Too many polygons "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lwn/k;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v2, 0x2

    :goto_10
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v7, v14

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v20

    move/from16 v12, v22

    move-object/from16 v10, v27

    const/4 v14, 0x3

    goto/16 :goto_3

    :cond_15
    move-object/from16 v18, v8

    move-object/from16 v27, v10

    move/from16 v22, v12

    move/from16 v4, v22

    :goto_11
    iget v0, v11, Lwn/k;->e:I

    if-ge v4, v0, :cond_19

    aget v0, v18, v4

    move-object/from16 v1, p0

    if-eqz v0, :cond_18

    invoke-static {v1, v11, v4}, Lwn/E;->f(Lwn/N;Lwn/k;I)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_13

    :cond_16
    invoke-static {v1, v11, v4, v13}, Lwn/E;->B(Lwn/N;Lwn/k;II)V

    move v0, v4

    :goto_12
    iget v2, v11, Lwn/k;->e:I

    if-ge v0, v2, :cond_17

    add-int/lit8 v2, v0, 0x1

    aget v3, v18, v2

    aput v3, v18, v0

    move v0, v2

    goto :goto_12

    :cond_17
    add-int/lit8 v4, v4, -0x1

    :cond_18
    :goto_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_19
    move-object/from16 v1, p0

    iget-object v2, v11, Lwn/k;->b:[I

    iget v3, v11, Lwn/k;->f:I

    invoke-static {v2, v3, v0, v9}, Lwn/E;->d([IIII)V

    iget v0, v11, Lwn/k;->n:I

    if-lez v0, :cond_23

    move-object/from16 v0, p1

    iget v2, v0, Lwn/f;->f:I

    iget v0, v0, Lwn/f;->g:I

    move/from16 v4, v22

    :goto_14
    iget v3, v11, Lwn/k;->f:I

    if-ge v4, v3, :cond_23

    mul-int/lit8 v3, v4, 0x2

    mul-int/2addr v3, v9

    move/from16 v5, v22

    :goto_15
    if-ge v5, v9, :cond_1a

    iget-object v6, v11, Lwn/k;->b:[I

    add-int v7, v3, v5

    aget v7, v6, v7

    sget v8, Lwn/u;->j:I

    if-ne v7, v8, :cond_1b

    :cond_1a
    const/4 v12, 0x3

    goto :goto_17

    :cond_1b
    add-int v10, v3, v9

    add-int/2addr v10, v5

    aget v12, v6, v10

    if-eq v12, v8, :cond_1c

    const/4 v12, 0x3

    goto :goto_16

    :cond_1c
    add-int/lit8 v12, v5, 0x1

    if-ge v12, v9, :cond_1d

    add-int v13, v3, v12

    aget v13, v6, v13

    if-ne v13, v8, :cond_1e

    :cond_1d
    move/from16 v12, v22

    :cond_1e
    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v12, v3

    aget v8, v6, v12

    const/4 v12, 0x3

    mul-int/2addr v8, v12

    iget-object v13, v11, Lwn/k;->a:[I

    aget v14, v13, v7

    if-nez v14, :cond_1f

    aget v15, v13, v8

    if-nez v15, :cond_1f

    const v7, 0x8000

    aput v7, v6, v10

    goto :goto_16

    :cond_1f
    add-int/lit8 v7, v7, 0x2

    aget v7, v13, v7

    if-ne v7, v0, :cond_20

    add-int/lit8 v15, v8, 0x2

    aget v15, v13, v15

    if-ne v15, v0, :cond_20

    const v7, 0x8001

    aput v7, v6, v10

    goto :goto_16

    :cond_20
    if-ne v14, v2, :cond_21

    aget v14, v13, v8

    if-ne v14, v2, :cond_21

    const v7, 0x8002

    aput v7, v6, v10

    goto :goto_16

    :cond_21
    if-nez v7, :cond_22

    add-int/lit8 v8, v8, 0x2

    aget v7, v13, v8

    if-nez v7, :cond_22

    const v7, 0x8003

    aput v7, v6, v10

    :cond_22
    :goto_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_23
    iget v0, v11, Lwn/k;->f:I

    new-array v2, v0, [I

    iput-object v2, v11, Lwn/k;->i:[I

    iget v2, v11, Lwn/k;->e:I

    const-string v3, "). Data can be corrupted."

    const-string v4, " (max "

    const v5, 0xffff

    if-gt v2, v5, :cond_25

    if-gt v0, v5, :cond_24

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Lwn/N;->g(Ljava/lang/String;)V

    return-object v11

    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildPolyMesh: The resulting mesh has too many polygons "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lwn/k;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildPolyMesh: The resulting mesh has too many vertices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lwn/k;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildPolyMesh: Too many vertices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f(Lwn/N;Lwn/k;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "mesh",
            "rem"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    iget v2, v0, Lwn/k;->g:I

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, v0, Lwn/k;->f:I

    const/4 v8, 0x2

    if-ge v4, v7, :cond_3

    mul-int v7, v4, v2

    mul-int/2addr v7, v8

    iget-object v8, v0, Lwn/k;->b:[I

    invoke-static {v8, v7, v2}, Lwn/E;->j([III)I

    move-result v8

    move v9, v3

    move v10, v9

    move v11, v10

    :goto_1
    if-ge v9, v8, :cond_1

    iget-object v12, v0, Lwn/k;->b:[I

    add-int v13, v7, v9

    aget v12, v12, v13

    if-ne v12, v1, :cond_0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    add-int/lit8 v10, v10, 0x1

    sub-int/2addr v11, v10

    add-int/2addr v5, v11

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-gt v5, v8, :cond_4

    return v3

    :cond_4
    mul-int/lit8 v6, v6, 0x6

    new-array v4, v6, [I

    move v5, v3

    move v6, v5

    :goto_2
    iget v7, v0, Lwn/k;->f:I

    const/4 v9, 0x1

    if-ge v5, v7, :cond_b

    mul-int v7, v5, v2

    mul-int/2addr v7, v8

    iget-object v10, v0, Lwn/k;->b:[I

    invoke-static {v10, v7, v2}, Lwn/E;->j([III)I

    move-result v10

    add-int/lit8 v11, v10, -0x1

    move v12, v11

    move v11, v3

    :goto_3
    if-ge v11, v10, :cond_a

    iget-object v13, v0, Lwn/k;->b:[I

    add-int v14, v7, v11

    aget v14, v13, v14

    if-eq v14, v1, :cond_5

    add-int v15, v7, v12

    aget v15, v13, v15

    if-ne v15, v1, :cond_9

    :cond_5
    add-int/2addr v12, v7

    aget v12, v13, v12

    if-ne v12, v1, :cond_6

    move/from16 v18, v14

    move v14, v12

    move/from16 v12, v18

    :cond_6
    move v13, v3

    move v15, v13

    :goto_4
    if-ge v13, v6, :cond_8

    mul-int/lit8 v16, v13, 0x3

    add-int/lit8 v17, v16, 0x1

    aget v3, v4, v17

    if-ne v3, v12, :cond_7

    add-int/lit8 v16, v16, 0x2

    aget v3, v4, v16

    add-int/2addr v3, v9

    aput v3, v4, v16

    move v15, v9

    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    if-nez v15, :cond_9

    mul-int/lit8 v3, v6, 0x3

    aput v14, v4, v3

    add-int/lit8 v13, v3, 0x1

    aput v12, v4, v13

    add-int/2addr v3, v8

    aput v9, v4, v3

    add-int/lit8 v6, v6, 0x1

    :cond_9
    add-int/lit8 v3, v11, 0x1

    move v12, v11

    move v11, v3

    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v0, v6, :cond_d

    mul-int/lit8 v2, v0, 0x3

    add-int/2addr v2, v8

    aget v2, v4, v2

    if-ge v2, v8, :cond_c

    add-int/lit8 v1, v1, 0x1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    if-le v1, v8, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    return v9
.end method

.method public static g([IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lwn/E;->b([IIII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    const v0, -0x72594cbd

    mul-int/2addr p0, v0

    const v0, -0x27e9c7bf

    mul-int/2addr p1, v0

    add-int/2addr p0, p1

    const p1, -0x34e54ce1    # -1.0138399E7f

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    sget p1, Lwn/E;->b:I

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method public static i(Lwn/N;Lwn/k;)Lwn/k;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "src"
        }
    .end annotation

    new-instance p0, Lwn/k;

    invoke-direct {p0}, Lwn/k;-><init>()V

    iget v0, p1, Lwn/k;->e:I

    iput v0, p0, Lwn/k;->e:I

    iget v0, p1, Lwn/k;->f:I

    iput v0, p0, Lwn/k;->f:I

    iget v0, p1, Lwn/k;->f:I

    iput v0, p0, Lwn/k;->h:I

    iget v0, p1, Lwn/k;->g:I

    iput v0, p0, Lwn/k;->g:I

    iget-object v0, p0, Lwn/k;->j:[F

    iget-object v1, p1, Lwn/k;->j:[F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lwn/I;->f([F[FI)V

    iget-object v0, p0, Lwn/k;->k:[F

    iget-object v1, p1, Lwn/k;->k:[F

    invoke-static {v0, v1, v2}, Lwn/I;->f([F[FI)V

    iget v0, p1, Lwn/k;->l:F

    iput v0, p0, Lwn/k;->l:F

    iget v0, p1, Lwn/k;->m:F

    iput v0, p0, Lwn/k;->m:F

    iget v0, p1, Lwn/k;->n:I

    iput v0, p0, Lwn/k;->n:I

    iget v0, p1, Lwn/k;->o:F

    iput v0, p0, Lwn/k;->o:F

    iget v0, p1, Lwn/k;->e:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lwn/k;->a:[I

    iget-object v1, p1, Lwn/k;->a:[I

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lwn/k;->f:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Lwn/k;->g:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lwn/k;->b:[I

    iget-object v1, p1, Lwn/k;->b:[I

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lwn/k;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lwn/k;->c:[I

    iget-object v1, p1, Lwn/k;->c:[I

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lwn/k;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lwn/k;->d:[I

    iget-object v1, p1, Lwn/k;->d:[I

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lwn/k;->f:I

    new-array v0, v0, [I

    iput-object v0, p0, Lwn/k;->i:[I

    iget-object p1, p1, Lwn/k;->i:[I

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public static j([III)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "j",
            "nvp"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v1, v0, p1

    aget v1, p0, v1

    sget v2, Lwn/u;->j:I

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static k(III[I[I)Z
    .locals 1
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
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lwn/E;->p(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lwn/E;->m(III[I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(III[I[I)Z
    .locals 1
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
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lwn/E;->q(III[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lwn/E;->n(III[I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(III[I[I)Z
    .locals 8
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
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    aget v0, p4, p0

    const v1, 0xfffffff

    and-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    aget v2, p4, p1

    and-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_2

    invoke-static {v4, p2}, Lwn/E;->x(II)I

    move-result v5

    if-eq v4, p0, :cond_1

    if-eq v5, p0, :cond_1

    if-eq v4, p1, :cond_1

    if-eq v5, p1, :cond_1

    aget v6, p4, v4

    and-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x4

    aget v5, p4, v5

    and-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {p3, v0, v6}, Lwn/E;->E([III)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p3, v2, v6}, Lwn/E;->E([III)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p3, v0, v5}, Lwn/E;->E([III)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p3, v2, v5}, Lwn/E;->E([III)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, v0, v2, v6, v5}, Lwn/E;->r([IIIII)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static n(III[I[I)Z
    .locals 8
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
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    aget v0, p4, p0

    const v1, 0xfffffff

    and-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    aget v2, p4, p1

    and-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p2, :cond_2

    invoke-static {v4, p2}, Lwn/E;->x(II)I

    move-result v5

    if-eq v4, p0, :cond_1

    if-eq v5, p0, :cond_1

    if-eq v4, p1, :cond_1

    if-eq v5, p1, :cond_1

    aget v6, p4, v4

    and-int/2addr v6, v1

    mul-int/lit8 v6, v6, 0x4

    aget v5, p4, v5

    and-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x4

    invoke-static {p3, v0, v6}, Lwn/E;->E([III)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p3, v2, v6}, Lwn/E;->E([III)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p3, v0, v5}, Lwn/E;->E([III)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p3, v2, v5}, Lwn/E;->E([III)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p3, v0, v2, v6, v5}, Lwn/E;->s([IIIII)Z

    move-result v5

    if-eqz v5, :cond_1

    return v3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static o([III[II)[I
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "polys",
            "pa",
            "pb",
            "verts",
            "nvp"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-static {v0, v1, v4}, Lwn/E;->j([III)I

    move-result v5

    invoke-static {v0, v2, v4}, Lwn/E;->j([III)I

    move-result v6

    add-int v7, v5, v6

    add-int/lit8 v7, v7, -0x2

    const/4 v8, -0x1

    if-le v7, v4, :cond_0

    filled-new-array {v8, v8, v8}, [I

    move-result-object v0

    return-object v0

    :cond_0
    move v9, v8

    move v10, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_5

    add-int v11, v1, v7

    aget v11, v0, v11

    add-int/lit8 v12, v7, 0x1

    rem-int v13, v12, v5

    add-int/2addr v13, v1

    aget v13, v0, v13

    if-le v11, v13, :cond_1

    move/from16 v18, v13

    move v13, v11

    move/from16 v11, v18

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v6, :cond_4

    add-int v15, v2, v14

    aget v15, v0, v15

    add-int/lit8 v16, v14, 0x1

    rem-int v17, v16, v6

    add-int v17, v2, v17

    aget v4, v0, v17

    if-le v15, v4, :cond_2

    move/from16 v18, v15

    move v15, v4

    move/from16 v4, v18

    :cond_2
    if-ne v11, v15, :cond_3

    if-ne v13, v4, :cond_3

    move v9, v7

    move v10, v14

    goto :goto_2

    :cond_3
    move/from16 v14, v16

    goto :goto_1

    :cond_4
    :goto_2
    move v7, v12

    goto :goto_0

    :cond_5
    if-eq v9, v8, :cond_9

    if-ne v10, v8, :cond_6

    goto :goto_3

    :cond_6
    add-int v4, v9, v5

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v5

    add-int/2addr v4, v1

    aget v4, v0, v4

    add-int v7, v1, v9

    aget v11, v0, v7

    add-int/lit8 v12, v10, 0x2

    rem-int/2addr v12, v6

    add-int/2addr v12, v2

    aget v12, v0, v12

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v11, v11, 0x3

    mul-int/lit8 v12, v12, 0x3

    invoke-static {v3, v4, v11, v12}, Lwn/E;->D([IIII)Z

    move-result v4

    if-nez v4, :cond_7

    filled-new-array {v8, v9, v10}, [I

    move-result-object v0

    return-object v0

    :cond_7
    add-int v4, v10, v6

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v6

    add-int/2addr v4, v2

    aget v4, v0, v4

    add-int/2addr v2, v10

    aget v2, v0, v2

    add-int/lit8 v6, v9, 0x2

    rem-int/2addr v6, v5

    add-int/2addr v6, v1

    aget v6, v0, v6

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v2, v2, 0x3

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v3, v4, v2, v6}, Lwn/E;->D([IIII)Z

    move-result v2

    if-nez v2, :cond_8

    filled-new-array {v8, v9, v10}, [I

    move-result-object v0

    return-object v0

    :cond_8
    aget v2, v0, v7

    add-int/lit8 v4, v9, 0x1

    rem-int/2addr v4, v5

    add-int/2addr v1, v4

    aget v0, v0, v1

    mul-int/lit8 v2, v2, 0x3

    aget v1, v3, v2

    mul-int/lit8 v0, v0, 0x3

    aget v4, v3, v0

    sub-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x2

    aget v2, v3, v2

    add-int/lit8 v0, v0, 0x2

    aget v0, v3, v0

    sub-int/2addr v2, v0

    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    filled-new-array {v1, v9, v10}, [I

    move-result-object v0

    return-object v0

    :cond_9
    :goto_3
    filled-new-array {v8, v9, v10}, [I

    move-result-object v0

    return-object v0
.end method

.method public static p(III[I[I)Z
    .locals 3
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
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    aget v0, p4, p0

    const v1, 0xfffffff

    and-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    aget p1, p4, p1

    and-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p0, p2}, Lwn/E;->x(II)I

    move-result v2

    aget v2, p4, v2

    and-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {p0, p2}, Lwn/E;->y(II)I

    move-result p0

    aget p0, p4, p0

    and-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p3, p0, v0, v2}, Lwn/E;->u([IIII)Z

    move-result p2

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {p3, v0, p1, p0}, Lwn/E;->t([IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p3, p1, v0, v2}, Lwn/E;->t([IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    move p4, v1

    :cond_0
    return p4

    :cond_1
    invoke-static {p3, v0, p1, v2}, Lwn/E;->u([IIII)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p3, p1, v0, p0}, Lwn/E;->u([IIII)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    move p4, v1

    :cond_3
    return p4
.end method

.method public static q(III[I[I)Z
    .locals 3
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
            "j",
            "n",
            "verts",
            "indices"
        }
    .end annotation

    aget v0, p4, p0

    const v1, 0xfffffff

    and-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    aget p1, p4, p1

    and-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p0, p2}, Lwn/E;->x(II)I

    move-result v2

    aget v2, p4, v2

    and-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {p0, p2}, Lwn/E;->y(II)I

    move-result p0

    aget p0, p4, p0

    and-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p3, p0, v0, v2}, Lwn/E;->u([IIII)Z

    move-result p2

    const/4 p4, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-static {p3, v0, p1, p0}, Lwn/E;->u([IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p3, p1, v0, v2}, Lwn/E;->u([IIII)Z

    move-result p0

    if-eqz p0, :cond_0

    move p4, v1

    :cond_0
    return p4

    :cond_1
    invoke-static {p3, v0, p1, v2}, Lwn/E;->u([IIII)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p3, p1, v0, p0}, Lwn/E;->u([IIII)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    move p4, v1

    :cond_3
    return p4
.end method

.method public static r([IIIII)Z
    .locals 2
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
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lwn/E;->s([IIIII)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lwn/E;->c([IIII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1, p2, p4}, Lwn/E;->c([IIII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p3, p4, p1}, Lwn/E;->c([IIII)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0, p3, p4, p2}, Lwn/E;->c([IIII)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public static s([IIIII)Z
    .locals 3
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
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lwn/E;->g([IIII)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p4}, Lwn/E;->g([IIII)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p3, p4, p1}, Lwn/E;->g([IIII)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p3, p4, p2}, Lwn/E;->g([IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lwn/E;->t([IIII)Z

    move-result v0

    invoke-static {p0, p1, p2, p4}, Lwn/E;->t([IIII)Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-static {p0, p3, p4, p1}, Lwn/E;->t([IIII)Z

    move-result p1

    invoke-static {p0, p3, p4, p2}, Lwn/E;->t([IIII)Z

    move-result p0

    xor-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static t([IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lwn/E;->b([IIII)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static u([IIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "verts",
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lwn/E;->b([IIII)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static v(Lwn/N;[Lwn/k;I)Lwn/k;
    .locals 27
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "meshes",
            "nmeshes"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-eqz v1, :cond_17

    if-nez p1, :cond_0

    goto/16 :goto_f

    :cond_0
    const-string v2, "MERGE_POLYMESH"

    invoke-virtual {v0, v2}, Lwn/N;->f(Ljava/lang/String;)V

    new-instance v3, Lwn/k;

    invoke-direct {v3}, Lwn/k;-><init>()V

    const/4 v4, 0x0

    aget-object v5, p1, v4

    iget v6, v5, Lwn/k;->g:I

    iput v6, v3, Lwn/k;->g:I

    iget v6, v5, Lwn/k;->l:F

    iput v6, v3, Lwn/k;->l:F

    iget v6, v5, Lwn/k;->m:F

    iput v6, v3, Lwn/k;->m:F

    iget-object v6, v3, Lwn/k;->j:[F

    iget-object v5, v5, Lwn/k;->j:[F

    invoke-static {v6, v5, v4}, Lwn/I;->f([F[FI)V

    iget-object v5, v3, Lwn/k;->k:[F

    aget-object v6, p1, v4

    iget-object v6, v6, Lwn/k;->k:[F

    invoke-static {v5, v6, v4}, Lwn/I;->f([F[FI)V

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v5, v1, :cond_1

    iget-object v9, v3, Lwn/k;->j:[F

    aget-object v10, p1, v5

    iget-object v10, v10, Lwn/k;->j:[F

    invoke-static {v9, v10, v4}, Lwn/I;->l([F[FI)V

    iget-object v9, v3, Lwn/k;->k:[F

    aget-object v10, p1, v5

    iget-object v10, v10, Lwn/k;->k:[F

    invoke-static {v9, v10, v4}, Lwn/I;->j([F[FI)V

    aget-object v9, p1, v5

    iget v9, v9, Lwn/k;->e:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aget-object v9, p1, v5

    iget v10, v9, Lwn/k;->e:I

    add-int/2addr v6, v10

    iget v9, v9, Lwn/k;->f:I

    add-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v4, v3, Lwn/k;->e:I

    mul-int/lit8 v5, v6, 0x3

    new-array v5, v5, [I

    iput-object v5, v3, Lwn/k;->a:[I

    iput v4, v3, Lwn/k;->f:I

    mul-int/lit8 v5, v7, 0x2

    iget v9, v3, Lwn/k;->g:I

    mul-int/2addr v5, v9

    new-array v5, v5, [I

    iput-object v5, v3, Lwn/k;->b:[I

    array-length v9, v5

    sget v10, Lwn/u;->j:I

    invoke-static {v5, v4, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    new-array v5, v7, [I

    iput-object v5, v3, Lwn/k;->c:[I

    new-array v5, v7, [I

    iput-object v5, v3, Lwn/k;->d:[I

    new-array v5, v7, [I

    iput-object v5, v3, Lwn/k;->i:[I

    new-array v5, v6, [I

    sget v6, Lwn/E;->b:I

    new-array v6, v6, [I

    move v7, v4

    :goto_1
    sget v9, Lwn/E;->b:I

    if-ge v7, v9, :cond_2

    const/4 v9, -0x1

    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    new-array v7, v8, [I

    move v8, v4

    :goto_2
    if-ge v8, v1, :cond_14

    aget-object v14, p1, v8

    iget-object v9, v14, Lwn/k;->j:[F

    aget v9, v9, v4

    iget-object v10, v3, Lwn/k;->j:[F

    aget v10, v10, v4

    sub-float/2addr v9, v10

    iget v10, v3, Lwn/k;->l:F

    div-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v13, v11

    iget-object v9, v14, Lwn/k;->j:[F

    const/4 v12, 0x2

    aget v9, v9, v12

    iget-object v11, v3, Lwn/k;->j:[F

    aget v11, v11, v12

    sub-float/2addr v9, v11

    iget v11, v3, Lwn/k;->l:F

    div-float/2addr v9, v11

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v11, v9

    if-nez v13, :cond_3

    const/16 v17, 0x1

    goto :goto_3

    :cond_3
    move/from16 v17, v4

    :goto_3
    if-nez v11, :cond_4

    const/16 v18, 0x1

    goto :goto_4

    :cond_4
    move/from16 v18, v4

    :goto_4
    iget-object v9, v3, Lwn/k;->k:[F

    aget v9, v9, v4

    iget-object v10, v14, Lwn/k;->k:[F

    aget v10, v10, v4

    sub-float/2addr v9, v10

    iget v10, v3, Lwn/k;->l:F

    div-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    const-wide/16 v20, 0x0

    cmpl-double v9, v9, v20

    if-nez v9, :cond_5

    const/16 v22, 0x1

    goto :goto_5

    :cond_5
    move/from16 v22, v4

    :goto_5
    iget-object v9, v3, Lwn/k;->k:[F

    aget v9, v9, v12

    iget-object v10, v14, Lwn/k;->k:[F

    aget v10, v10, v12

    sub-float/2addr v9, v10

    iget v10, v3, Lwn/k;->l:F

    div-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    cmpl-double v9, v9, v20

    if-nez v9, :cond_6

    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    move/from16 v16, v4

    :goto_6
    if-nez v17, :cond_8

    if-nez v18, :cond_8

    if-nez v22, :cond_8

    if-eqz v16, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v20, v4

    goto :goto_8

    :cond_8
    :goto_7
    const/16 v20, 0x1

    :goto_8
    move v10, v4

    :goto_9
    iget v9, v14, Lwn/k;->e:I

    if-ge v10, v9, :cond_9

    mul-int/lit8 v9, v10, 0x3

    iget-object v15, v14, Lwn/k;->a:[I

    aget v23, v15, v9

    add-int v23, v23, v13

    add-int/lit8 v24, v9, 0x1

    aget v24, v15, v24

    add-int/2addr v9, v12

    aget v9, v15, v9

    add-int v15, v9, v11

    iget-object v9, v3, Lwn/k;->a:[I

    iget v4, v3, Lwn/k;->e:I

    move-object/from16 v25, v9

    move/from16 v9, v23

    move/from16 v19, v10

    const/4 v1, 0x1

    move/from16 v10, v24

    move/from16 v23, v11

    move v11, v15

    move v15, v12

    move-object/from16 v12, v25

    move/from16 v24, v13

    move-object v13, v6

    move-object/from16 v26, v14

    move-object v14, v5

    move v15, v4

    invoke-static/range {v9 .. v15}, Lwn/E;->a(III[I[I[II)[I

    move-result-object v4

    const/4 v9, 0x0

    aget v10, v4, v9

    aput v10, v7, v19

    aget v4, v4, v1

    iput v4, v3, Lwn/k;->e:I

    add-int/lit8 v10, v19, 0x1

    move/from16 v1, p2

    move v4, v9

    move/from16 v11, v23

    move/from16 v13, v24

    move-object/from16 v14, v26

    const/4 v12, 0x2

    goto :goto_9

    :cond_9
    move v9, v4

    const/4 v1, 0x1

    move v10, v9

    move-object v4, v14

    :goto_a
    iget v11, v4, Lwn/k;->f:I

    if-ge v10, v11, :cond_13

    iget v11, v3, Lwn/k;->f:I

    mul-int/lit8 v12, v11, 0x2

    iget v13, v3, Lwn/k;->g:I

    mul-int/2addr v12, v13

    mul-int/lit8 v14, v10, 0x2

    mul-int/2addr v14, v13

    iget-object v13, v3, Lwn/k;->c:[I

    iget-object v15, v4, Lwn/k;->c:[I

    aget v15, v15, v10

    aput v15, v13, v11

    iget-object v13, v3, Lwn/k;->d:[I

    iget-object v15, v4, Lwn/k;->d:[I

    aget v15, v15, v10

    aput v15, v13, v11

    iget-object v13, v3, Lwn/k;->i:[I

    iget-object v15, v4, Lwn/k;->i:[I

    aget v15, v15, v10

    aput v15, v13, v11

    add-int/2addr v11, v1

    iput v11, v3, Lwn/k;->f:I

    move v11, v9

    :goto_b
    iget v13, v3, Lwn/k;->g:I

    if-ge v11, v13, :cond_b

    iget-object v15, v4, Lwn/k;->b:[I

    add-int v19, v14, v11

    aget v15, v15, v19

    sget v9, Lwn/u;->j:I

    if-ne v15, v9, :cond_a

    goto :goto_c

    :cond_a
    iget-object v9, v3, Lwn/k;->b:[I

    add-int v13, v12, v11

    aget v15, v7, v15

    aput v15, v9, v13

    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto :goto_b

    :cond_b
    :goto_c
    if-eqz v20, :cond_11

    :goto_d
    iget v9, v3, Lwn/k;->g:I

    const/4 v11, 0x2

    mul-int/2addr v9, v11

    if-ge v13, v9, :cond_12

    iget-object v9, v4, Lwn/k;->b:[I

    add-int v15, v14, v13

    aget v9, v9, v15

    const v15, 0x8000

    and-int/2addr v15, v9

    if-eqz v15, :cond_10

    const v15, 0xffff

    if-eq v9, v15, :cond_10

    and-int/lit8 v15, v9, 0xf

    if-eqz v15, :cond_f

    if-eq v15, v1, :cond_e

    if-eq v15, v11, :cond_d

    const/4 v1, 0x3

    if-eq v15, v1, :cond_c

    goto :goto_e

    :cond_c
    if-eqz v18, :cond_10

    iget-object v1, v3, Lwn/k;->b:[I

    add-int v15, v12, v13

    aput v9, v1, v15

    goto :goto_e

    :cond_d
    if-eqz v22, :cond_10

    iget-object v1, v3, Lwn/k;->b:[I

    add-int v15, v12, v13

    aput v9, v1, v15

    goto :goto_e

    :cond_e
    if-eqz v16, :cond_10

    iget-object v1, v3, Lwn/k;->b:[I

    add-int v15, v12, v13

    aput v9, v1, v15

    goto :goto_e

    :cond_f
    if-eqz v17, :cond_10

    iget-object v1, v3, Lwn/k;->b:[I

    add-int v15, v12, v13

    aput v9, v1, v15

    :cond_10
    :goto_e
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x1

    goto :goto_d

    :cond_11
    const/4 v11, 0x2

    :cond_12
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x1

    const/4 v9, 0x0

    goto/16 :goto_a

    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p2

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_14
    iget-object v1, v3, Lwn/k;->b:[I

    iget v4, v3, Lwn/k;->f:I

    iget v5, v3, Lwn/k;->e:I

    iget v6, v3, Lwn/k;->g:I

    invoke-static {v1, v4, v5, v6}, Lwn/E;->d([IIII)V

    iget v1, v3, Lwn/k;->e:I

    const-string v4, "). Data can be corrupted."

    const-string v5, " (max "

    const v6, 0xffff

    if-gt v1, v6, :cond_16

    iget v1, v3, Lwn/k;->f:I

    if-gt v1, v6, :cond_15

    invoke-virtual {v0, v2}, Lwn/N;->g(Ljava/lang/String;)V

    return-object v3

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildPolyMesh: The resulting mesh has too many polygons "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lwn/k;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildPolyMesh: The resulting mesh has too many vertices "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lwn/k;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static w([IIIIIII)V
    .locals 7
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
            "polys",
            "pa",
            "pb",
            "ea",
            "eb",
            "tmp",
            "nvp"
        }
    .end annotation

    invoke-static {p0, p1, p6}, Lwn/E;->j([III)I

    move-result v0

    invoke-static {p0, p2, p6}, Lwn/E;->j([III)I

    move-result v1

    add-int v2, p5, p6

    sget v3, Lwn/u;->j:I

    invoke-static {p0, p5, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_0

    add-int v5, p5, v4

    add-int/lit8 v6, p3, 0x1

    add-int/2addr v6, v3

    rem-int/2addr v6, v0

    add-int/2addr v6, p1

    aget v6, p0, v6

    aput v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p3, v1, -0x1

    if-ge v2, p3, :cond_1

    add-int p3, p5, v4

    add-int/lit8 v0, p4, 0x1

    add-int/2addr v0, v2

    rem-int/2addr v0, v1

    add-int/2addr v0, p2

    aget v0, p0, v0

    aput v0, p0, p3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, p5, p0, p1, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static x(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "n"
        }
    .end annotation

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "n"
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x1

    :goto_0
    return p0
.end method

.method public static z(I[II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "arr",
            "an"
        }
    .end annotation

    aput p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    return p2
.end method
