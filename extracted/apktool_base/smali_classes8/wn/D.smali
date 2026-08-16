.class public Lwn/D;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn/D$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x3f

.field public static final b:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static b(Lwn/N;Lwn/c;I)Lwn/i;
    .locals 32
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "chf",
            "walkableHeight"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "RC_TIMER_BUILD_LAYERS"

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lwn/N;->f(Ljava/lang/String;)V

    iget v1, v0, Lwn/c;->a:I

    iget v2, v0, Lwn/c;->b:I

    iget v3, v0, Lwn/c;->f:I

    iget v4, v0, Lwn/c;->c:I

    new-array v4, v4, [I

    const/16 v5, 0xff

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    iget v6, v0, Lwn/c;->a:I

    new-array v7, v6, [Lwn/H$b;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    new-instance v10, Lwn/H$b;

    invoke-direct {v10}, Lwn/H$b;-><init>()V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x100

    new-array v9, v6, [I

    move v10, v3

    move v11, v8

    :goto_1
    sub-int v12, v2, v3

    if-ge v10, v12, :cond_11

    invoke-static {v9, v8, v11, v8}, Ljava/util/Arrays;->fill([IIII)V

    move v12, v3

    move v6, v8

    :goto_2
    sub-int v15, v1, v3

    if-ge v12, v15, :cond_9

    iget-object v15, v0, Lwn/c;->m:[Lwn/b;

    mul-int v16, v10, v1

    add-int v16, v12, v16

    aget-object v15, v15, v16

    iget v14, v15, Lwn/b;->a:I

    iget v15, v15, Lwn/b;->b:I

    add-int/2addr v15, v14

    :goto_3
    if-ge v14, v15, :cond_8

    iget-object v5, v0, Lwn/c;->n:[Lwn/d;

    aget-object v5, v5, v14

    iget-object v13, v0, Lwn/c;->p:[I

    aget v13, v13, v14

    if-nez v13, :cond_1

    move/from16 v18, v15

    goto/16 :goto_7

    :cond_1
    invoke-static {v5, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v13

    move/from16 v18, v15

    const/16 v15, 0x3f

    if-eq v13, v15, :cond_2

    invoke-static {v8}, Lwn/r;->b(I)I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v8}, Lwn/r;->c(I)I

    move-result v15

    add-int/2addr v15, v10

    iget-object v8, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v15, v1

    add-int/2addr v13, v15

    aget-object v8, v8, v13

    iget v8, v8, Lwn/b;->a:I

    const/4 v13, 0x0

    invoke-static {v5, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    add-int/2addr v8, v15

    iget-object v13, v0, Lwn/c;->p:[I

    aget v13, v13, v8

    if-eqz v13, :cond_2

    aget v8, v4, v8

    const/16 v13, 0xff

    if-eq v8, v13, :cond_3

    goto :goto_4

    :cond_2
    const/16 v13, 0xff

    :cond_3
    move v8, v13

    :goto_4
    if-ne v8, v13, :cond_4

    add-int/lit8 v8, v6, 0x1

    aget-object v15, v7, v6

    iput v13, v15, Lwn/H$b;->d:I

    const/4 v13, 0x0

    iput v13, v15, Lwn/H$b;->c:I

    const/4 v13, 0x3

    goto :goto_5

    :cond_4
    const/4 v13, 0x3

    move/from16 v31, v8

    move v8, v6

    move/from16 v6, v31

    :goto_5
    invoke-static {v5, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v15

    move/from16 v19, v8

    const/16 v8, 0x3f

    if-eq v15, v8, :cond_7

    invoke-static {v13}, Lwn/r;->b(I)I

    move-result v8

    add-int/2addr v8, v12

    invoke-static {v13}, Lwn/r;->c(I)I

    move-result v15

    add-int/2addr v15, v10

    iget-object v13, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v15, v1

    add-int/2addr v8, v15

    aget-object v8, v13, v8

    iget v8, v8, Lwn/b;->a:I

    const/4 v13, 0x3

    invoke-static {v5, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v5

    add-int/2addr v8, v5

    aget v5, v4, v8

    const/16 v8, 0xff

    if-eq v5, v8, :cond_7

    aget-object v8, v7, v6

    iget v13, v8, Lwn/H$b;->c:I

    if-nez v13, :cond_5

    iput v5, v8, Lwn/H$b;->d:I

    :cond_5
    iget v15, v8, Lwn/H$b;->d:I

    if-ne v15, v5, :cond_6

    add-int/lit8 v13, v13, 0x1

    iput v13, v8, Lwn/H$b;->c:I

    aget v8, v9, v5

    const/4 v13, 0x1

    add-int/2addr v8, v13

    aput v8, v9, v5

    goto :goto_6

    :cond_6
    const/16 v5, 0xff

    iput v5, v8, Lwn/H$b;->d:I

    :cond_7
    :goto_6
    aput v6, v4, v14

    move/from16 v6, v19

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v15, v18

    const/16 v5, 0xff

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v12, v12, 0x1

    const/16 v5, 0xff

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v6, :cond_d

    aget-object v8, v7, v5

    iget v12, v8, Lwn/H$b;->d:I

    const/16 v13, 0xff

    if-eq v12, v13, :cond_b

    aget v14, v9, v12

    iget v13, v8, Lwn/H$b;->c:I

    if-ne v14, v13, :cond_a

    iput v12, v8, Lwn/H$b;->b:I

    goto :goto_a

    :cond_a
    const/16 v12, 0xff

    goto :goto_9

    :cond_b
    move v12, v13

    :goto_9
    if-eq v11, v12, :cond_c

    add-int/lit8 v12, v11, 0x1

    iput v11, v8, Lwn/H$b;->b:I

    move v11, v12

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "rcBuildHeightfieldLayers: Region ID overflow."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v5, v3

    :goto_b
    if-ge v5, v15, :cond_10

    iget-object v6, v0, Lwn/c;->m:[Lwn/b;

    mul-int v8, v10, v1

    add-int/2addr v8, v5

    aget-object v6, v6, v8

    iget v8, v6, Lwn/b;->a:I

    iget v6, v6, Lwn/b;->b:I

    add-int/2addr v6, v8

    :goto_c
    if-ge v8, v6, :cond_f

    aget v12, v4, v8

    const/16 v13, 0xff

    if-eq v12, v13, :cond_e

    aget-object v12, v7, v12

    iget v12, v12, Lwn/H$b;->b:I

    aput v12, v4, v8

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xff

    const/16 v6, 0x100

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_11
    new-array v5, v11, [Lwn/D$a;

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v11, :cond_12

    new-instance v7, Lwn/D$a;

    invoke-direct {v7, v6}, Lwn/D$a;-><init>(I)V

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v2, :cond_1c

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v1, :cond_1b

    iget-object v10, v0, Lwn/c;->m:[Lwn/b;

    mul-int v12, v7, v1

    add-int/2addr v12, v9

    aget-object v10, v10, v12

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget v12, v10, Lwn/b;->a:I

    iget v10, v10, Lwn/b;->b:I

    add-int/2addr v10, v12

    :goto_10
    if-ge v12, v10, :cond_17

    iget-object v13, v0, Lwn/c;->n:[Lwn/d;

    aget-object v13, v13, v12

    aget v14, v4, v12

    const/16 v15, 0xff

    if-ne v14, v15, :cond_13

    move/from16 v20, v2

    move/from16 v19, v10

    goto :goto_13

    :cond_13
    aget-object v15, v5, v14

    iget v8, v15, Lwn/D$a;->d:I

    move/from16 v19, v10

    iget v10, v13, Lwn/d;->a:I

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, v15, Lwn/D$a;->d:I

    aget-object v8, v5, v14

    iget v10, v8, Lwn/D$a;->e:I

    iget v15, v13, Lwn/d;->a:I

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v8, Lwn/D$a;->e:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :goto_11
    const/4 v10, 0x4

    if-ge v8, v10, :cond_16

    invoke-static {v13, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    const/16 v15, 0x3f

    if-eq v10, v15, :cond_14

    invoke-static {v8}, Lwn/r;->b(I)I

    move-result v10

    add-int/2addr v10, v9

    invoke-static {v8}, Lwn/r;->c(I)I

    move-result v15

    add-int/2addr v15, v7

    move/from16 v20, v2

    iget-object v2, v0, Lwn/c;->m:[Lwn/b;

    mul-int/2addr v15, v1

    add-int/2addr v10, v15

    aget-object v2, v2, v10

    iget v2, v2, Lwn/b;->a:I

    invoke-static {v13, v8}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    add-int/2addr v2, v10

    aget v2, v4, v2

    const/16 v10, 0xff

    if-eq v2, v10, :cond_15

    if-eq v2, v14, :cond_15

    aget-object v10, v5, v14

    iget-object v10, v10, Lwn/D$a;->g:Ljava/util/List;

    invoke-static {v10, v2}, Lwn/D;->a(Ljava/util/List;I)V

    goto :goto_12

    :cond_14
    move/from16 v20, v2

    :cond_15
    :goto_12
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v20

    goto :goto_11

    :cond_16
    move/from16 v20, v2

    :goto_13
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v19

    move/from16 v2, v20

    goto :goto_10

    :cond_17
    move/from16 v20, v2

    const/4 v2, 0x0

    :goto_14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    if-ge v2, v8, :cond_1a

    add-int/lit8 v8, v2, 0x1

    move v10, v8

    :goto_15
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_19

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v12, v13, :cond_18

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v5, v12

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v13, v5, v13

    iget-object v12, v12, Lwn/D$a;->f:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v12, v14}, Lwn/D;->a(Ljava/util/List;I)V

    iget-object v12, v13, Lwn/D$a;->f:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v12, v13}, Lwn/D;->a(Ljava/util/List;I)V

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_19
    move v2, v8

    goto :goto_14

    :cond_1a
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v20

    goto/16 :goto_f

    :cond_1b
    move/from16 v20, v2

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_e

    :cond_1c
    move/from16 v20, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_16
    if-ge v6, v11, :cond_24

    aget-object v8, v5, v6

    iget v9, v8, Lwn/D$a;->b:I

    const/16 v10, 0xff

    if-eq v9, v10, :cond_1d

    goto/16 :goto_19

    :cond_1d
    iput v7, v8, Lwn/D$a;->b:I

    const/4 v9, 0x1

    iput-boolean v9, v8, Lwn/D$a;->c:Z

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_23

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v9, v5, v9

    iget-object v9, v9, Lwn/D$a;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v13, v5, v12

    iget v14, v13, Lwn/D$a;->b:I

    const/16 v15, 0xff

    if-eq v14, v15, :cond_1f

    goto :goto_17

    :cond_1f
    iget-object v14, v8, Lwn/D$a;->f:Ljava/util/List;

    invoke-static {v14, v12}, Lwn/D;->c(Ljava/util/List;I)Z

    move-result v12

    if-eqz v12, :cond_20

    goto :goto_17

    :cond_20
    iget v12, v8, Lwn/D$a;->d:I

    iget v14, v13, Lwn/D$a;->d:I

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v14, v8, Lwn/D$a;->e:I

    iget v15, v13, Lwn/D$a;->e:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    sub-int/2addr v14, v12

    const/16 v12, 0xff

    if-lt v14, v12, :cond_21

    goto :goto_17

    :cond_21
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v7, v13, Lwn/D$a;->b:I

    iget-object v10, v13, Lwn/D$a;->f:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v14, v8, Lwn/D$a;->f:Ljava/util/List;

    invoke-static {v14, v12}, Lwn/D;->a(Ljava/util/List;I)V

    goto :goto_18

    :cond_22
    iget v10, v8, Lwn/D$a;->d:I

    iget v12, v13, Lwn/D$a;->d:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v8, Lwn/D$a;->d:I

    iget v10, v8, Lwn/D$a;->e:I

    iget v12, v13, Lwn/D$a;->e:I

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v8, Lwn/D$a;->e:I

    goto :goto_17

    :cond_23
    add-int/lit8 v7, v7, 0x1

    :goto_19
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    :cond_24
    const/4 v6, 0x4

    mul-int/lit8 v2, p2, 0x4

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v11, :cond_32

    aget-object v7, v5, v6

    iget-boolean v8, v7, Lwn/D$a;->c:Z

    if-nez v8, :cond_25

    goto :goto_21

    :cond_25
    iget v8, v7, Lwn/D$a;->b:I

    :cond_26
    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v11, :cond_2e

    if-ne v6, v9, :cond_27

    goto :goto_1d

    :cond_27
    aget-object v10, v5, v9

    iget-boolean v12, v10, Lwn/D$a;->c:Z

    if-nez v12, :cond_28

    goto :goto_1d

    :cond_28
    iget v12, v7, Lwn/D$a;->d:I

    iget v13, v7, Lwn/D$a;->e:I

    add-int/2addr v13, v2

    iget v14, v10, Lwn/D$a;->d:I

    iget v15, v10, Lwn/D$a;->e:I

    add-int/2addr v15, v2

    invoke-static {v12, v13, v14, v15}, Lwn/D;->d(IIII)Z

    move-result v12

    if-nez v12, :cond_29

    goto :goto_1d

    :cond_29
    iget v12, v7, Lwn/D$a;->d:I

    iget v13, v10, Lwn/D$a;->d:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v7, Lwn/D$a;->e:I

    iget v14, v10, Lwn/D$a;->e:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    sub-int/2addr v13, v12

    const/16 v12, 0xff

    if-lt v13, v12, :cond_2a

    goto :goto_1d

    :cond_2a
    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v11, :cond_2d

    aget-object v13, v5, v12

    iget v13, v13, Lwn/D$a;->b:I

    iget v14, v10, Lwn/D$a;->b:I

    if-eq v13, v14, :cond_2b

    goto :goto_1e

    :cond_2b
    iget-object v13, v7, Lwn/D$a;->f:Ljava/util/List;

    invoke-static {v13, v12}, Lwn/D;->c(Ljava/util/List;I)Z

    move-result v13

    if-eqz v13, :cond_2c

    :goto_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_2c
    :goto_1e
    add-int/lit8 v12, v12, 0x1

    goto :goto_1c

    :cond_2d
    iget v9, v10, Lwn/D$a;->b:I

    :goto_1f
    const/16 v10, 0xff

    goto :goto_20

    :cond_2e
    const/16 v9, 0xff

    goto :goto_1f

    :goto_20
    if-ne v9, v10, :cond_2f

    :goto_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2f
    const/4 v10, 0x0

    :goto_22
    if-ge v10, v11, :cond_26

    aget-object v12, v5, v10

    iget v13, v12, Lwn/D$a;->b:I

    if-ne v13, v9, :cond_31

    const/4 v13, 0x0

    iput-boolean v13, v12, Lwn/D$a;->c:Z

    iput v8, v12, Lwn/D$a;->b:I

    iget-object v13, v12, Lwn/D$a;->f:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_23
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_30

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v15, v7, Lwn/D$a;->f:Ljava/util/List;

    invoke-static {v15, v14}, Lwn/D;->a(Ljava/util/List;I)V

    goto :goto_23

    :cond_30
    iget v13, v7, Lwn/D$a;->d:I

    iget v14, v12, Lwn/D$a;->d:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v7, Lwn/D$a;->d:I

    iget v13, v7, Lwn/D$a;->e:I

    iget v12, v12, Lwn/D$a;->e:I

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v7, Lwn/D$a;->e:I

    :cond_31
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_32
    const/16 v9, 0x100

    new-array v2, v9, [I

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v11, :cond_33

    aget-object v7, v5, v6

    iget v7, v7, Lwn/D$a;->b:I

    const/4 v8, 0x1

    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :cond_33
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    if-ge v6, v9, :cond_35

    aget v8, v2, v6

    if-eqz v8, :cond_34

    add-int/lit8 v8, v7, 0x1

    aput v7, v2, v6

    move v7, v8

    goto :goto_26

    :cond_34
    const/16 v8, 0xff

    aput v8, v2, v6

    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_35
    const/4 v6, 0x0

    :goto_27
    if-ge v6, v11, :cond_36

    aget-object v8, v5, v6

    iget v9, v8, Lwn/D$a;->b:I

    aget v9, v2, v9

    iput v9, v8, Lwn/D$a;->b:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_36
    if-nez v7, :cond_37

    const/4 v0, 0x0

    return-object v0

    :cond_37
    mul-int/lit8 v2, v3, 0x2

    sub-int v6, v1, v2

    sub-int v2, v20, v2

    const/4 v8, 0x3

    new-array v9, v8, [F

    new-array v8, v8, [F

    iget-object v10, v0, Lwn/c;->i:[F

    invoke-static {v9, v10}, Lwn/I;->e([F[F)V

    iget-object v10, v0, Lwn/c;->j:[F

    invoke-static {v8, v10}, Lwn/I;->e([F[F)V

    const/4 v10, 0x0

    aget v12, v9, v10

    int-to-float v13, v3

    iget v14, v0, Lwn/c;->k:F

    mul-float v15, v13, v14

    add-float/2addr v12, v15

    aput v12, v9, v10

    const/4 v12, 0x2

    aget v15, v9, v12

    mul-float v16, v13, v14

    add-float v15, v15, v16

    aput v15, v9, v12

    aget v15, v8, v10

    mul-float v16, v13, v14

    sub-float v15, v15, v16

    aput v15, v8, v10

    aget v10, v8, v12

    mul-float/2addr v13, v14

    sub-float/2addr v10, v13

    aput v10, v8, v12

    new-instance v10, Lwn/i;

    invoke-direct {v10}, Lwn/i;-><init>()V

    new-array v7, v7, [Lwn/i$a;

    iput-object v7, v10, Lwn/i;->a:[Lwn/i$a;

    const/4 v7, 0x0

    :goto_28
    iget-object v12, v10, Lwn/i;->a:[Lwn/i$a;

    array-length v13, v12

    if-ge v7, v13, :cond_38

    new-instance v13, Lwn/i$a;

    invoke-direct {v13}, Lwn/i$a;-><init>()V

    aput-object v13, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    :cond_38
    const/4 v13, 0x0

    :goto_29
    iget-object v7, v10, Lwn/i;->a:[Lwn/i$a;

    array-length v12, v7

    if-ge v13, v12, :cond_49

    aget-object v7, v7, v13

    mul-int v12, v6, v2

    new-array v14, v12, [I

    iput-object v14, v7, Lwn/i$a;->m:[I

    const/16 v15, 0xff

    invoke-static {v14, v15}, Ljava/util/Arrays;->fill([II)V

    new-array v14, v12, [I

    iput-object v14, v7, Lwn/i$a;->n:[I

    new-array v12, v12, [I

    iput-object v12, v7, Lwn/i$a;->o:[I

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2a
    if-ge v14, v11, :cond_3a

    move/from16 v16, v11

    aget-object v11, v5, v14

    move-object/from16 p0, v10

    iget-boolean v10, v11, Lwn/D$a;->c:Z

    if-eqz v10, :cond_39

    iget v10, v11, Lwn/D$a;->b:I

    if-ne v10, v13, :cond_39

    iget v10, v11, Lwn/D$a;->d:I

    iget v11, v11, Lwn/D$a;->e:I

    move v12, v10

    move v15, v11

    :cond_39
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, p0

    move/from16 v11, v16

    goto :goto_2a

    :cond_3a
    move-object/from16 p0, v10

    move/from16 v16, v11

    iput v6, v7, Lwn/i$a;->e:I

    iput v2, v7, Lwn/i$a;->f:I

    iget v10, v0, Lwn/c;->k:F

    iput v10, v7, Lwn/i$a;->c:F

    iget v10, v0, Lwn/c;->l:F

    iput v10, v7, Lwn/i$a;->d:F

    iget-object v10, v7, Lwn/i$a;->a:[F

    invoke-static {v10, v9}, Lwn/I;->e([F[F)V

    iget-object v10, v7, Lwn/i$a;->b:[F

    invoke-static {v10, v8}, Lwn/I;->e([F[F)V

    iget-object v10, v7, Lwn/i$a;->a:[F

    const/4 v11, 0x1

    aget v14, v9, v11

    int-to-float v11, v12

    move-object/from16 v19, v8

    iget v8, v0, Lwn/c;->l:F

    mul-float/2addr v11, v8

    add-float/2addr v14, v11

    const/4 v11, 0x1

    aput v14, v10, v11

    iget-object v10, v7, Lwn/i$a;->b:[F

    aget v14, v9, v11

    int-to-float v11, v15

    mul-float/2addr v11, v8

    add-float/2addr v14, v11

    const/4 v8, 0x1

    aput v14, v10, v8

    iput v12, v7, Lwn/i$a;->k:I

    iput v15, v7, Lwn/i$a;->l:I

    iget v8, v7, Lwn/i$a;->e:I

    iput v8, v7, Lwn/i$a;->g:I

    const/4 v8, 0x0

    iput v8, v7, Lwn/i$a;->h:I

    iget v10, v7, Lwn/i$a;->f:I

    iput v10, v7, Lwn/i$a;->i:I

    iput v8, v7, Lwn/i$a;->j:I

    const/4 v8, 0x0

    :goto_2b
    if-ge v8, v2, :cond_46

    const/4 v10, 0x0

    :goto_2c
    if-ge v10, v6, :cond_45

    add-int v11, v3, v10

    add-int v14, v3, v8

    iget-object v15, v0, Lwn/c;->m:[Lwn/b;

    mul-int v20, v14, v1

    add-int v20, v11, v20

    aget-object v15, v15, v20

    move-object/from16 v20, v9

    iget v9, v15, Lwn/b;->a:I

    iget v15, v15, Lwn/b;->b:I

    add-int/2addr v15, v9

    :goto_2d
    if-ge v9, v15, :cond_44

    move/from16 p2, v15

    iget-object v15, v0, Lwn/c;->n:[Lwn/d;

    aget-object v15, v15, v9

    move/from16 v21, v2

    aget v2, v4, v9

    move/from16 v22, v3

    const/16 v3, 0xff

    if-ne v2, v3, :cond_3b

    :goto_2e
    move/from16 v27, v1

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v24, v8

    move/from16 v26, v9

    move/from16 v25, v10

    move/from16 v23, v13

    move/from16 v4, v21

    const/4 v1, 0x1

    goto/16 :goto_34

    :cond_3b
    aget-object v2, v5, v2

    iget v2, v2, Lwn/D$a;->b:I

    if-eq v2, v13, :cond_3c

    goto :goto_2e

    :cond_3c
    iget v3, v7, Lwn/i$a;->g:I

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v7, Lwn/i$a;->g:I

    iget v3, v7, Lwn/i$a;->h:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lwn/i$a;->h:I

    iget v3, v7, Lwn/i$a;->i:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v7, Lwn/i$a;->i:I

    iget v3, v7, Lwn/i$a;->j:I

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v7, Lwn/i$a;->j:I

    mul-int v3, v8, v6

    add-int/2addr v3, v10

    move/from16 v23, v13

    iget-object v13, v7, Lwn/i$a;->m:[I

    move/from16 v24, v8

    iget v8, v15, Lwn/d;->a:I

    sub-int/2addr v8, v12

    int-to-char v8, v8

    aput v8, v13, v3

    iget-object v8, v7, Lwn/i$a;->n:[I

    iget-object v13, v0, Lwn/c;->p:[I

    aget v13, v13, v9

    aput v13, v8, v3

    move/from16 v25, v10

    const/4 v8, 0x0

    const/4 v10, 0x4

    const/4 v13, 0x0

    const/16 v18, 0x0

    :goto_2f
    if-ge v13, v10, :cond_43

    invoke-static {v15, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v10

    move/from16 v26, v9

    const/16 v9, 0x3f

    if-eq v10, v9, :cond_40

    invoke-static {v13}, Lwn/r;->b(I)I

    move-result v10

    add-int/2addr v10, v11

    invoke-static {v13}, Lwn/r;->c(I)I

    move-result v17

    add-int v17, v14, v17

    iget-object v9, v0, Lwn/c;->m:[Lwn/b;

    mul-int v27, v17, v1

    add-int v27, v10, v27

    aget-object v9, v9, v27

    iget v9, v9, Lwn/b;->a:I

    invoke-static {v15, v13}, Lwn/r;->a(Lwn/d;I)I

    move-result v27

    add-int v9, v9, v27

    move/from16 v27, v1

    aget v1, v4, v9

    move-object/from16 v28, v4

    const/16 v4, 0xff

    if-eq v1, v4, :cond_3d

    aget-object v1, v5, v1

    iget v1, v1, Lwn/D$a;->b:I

    goto :goto_30

    :cond_3d
    move v1, v4

    :goto_30
    iget-object v4, v0, Lwn/c;->p:[I

    aget v4, v4, v9

    if-eqz v4, :cond_3f

    if-eq v2, v1, :cond_3f

    const/4 v4, 0x1

    shl-int v29, v4, v13

    or-int v4, v8, v29

    int-to-char v8, v4

    iget-object v4, v0, Lwn/c;->n:[Lwn/d;

    aget-object v4, v4, v9

    iget v4, v4, Lwn/d;->a:I

    move-object/from16 v29, v5

    if-le v4, v12, :cond_3e

    iget-object v5, v7, Lwn/i$a;->m:[I

    move/from16 v30, v8

    aget v8, v5, v3

    sub-int/2addr v4, v12

    int-to-char v4, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v5, v3

    goto :goto_31

    :cond_3e
    move/from16 v30, v8

    :goto_31
    move/from16 v8, v30

    goto :goto_32

    :cond_3f
    move-object/from16 v29, v5

    :goto_32
    iget-object v4, v0, Lwn/c;->p:[I

    aget v4, v4, v9

    if-eqz v4, :cond_41

    if-ne v2, v1, :cond_41

    sub-int v10, v10, v22

    sub-int v1, v17, v22

    if-ltz v10, :cond_41

    if-ltz v1, :cond_41

    if-ge v10, v6, :cond_41

    move/from16 v4, v21

    if-ge v1, v4, :cond_42

    const/4 v1, 0x1

    shl-int v5, v1, v13

    or-int v5, v18, v5

    int-to-char v5, v5

    move/from16 v18, v5

    goto :goto_33

    :cond_40
    move/from16 v27, v1

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    :cond_41
    move/from16 v4, v21

    :cond_42
    const/4 v1, 0x1

    :goto_33
    add-int/lit8 v13, v13, 0x1

    move/from16 v21, v4

    move/from16 v9, v26

    move/from16 v1, v27

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    const/4 v10, 0x4

    goto/16 :goto_2f

    :cond_43
    move/from16 v27, v1

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v26, v9

    move/from16 v4, v21

    const/4 v1, 0x1

    iget-object v2, v7, Lwn/i$a;->o:[I

    shl-int/lit8 v5, v8, 0x4

    or-int v5, v5, v18

    aput v5, v2, v3

    :goto_34
    add-int/lit8 v9, v26, 0x1

    move/from16 v15, p2

    move v2, v4

    move/from16 v3, v22

    move/from16 v13, v23

    move/from16 v8, v24

    move/from16 v10, v25

    move/from16 v1, v27

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    goto/16 :goto_2d

    :cond_44
    move/from16 v27, v1

    move/from16 v22, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v24, v8

    move/from16 v25, v10

    move/from16 v23, v13

    const/4 v1, 0x1

    move v4, v2

    add-int/lit8 v10, v25, 0x1

    move-object/from16 v9, v20

    move/from16 v1, v27

    move-object/from16 v4, v28

    goto/16 :goto_2c

    :cond_45
    move/from16 v27, v1

    move/from16 v22, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v24, v8

    move-object/from16 v20, v9

    move/from16 v23, v13

    const/4 v1, 0x1

    move v4, v2

    add-int/lit8 v8, v24, 0x1

    move/from16 v1, v27

    move-object/from16 v4, v28

    goto/16 :goto_2b

    :cond_46
    move/from16 v27, v1

    move/from16 v22, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v20, v9

    move/from16 v23, v13

    const/4 v1, 0x1

    move v4, v2

    iget v2, v7, Lwn/i$a;->g:I

    iget v3, v7, Lwn/i$a;->h:I

    if-le v2, v3, :cond_47

    const/4 v2, 0x0

    iput v2, v7, Lwn/i$a;->h:I

    iput v2, v7, Lwn/i$a;->g:I

    goto :goto_35

    :cond_47
    const/4 v2, 0x0

    :goto_35
    iget v3, v7, Lwn/i$a;->i:I

    iget v5, v7, Lwn/i$a;->j:I

    if-le v3, v5, :cond_48

    iput v2, v7, Lwn/i$a;->j:I

    iput v2, v7, Lwn/i$a;->i:I

    :cond_48
    add-int/lit8 v13, v23, 0x1

    move-object/from16 v10, p0

    move v2, v4

    move/from16 v11, v16

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v3, v22

    move/from16 v1, v27

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    goto/16 :goto_29

    :cond_49
    move-object/from16 p0, v10

    return-object p0
.end method

.method public static c(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static d(IIII)Z
    .locals 0
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

    if-gt p0, p3, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
