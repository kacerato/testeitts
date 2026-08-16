.class public Lwn/H;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn/H$a;,
        Lwn/H$b;
    }
.end annotation


# static fields
.field public static final a:I = 0xffff


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lwn/H$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reg",
            "n"
        }
    .end annotation

    iget-object v0, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lwn/H$a;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reg",
            "n"
        }
    .end annotation

    iget-object v0, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static c(Ljava/util/List;Ljava/util/List;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcStack",
            "dstStack",
            "srcReg"
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
            ">;[I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    aget v2, p2, v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static d(Lwn/c;I[I)[I
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chf",
            "thr",
            "src"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lwn/c;->a:I

    iget v2, v0, Lwn/c;->b:I

    iget v3, v0, Lwn/c;->c:I

    new-array v3, v3, [I

    mul-int/lit8 v4, p1, 0x2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_5

    iget-object v8, v0, Lwn/c;->m:[Lwn/b;

    mul-int v9, v6, v1

    add-int/2addr v9, v7

    aget-object v8, v8, v9

    iget v9, v8, Lwn/b;->a:I

    iget v8, v8, Lwn/b;->b:I

    add-int/2addr v8, v9

    :goto_2
    if-ge v9, v8, :cond_4

    iget-object v10, v0, Lwn/c;->n:[Lwn/d;

    aget-object v10, v10, v9

    aget v11, p2, v9

    if-gt v11, v4, :cond_0

    aput v11, v3, v9

    move/from16 v18, v2

    move/from16 v19, v4

    goto/16 :goto_6

    :cond_0
    move v13, v11

    const/4 v12, 0x0

    :goto_3
    const/4 v14, 0x4

    if-ge v12, v14, :cond_3

    invoke-static {v10, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v14

    const/16 v15, 0x3f

    if-eq v14, v15, :cond_2

    invoke-static {v12}, Lwn/r;->b(I)I

    move-result v14

    add-int/2addr v14, v7

    invoke-static {v12}, Lwn/r;->c(I)I

    move-result v16

    add-int v16, v6, v16

    iget-object v5, v0, Lwn/c;->m:[Lwn/b;

    mul-int v17, v16, v1

    add-int v17, v14, v17

    aget-object v5, v5, v17

    iget v5, v5, Lwn/b;->a:I

    invoke-static {v10, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v17

    add-int v5, v5, v17

    aget v17, p2, v5

    add-int v13, v13, v17

    iget-object v15, v0, Lwn/c;->n:[Lwn/d;

    aget-object v5, v15, v5

    add-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x3

    move/from16 v18, v2

    invoke-static {v5, v15}, Lwn/r;->a(Lwn/d;I)I

    move-result v2

    move/from16 v19, v4

    const/16 v4, 0x3f

    if-eq v2, v4, :cond_1

    invoke-static {v15}, Lwn/r;->b(I)I

    move-result v2

    add-int/2addr v14, v2

    invoke-static {v15}, Lwn/r;->c(I)I

    move-result v2

    add-int v16, v16, v2

    iget-object v2, v0, Lwn/c;->m:[Lwn/b;

    mul-int v16, v16, v1

    add-int v14, v14, v16

    aget-object v2, v2, v14

    iget v2, v2, Lwn/b;->a:I

    invoke-static {v5, v15}, Lwn/r;->a(Lwn/d;I)I

    move-result v4

    add-int/2addr v2, v4

    aget v2, p2, v2

    goto :goto_4

    :cond_1
    add-int/2addr v13, v11

    goto :goto_5

    :cond_2
    move/from16 v18, v2

    move/from16 v19, v4

    mul-int/lit8 v2, v11, 0x2

    :goto_4
    add-int/2addr v13, v2

    :goto_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v18

    move/from16 v4, v19

    goto :goto_3

    :cond_3
    move/from16 v18, v2

    move/from16 v19, v4

    add-int/lit8 v13, v13, 0x5

    div-int/lit8 v13, v13, 0x9

    aput v13, v3, v9

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v18

    move/from16 v4, v19

    goto/16 :goto_2

    :cond_4
    move/from16 v18, v2

    move/from16 v19, v4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v18, v2

    move/from16 v19, v4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v3
.end method

.method public static e(Lwn/N;Lwn/c;)V
    .locals 4
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

    const-string v0, "DISTANCEFIELD"

    invoke-virtual {p0, v0}, Lwn/N;->f(Ljava/lang/String;)V

    iget v1, p1, Lwn/c;->c:I

    new-array v1, v1, [I

    const-string v2, "DISTANCEFIELD_DIST"

    invoke-virtual {p0, v2}, Lwn/N;->f(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lwn/H;->i(Lwn/c;[I)I

    move-result v3

    iput v3, p1, Lwn/c;->g:I

    invoke-virtual {p0, v2}, Lwn/N;->g(Ljava/lang/String;)V

    const-string v2, "DISTANCEFIELD_BLUR"

    invoke-virtual {p0, v2}, Lwn/N;->f(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {p1, v3, v1}, Lwn/H;->d(Lwn/c;I[I)[I

    move-result-object v1

    iput-object v1, p1, Lwn/c;->o:[I

    invoke-virtual {p0, v2}, Lwn/N;->g(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Lwn/N;Lwn/c;I)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "chf",
            "minRegionArea"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v14, p1

    const-string v15, "REGIONS"

    invoke-virtual {v6, v15}, Lwn/N;->f(Ljava/lang/String;)V

    iget v0, v14, Lwn/c;->a:I

    iget v1, v14, Lwn/c;->b:I

    iget v2, v14, Lwn/c;->f:I

    iget v3, v14, Lwn/c;->c:I

    new-array v5, v3, [I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v4, v3, [Lwn/H$b;

    const/4 v13, 0x0

    move v7, v13

    :goto_0
    if-ge v7, v3, :cond_0

    new-instance v8, Lwn/H$b;

    invoke-direct {v8}, Lwn/H$b;-><init>()V

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const/4 v12, 0x3

    const/16 v16, 0x1

    if-lez v2, :cond_1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v18

    sget v7, Lwn/u;->e:I

    or-int/lit8 v11, v7, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move/from16 v8, v17

    move v10, v1

    move-object/from16 v12, p1

    move-object v13, v5

    invoke-static/range {v7 .. v13}, Lwn/H;->r(IIIIILwn/c;[I)V

    sub-int v7, v0, v17

    sget v8, Lwn/u;->e:I

    or-int v11, v3, v8

    move v8, v0

    invoke-static/range {v7 .. v13}, Lwn/H;->r(IIIIILwn/c;[I)V

    sget v7, Lwn/u;->e:I

    const/4 v13, 0x3

    or-int v11, v13, v7

    const/4 v7, 0x0

    move/from16 v10, v18

    move v3, v13

    move-object v13, v5

    invoke-static/range {v7 .. v13}, Lwn/H;->r(IIIIILwn/c;[I)V

    sub-int v9, v1, v18

    sget v7, Lwn/u;->e:I

    const/4 v8, 0x4

    or-int v11, v8, v7

    const/4 v7, 0x0

    move v8, v0

    move v10, v1

    invoke-static/range {v7 .. v13}, Lwn/H;->r(IIIIILwn/c;[I)V

    const/4 v7, 0x5

    goto :goto_1

    :cond_1
    move v3, v12

    move/from16 v7, v16

    :goto_1
    const/16 v8, 0x400

    new-array v8, v8, [I

    move v9, v2

    :goto_2
    sub-int v10, v1, v2

    if-ge v9, v10, :cond_11

    array-length v10, v8

    mul-int/lit8 v11, v7, 0x2

    if-gt v10, v11, :cond_2

    new-array v8, v11, [I

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    invoke-static {v8, v10, v7, v10}, Ljava/util/Arrays;->fill([IIII)V

    :goto_3
    move v11, v2

    move/from16 v12, v16

    :goto_4
    sub-int v13, v0, v2

    if-ge v11, v13, :cond_b

    iget-object v13, v14, Lwn/c;->m:[Lwn/b;

    mul-int v18, v9, v0

    add-int v18, v11, v18

    aget-object v13, v13, v18

    iget v3, v13, Lwn/b;->a:I

    iget v13, v13, Lwn/b;->b:I

    add-int/2addr v13, v3

    :goto_5
    if-ge v3, v13, :cond_a

    iget-object v10, v14, Lwn/c;->n:[Lwn/d;

    aget-object v10, v10, v3

    move/from16 v21, v1

    iget-object v1, v14, Lwn/c;->p:[I

    aget v1, v1, v3

    if-nez v1, :cond_3

    move/from16 v22, v2

    move/from16 v23, v13

    const/4 v2, 0x2

    const/16 v20, 0x0

    goto/16 :goto_c

    :cond_3
    move/from16 v22, v2

    const/4 v1, 0x0

    invoke-static {v10, v1}, Lwn/r;->a(Lwn/d;I)I

    move-result v2

    move/from16 v23, v13

    const/16 v13, 0x3f

    if-eq v2, v13, :cond_4

    invoke-static {v1}, Lwn/r;->b(I)I

    move-result v2

    add-int/2addr v2, v11

    invoke-static {v1}, Lwn/r;->c(I)I

    move-result v20

    add-int v20, v9, v20

    iget-object v13, v14, Lwn/c;->m:[Lwn/b;

    mul-int v20, v20, v0

    add-int v2, v2, v20

    aget-object v2, v13, v2

    iget v2, v2, Lwn/b;->a:I

    invoke-static {v10, v1}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    add-int/2addr v2, v13

    aget v13, v5, v2

    sget v1, Lwn/u;->e:I

    and-int/2addr v1, v13

    if-nez v1, :cond_4

    iget-object v1, v14, Lwn/c;->p:[I

    move/from16 v24, v13

    aget v13, v1, v3

    aget v1, v1, v2

    if-ne v13, v1, :cond_4

    move/from16 v13, v24

    goto :goto_6

    :cond_4
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_5

    add-int/lit8 v1, v12, 0x1

    aget-object v2, v4, v12

    iput v12, v2, Lwn/H$b;->a:I

    const/4 v13, 0x0

    iput v13, v2, Lwn/H$b;->c:I

    iput v13, v2, Lwn/H$b;->d:I

    move/from16 v20, v13

    :goto_7
    const/4 v2, 0x3

    goto :goto_8

    :cond_5
    const/16 v20, 0x0

    move v1, v12

    move v12, v13

    goto :goto_7

    :goto_8
    invoke-static {v10, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    move/from16 v19, v1

    const/16 v1, 0x3f

    if-eq v13, v1, :cond_7

    invoke-static {v2}, Lwn/r;->b(I)I

    move-result v1

    add-int/2addr v1, v11

    invoke-static {v2}, Lwn/r;->c(I)I

    move-result v13

    add-int/2addr v13, v9

    iget-object v2, v14, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v13, v0

    add-int/2addr v1, v13

    aget-object v1, v2, v1

    iget v1, v1, Lwn/b;->a:I

    const/4 v2, 0x3

    invoke-static {v10, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    add-int/2addr v1, v10

    aget v10, v5, v1

    if-eqz v10, :cond_7

    sget v13, Lwn/u;->e:I

    and-int/2addr v13, v10

    if-nez v13, :cond_7

    iget-object v13, v14, Lwn/c;->p:[I

    aget v2, v13, v3

    aget v1, v13, v1

    if-ne v2, v1, :cond_7

    aget-object v1, v4, v12

    iget v2, v1, Lwn/H$b;->d:I

    if-eqz v2, :cond_8

    if-ne v2, v10, :cond_6

    goto :goto_9

    :cond_6
    const v2, 0xffff

    iput v2, v1, Lwn/H$b;->d:I

    :cond_7
    const/4 v2, 0x2

    goto :goto_b

    :cond_8
    :goto_9
    iput v10, v1, Lwn/H$b;->d:I

    iget v2, v1, Lwn/H$b;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lwn/H$b;->c:I

    array-length v1, v8

    if-gt v1, v10, :cond_9

    array-length v1, v8

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    goto :goto_a

    :cond_9
    const/4 v2, 0x2

    :goto_a
    aget v1, v8, v10

    add-int/lit8 v1, v1, 0x1

    aput v1, v8, v10

    :goto_b
    aput v12, v5, v3

    move/from16 v12, v19

    :goto_c
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v13, v23

    goto/16 :goto_5

    :cond_a
    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v20, v10

    const/4 v2, 0x2

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v22

    const/4 v3, 0x3

    goto/16 :goto_4

    :cond_b
    move/from16 v21, v1

    move/from16 v22, v2

    move/from16 v20, v10

    const/4 v2, 0x2

    move/from16 v1, v16

    :goto_d
    if-ge v1, v12, :cond_d

    aget-object v3, v4, v1

    iget v10, v3, Lwn/H$b;->d:I

    const v11, 0xffff

    if-eq v10, v11, :cond_c

    if-eqz v10, :cond_c

    aget v2, v8, v10

    iget v11, v3, Lwn/H$b;->c:I

    if-ne v2, v11, :cond_c

    iput v10, v3, Lwn/H$b;->b:I

    goto :goto_e

    :cond_c
    add-int/lit8 v2, v7, 0x1

    iput v7, v3, Lwn/H$b;->b:I

    move v7, v2

    :goto_e
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    goto :goto_d

    :cond_d
    move/from16 v1, v22

    :goto_f
    if-ge v1, v13, :cond_10

    iget-object v2, v14, Lwn/c;->m:[Lwn/b;

    mul-int v3, v9, v0

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    iget v3, v2, Lwn/b;->a:I

    iget v2, v2, Lwn/b;->b:I

    add-int/2addr v2, v3

    :goto_10
    if-ge v3, v2, :cond_f

    aget v10, v5, v3

    if-lez v10, :cond_e

    if-ge v10, v12, :cond_e

    aget-object v10, v4, v10

    iget v10, v10, Lwn/H$b;->b:I

    aput v10, v5, v3

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_10
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v21

    move/from16 v2, v22

    const/4 v3, 0x3

    goto/16 :goto_2

    :cond_11
    const/16 v20, 0x0

    const-string v8, "REGIONS_FILTER"

    invoke-virtual {v6, v8}, Lwn/N;->f(Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v7

    move-object/from16 v3, p1

    move-object v4, v5

    move-object v7, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lwn/H;->o(Lwn/N;IILwn/c;[ILjava/util/List;)I

    move-result v0

    iput v0, v14, Lwn/c;->h:I

    invoke-virtual {v6, v8}, Lwn/N;->g(Ljava/lang/String;)V

    move/from16 v13, v20

    :goto_11
    iget v0, v14, Lwn/c;->c:I

    if-ge v13, v0, :cond_12

    iget-object v0, v14, Lwn/c;->n:[Lwn/d;

    aget-object v0, v0, v13

    aget v1, v7, v13

    iput v1, v0, Lwn/d;->b:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_12
    invoke-virtual {v6, v15}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Lwn/N;Lwn/c;II)V
    .locals 26
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "chf",
            "minRegionArea",
            "mergeRegionArea"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    const-string v14, "REGIONS"

    invoke-virtual {v7, v14}, Lwn/N;->f(Ljava/lang/String;)V

    iget v8, v15, Lwn/c;->a:I

    iget v9, v15, Lwn/c;->b:I

    iget v10, v15, Lwn/c;->f:I

    const-string v13, "REGIONS_WATERSHED"

    invoke-virtual {v7, v13}, Lwn/N;->f(Ljava/lang/String;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    move/from16 v0, v17

    :goto_0
    const/16 v1, 0x400

    const/16 v11, 0x8

    if-ge v0, v11, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v0, v15, Lwn/c;->c:I

    new-array v5, v0, [I

    new-array v4, v0, [I

    iget v0, v15, Lwn/c;->g:I

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v16, v0, -0x2

    const/4 v3, 0x2

    if-lez v10, :cond_1

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v19

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v20

    sget v0, Lwn/u;->e:I

    or-int/lit8 v21, v0, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move/from16 v1, v19

    move v11, v3

    move v3, v9

    move-object/from16 v22, v4

    move/from16 v4, v21

    move-object/from16 v21, v5

    move-object/from16 v5, p1

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    sub-int v0, v8, v19

    sget v1, Lwn/u;->e:I

    or-int v4, v11, v1

    move v1, v8

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    sget v0, Lwn/u;->e:I

    const/4 v1, 0x3

    or-int v4, v1, v0

    const/4 v0, 0x0

    move v1, v8

    move/from16 v3, v20

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    sub-int v2, v9, v20

    sget v0, Lwn/u;->e:I

    const/4 v1, 0x4

    or-int v4, v1, v0

    const/4 v0, 0x0

    move v1, v8

    move v3, v9

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    move v11, v3

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move/from16 v0, v18

    :goto_1
    iput v10, v15, Lwn/c;->f:I

    const/4 v1, -0x1

    move v8, v0

    move/from16 v0, v16

    :goto_2
    if-lez v0, :cond_7

    if-lt v0, v11, :cond_2

    add-int/lit8 v0, v0, -0x2

    move/from16 v19, v0

    goto :goto_3

    :cond_2
    move/from16 v19, v17

    :goto_3
    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v10, v1, 0x7

    if-nez v10, :cond_3

    const/4 v5, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    const/16 v16, 0x8

    move/from16 v3, v16

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lwn/H;->u(ILwn/c;[IILjava/util/List;I)V

    move-object/from16 v9, v21

    goto :goto_4

    :cond_3
    const/16 v16, 0x8

    add-int/lit8 v0, v10, -0x1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object/from16 v9, v21

    invoke-static {v0, v1, v9}, Lwn/H;->c(Ljava/util/List;Ljava/util/List;[I)V

    :goto_4
    const-string v6, "REGIONS_EXPAND"

    invoke-virtual {v7, v6}, Lwn/N;->f(Ljava/lang/String;)V

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    const/16 v20, 0x0

    const/16 v0, 0x8

    move/from16 v1, v19

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v4, v22

    move-object v11, v6

    move/from16 v6, v20

    invoke-static/range {v0 .. v6}, Lwn/H;->k(IILwn/c;[I[ILjava/util/List;Z)[I

    invoke-virtual {v7, v11}, Lwn/N;->g(Ljava/lang/String;)V

    const-string v0, "REGIONS_FLOOD"

    invoke-virtual {v7, v0}, Lwn/N;->f(Ljava/lang/String;)V

    move v1, v8

    move/from16 v2, v17

    :goto_5
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    add-int/lit8 v5, v2, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_4

    aget v5, v9, v4

    if-nez v5, :cond_4

    move-object/from16 v20, v9

    move v9, v3

    move v3, v10

    move v10, v4

    move/from16 v4, v16

    const/4 v5, 0x2

    move/from16 v11, v19

    move-object v6, v12

    move v12, v1

    move-object/from16 v24, v13

    move-object/from16 v13, p1

    move-object/from16 v25, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v22

    move-object/from16 v16, v23

    invoke-static/range {v8 .. v16}, Lwn/H;->l(IIIIILwn/c;[I[ILjava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4
    move-object/from16 v20, v9

    move v3, v10

    move-object v6, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v4, v16

    const/4 v5, 0x2

    :cond_5
    :goto_6
    add-int/lit8 v2, v2, 0x3

    move-object/from16 v15, p1

    move v10, v3

    move/from16 v16, v4

    move-object v12, v6

    move-object/from16 v9, v20

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    goto/16 :goto_5

    :cond_6
    move-object/from16 v20, v9

    move v3, v10

    move-object v6, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move/from16 v4, v16

    const/4 v5, 0x2

    invoke-virtual {v7, v0}, Lwn/N;->g(Ljava/lang/String;)V

    move-object/from16 v15, p1

    move v8, v1

    move v1, v3

    move v11, v5

    move/from16 v0, v19

    move-object/from16 v21, v20

    goto/16 :goto_2

    :cond_7
    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v20, v21

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/16 v0, 0x40

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    invoke-static/range {v0 .. v6}, Lwn/H;->k(IILwn/c;[I[ILjava/util/List;Z)[I

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lwn/N;->g(Ljava/lang/String;)V

    const-string v9, "REGIONS_FILTER"

    invoke-virtual {v7, v9}, Lwn/N;->f(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v8

    move-object/from16 v4, p1

    move-object/from16 v5, v20

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lwn/H;->p(Lwn/N;IIILwn/c;[ILjava/util/List;)I

    move-result v0

    move-object/from16 v1, p1

    iput v0, v1, Lwn/c;->h:I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rcBuildRegions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " overlapping regions."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lwn/N;->h(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v7, v9}, Lwn/N;->g(Ljava/lang/String;)V

    move/from16 v0, v17

    :goto_7
    iget v2, v1, Lwn/c;->c:I

    if-ge v0, v2, :cond_9

    iget-object v2, v1, Lwn/c;->n:[Lwn/d;

    aget-object v2, v2, v0

    aget v3, v20, v0

    iput v3, v2, Lwn/d;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static h(Lwn/N;Lwn/c;II)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "chf",
            "minRegionArea",
            "mergeRegionArea"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v9, "REGIONS"

    invoke-virtual {v7, v9}, Lwn/N;->f(Ljava/lang/String;)V

    iget v10, v8, Lwn/c;->a:I

    iget v11, v8, Lwn/c;->b:I

    iget v12, v8, Lwn/c;->f:I

    iget v0, v8, Lwn/c;->c:I

    new-array v13, v0, [I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v14, v0, [Lwn/H$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lwn/H$b;

    invoke-direct {v2}, Lwn/H$b;-><init>()V

    aput-object v2, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x2

    const/4 v6, 0x3

    const/16 v17, 0x1

    if-lez v12, :cond_1

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v18

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v19

    sget v0, Lwn/u;->e:I

    or-int/lit8 v4, v0, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    move/from16 v1, v18

    move v3, v11

    move-object/from16 v5, p1

    move v15, v6

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    sub-int v0, v10, v18

    sget v1, Lwn/u;->e:I

    or-int v4, v16, v1

    move v1, v10

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    sget v0, Lwn/u;->e:I

    or-int v4, v15, v0

    const/4 v0, 0x0

    move/from16 v3, v19

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    sub-int v2, v11, v19

    sget v0, Lwn/u;->e:I

    const/4 v1, 0x4

    or-int v4, v1, v0

    const/4 v0, 0x0

    move v1, v10

    move v3, v11

    invoke-static/range {v0 .. v6}, Lwn/H;->r(IIIIILwn/c;[I)V

    const/4 v0, 0x5

    goto :goto_1

    :cond_1
    move v15, v6

    move/from16 v0, v17

    :goto_1
    const/16 v1, 0x400

    new-array v1, v1, [I

    move v3, v0

    move v0, v12

    :goto_2
    sub-int v2, v11, v12

    if-ge v0, v2, :cond_11

    array-length v2, v1

    mul-int/lit8 v4, v3, 0x2

    if-ge v2, v4, :cond_2

    new-array v1, v4, [I

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    :goto_3
    move v2, v12

    move/from16 v4, v17

    :goto_4
    sub-int v5, v10, v12

    if-ge v2, v5, :cond_b

    iget-object v5, v8, Lwn/c;->m:[Lwn/b;

    mul-int v18, v0, v10

    add-int v18, v2, v18

    aget-object v5, v5, v18

    iget v6, v5, Lwn/b;->a:I

    iget v5, v5, Lwn/b;->b:I

    add-int/2addr v5, v6

    :goto_5
    if-ge v6, v5, :cond_a

    iget-object v15, v8, Lwn/c;->n:[Lwn/d;

    aget-object v15, v15, v6

    move/from16 v21, v5

    iget-object v5, v8, Lwn/c;->p:[I

    aget v5, v5, v6

    if-nez v5, :cond_3

    move/from16 v22, v11

    move/from16 v23, v12

    goto/16 :goto_b

    :cond_3
    move/from16 v22, v11

    const/4 v5, 0x0

    invoke-static {v15, v5}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    move/from16 v23, v12

    const/16 v12, 0x3f

    if-eq v11, v12, :cond_4

    invoke-static {v5}, Lwn/r;->b(I)I

    move-result v11

    add-int/2addr v11, v2

    invoke-static {v5}, Lwn/r;->c(I)I

    move-result v20

    add-int v20, v0, v20

    iget-object v12, v8, Lwn/c;->m:[Lwn/b;

    mul-int v20, v20, v10

    add-int v11, v11, v20

    aget-object v11, v12, v11

    iget v11, v11, Lwn/b;->a:I

    invoke-static {v15, v5}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    add-int/2addr v11, v12

    aget v5, v13, v11

    sget v12, Lwn/u;->e:I

    and-int/2addr v12, v5

    if-nez v12, :cond_4

    iget-object v12, v8, Lwn/c;->p:[I

    move/from16 v24, v5

    aget v5, v12, v6

    aget v11, v12, v11

    if-ne v5, v11, :cond_4

    goto :goto_6

    :cond_4
    const/16 v24, 0x0

    :goto_6
    if-nez v24, :cond_5

    add-int/lit8 v5, v4, 0x1

    aget-object v11, v14, v4

    iput v4, v11, Lwn/H$b;->a:I

    const/4 v12, 0x0

    iput v12, v11, Lwn/H$b;->c:I

    iput v12, v11, Lwn/H$b;->d:I

    :goto_7
    const/4 v11, 0x3

    goto :goto_8

    :cond_5
    move v5, v4

    move/from16 v4, v24

    goto :goto_7

    :goto_8
    invoke-static {v15, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    move/from16 v19, v5

    const/16 v5, 0x3f

    if-eq v12, v5, :cond_9

    invoke-static {v11}, Lwn/r;->b(I)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v11}, Lwn/r;->c(I)I

    move-result v12

    add-int/2addr v12, v0

    iget-object v11, v8, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v12, v10

    add-int/2addr v5, v12

    aget-object v5, v11, v5

    iget v5, v5, Lwn/b;->a:I

    const/4 v11, 0x3

    invoke-static {v15, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    add-int/2addr v5, v12

    aget v12, v13, v5

    if-eqz v12, :cond_9

    sget v15, Lwn/u;->e:I

    and-int/2addr v15, v12

    if-nez v15, :cond_9

    iget-object v15, v8, Lwn/c;->p:[I

    aget v11, v15, v6

    aget v5, v15, v5

    if-ne v11, v5, :cond_9

    aget-object v5, v14, v4

    iget v11, v5, Lwn/H$b;->d:I

    if-eqz v11, :cond_7

    if-ne v11, v12, :cond_6

    goto :goto_9

    :cond_6
    const v11, 0xffff

    iput v11, v5, Lwn/H$b;->d:I

    goto :goto_a

    :cond_7
    :goto_9
    iput v12, v5, Lwn/H$b;->d:I

    iget v11, v5, Lwn/H$b;->c:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v5, Lwn/H$b;->c:I

    array-length v5, v1

    if-gt v5, v12, :cond_8

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_8
    aget v5, v1, v12

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v12

    :cond_9
    :goto_a
    aput v4, v13, v6

    move/from16 v4, v19

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v21

    move/from16 v11, v22

    move/from16 v12, v23

    const/4 v15, 0x3

    goto/16 :goto_5

    :cond_a
    move/from16 v22, v11

    move/from16 v23, v12

    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x3

    goto/16 :goto_4

    :cond_b
    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v2, v17

    :goto_c
    if-ge v2, v4, :cond_d

    aget-object v6, v14, v2

    iget v11, v6, Lwn/H$b;->d:I

    const v12, 0xffff

    if-eq v11, v12, :cond_c

    if-eqz v11, :cond_c

    aget v15, v1, v11

    iget v12, v6, Lwn/H$b;->c:I

    if-ne v15, v12, :cond_c

    iput v11, v6, Lwn/H$b;->b:I

    goto :goto_d

    :cond_c
    add-int/lit8 v11, v3, 0x1

    iput v3, v6, Lwn/H$b;->b:I

    move v3, v11

    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    move/from16 v2, v23

    :goto_e
    if-ge v2, v5, :cond_10

    iget-object v6, v8, Lwn/c;->m:[Lwn/b;

    mul-int v11, v0, v10

    add-int/2addr v11, v2

    aget-object v6, v6, v11

    iget v11, v6, Lwn/b;->a:I

    iget v6, v6, Lwn/b;->b:I

    add-int/2addr v6, v11

    :goto_f
    if-ge v11, v6, :cond_f

    aget v12, v13, v11

    if-lez v12, :cond_e

    if-ge v12, v4, :cond_e

    aget-object v12, v14, v12

    iget v12, v12, Lwn/H$b;->b:I

    aput v12, v13, v11

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_10
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v22

    move/from16 v12, v23

    const/4 v15, 0x3

    goto/16 :goto_2

    :cond_11
    const-string v10, "REGIONS_FILTER"

    invoke-virtual {v7, v10}, Lwn/N;->f(Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p1

    move-object v5, v13

    invoke-static/range {v0 .. v6}, Lwn/H;->p(Lwn/N;IIILwn/c;[ILjava/util/List;)I

    move-result v0

    iput v0, v8, Lwn/c;->h:I

    invoke-virtual {v7, v10}, Lwn/N;->g(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_10
    iget v0, v8, Lwn/c;->c:I

    if-ge v15, v0, :cond_12

    iget-object v0, v8, Lwn/c;->n:[Lwn/d;

    aget-object v0, v0, v15

    aget v1, v13, v15

    iput v1, v0, Lwn/d;->b:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    :cond_12
    invoke-virtual {v7, v9}, Lwn/N;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Lwn/c;[I)I
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "chf",
            "src"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lwn/c;->a:I

    iget v2, v0, Lwn/c;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, v0, Lwn/c;->c:I

    if-ge v4, v5, :cond_0

    const v5, 0xffff

    aput v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    const/16 v5, 0x3f

    if-ge v4, v2, :cond_6

    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_5

    iget-object v7, v0, Lwn/c;->m:[Lwn/b;

    mul-int v8, v4, v1

    add-int/2addr v8, v6

    aget-object v7, v7, v8

    iget v8, v7, Lwn/b;->a:I

    iget v7, v7, Lwn/b;->b:I

    add-int/2addr v7, v8

    :goto_3
    if-ge v8, v7, :cond_4

    iget-object v9, v0, Lwn/c;->n:[Lwn/d;

    aget-object v9, v9, v8

    iget-object v10, v0, Lwn/c;->p:[I

    aget v10, v10, v8

    move v11, v3

    move v12, v11

    :goto_4
    const/4 v13, 0x4

    if-ge v11, v13, :cond_2

    invoke-static {v9, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    if-eq v13, v5, :cond_1

    invoke-static {v11}, Lwn/r;->b(I)I

    move-result v13

    add-int/2addr v13, v6

    invoke-static {v11}, Lwn/r;->c(I)I

    move-result v14

    add-int/2addr v14, v4

    iget-object v15, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v14, v1

    add-int/2addr v13, v14

    aget-object v13, v15, v13

    iget v13, v13, Lwn/b;->a:I

    invoke-static {v9, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v14

    add-int/2addr v13, v14

    iget-object v14, v0, Lwn/c;->p:[I

    aget v13, v14, v13

    if-ne v10, v13, :cond_1

    add-int/lit8 v12, v12, 0x1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    if-eq v12, v13, :cond_3

    aput v3, p1, v8

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_d

    move v7, v3

    :goto_6
    if-ge v7, v1, :cond_c

    iget-object v8, v0, Lwn/c;->m:[Lwn/b;

    mul-int v9, v4, v1

    add-int/2addr v9, v7

    aget-object v8, v8, v9

    iget v9, v8, Lwn/b;->a:I

    iget v8, v8, Lwn/b;->b:I

    add-int/2addr v8, v9

    :goto_7
    if-ge v9, v8, :cond_b

    iget-object v10, v0, Lwn/c;->n:[Lwn/d;

    aget-object v10, v10, v9

    invoke-static {v10, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v5, :cond_8

    invoke-static {v3}, Lwn/r;->b(I)I

    move-result v11

    add-int/2addr v11, v7

    invoke-static {v3}, Lwn/r;->c(I)I

    move-result v13

    add-int/2addr v13, v4

    iget-object v14, v0, Lwn/c;->m:[Lwn/b;

    mul-int v15, v13, v1

    add-int/2addr v15, v11

    aget-object v14, v14, v15

    iget v14, v14, Lwn/b;->a:I

    invoke-static {v10, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    add-int/2addr v14, v15

    iget-object v15, v0, Lwn/c;->n:[Lwn/d;

    aget-object v15, v15, v14

    aget v14, p1, v14

    add-int/lit8 v3, v14, 0x2

    aget v6, p1, v9

    if-ge v3, v6, :cond_7

    add-int/lit8 v14, v14, 0x2

    aput v14, p1, v9

    :cond_7
    invoke-static {v15, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    if-eq v3, v5, :cond_8

    invoke-static {v12}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v11, v3

    invoke-static {v12}, Lwn/r;->c(I)I

    move-result v3

    add-int/2addr v13, v3

    iget-object v3, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v13, v1

    add-int/2addr v11, v13

    aget-object v3, v3, v11

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v15, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    add-int/2addr v3, v6

    aget v3, p1, v3

    add-int/lit8 v6, v3, 0x3

    aget v11, p1, v9

    if-ge v6, v11, :cond_8

    add-int/lit8 v3, v3, 0x3

    aput v3, p1, v9

    :cond_8
    invoke-static {v10, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    if-eq v3, v5, :cond_a

    invoke-static {v12}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v3, v7

    invoke-static {v12}, Lwn/r;->c(I)I

    move-result v6

    add-int/2addr v6, v4

    iget-object v11, v0, Lwn/c;->m:[Lwn/b;

    mul-int v13, v6, v1

    add-int/2addr v13, v3

    aget-object v11, v11, v13

    iget v11, v11, Lwn/b;->a:I

    invoke-static {v10, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    add-int/2addr v11, v10

    iget-object v10, v0, Lwn/c;->n:[Lwn/d;

    aget-object v10, v10, v11

    aget v11, p1, v11

    add-int/lit8 v12, v11, 0x2

    aget v13, p1, v9

    if-ge v12, v13, :cond_9

    add-int/lit8 v11, v11, 0x2

    aput v11, p1, v9

    :cond_9
    const/4 v11, 0x2

    invoke-static {v10, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    if-eq v12, v5, :cond_a

    invoke-static {v11}, Lwn/r;->b(I)I

    move-result v12

    add-int/2addr v3, v12

    invoke-static {v11}, Lwn/r;->c(I)I

    move-result v12

    add-int/2addr v6, v12

    iget-object v12, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v6, v1

    add-int/2addr v3, v6

    aget-object v3, v12, v3

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v10, v11}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    add-int/2addr v3, v6

    aget v3, p1, v3

    add-int/lit8 v6, v3, 0x3

    aget v10, p1, v9

    if-ge v6, v10, :cond_a

    add-int/lit8 v3, v3, 0x3

    aput v3, p1, v9

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_d
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_8
    if-ltz v2, :cond_15

    add-int/lit8 v4, v1, -0x1

    :goto_9
    if-ltz v4, :cond_14

    iget-object v6, v0, Lwn/c;->m:[Lwn/b;

    mul-int v7, v2, v1

    add-int/2addr v7, v4

    aget-object v6, v6, v7

    iget v7, v6, Lwn/b;->a:I

    iget v6, v6, Lwn/b;->b:I

    add-int/2addr v6, v7

    :goto_a
    if-ge v7, v6, :cond_13

    iget-object v8, v0, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v7

    const/4 v9, 0x2

    invoke-static {v8, v9}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    if-eq v10, v5, :cond_f

    invoke-static {v9}, Lwn/r;->b(I)I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v9}, Lwn/r;->c(I)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, v0, Lwn/c;->m:[Lwn/b;

    mul-int v13, v11, v1

    add-int/2addr v13, v10

    aget-object v12, v12, v13

    iget v12, v12, Lwn/b;->a:I

    invoke-static {v8, v9}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    add-int/2addr v12, v13

    iget-object v13, v0, Lwn/c;->n:[Lwn/d;

    aget-object v13, v13, v12

    aget v12, p1, v12

    add-int/lit8 v14, v12, 0x2

    aget v15, p1, v7

    if-ge v14, v15, :cond_e

    add-int/lit8 v12, v12, 0x2

    aput v12, p1, v7

    :cond_e
    invoke-static {v13, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v12

    if-eq v12, v5, :cond_f

    invoke-static {v3}, Lwn/r;->b(I)I

    move-result v12

    add-int/2addr v10, v12

    invoke-static {v3}, Lwn/r;->c(I)I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v11, v1

    add-int/2addr v10, v11

    aget-object v10, v12, v10

    iget v10, v10, Lwn/b;->a:I

    invoke-static {v13, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v11

    add-int/2addr v10, v11

    aget v10, p1, v10

    add-int/lit8 v11, v10, 0x3

    aget v12, p1, v7

    if-ge v11, v12, :cond_f

    add-int/lit8 v10, v10, 0x3

    aput v10, p1, v7

    :cond_f
    invoke-static {v8, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    if-eq v10, v5, :cond_11

    invoke-static {v3}, Lwn/r;->b(I)I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v3}, Lwn/r;->c(I)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v12, v0, Lwn/c;->m:[Lwn/b;

    mul-int v13, v11, v1

    add-int/2addr v13, v10

    aget-object v12, v12, v13

    iget v12, v12, Lwn/b;->a:I

    invoke-static {v8, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    add-int/2addr v12, v8

    iget-object v8, v0, Lwn/c;->n:[Lwn/d;

    aget-object v8, v8, v12

    aget v12, p1, v12

    add-int/lit8 v13, v12, 0x2

    aget v14, p1, v7

    if-ge v13, v14, :cond_10

    add-int/lit8 v12, v12, 0x2

    aput v12, p1, v7

    :cond_10
    const/4 v12, 0x0

    invoke-static {v8, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    if-eq v13, v5, :cond_12

    invoke-static {v12}, Lwn/r;->b(I)I

    move-result v13

    add-int/2addr v10, v13

    invoke-static {v12}, Lwn/r;->c(I)I

    move-result v13

    add-int/2addr v11, v13

    iget-object v13, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v11, v1

    add-int/2addr v10, v11

    aget-object v10, v13, v10

    iget v10, v10, Lwn/b;->a:I

    invoke-static {v8, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    add-int/2addr v10, v8

    aget v8, p1, v10

    add-int/lit8 v10, v8, 0x3

    aget v11, p1, v7

    if-ge v10, v11, :cond_12

    add-int/lit8 v8, v8, 0x3

    aput v8, p1, v7

    goto :goto_b

    :cond_11
    const/4 v12, 0x0

    :cond_12
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_13
    const/4 v9, 0x2

    const/4 v12, 0x0

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_9

    :cond_14
    const/4 v9, 0x2

    const/4 v12, 0x0

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_8

    :cond_15
    const/4 v12, 0x0

    move v3, v12

    :goto_c
    iget v1, v0, Lwn/c;->c:I

    if-ge v3, v1, :cond_16

    aget v1, p1, v3

    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    return v12
.end method

.method public static j(Lwn/H$a;Lwn/H$a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rega",
            "regb"
        }
    .end annotation

    iget v0, p0, Lwn/H$a;->c:I

    iget v1, p1, Lwn/H$a;->c:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v1, v0

    :goto_0
    iget-object v3, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lwn/H$a;->b:I

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-le v1, v0, :cond_3

    return v2

    :cond_3
    move v1, v2

    :goto_1
    iget-object v3, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p1, Lwn/H$a;->b:I

    if-ne v3, v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public static k(IILwn/c;[I[ILjava/util/List;Z)[I
    .locals 20
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
            "maxIter",
            "level",
            "chf",
            "srcReg",
            "srcDist",
            "stack",
            "fillStack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lwn/c;",
            "[I[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)[I"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    iget v3, v1, Lwn/c;->a:I

    iget v4, v1, Lwn/c;->b:I

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz p6, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_2

    iget-object v9, v1, Lwn/c;->m:[Lwn/b;

    mul-int v10, v7, v3

    add-int/2addr v10, v8

    aget-object v9, v9, v10

    iget v10, v9, Lwn/b;->a:I

    iget v9, v9, Lwn/b;->b:I

    add-int/2addr v9, v10

    :goto_2
    if-ge v10, v9, :cond_1

    iget-object v11, v1, Lwn/c;->o:[I

    aget v11, v11, v10

    if-lt v11, v0, :cond_0

    aget v11, p3, v10

    if-nez v11, :cond_0

    iget-object v11, v1, Lwn/c;->p:[I

    aget v11, v11, v10

    if-eqz v11, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    add-int/lit8 v7, v4, 0x2

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v8, p3, v8

    if-eqz v8, :cond_4

    invoke-interface {v2, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v4, v4, 0x3

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_4
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_11

    invoke-interface {v4}, Ljava/util/List;->clear()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_5
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_c

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int/lit8 v11, v8, 0x1

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v12, v8, 0x2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gez v14, :cond_6

    add-int/lit8 v9, v9, 0x1

    move/from16 p6, v7

    move/from16 v16, v8

    goto/16 :goto_8

    :cond_6
    aget v15, p3, v14

    iget-object v6, v1, Lwn/c;->p:[I

    aget v6, v6, v14

    move/from16 p6, v15

    iget-object v15, v1, Lwn/c;->n:[Lwn/d;

    aget-object v14, v15, v14

    const v15, 0xffff

    move/from16 v16, v8

    const/4 v0, 0x0

    move/from16 v19, v15

    move/from16 v15, p6

    move/from16 p6, v7

    move/from16 v7, v19

    :goto_6
    const/4 v8, 0x4

    if-ge v0, v8, :cond_a

    invoke-static {v14, v0}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    move/from16 v17, v9

    const/16 v9, 0x3f

    if-ne v8, v9, :cond_7

    move/from16 v18, v10

    goto :goto_7

    :cond_7
    invoke-static {v0}, Lwn/r;->b(I)I

    move-result v8

    add-int/2addr v8, v10

    invoke-static {v0}, Lwn/r;->c(I)I

    move-result v9

    add-int/2addr v9, v11

    move/from16 v18, v10

    iget-object v10, v1, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    aget-object v8, v10, v8

    iget v8, v8, Lwn/b;->a:I

    invoke-static {v14, v0}, Lwn/r;->a(Lwn/d;I)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, v1, Lwn/c;->p:[I

    aget v9, v9, v8

    if-eq v9, v6, :cond_8

    goto :goto_7

    :cond_8
    aget v9, p3, v8

    if-lez v9, :cond_9

    sget v10, Lwn/u;->e:I

    and-int/2addr v10, v9

    if-nez v10, :cond_9

    aget v8, p4, v8

    add-int/lit8 v10, v8, 0x2

    if-ge v10, v7, :cond_9

    add-int/lit8 v8, v8, 0x2

    move v7, v8

    move v15, v9

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move/from16 v9, v17

    move/from16 v10, v18

    goto :goto_6

    :cond_a
    move/from16 v17, v9

    if-eqz v15, :cond_b

    invoke-interface {v2, v12, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v9, v17

    goto :goto_8

    :cond_b
    add-int/lit8 v9, v17, 0x1

    :goto_8
    add-int/lit8 v8, v16, 0x3

    move/from16 v0, p1

    move/from16 v7, p6

    goto/16 :goto_5

    :cond_c
    move/from16 p6, v7

    move/from16 v17, v9

    const/4 v0, 0x0

    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_d

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, p3, v6

    add-int/lit8 v7, v0, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, p4, v6

    add-int/lit8 v0, v0, 0x3

    goto :goto_9

    :cond_d
    mul-int/lit8 v9, v17, 0x3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v9, v0, :cond_e

    goto :goto_a

    :cond_e
    if-lez p1, :cond_f

    add-int/lit8 v7, p6, 0x1

    move/from16 v0, p0

    if-lt v7, v0, :cond_10

    goto :goto_a

    :cond_f
    move/from16 v0, p0

    move/from16 v7, p6

    :cond_10
    move/from16 v0, p1

    goto/16 :goto_4

    :cond_11
    :goto_a
    return-object p3
.end method

.method public static l(IIIIILwn/c;[I[ILjava/util/List;)Z
    .locals 18
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
            0x0
        }
        names = {
            "x",
            "y",
            "i",
            "level",
            "r",
            "chf",
            "srcReg",
            "srcDist",
            "stack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Lwn/c;",
            "[I[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p8

    iget v4, v2, Lwn/c;->a:I

    iget-object v5, v2, Lwn/c;->p:[I

    aget v5, v5, p2

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->clear()V

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput v1, p6, p2

    const/4 v6, 0x0

    aput v6, p7, p2

    const/4 v7, 0x2

    if-lt v0, v7, :cond_0

    sub-int/2addr v0, v7

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    move v7, v6

    :goto_1
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-lez v8, :cond_b

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v3, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-interface {v3, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, v2, Lwn/c;->n:[Lwn/d;

    aget-object v11, v11, v8

    move v12, v6

    :goto_2
    const/4 v13, 0x4

    const/16 v14, 0x3f

    if-ge v12, v13, :cond_6

    invoke-static {v11, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    if-eq v15, v14, :cond_5

    invoke-static {v12}, Lwn/r;->b(I)I

    move-result v15

    add-int/2addr v15, v9

    invoke-static {v12}, Lwn/r;->c(I)I

    move-result v16

    add-int v16, v10, v16

    iget-object v13, v2, Lwn/c;->m:[Lwn/b;

    mul-int v17, v16, v4

    add-int v17, v15, v17

    aget-object v13, v13, v17

    iget v13, v13, Lwn/b;->a:I

    invoke-static {v11, v12}, Lwn/r;->a(Lwn/d;I)I

    move-result v17

    add-int v13, v13, v17

    iget-object v6, v2, Lwn/c;->p:[I

    aget v6, v6, v13

    if-eq v6, v5, :cond_1

    goto :goto_3

    :cond_1
    aget v6, p6, v13

    sget v17, Lwn/u;->e:I

    and-int v17, v6, v17

    if-eqz v17, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_3

    if-eq v6, v1, :cond_3

    move v3, v6

    goto :goto_4

    :cond_3
    iget-object v6, v2, Lwn/c;->n:[Lwn/d;

    aget-object v6, v6, v13

    add-int/lit8 v13, v12, 0x1

    and-int/lit8 v13, v13, 0x3

    invoke-static {v6, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    if-eq v3, v14, :cond_5

    invoke-static {v13}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v15, v3

    invoke-static {v13}, Lwn/r;->c(I)I

    move-result v3

    add-int v16, v16, v3

    iget-object v3, v2, Lwn/c;->m:[Lwn/b;

    mul-int v16, v16, v4

    add-int v15, v15, v16

    aget-object v3, v3, v15

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v6, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, v2, Lwn/c;->p:[I

    aget v6, v6, v3

    if-eq v6, v5, :cond_4

    goto :goto_3

    :cond_4
    aget v3, p6, v3

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, p8

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_7

    const/4 v3, 0x0

    aput v3, p6, v8

    move v6, v3

    move-object/from16 v3, p8

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    :goto_5
    const/4 v6, 0x4

    if-ge v3, v6, :cond_a

    invoke-static {v11, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    if-eq v8, v14, :cond_8

    invoke-static {v3}, Lwn/r;->b(I)I

    move-result v8

    add-int/2addr v8, v9

    invoke-static {v3}, Lwn/r;->c(I)I

    move-result v12

    add-int/2addr v12, v10

    iget-object v13, v2, Lwn/c;->m:[Lwn/b;

    mul-int v15, v12, v4

    add-int/2addr v15, v8

    aget-object v13, v13, v15

    iget v13, v13, Lwn/b;->a:I

    invoke-static {v11, v3}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    add-int/2addr v13, v15

    iget-object v15, v2, Lwn/c;->p:[I

    aget v15, v15, v13

    if-eq v15, v5, :cond_9

    :cond_8
    move-object/from16 v6, p8

    const/4 v15, 0x0

    goto :goto_6

    :cond_9
    iget-object v15, v2, Lwn/c;->o:[I

    aget v15, v15, v13

    if-lt v15, v0, :cond_8

    aget v15, p6, v13

    if-nez v15, :cond_8

    aput v1, p6, v13

    const/4 v15, 0x0

    aput v15, p7, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v6, p8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v3, p8

    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_b
    move v15, v6

    if-lez v7, :cond_c

    move v6, v9

    goto :goto_7

    :cond_c
    move v6, v15

    :goto_7
    return v6
.end method

.method public static m(Lwn/H$a;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reg"
        }
    .end annotation

    iget-object p0, p0, Lwn/H$a;->j:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static n(Lwn/c;[IIIII)Z
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
            "chf",
            "srcReg",
            "x",
            "y",
            "i",
            "dir"
        }
    .end annotation

    iget-object v0, p0, Lwn/c;->n:[Lwn/d;

    aget-object v0, v0, p4

    invoke-static {v0, p5}, Lwn/r;->a(Lwn/d;I)I

    move-result v1

    const/16 v2, 0x3f

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-static {p5}, Lwn/r;->b(I)I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p5}, Lwn/r;->c(I)I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p0, Lwn/c;->m:[Lwn/b;

    iget p0, p0, Lwn/c;->a:I

    mul-int/2addr p3, p0

    add-int/2addr p2, p3

    aget-object p0, v1, p2

    iget p0, p0, Lwn/b;->a:I

    invoke-static {v0, p5}, Lwn/r;->a(Lwn/d;I)I

    move-result p2

    add-int/2addr p0, p2

    aget p0, p1, p0

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    aget p1, p1, p4

    if-ne p0, p1, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static o(Lwn/N;IILwn/c;[ILjava/util/List;)I
    .locals 17
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
            "minRegionArea",
            "maxRegionId",
            "chf",
            "srcReg",
            "overlaps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "II",
            "Lwn/c;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p3

    iget v1, v0, Lwn/c;->a:I

    iget v2, v0, Lwn/c;->b:I

    const/4 v3, 0x1

    add-int/lit8 v4, p2, 0x1

    new-array v5, v4, [Lwn/H$a;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_0

    new-instance v8, Lwn/H$a;

    invoke-direct {v8, v7}, Lwn/H$a;-><init>(I)V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_b

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v1, :cond_a

    iget-object v11, v0, Lwn/c;->m:[Lwn/b;

    mul-int v12, v9, v1

    add-int/2addr v12, v10

    aget-object v11, v11, v12

    invoke-interface {v7}, Ljava/util/List;->clear()V

    iget v12, v11, Lwn/b;->a:I

    iget v11, v11, Lwn/b;->b:I

    add-int/2addr v11, v12

    :goto_3
    if-ge v12, v11, :cond_6

    iget-object v13, v0, Lwn/c;->n:[Lwn/d;

    aget-object v13, v13, v12

    aget v14, p4, v12

    if-eqz v14, :cond_1

    if-lt v14, v4, :cond_2

    :cond_1
    move/from16 v16, v2

    goto :goto_6

    :cond_2
    aget-object v15, v5, v14

    iget v8, v15, Lwn/H$a;->a:I

    add-int/2addr v8, v3

    iput v8, v15, Lwn/H$a;->a:I

    iget-object v8, v0, Lwn/c;->p:[I

    aget v8, v8, v12

    iput v8, v15, Lwn/H$a;->c:I

    iget v8, v15, Lwn/H$a;->h:I

    iget v6, v13, Lwn/d;->a:I

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v15, Lwn/H$a;->h:I

    iget v6, v15, Lwn/H$a;->i:I

    iget v8, v13, Lwn/d;->a:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v15, Lwn/H$a;->i:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_4
    const/4 v8, 0x4

    if-ge v6, v8, :cond_1

    invoke-static {v13, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v8

    const/16 v3, 0x3f

    if-eq v8, v3, :cond_4

    invoke-static {v6}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v3, v10

    invoke-static {v6}, Lwn/r;->c(I)I

    move-result v8

    add-int/2addr v8, v9

    move/from16 v16, v2

    iget-object v2, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v8, v1

    add-int/2addr v3, v8

    aget-object v2, v2, v3

    iget v2, v2, Lwn/b;->a:I

    invoke-static {v13, v6}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    add-int/2addr v2, v3

    aget v2, p4, v2

    if-lez v2, :cond_3

    if-ge v2, v4, :cond_3

    if-eq v2, v14, :cond_3

    invoke-static {v15, v2}, Lwn/H;->a(Lwn/H$a;I)V

    :cond_3
    sget v3, Lwn/u;->e:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, v15, Lwn/H$a;->g:Z

    goto :goto_5

    :cond_4
    move/from16 v16, v2

    :cond_5
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    const/4 v3, 0x1

    goto :goto_4

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    const/4 v3, 0x1

    const/16 v8, 0x20

    goto :goto_3

    :cond_6
    move/from16 v16, v2

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    move v6, v3

    :goto_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_8

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v8, v11, :cond_7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v5, v8

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v5, v11

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v8, v12}, Lwn/H;->b(Lwn/H$a;I)V

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v11, v8}, Lwn/H;->b(Lwn/H$a;I)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_8
    move v2, v3

    goto :goto_7

    :cond_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    const/4 v3, 0x1

    const/16 v8, 0x20

    goto/16 :goto_2

    :cond_a
    move/from16 v16, v2

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    const/16 v8, 0x20

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_c

    aget-object v2, v5, v1

    const/4 v3, 0x0

    iput v3, v2, Lwn/H$a;->b:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_a
    if-ge v2, v4, :cond_17

    aget-object v6, v5, v2

    iget v7, v6, Lwn/H$a;->b:I

    if-eqz v7, :cond_d

    goto/16 :goto_11

    :cond_d
    iput v3, v6, Lwn/H$a;->b:I

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16

    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, v5, v7

    iget-object v8, v7, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_e

    iget-object v10, v7, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v12, v5, v11

    iget v13, v12, Lwn/H$a;->b:I

    if-eqz v13, :cond_f

    goto/16 :goto_10

    :cond_f
    iget v13, v7, Lwn/H$a;->c:I

    iget v14, v12, Lwn/H$a;->c:I

    if-eq v13, v14, :cond_10

    goto :goto_10

    :cond_10
    const/4 v13, 0x0

    :goto_c
    iget-object v14, v6, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_12

    iget-object v14, v6, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v11, :cond_11

    goto :goto_10

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_12
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v3, v12, Lwn/H$a;->b:I

    const/4 v10, 0x0

    :goto_d
    iget-object v11, v12, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_13

    iget-object v11, v12, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v6, v11}, Lwn/H;->b(Lwn/H$a;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_13
    iget v10, v6, Lwn/H$a;->h:I

    iget v11, v12, Lwn/H$a;->h:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v6, Lwn/H$a;->h:I

    iget v10, v6, Lwn/H$a;->i:I

    iget v11, v12, Lwn/H$a;->i:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v6, Lwn/H$a;->i:I

    iget v10, v6, Lwn/H$a;->a:I

    iget v11, v12, Lwn/H$a;->a:I

    add-int/2addr v10, v11

    iput v10, v6, Lwn/H$a;->a:I

    const/4 v10, 0x0

    iput v10, v12, Lwn/H$a;->a:I

    iget-boolean v10, v6, Lwn/H$a;->g:Z

    if-nez v10, :cond_15

    iget-boolean v10, v12, Lwn/H$a;->g:Z

    if-eqz v10, :cond_14

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/4 v10, 0x1

    :goto_f
    iput-boolean v10, v6, Lwn/H$a;->g:Z

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_b

    :cond_16
    add-int/lit8 v3, v3, 0x1

    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_17
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v4, :cond_1a

    aget-object v2, v5, v1

    iget v3, v2, Lwn/H$a;->a:I

    move/from16 v6, p1

    if-lez v3, :cond_19

    if-ge v3, v6, :cond_19

    iget-boolean v3, v2, Lwn/H$a;->g:Z

    if-nez v3, :cond_19

    iget v2, v2, Lwn/H$a;->b:I

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v4, :cond_19

    aget-object v7, v5, v3

    iget v8, v7, Lwn/H$a;->b:I

    if-ne v8, v2, :cond_18

    const/4 v8, 0x0

    iput v8, v7, Lwn/H$a;->b:I

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1a
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v4, :cond_1d

    aget-object v1, v5, v3

    const/4 v2, 0x0

    iput-boolean v2, v1, Lwn/H$a;->d:Z

    iget v2, v1, Lwn/H$a;->b:I

    if-nez v2, :cond_1b

    :goto_15
    const/4 v2, 0x1

    goto :goto_16

    :cond_1b
    sget v6, Lwn/u;->e:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_1c

    goto :goto_15

    :cond_1c
    const/4 v2, 0x1

    iput-boolean v2, v1, Lwn/H$a;->d:Z

    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1d
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v4, :cond_21

    aget-object v2, v5, v3

    iget-boolean v6, v2, Lwn/H$a;->d:Z

    if-nez v6, :cond_1f

    :cond_1e
    const/4 v8, 0x0

    goto :goto_1a

    :cond_1f
    iget v2, v2, Lwn/H$a;->b:I

    add-int/lit8 v1, v1, 0x1

    move v6, v3

    :goto_18
    if-ge v6, v4, :cond_1e

    aget-object v7, v5, v6

    iget v8, v7, Lwn/H$a;->b:I

    if-ne v8, v2, :cond_20

    iput v1, v7, Lwn/H$a;->b:I

    const/4 v8, 0x0

    iput-boolean v8, v7, Lwn/H$a;->d:Z

    goto :goto_19

    :cond_20
    const/4 v8, 0x0

    :goto_19
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_21
    const/4 v8, 0x0

    move v6, v8

    :goto_1b
    iget v2, v0, Lwn/c;->c:I

    if-ge v6, v2, :cond_23

    aget v2, p4, v6

    sget v3, Lwn/u;->e:I

    and-int/2addr v3, v2

    if-nez v3, :cond_22

    aget-object v2, v5, v2

    iget v2, v2, Lwn/H$a;->b:I

    aput v2, p4, v6

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_23
    return v1
.end method

.method public static p(Lwn/N;IIILwn/c;[ILjava/util/List;)I
    .locals 20
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
            "ctx",
            "minRegionArea",
            "mergeRegionSize",
            "maxRegionId",
            "chf",
            "srcReg",
            "overlaps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwn/N;",
            "III",
            "Lwn/c;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v7, p4

    iget v8, v7, Lwn/c;->a:I

    iget v9, v7, Lwn/c;->b:I

    const/4 v10, 0x1

    add-int/lit8 v11, p3, 0x1

    new-array v12, v11, [Lwn/H$a;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v11, :cond_0

    new-instance v1, Lwn/H$a;

    invoke-direct {v1, v0}, Lwn/H$a;-><init>(I)V

    aput-object v1, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v9, :cond_e

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v8, :cond_d

    iget-object v0, v7, Lwn/c;->m:[Lwn/b;

    mul-int v1, v14, v8

    add-int/2addr v1, v15

    aget-object v6, v0, v1

    iget v0, v6, Lwn/b;->a:I

    iget v1, v6, Lwn/b;->b:I

    add-int v5, v0, v1

    move v4, v0

    :goto_3
    if-ge v4, v5, :cond_c

    aget v0, p5, v4

    if-eqz v0, :cond_1

    if-lt v0, v11, :cond_3

    :cond_1
    :goto_4
    move/from16 v17, v4

    move/from16 v18, v5

    :cond_2
    move-object v13, v6

    goto/16 :goto_9

    :cond_3
    aget-object v3, v12, v0

    iget v1, v3, Lwn/H$a;->a:I

    add-int/2addr v1, v10

    iput v1, v3, Lwn/H$a;->a:I

    iget v1, v6, Lwn/b;->a:I

    :goto_5
    if-ge v1, v5, :cond_8

    if-ne v4, v1, :cond_4

    goto :goto_6

    :cond_4
    aget v2, p5, v1

    if-eqz v2, :cond_7

    if-lt v2, v11, :cond_5

    goto :goto_6

    :cond_5
    if-ne v2, v0, :cond_6

    iput-boolean v10, v3, Lwn/H$a;->f:Z

    :cond_6
    invoke-static {v3, v2}, Lwn/H;->b(Lwn/H$a;I)V

    :cond_7
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    iget-object v0, v3, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, v7, Lwn/c;->p:[I

    aget v0, v0, v4

    iput v0, v3, Lwn/H$a;->c:I

    const/4 v2, 0x0

    :goto_7
    const/4 v0, 0x4

    const/4 v1, -0x1

    if-ge v2, v0, :cond_b

    move-object/from16 v0, p4

    move v13, v1

    move-object/from16 v1, p5

    move/from16 v16, v2

    move v2, v15

    move-object v10, v3

    move v3, v14

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lwn/H;->n(Lwn/c;[IIIII)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v3, v16

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v16, 0x1

    move-object v3, v10

    move/from16 v4, v17

    move/from16 v5, v18

    const/4 v10, 0x1

    goto :goto_7

    :cond_b
    move v13, v1

    move-object v10, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v3, v13

    :goto_8
    if-eq v3, v13, :cond_2

    iget-object v10, v10, Lwn/H$a;->j:Ljava/util/List;

    move v0, v15

    move v1, v14

    move/from16 v2, v17

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v13, v6

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lwn/H;->v(IIIILwn/c;[ILjava/util/List;)V

    :goto_9
    add-int/lit8 v4, v17, 0x1

    move-object v6, v13

    move/from16 v5, v18

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v15, v15, 0x1

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v11, :cond_1a

    aget-object v3, v12, v1

    iget v4, v3, Lwn/H$a;->b:I

    if-eqz v4, :cond_f

    sget v5, Lwn/u;->e:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_10

    :cond_f
    :goto_b
    move/from16 v4, p1

    goto/16 :goto_10

    :cond_10
    iget v4, v3, Lwn/H$a;->a:I

    if-nez v4, :cond_11

    goto :goto_b

    :cond_11
    iget-boolean v4, v3, Lwn/H$a;->e:Z

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v4, 0x1

    iput-boolean v4, v3, Lwn/H$a;->e:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_18

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v12, v6

    iget v8, v6, Lwn/H$a;->a:I

    add-int/2addr v3, v8

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_d
    iget-object v8, v6, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_17

    iget-object v8, v6, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget v9, Lwn/u;->e:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_13

    const/4 v5, 0x1

    goto :goto_e

    :cond_13
    iget-object v8, v6, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v12, v8

    iget-boolean v9, v8, Lwn/H$a;->e:Z

    if-eqz v9, :cond_14

    goto :goto_e

    :cond_14
    iget v9, v8, Lwn/H$a;->b:I

    if-eqz v9, :cond_16

    sget v10, Lwn/u;->e:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_15

    goto :goto_e

    :cond_15
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    iput-boolean v9, v8, Lwn/H$a;->e:Z

    :cond_16
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_17
    const/4 v4, 0x1

    goto :goto_c

    :cond_18
    move/from16 v4, p1

    if-ge v3, v4, :cond_19

    if-nez v5, :cond_19

    const/4 v3, 0x0

    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_19

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v12, v5

    const/4 v6, 0x0

    iput v6, v5, Lwn/H$a;->a:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v12, v5

    iput v6, v5, Lwn/H$a;->b:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_1a
    :goto_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    if-ge v0, v11, :cond_29

    aget-object v2, v12, v0

    iget v3, v2, Lwn/H$a;->b:I

    if-eqz v3, :cond_1b

    sget v4, Lwn/u;->e:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1c

    :cond_1b
    :goto_13
    move/from16 v4, p2

    goto/16 :goto_18

    :cond_1c
    iget-boolean v3, v2, Lwn/H$a;->f:Z

    if-eqz v3, :cond_1d

    goto :goto_13

    :cond_1d
    iget v3, v2, Lwn/H$a;->a:I

    if-nez v3, :cond_1e

    goto :goto_13

    :cond_1e
    move/from16 v4, p2

    if-le v3, v4, :cond_1f

    invoke-static {v2}, Lwn/H;->m(Lwn/H$a;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto/16 :goto_18

    :cond_1f
    iget v3, v2, Lwn/H$a;->b:I

    const v5, 0xfffffff

    move v6, v5

    move v5, v3

    const/4 v3, 0x0

    :goto_14
    iget-object v8, v2, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_23

    iget-object v8, v2, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget v9, Lwn/u;->e:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_20

    goto :goto_15

    :cond_20
    iget-object v8, v2, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v12, v8

    iget v9, v8, Lwn/H$a;->b:I

    if-eqz v9, :cond_22

    sget v10, Lwn/u;->e:I

    and-int/2addr v9, v10

    if-nez v9, :cond_22

    iget-boolean v9, v8, Lwn/H$a;->f:Z

    if-eqz v9, :cond_21

    goto :goto_15

    :cond_21
    iget v9, v8, Lwn/H$a;->a:I

    if-ge v9, v6, :cond_22

    invoke-static {v2, v8}, Lwn/H;->j(Lwn/H$a;Lwn/H$a;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-static {v8, v2}, Lwn/H;->j(Lwn/H$a;Lwn/H$a;)Z

    move-result v9

    if-eqz v9, :cond_22

    iget v5, v8, Lwn/H$a;->a:I

    iget v6, v8, Lwn/H$a;->b:I

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    :cond_22
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_23
    iget v3, v2, Lwn/H$a;->b:I

    if-eq v5, v3, :cond_28

    aget-object v6, v12, v5

    invoke-static {v6, v2}, Lwn/H;->q(Lwn/H$a;Lwn/H$a;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v11, :cond_27

    aget-object v6, v12, v2

    iget v8, v6, Lwn/H$a;->b:I

    if-eqz v8, :cond_26

    sget v9, Lwn/u;->e:I

    and-int/2addr v9, v8

    if-eqz v9, :cond_24

    goto :goto_17

    :cond_24
    if-ne v8, v3, :cond_25

    iput v5, v6, Lwn/H$a;->b:I

    :cond_25
    invoke-static {v6, v3, v5}, Lwn/H;->t(Lwn/H$a;II)V

    :cond_26
    :goto_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    add-int/lit8 v1, v1, 0x1

    :cond_28
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    :cond_29
    move/from16 v4, p2

    if-gtz v1, :cond_35

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v11, :cond_2c

    aget-object v0, v12, v6

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwn/H$a;->d:Z

    iget v1, v0, Lwn/H$a;->b:I

    if-nez v1, :cond_2a

    :goto_1a
    const/4 v1, 0x1

    goto :goto_1b

    :cond_2a
    sget v2, Lwn/u;->e:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    goto :goto_1a

    :cond_2b
    const/4 v1, 0x1

    iput-boolean v1, v0, Lwn/H$a;->d:Z

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_2c
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v11, :cond_30

    aget-object v1, v12, v6

    iget-boolean v2, v1, Lwn/H$a;->d:Z

    if-nez v2, :cond_2e

    :cond_2d
    const/4 v5, 0x0

    goto :goto_1f

    :cond_2e
    iget v1, v1, Lwn/H$a;->b:I

    add-int/lit8 v0, v0, 0x1

    move v2, v6

    :goto_1d
    if-ge v2, v11, :cond_2d

    aget-object v3, v12, v2

    iget v4, v3, Lwn/H$a;->b:I

    if-ne v4, v1, :cond_2f

    iput v0, v3, Lwn/H$a;->b:I

    const/4 v5, 0x0

    iput-boolean v5, v3, Lwn/H$a;->d:Z

    goto :goto_1e

    :cond_2f
    const/4 v5, 0x0

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :goto_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_30
    const/4 v5, 0x0

    move v6, v5

    :goto_20
    iget v1, v7, Lwn/c;->c:I

    if-ge v6, v1, :cond_32

    aget v1, p5, v6

    sget v2, Lwn/u;->e:I

    and-int/2addr v2, v1

    if-nez v2, :cond_31

    aget-object v1, v12, v1

    iget v1, v1, Lwn/H$a;->b:I

    aput v1, p5, v6

    :cond_31
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_32
    move v13, v5

    :goto_21
    if-ge v13, v11, :cond_34

    aget-object v1, v12, v13

    iget-boolean v2, v1, Lwn/H$a;->f:Z

    if-eqz v2, :cond_33

    iget v1, v1, Lwn/H$a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_33
    move-object/from16 v2, p6

    :goto_22
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    :cond_34
    return v0

    :cond_35
    move-object/from16 v2, p6

    goto/16 :goto_11
.end method

.method public static q(Lwn/H$a;Lwn/H$a;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rega",
            "regb"
        }
    .end annotation

    iget v0, p0, Lwn/H$a;->b:I

    iget v1, p1, Lwn/H$a;->b:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p1, Lwn/H$a;->j:Ljava/util/List;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge v5, v6, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_1
    if-ne v5, v7, :cond_2

    return v4

    :cond_2
    move v1, v4

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v7

    :goto_3
    if-ne v1, v7, :cond_5

    return v4

    :cond_5
    iget-object v0, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move v6, v4

    :goto_4
    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x1

    if-ge v6, v7, :cond_6

    iget-object v7, p0, Lwn/H$a;->j:Ljava/util/List;

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    rem-int/2addr v8, v0

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move v2, v4

    :goto_5
    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Lwn/H$a;->j:Ljava/util/List;

    add-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    rem-int/2addr v6, v0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-static {p0}, Lwn/H;->s(Lwn/H$a;)V

    move v0, v4

    :goto_6
    iget-object v1, p1, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p1, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lwn/H;->b(Lwn/H$a;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget v0, p0, Lwn/H$a;->a:I

    iget v1, p1, Lwn/H$a;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lwn/H$a;->a:I

    iput v4, p1, Lwn/H$a;->a:I

    iget-object p0, p1, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return v8
.end method

.method public static r(IIIIILwn/c;[I)V
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
            "minx",
            "maxx",
            "miny",
            "maxy",
            "regId",
            "chf",
            "srcReg"
        }
    .end annotation

    iget v0, p5, Lwn/c;->a:I

    :goto_0
    if-ge p2, p3, :cond_3

    move v1, p0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v2, p5, Lwn/c;->m:[Lwn/b;

    mul-int v3, p2, v0

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    iget v3, v2, Lwn/b;->a:I

    iget v2, v2, Lwn/b;->b:I

    add-int/2addr v2, v3

    :goto_2
    if-ge v3, v2, :cond_1

    iget-object v4, p5, Lwn/c;->p:[I

    aget v4, v4, v3

    if-eqz v4, :cond_0

    aput p4, p6, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static s(Lwn/H$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reg"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, v1, v2

    iget-object v3, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_0

    iget-object v1, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static t(Lwn/H$a;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reg",
            "oldId",
            "newId"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v2, p0, Lwn/H$a;->j:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lwn/H$a;->k:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p0}, Lwn/H;->s(Lwn/H$a;)V

    :cond_4
    return-void
.end method

.method public static u(ILwn/c;[IILjava/util/List;I)V
    .locals 10
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
            "startLevel",
            "chf",
            "srcReg",
            "nbStacks",
            "stacks",
            "loglevelsPerStack"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lwn/c;",
            "[II",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    iget v0, p1, Lwn/c;->a:I

    iget v1, p1, Lwn/c;->b:I

    shr-int/2addr p0, p5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_0

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_7

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_6

    iget-object v5, p1, Lwn/c;->m:[Lwn/b;

    mul-int v6, v3, v0

    add-int/2addr v6, v4

    aget-object v5, v5, v6

    iget v6, v5, Lwn/b;->a:I

    iget v5, v5, Lwn/b;->b:I

    add-int/2addr v5, v6

    :goto_3
    if-ge v6, v5, :cond_5

    iget-object v7, p1, Lwn/c;->p:[I

    aget v7, v7, v6

    if-eqz v7, :cond_4

    aget v7, p2, v6

    if-eqz v7, :cond_1

    goto :goto_4

    :cond_1
    iget-object v7, p1, Lwn/c;->o:[I

    aget v7, v7, v6

    shr-int/2addr v7, p5

    sub-int v7, p0, v7

    if-lt v7, p3, :cond_2

    goto :goto_4

    :cond_2
    if-gez v7, :cond_3

    move v7, v2

    :cond_3
    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public static v(IIIILwn/c;[ILjava/util/List;)V
    .locals 17
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
            "i",
            "dir",
            "chf",
            "srcReg",
            "cont"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lwn/c;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    iget-object v2, v8, Lwn/c;->n:[Lwn/d;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    const/16 v11, 0x3f

    if-eq v3, v11, :cond_0

    invoke-static/range {p3 .. p3}, Lwn/r;->b(I)I

    move-result v3

    add-int v3, p0, v3

    invoke-static/range {p3 .. p3}, Lwn/r;->c(I)I

    move-result v4

    add-int v4, p1, v4

    iget-object v5, v8, Lwn/c;->m:[Lwn/b;

    iget v6, v8, Lwn/c;->a:I

    mul-int/2addr v4, v6

    add-int/2addr v3, v4

    aget-object v3, v5, v3

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v2, v1}, Lwn/r;->a(Lwn/d;I)I

    move-result v2

    add-int/2addr v3, v2

    aget v2, p5, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v12, p0

    move/from16 v13, p1

    move v15, v0

    move v6, v1

    move v14, v2

    const/4 v2, 0x0

    :goto_1
    const/4 v7, 0x1

    add-int/lit8 v5, v2, 0x1

    const v2, 0x9c40

    if-ge v5, v2, :cond_7

    iget-object v2, v8, Lwn/c;->n:[Lwn/d;

    aget-object v4, v2, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object v10, v4

    move v4, v12

    move/from16 v16, v5

    move v5, v13

    move/from16 p0, v6

    move v6, v15

    move/from16 v7, p0

    invoke-static/range {v2 .. v7}, Lwn/H;->n(Lwn/c;[IIIII)Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v2, p0

    invoke-static {v10, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    if-eq v3, v11, :cond_1

    invoke-static {v2}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v3, v12

    invoke-static {v2}, Lwn/r;->c(I)I

    move-result v4

    add-int/2addr v4, v13

    iget-object v5, v8, Lwn/c;->m:[Lwn/b;

    iget v6, v8, Lwn/c;->a:I

    mul-int/2addr v4, v6

    add-int/2addr v3, v4

    aget-object v3, v5, v3

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v10, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v4

    add-int/2addr v3, v4

    aget v3, p5, v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-eq v3, v14, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v14, v3

    :cond_2
    add-int/lit8 v6, v2, 0x1

    :goto_3
    and-int/lit8 v2, v6, 0x3

    move v6, v2

    goto :goto_5

    :cond_3
    move/from16 v2, p0

    invoke-static {v2}, Lwn/r;->b(I)I

    move-result v3

    add-int/2addr v12, v3

    invoke-static {v2}, Lwn/r;->c(I)I

    move-result v3

    add-int/2addr v13, v3

    invoke-static {v10, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v11, :cond_4

    iget-object v3, v8, Lwn/c;->m:[Lwn/b;

    iget v5, v8, Lwn/c;->a:I

    mul-int/2addr v5, v13

    add-int/2addr v5, v12

    aget-object v3, v3, v5

    iget v3, v3, Lwn/b;->a:I

    invoke-static {v10, v2}, Lwn/r;->a(Lwn/d;I)I

    move-result v5

    add-int/2addr v3, v5

    move v15, v3

    goto :goto_4

    :cond_4
    move v15, v4

    :goto_4
    if-ne v15, v4, :cond_5

    return-void

    :cond_5
    add-int/lit8 v6, v2, 0x3

    goto :goto_3

    :goto_5
    if-ne v0, v15, :cond_6

    if-ne v1, v6, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v2, v16

    goto/16 :goto_1

    :cond_7
    :goto_6
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    const/4 v10, 0x0

    :goto_7
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_9

    add-int/lit8 v0, v10, 0x1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v0, v1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_8

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    move v10, v0

    goto :goto_7

    :cond_9
    return-void
.end method
