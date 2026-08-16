.class public final Lcom/android/tools/r8/internal/b50;
.super Lcom/android/tools/r8/internal/e50;
.source "SourceFile"


# static fields
.field public static final synthetic u:Z = true


# instance fields
.field public final p:Lcom/android/tools/r8/internal/fB;

.field public final q:Ljava/util/Set;

.field public final r:Ljava/util/Set;

.field public s:I

.field public final synthetic t:Lcom/android/tools/r8/internal/f50;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/internal/fB;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/b50;->t:Lcom/android/tools/r8/internal/f50;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/tools/r8/internal/e50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/b50;->p:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/b50;->q:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/tools/r8/internal/b50;->r:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(IILcom/android/tools/r8/internal/W40;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v0, Lcom/android/tools/r8/internal/b50;->t:Lcom/android/tools/r8/internal/f50;

    iget-object v3, v3, Lcom/android/tools/r8/internal/f50;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 2
    new-instance v4, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v4}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    const/4 v5, 0x0

    if-eqz v3, :cond_12

    .line 3
    sget-boolean v6, Lcom/android/tools/r8/internal/b50;->u:Z

    if-nez v6, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/b50;->a(Lcom/android/tools/r8/internal/W40;)V

    .line 4
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iput v5, v0, Lcom/android/tools/r8/internal/b50;->s:I

    .line 6
    sget v7, Lcom/android/tools/r8/internal/y60;->j:I

    .line 7
    new-instance v7, Lcom/android/tools/r8/internal/x60;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/x60;-><init>()V

    .line 8
    iget-object v8, v0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    .line 9
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/x60;

    .line 10
    iput-object v3, v7, Lcom/android/tools/r8/internal/x60;->i:Lcom/android/tools/r8/graph/A2;

    .line 11
    iget-object v8, v0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    .line 12
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v8

    .line 13
    iput-boolean v8, v7, Lcom/android/tools/r8/internal/B60$a;->e:Z

    .line 14
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/x60;

    move/from16 v9, p1

    move v11, v5

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v9, v1, :cond_a

    .line 15
    iget-object v14, v0, Lcom/android/tools/r8/internal/e50;->b:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    .line 16
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->v1()Z

    move-result v15

    if-eqz v15, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v10, v11, 0x1

    .line 17
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v15

    if-eqz v15, :cond_2

    iget-object v15, v0, Lcom/android/tools/r8/internal/b50;->t:Lcom/android/tools/r8/internal/f50;

    iget-object v15, v15, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    iget-object v8, v0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    .line 18
    invoke-static {v15, v8}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v5

    .line 19
    sget-object v13, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v14, v15, v8, v5, v13}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 20
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v7, v11, v5}, Lcom/android/tools/r8/internal/x60;->a(ILcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/x60;

    .line 21
    :cond_2
    iget-object v5, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->s1()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->C()Lcom/android/tools/r8/internal/u6;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/u6;->v2()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    .line 23
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    .line 24
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    .line 25
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v5, v11, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-virtual {v5, v8, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_7

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v11, v11, 0x1

    check-cast v13, Lcom/android/tools/r8/internal/xw0;

    .line 28
    iget-object v15, v13, Lcom/android/tools/r8/internal/xw0;->d:Ljava/util/LinkedList;

    .line 29
    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const/4 v15, 0x0

    .line 30
    iput-object v15, v13, Lcom/android/tools/r8/internal/xw0;->e:Lcom/android/tools/r8/internal/QC;

    .line 31
    iget-object v15, v2, Lcom/android/tools/r8/internal/W40;->c:Ljava/util/ArrayList;

    iget v2, v0, Lcom/android/tools/r8/internal/b50;->s:I

    move-object/from16 p1, v5

    add-int/lit8 v5, v2, 0x1

    iput v5, v0, Lcom/android/tools/r8/internal/b50;->s:I

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_6

    .line 33
    sget-boolean v5, Lcom/android/tools/r8/internal/b50;->u:Z

    if-nez v5, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 34
    :cond_5
    :goto_2
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v5, p1

    move-object/from16 v2, p3

    goto :goto_1

    .line 35
    :cond_7
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 36
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    :cond_8
    add-int/lit8 v2, v1, -0x1

    if-ge v9, v2, :cond_9

    .line 37
    iget-object v2, v0, Lcom/android/tools/r8/internal/b50;->q:Ljava/util/Set;

    invoke-interface {v2, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    move v11, v10

    move-object v10, v14

    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p3

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 38
    :cond_a
    sget-boolean v1, Lcom/android/tools/r8/internal/b50;->u:Z

    if-nez v1, :cond_c

    if-eqz v10, :cond_b

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_c
    :goto_4
    if-nez v1, :cond_e

    .line 39
    iget-object v1, v3, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_d

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    :goto_5
    if-eqz v12, :cond_f

    .line 40
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v8, 0x0

    goto :goto_6

    :cond_f
    move-object v8, v12

    .line 41
    :goto_6
    new-instance v1, Lcom/android/tools/r8/internal/gK;

    invoke-direct {v1, v3, v8, v6}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 42
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    .line 43
    iget-object v2, v7, Lcom/android/tools/r8/internal/x60;->h:Lcom/android/tools/r8/internal/zH;

    .line 44
    iget-object v2, v2, Lcom/android/tools/r8/internal/zH;->a:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 46
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/x60;->d()Lcom/android/tools/r8/internal/y60;

    move-result-object v2

    goto :goto_7

    .line 47
    :cond_10
    sget-object v2, Lcom/android/tools/r8/internal/B60$c;->h:Lcom/android/tools/r8/internal/B60$c;

    .line 48
    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 49
    invoke-virtual {v10, v1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/zE;)V

    .line 50
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 51
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 52
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 53
    iget-object v2, v0, Lcom/android/tools/r8/internal/b50;->p:Lcom/android/tools/r8/internal/fB;

    .line 54
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v3

    .line 56
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v3

    .line 57
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v5

    .line 58
    invoke-virtual {v2, v3, v5}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 59
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 60
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    .line 61
    :cond_11
    iget-object v2, v0, Lcom/android/tools/r8/internal/b50;->r:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_12
    iget-object v1, v0, Lcom/android/tools/r8/internal/b50;->t:Lcom/android/tools/r8/internal/f50;

    iget-object v1, v1, Lcom/android/tools/r8/internal/f50;->d:Lcom/android/tools/r8/graph/y;

    iget-object v2, v0, Lcom/android/tools/r8/internal/b50;->p:Lcom/android/tools/r8/internal/fB;

    .line 63
    iget-object v3, v4, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 64
    new-instance v3, Lcom/android/tools/r8/internal/lu0;

    const/4 v5, 0x0

    .line 65
    invoke-direct {v3, v1, v2, v5}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 v1, 0x2

    .line 66
    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    :cond_13
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/W40;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/tools/r8/internal/b50;->t:Lcom/android/tools/r8/internal/f50;

    iget-object v0, v0, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-boolean v1, Lcom/android/tools/r8/internal/b50;->u:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/b50;->t:Lcom/android/tools/r8/internal/f50;

    iget-object v1, v1, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Lcom/android/tools/r8/internal/w51;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/w51;-><init>(Lcom/android/tools/r8/internal/b50;)V

    .line 70
    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Ljava/util/function/Predicate;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 72
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    .line 73
    :goto_0
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 75
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
