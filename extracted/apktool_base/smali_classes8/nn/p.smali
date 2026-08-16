.class public Lnn/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnn/e;Ljava/util/Deque;FFII)V
    .locals 1
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
            "es",
            "queue",
            "agentClimb",
            "h",
            "i",
            "j"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnn/e;",
            "Ljava/util/Deque<",
            "[I>;FFII)V"
        }
    .end annotation

    iget-object p1, p1, Lnn/e;->b:Ljava/util/List;

    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnn/i;

    iget-object p1, p1, Lnn/i;->c:[Lnn/g;

    aget-object p1, p1, p5

    iget-boolean v0, p1, Lnn/g;->b:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lnn/g;->a:[F

    const/4 v0, 0x1

    aget p1, p1, v0

    sub-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p3

    if-gez p1, :cond_0

    filled-new-array {p5, p6}, [I

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(Lnn/m;Lnn/e;)[Lnn/o;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "acfg",
            "es"
        }
    .end annotation

    move-object/from16 v6, p2

    iget-object v0, v6, Lnn/e;->b:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnn/i;

    iget-object v0, v0, Lnn/i;->c:[Lnn/g;

    array-length v8, v0

    iget-object v0, v6, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v9, 0x1

    aput v0, v1, v9

    aput v8, v1, v7

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [[I

    move v0, v7

    :goto_0
    iget-object v1, v6, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v11, -0x1

    if-ge v0, v1, :cond_1

    move v1, v7

    :goto_1
    if-ge v1, v8, :cond_0

    aget-object v2, v10, v1

    aput v11, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v7

    move v12, v0

    :goto_2
    iget-object v1, v6, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v13, -0x2

    if-ge v12, v1, :cond_5

    move v14, v0

    move v15, v7

    :goto_3
    if-ge v15, v8, :cond_4

    aget-object v0, v10, v15

    aget v0, v0, v12

    if-ne v0, v11, :cond_3

    iget-object v0, v6, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnn/i;

    iget-object v0, v0, Lnn/i;->c:[Lnn/g;

    aget-object v0, v0, v15

    iget-boolean v0, v0, Lnn/g;->b:Z

    if-nez v0, :cond_2

    aget-object v0, v10, v15

    aput v13, v0, v12

    goto :goto_4

    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    filled-new-array {v15, v12}, [I

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, p1

    iget v4, v5, Lnn/m;->c:F

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lnn/p;->c(Lnn/e;[[ILjava/util/Deque;FI)V

    add-int/lit8 v14, v14, 0x1

    :cond_3
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move v0, v14

    goto :goto_2

    :cond_5
    new-array v1, v0, [Lnn/o;

    move v2, v7

    :goto_5
    if-ge v2, v0, :cond_6

    new-instance v3, Lnn/o;

    invoke-direct {v3}, Lnn/o;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v0, v7

    :goto_6
    iget-object v2, v6, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    move v2, v7

    move v4, v2

    move v3, v13

    :goto_7
    add-int/lit8 v5, v8, 0x1

    if-ge v2, v5, :cond_b

    if-eq v2, v8, :cond_8

    aget-object v5, v10, v2

    aget v5, v5, v0

    if-eq v5, v3, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_8
    :goto_8
    if-ltz v3, :cond_9

    aget-object v5, v1, v3

    iget v11, v5, Lnn/o;->c:I

    if-ge v11, v4, :cond_9

    iput v4, v5, Lnn/o;->c:I

    sub-int v4, v2, v4

    iput v4, v5, Lnn/o;->b:I

    iput v0, v5, Lnn/o;->a:I

    :cond_9
    if-ge v2, v8, :cond_a

    aget-object v3, v10, v2

    aget v3, v3, v0

    :cond_a
    move v4, v9

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    return-object v1
.end method

.method public final c(Lnn/e;[[ILjava/util/Deque;FI)V
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
            "es",
            "sampleGrid",
            "queue",
            "agentClimb",
            "region"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnn/e;",
            "[[I",
            "Ljava/util/Deque<",
            "[I>;FI)V"
        }
    .end annotation

    move-object/from16 v0, p2

    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    aget v10, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    aget-object v4, v0, v10

    aget v4, v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v9, p1

    iget-object v4, v9, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnn/i;

    iget-object v4, v4, Lnn/i;->c:[Lnn/g;

    aget-object v4, v4, v10

    aget-object v5, v0, v10

    aput p5, v5, v1

    iget-object v4, v4, Lnn/g;->a:[F

    aget v18, v4, v3

    array-length v4, v0

    sub-int/2addr v4, v3

    if-ge v10, v4, :cond_1

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, v18

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Lnn/p;->a(Lnn/e;Ljava/util/Deque;FFII)V

    :cond_1
    if-lez v10, :cond_2

    add-int/lit8 v16, v10, -0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, v18

    move/from16 v17, v1

    invoke-virtual/range {v11 .. v17}, Lnn/p;->a(Lnn/e;Ljava/util/Deque;FFII)V

    :cond_2
    aget-object v2, v0, v2

    array-length v2, v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, v18

    move v8, v10

    move v9, v2

    invoke-virtual/range {v3 .. v9}, Lnn/p;->a(Lnn/e;Ljava/util/Deque;FFII)V

    :cond_3
    if-lez v1, :cond_0

    add-int/lit8 v9, v1, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, v18

    move v8, v10

    invoke-virtual/range {v3 .. v9}, Lnn/p;->a(Lnn/e;Ljava/util/Deque;FFII)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
