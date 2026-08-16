.class public final Lcom/android/tools/r8/internal/Ou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/A;


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Lcom/android/tools/r8/internal/f6;

.field public final d:Lcom/android/tools/r8/graph/u1;

.field public final e:Lcom/android/tools/r8/internal/nJ;

.field public final f:Lcom/android/tools/r8/internal/nu;

.field public final g:Lcom/android/tools/r8/internal/Tu;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/nu;Lcom/android/tools/r8/internal/Tu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Ou;->c:Lcom/android/tools/r8/internal/f6;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V
    .locals 3

    .line 633
    new-instance v0, Lcom/android/tools/r8/internal/gK;

    .line 634
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    .line 635
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p2, p1, p3}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 637
    sget-boolean p1, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 638
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 639
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 640
    :cond_2
    :goto_1
    invoke-interface {p0, v0, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;
    .locals 3

    .line 641
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    instance-of v1, v0, Lcom/android/tools/r8/internal/uI;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 644
    invoke-interface {p2}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    return-object p1

    .line 645
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v2

    .line 646
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 647
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Cu;Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/gK;
    .locals 3

    .line 477
    sget-boolean v0, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 478
    new-instance v0, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 479
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->a2:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 480
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fK;

    .line 481
    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/fK;

    .line 482
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 483
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 484
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 485
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 486
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Nl0;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 487
    invoke-interface {p2, v0, p1}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 488
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 489
    iput-object p1, p4, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 490
    iput-object p3, p4, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 491
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/R00;)Ljava/util/Set;
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p3

    .line 1
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nu;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/Ou;->h:Z

    move-object/from16 v2, p4

    if-nez v1, :cond_2

    .line 4
    instance-of v3, v2, Lcom/android/tools/r8/internal/Nu;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 6
    :cond_2
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/tools/r8/internal/Hz;->a()Lcom/android/tools/r8/internal/Nu;

    move-result-object v9

    if-nez v1, :cond_3

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->r()V

    .line 8
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/dX;->d()Lcom/android/tools/r8/internal/fX;

    move-result-object v10

    .line 9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v11

    .line 10
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->l()I

    move-result v3

    .line 14
    iget-object v4, v0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 15
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    const v5, 0x7fffffff

    .line 16
    invoke-static {v5, v4}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v4

    add-int/2addr v4, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_f

    .line 17
    iget-object v5, v0, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 18
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move/from16 v18, v4

    move-object/from16 v19, v9

    goto/16 :goto_6

    .line 20
    :cond_5
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    .line 21
    sget-boolean v16, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v16, :cond_7

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v17

    if-eqz v17, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_7
    :goto_2
    instance-of v15, v5, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v15, :cond_4

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v5

    .line 24
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    iget-object v13, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v15, v13}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 25
    iget-object v15, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v15, v13}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v13

    goto :goto_3

    :cond_8
    const/4 v15, 0x0

    .line 26
    :goto_3
    iget-object v13, v5, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    if-eqz v13, :cond_d

    .line 27
    instance-of v14, v13, Lcom/android/tools/r8/internal/Im0;

    if-eqz v14, :cond_d

    if-nez v16, :cond_a

    .line 28
    iget-object v14, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4

    .line 30
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_a
    :goto_4
    iget-object v0, v5, Lcom/android/tools/r8/graph/proto/k;->e:Lcom/android/tools/r8/internal/Pm0;

    .line 32
    iget-object v13, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v14, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v14}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 34
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v14

    move/from16 v18, v4

    .line 35
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    move-object/from16 v19, v9

    .line 36
    new-instance v9, Lcom/android/tools/r8/internal/CV;

    invoke-direct {v9, v14, v5, v4}, Lcom/android/tools/r8/internal/CV;-><init>(Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/B60;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    invoke-virtual {v0, v13, v4, v8, v9}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    if-nez v16, :cond_c

    .line 39
    array-length v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 40
    :cond_c
    :goto_5
    sget-boolean v4, Lcom/android/tools/r8/internal/X3;->a:Z

    const/4 v4, 0x0

    .line 41
    aget-object v0, v0, v4

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 45
    invoke-virtual {v12, v0, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    move/from16 v18, v4

    move-object/from16 v19, v9

    if-eqz v15, :cond_e

    .line 46
    invoke-virtual {v12, v6, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p3

    move/from16 v4, v18

    move-object/from16 v9, v19

    goto/16 :goto_1

    :cond_f
    move-object/from16 v19, v9

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 48
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    goto :goto_7

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 49
    :cond_11
    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_12

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 50
    invoke-interface {v2, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_8

    .line 51
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v9

    .line 52
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v13

    .line 53
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v14

    const/4 v0, 0x0

    .line 54
    :goto_9
    iget-object v1, v9, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 55
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 56
    iget-object v1, v9, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/tools/r8/internal/W5;

    iput-object v15, v9, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 57
    invoke-interface {v13, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v16, v0

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    .line 59
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    .line 61
    :cond_14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 62
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_13

    const/4 v3, 0x0

    .line 63
    :goto_c
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_13

    .line 64
    iget-object v0, v5, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    instance-of v0, v0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_18

    if-nez v16, :cond_17

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 68
    :goto_d
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 69
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_d

    .line 70
    :cond_16
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    move/from16 v18, v3

    const/4 v1, 0x0

    int-to-long v3, v1

    .line 71
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v16

    move-object/from16 v1, p1

    move-object/from16 p3, v6

    move/from16 v6, v18

    move-object/from16 v18, v13

    move-object v13, v5

    move-object/from16 v5, v16

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v16

    :goto_e
    move-object/from16 v0, v16

    const/4 v1, 0x0

    goto :goto_f

    :cond_17
    move-object/from16 p3, v6

    move-object/from16 v18, v13

    move v6, v3

    move-object v13, v5

    goto :goto_e

    .line 72
    :goto_f
    invoke-virtual {v13, v6, v0, v1}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/ir/optimize/a;)V

    move-object/from16 v16, v0

    goto :goto_10

    :cond_18
    move-object/from16 p3, v6

    move-object/from16 v18, v13

    move v6, v3

    move-object v13, v5

    :goto_10
    add-int/lit8 v3, v6, 0x1

    move-object/from16 v6, p3

    move-object v5, v13

    move-object/from16 v13, v18

    goto :goto_c

    :cond_19
    move-object/from16 v18, v13

    .line 73
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v13

    .line 74
    :cond_1a
    :goto_11
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 75
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 76
    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 77
    invoke-interface {v13}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_11

    .line 78
    :cond_1b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->I1()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 79
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->W()Lcom/android/tools/r8/internal/sD;

    move-result-object v0

    .line 80
    iget-object v0, v0, Lcom/android/tools/r8/internal/sD;->k:Lcom/android/tools/r8/graph/M2;

    .line 81
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1a

    .line 82
    invoke-interface {v13}, Lcom/android/tools/r8/internal/EE;->i()V

    goto :goto_11

    .line 83
    :cond_1d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v1

    const/4 v6, 0x2

    if-eqz v1, :cond_1f

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v6, :cond_1a

    .line 86
    invoke-virtual {v5, v0}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 87
    invoke-virtual {v7, v12, v1}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eqz v1, :cond_1e

    rsub-int/lit8 v3, v0, 0x1

    .line 88
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    instance-of v1, v1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v1, :cond_1e

    .line 91
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 92
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    move/from16 p3, v3

    const/4 v0, 0x0

    int-to-long v3, v0

    .line 93
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v6

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v20, v14

    move/from16 v14, p3

    move-object/from16 v21, v11

    move-object v11, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 94
    invoke-virtual {v11, v14, v0}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 95
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :goto_14
    move-object/from16 v14, v20

    move-object/from16 v11, v21

    goto/16 :goto_11

    :cond_1e
    move-object/from16 v21, v11

    move-object/from16 v20, v14

    move-object v11, v5

    add-int/lit8 v0, v0, 0x1

    move-object v5, v11

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    goto :goto_13

    :cond_1f
    move-object/from16 v21, v11

    move-object/from16 v20, v14

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    .line 99
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v7, v12, v1}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 100
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    if-eqz v14, :cond_3e

    .line 101
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/J1;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v6, v2, :cond_20

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->j:Lcom/android/tools/r8/graph/A2;

    .line 102
    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    move-object/from16 p3, v9

    move-object/from16 v22, v15

    move-object/from16 v9, v19

    goto/16 :goto_21

    .line 103
    :cond_21
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->i:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 104
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 105
    iget-object v1, v1, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 106
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 107
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Nl0;->f(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 108
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 109
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 110
    invoke-static {v13, v0, v1, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    goto :goto_14

    .line 111
    :cond_22
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/J1;->g:Lcom/android/tools/r8/graph/A2;

    if-eq v6, v2, :cond_23

    iget-object v2, v1, Lcom/android/tools/r8/graph/J1;->h:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v2, :cond_24

    :cond_23
    move-object/from16 p3, v9

    move-object/from16 v22, v15

    move-object/from16 v9, v19

    goto/16 :goto_20

    .line 112
    :cond_24
    iget-object v2, v1, Lcom/android/tools/r8/graph/J1;->e:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v2, :cond_25

    .line 113
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v2, v14}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object v1

    .line 114
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    .line 115
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 116
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 117
    new-instance v2, Lcom/android/tools/r8/internal/gK;

    .line 118
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 119
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 120
    invoke-direct {v2, v1, v3, v0}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 121
    invoke-interface {v13, v2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_14

    .line 122
    :cond_25
    iget-object v1, v1, Lcom/android/tools/r8/graph/J1;->f:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 123
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    .line 124
    invoke-virtual {v1, v14}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v6, v1, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 125
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 126
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    move-object/from16 v5, v19

    .line 127
    iget-object v2, v5, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 128
    sget-object v19, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v1, v5

    move-object/from16 v22, v2

    move-object v2, v6

    move-object/from16 p3, v9

    move-object v9, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v15

    move-object v15, v6

    move-object/from16 v6, v19

    .line 129
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v1

    .line 130
    iget-object v1, v1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 131
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    if-ne v1, v15, :cond_27

    .line 132
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v2, v14}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object v1

    .line 133
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/J1;->a:Lcom/android/tools/r8/graph/l1;

    .line 134
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 135
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 136
    new-instance v2, Lcom/android/tools/r8/internal/gK;

    .line 137
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 138
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 139
    invoke-direct {v2, v1, v3, v0}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 140
    invoke-interface {v13, v2, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_26
    :goto_15
    move-object/from16 v19, v9

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v9, p3

    goto/16 :goto_11

    .line 141
    :cond_27
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    invoke-interface {v2, v1}, Lcom/android/tools/r8/graph/d1;->b(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    .line 142
    sget-boolean v2, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v2, :cond_29

    if-eqz v1, :cond_28

    goto :goto_16

    :cond_28
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_29
    :goto_16
    if-nez v2, :cond_2b

    .line 143
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    instance-of v2, v1, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_2a

    goto :goto_17

    .line 145
    :cond_2a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_2b
    :goto_17
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 147
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 148
    invoke-static {v13, v0, v1, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    goto :goto_15

    :cond_2c
    move-object/from16 p3, v9

    move-object/from16 v22, v15

    move-object/from16 v9, v19

    .line 149
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    if-ne v6, v1, :cond_2f

    .line 150
    sget-boolean v1, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_18

    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_2e
    :goto_18
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 152
    iget-object v1, v1, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 153
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 154
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Nl0;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 155
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 156
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 157
    invoke-static {v13, v0, v1, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    goto :goto_15

    .line 158
    :cond_2f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v1

    if-nez v1, :cond_30

    .line 159
    instance-of v1, v0, Lcom/android/tools/r8/internal/TJ;

    if-eqz v1, :cond_26

    .line 160
    :cond_30
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 161
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v4

    .line 162
    iget-object v5, v9, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 164
    sget-object v15, Lcom/android/tools/r8/internal/M1;->a:Lcom/android/tools/r8/internal/L1;

    .line 165
    invoke-virtual {v2, v1, v11, v15}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;)Lcom/android/tools/r8/internal/F1;

    move-result-object v11

    .line 166
    sget-boolean v15, Lcom/android/tools/r8/internal/Nu;->t:Z

    if-nez v15, :cond_32

    .line 167
    iget-object v1, v9, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    if-ne v5, v1, :cond_31

    goto :goto_19

    .line 168
    :cond_31
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 169
    :cond_32
    :goto_19
    sget-object v19, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object v1, v9

    move-object v2, v6

    move-object v8, v6

    move-object/from16 v6, v19

    .line 170
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v1

    .line 171
    iget-object v1, v1, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 172
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 173
    iget-object v2, v9, Lcom/android/tools/r8/internal/Nu;->s:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    instance-of v1, v11, Lcom/android/tools/r8/internal/Im0;

    if-nez v1, :cond_33

    goto :goto_1a

    .line 175
    :cond_33
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/F1;->m()Lcom/android/tools/r8/internal/Im0;

    move-result-object v1

    .line 176
    iget-wide v1, v1, Lcom/android/tools/r8/internal/Im0;->c:J

    long-to-int v1, v1

    .line 177
    iget-object v2, v9, Lcom/android/tools/r8/internal/Nu;->r:Lcom/android/tools/r8/internal/nu;

    .line 178
    invoke-virtual {v2, v14}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/mu;->b:Lcom/android/tools/r8/internal/Q;

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 180
    iget-object v2, v9, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 181
    invoke-virtual {v8, v1, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 182
    iget-object v2, v9, Lcom/android/tools/r8/internal/R00;->c:Lcom/android/tools/r8/graph/u1;

    .line 183
    invoke-virtual {v8, v14, v2}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 184
    iget-object v3, v9, Lcom/android/tools/r8/internal/lZ;->i:Lcom/android/tools/r8/internal/k6;

    .line 185
    invoke-interface {v3, v2}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 186
    invoke-interface {v3, v1}, Lcom/android/tools/r8/internal/k6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_34

    move-object v2, v1

    .line 187
    :cond_34
    move-object v1, v2

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    if-nez v15, :cond_37

    if-eqz v1, :cond_35

    goto :goto_1b

    .line 188
    :cond_35
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_36
    :goto_1a
    const/4 v1, 0x0

    :cond_37
    :goto_1b
    if-eqz v1, :cond_3d

    .line 189
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 190
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 192
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H0;

    move-result-object v1

    goto :goto_1c

    :cond_38
    const/4 v1, 0x0

    .line 193
    :goto_1c
    sget-boolean v2, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v2, :cond_3a

    if-eqz v1, :cond_39

    goto :goto_1d

    :cond_39
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3a
    :goto_1d
    if-nez v2, :cond_3c

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    instance-of v2, v1, Lcom/android/tools/r8/graph/H5;

    if-eqz v2, :cond_3b

    goto :goto_1e

    .line 196
    :cond_3b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 197
    :cond_3c
    :goto_1e
    invoke-interface {v1}, Lcom/android/tools/r8/graph/o0;->H()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 198
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 199
    invoke-static {v13, v0, v1, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    :cond_3d
    :goto_1f
    move-object/from16 v8, p1

    goto/16 :goto_15

    .line 200
    :goto_20
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 201
    iget-object v1, v1, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 202
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 203
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Nl0;->e(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 204
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 205
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 206
    invoke-static {v13, v0, v1, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    goto :goto_1f

    .line 207
    :goto_21
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 208
    iget-object v1, v1, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 209
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 210
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Nl0;->h(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 211
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 212
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 213
    invoke-static {v13, v0, v1, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    goto :goto_1f

    :cond_3e
    move-object v8, v6

    move-object/from16 p3, v9

    move-object/from16 v22, v15

    move-object/from16 v9, v19

    .line 214
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    if-eq v8, v2, :cond_3f

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v1, v1, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v8, v1, :cond_3d

    :cond_3f
    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 216
    invoke-virtual {v7, v12, v2}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 217
    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    iget-object v4, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object v1

    .line 218
    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 219
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/PT;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 220
    invoke-interface {v10, v1, v11}, Lcom/android/tools/r8/internal/Cu;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 221
    sget-boolean v3, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 222
    new-instance v3, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 223
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 224
    iput-object v1, v3, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 225
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/fK;

    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 226
    iget-object v3, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 227
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    move-object v3, v8

    move-object/from16 v8, p1

    .line 228
    invoke-virtual {v1, v8, v2}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/UJ;

    .line 229
    check-cast v1, Lcom/android/tools/r8/internal/fK;

    .line 230
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 231
    iput-object v2, v1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 232
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    .line 233
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v4, v2, Lcom/android/tools/r8/graph/u1;->v4:Lcom/android/tools/r8/graph/q2;

    iget-object v5, v4, Lcom/android/tools/r8/graph/q2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v3, v5, :cond_40

    .line 234
    iget-object v2, v4, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    goto :goto_22

    .line 235
    :cond_40
    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->w4:Lcom/android/tools/r8/graph/q2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/q2;->l:Lcom/android/tools/r8/graph/A2;

    .line 236
    :goto_22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    .line 237
    new-instance v4, Lcom/android/tools/r8/internal/mK;

    const/4 v5, 0x0

    .line 238
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 239
    invoke-direct {v4, v2, v6, v3}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 240
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 241
    invoke-interface {v13, v1, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 242
    invoke-virtual/range {v22 .. v22}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 243
    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 244
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    move-object/from16 v11, p3

    .line 245
    invoke-interface {v13, v8, v11, v0, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 247
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    :goto_23
    move-object/from16 v19, v9

    move-object v9, v11

    move-object/from16 v14, v20

    move-object/from16 v11, v21

    :goto_24
    move-object/from16 v15, v22

    goto/16 :goto_11

    :cond_41
    move-object/from16 v11, p3

    .line 248
    invoke-interface {v13, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_23

    :cond_42
    move-object v11, v9

    move-object/from16 v22, v15

    move-object/from16 v9, v19

    .line 249
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 250
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v6

    .line 251
    iget-object v0, v6, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 252
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 253
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    invoke-static {v6, v1}, Lcom/android/tools/r8/internal/Du;->a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/u1;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 254
    iget-object v0, v6, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 255
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/android/tools/r8/internal/pZ;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pZ;-><init>()V

    .line 257
    iget-object v2, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 258
    iput-object v2, v1, Lcom/android/tools/r8/internal/pZ;->d:Ljava/util/ArrayList;

    .line 259
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 260
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    invoke-static {v0, v3, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    const/4 v3, 0x0

    .line 262
    invoke-interface {v8, v2, v3}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 263
    iput-object v2, v1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 264
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pZ;->a()Lcom/android/tools/r8/internal/sE;

    move-result-object v1

    .line 265
    check-cast v1, Lcom/android/tools/r8/internal/pZ;

    .line 266
    iput-object v0, v1, Lcom/android/tools/r8/internal/pZ;->e:Lcom/android/tools/r8/graph/M2;

    .line 267
    new-instance v0, Lcom/android/tools/r8/internal/qZ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/pZ;->e:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v4, v1, Lcom/android/tools/r8/internal/pZ;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 268
    iget-object v1, v1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz v1, :cond_43

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    :cond_43
    const/4 v1, 0x0

    .line 270
    invoke-interface {v13, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto :goto_23

    .line 271
    :cond_44
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_45

    :goto_25
    goto :goto_23

    .line 272
    :cond_45
    iget-object v0, v6, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 273
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v2, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 274
    new-instance v15, Ljava/util/ArrayList;

    .line 275
    iget-object v0, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    iget-object v5, v6, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v3, :cond_4a

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v19, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 279
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    instance-of v1, v1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v1, :cond_49

    if-nez v0, :cond_47

    .line 281
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 282
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    move/from16 p3, v3

    const/4 v0, 0x0

    int-to-long v3, v0

    .line 283
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v23

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v24, p3

    move-object/from16 v25, v5

    move-object/from16 v5, v23

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 284
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 285
    sget-boolean v2, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v2, :cond_48

    if-ne v1, v6, :cond_46

    goto :goto_27

    :cond_46
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_47
    move/from16 v24, v3

    move-object/from16 v25, v5

    .line 286
    :cond_48
    :goto_27
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v19

    move/from16 v3, v24

    move-object/from16 v5, v25

    goto :goto_26

    :cond_49
    move/from16 v24, v3

    move-object/from16 v25, v5

    .line 287
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v19

    goto :goto_26

    .line 288
    :cond_4a
    new-instance v0, Lcom/android/tools/r8/internal/qZ;

    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->S1:Lcom/android/tools/r8/graph/M2;

    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 289
    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-static {v1, v3, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    const/4 v2, 0x0

    .line 291
    invoke-interface {v8, v1, v2}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 292
    invoke-direct {v0, v14, v1, v15}, Lcom/android/tools/r8/internal/qZ;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 293
    invoke-interface {v13, v0, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 294
    iget-object v1, v6, Lcom/android/tools/r8/internal/qZ;->l:Lcom/android/tools/r8/graph/M2;

    .line 295
    invoke-virtual {v12, v0, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_23

    .line 296
    :cond_4b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 297
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v5, v21

    move-object v6, v10

    .line 298
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Y5;Ljava/util/Set;Lcom/android/tools/r8/internal/fX;)V

    goto/16 :goto_23

    .line 299
    :cond_4c
    instance-of v1, v0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v1, :cond_5c

    .line 300
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 302
    iget-object v6, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 303
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-nez v2, :cond_4d

    goto/16 :goto_25

    .line 304
    :cond_4d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->f1()Z

    move-result v2

    if-nez v2, :cond_4e

    .line 305
    invoke-interface {v13}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_23

    .line 306
    :cond_4e
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    move-object/from16 v14, v21

    invoke-interface {v14, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 307
    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    sget-boolean v2, Lcom/android/tools/r8/internal/nu;->c:Z

    if-nez v2, :cond_50

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 309
    iget-object v4, v0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_28

    .line 310
    :cond_4f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 311
    :cond_50
    :goto_28
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 312
    iget-object v0, v0, Lcom/android/tools/r8/internal/mu;->d:Lcom/android/tools/r8/internal/QC;

    .line 313
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/XB;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 314
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 315
    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    if-nez v2, :cond_52

    .line 316
    iget-object v1, v0, Lcom/android/tools/r8/internal/nu;->a:Lcom/android/tools/r8/internal/nC;

    .line 317
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_29

    .line 318
    :cond_51
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_52
    :goto_29
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v0

    .line 320
    sget-boolean v1, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez v1, :cond_54

    .line 321
    iget v1, v0, Lcom/android/tools/r8/internal/mu;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_53

    goto :goto_2a

    .line 322
    :cond_53
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_54
    :goto_2a
    iget v0, v0, Lcom/android/tools/r8/internal/mu;->e:I

    int-to-long v4, v0

    .line 324
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v15

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v3

    move-wide v3, v4

    move-object v5, v15

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 325
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 326
    sget-boolean v1, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 327
    new-instance v1, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 328
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 329
    iget-object v2, v2, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 330
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    .line 331
    iget-object v4, v2, Lcom/android/tools/r8/internal/Nl0;->c:Lcom/android/tools/r8/graph/H5;

    .line 332
    invoke-interface {v10, v4, v3}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 333
    iget-object v2, v2, Lcom/android/tools/r8/internal/Nl0;->c:Lcom/android/tools/r8/graph/H5;

    .line 334
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    .line 335
    iput-object v2, v1, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 336
    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 337
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 338
    invoke-virtual {v1, v8, v2}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/UJ;

    .line 339
    check-cast v1, Lcom/android/tools/r8/internal/fK;

    .line 340
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fK;

    .line 341
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    invoke-interface {v13, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 343
    invoke-virtual {v12, v0, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    sget-object v2, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    .line 346
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 347
    invoke-static {v2, v1, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 348
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    .line 349
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 350
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v2

    .line 351
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v4, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1$c;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 352
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 353
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 354
    :cond_56
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    .line 355
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    move-object/from16 v15, v18

    if-eq v3, v4, :cond_57

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    :cond_57
    move-object/from16 v5, v20

    goto :goto_2d

    .line 356
    :cond_58
    iget-object v3, v3, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 357
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    :goto_2c
    move-object/from16 v18, v15

    goto :goto_2b

    .line 358
    :goto_2d
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v5

    goto :goto_2c

    :cond_59
    move-object/from16 v19, v9

    move-object v9, v11

    move-object v11, v14

    move-object/from16 v14, v20

    goto/16 :goto_24

    :cond_5a
    move-object/from16 v15, v18

    move-object/from16 v5, v20

    .line 359
    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/l1;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 360
    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/l1;)I

    move-result v0

    const/4 v1, 0x0

    .line 361
    invoke-virtual {v8, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 362
    invoke-interface {v13, v0, v1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 363
    invoke-virtual {v12, v0, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    move-object/from16 v19, v9

    move-object v9, v11

    move-object v11, v14

    move-object/from16 v18, v15

    move-object/from16 v15, v22

    move-object v14, v5

    goto/16 :goto_11

    :cond_5c
    move-object/from16 v15, v18

    move-object/from16 v5, v20

    move-object/from16 v14, v21

    .line 364
    instance-of v1, v0, Lcom/android/tools/r8/internal/bE;

    if-eqz v1, :cond_64

    .line 365
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->c()Lcom/android/tools/r8/internal/bE;

    move-result-object v6

    .line 366
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 367
    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 368
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 369
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    iget-object v3, v0, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 370
    sget-boolean v4, Lcom/android/tools/r8/internal/nu;->c:Z

    if-nez v4, :cond_5e

    .line 371
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_2e

    .line 372
    :cond_5d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 373
    :cond_5e
    :goto_2e
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/nu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/mu;

    move-result-object v2

    .line 374
    sget-boolean v3, Lcom/android/tools/r8/internal/mu;->f:Z

    if-nez v3, :cond_60

    .line 375
    iget-object v3, v2, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    .line 376
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_2f

    :cond_5f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 377
    :cond_60
    :goto_2f
    iget-object v2, v2, Lcom/android/tools/r8/internal/mu;->a:Lcom/android/tools/r8/internal/nC;

    .line 378
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/qu;

    .line 379
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/qu;->e()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 380
    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 381
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 382
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 383
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Nl0;->h(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 384
    invoke-interface {v10, v0, v1}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    :goto_30
    move-object/from16 v18, v0

    goto :goto_31

    .line 385
    :cond_61
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 386
    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    iget-object v4, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v4, v2}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object v2

    .line 387
    iget-object v3, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 388
    invoke-virtual {v2, v3, v0}, Lcom/android/tools/r8/internal/PT;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 389
    invoke-interface {v10, v0, v1}, Lcom/android/tools/r8/internal/Cu;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    goto :goto_30

    .line 390
    :goto_31
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->h()Lcom/android/tools/r8/internal/p10;

    move-result-object v1

    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, v1, v2}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    const/4 v1, 0x0

    .line 391
    invoke-interface {v8, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 392
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/bE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 394
    instance-of v1, v1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v1, :cond_62

    .line 395
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 396
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    move-object/from16 p3, v3

    const/4 v0, 0x0

    int-to-long v3, v0

    .line 397
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v19

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v20, v9

    move-object/from16 v9, p3

    move-object/from16 v21, v5

    move-object/from16 v5, v19

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 398
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_32

    :cond_62
    move-object/from16 v21, v5

    move-object/from16 v20, v9

    move-object v9, v3

    .line 399
    :goto_32
    new-instance v1, Lcom/android/tools/r8/internal/gK;

    .line 400
    invoke-virtual/range {v18 .. v18}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/A2;

    sget v3, Lcom/android/tools/r8/internal/hC;->c:I

    .line 401
    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 402
    invoke-direct {v1, v2, v9, v3}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 v0, 0x0

    .line 403
    invoke-interface {v13, v1, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 404
    iget-object v0, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 405
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    :goto_33
    move-object v9, v11

    move-object v11, v14

    move-object/from16 v18, v15

    move-object/from16 v19, v20

    move-object/from16 v14, v21

    goto/16 :goto_24

    :cond_64
    move-object/from16 v21, v5

    move-object/from16 v20, v9

    .line 406
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m1()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 407
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x()Lcom/android/tools/r8/internal/J3;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v1

    if-nez v1, :cond_66

    .line 409
    sget-boolean v1, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v1, :cond_6a

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    instance-of v1, v1, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v1, :cond_65

    goto :goto_34

    .line 411
    :cond_65
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 412
    :cond_66
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W3;->H()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_67

    goto :goto_34

    .line 413
    :cond_67
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    .line 414
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 415
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 416
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v2

    if-eqz v2, :cond_6a

    goto :goto_35

    .line 417
    :cond_68
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 418
    instance-of v1, v1, Lcom/android/tools/r8/internal/uI;

    if-eqz v1, :cond_6a

    .line 419
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    if-eqz v1, :cond_69

    goto :goto_34

    .line 420
    :cond_69
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    goto :goto_35

    :cond_6a
    :goto_34
    const/4 v1, 0x0

    :goto_35
    if-eqz v1, :cond_6d

    .line 421
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 422
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 423
    :cond_6b
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->w2()Lcom/android/tools/r8/internal/J3;

    move-result-object v9

    const/4 v0, 0x0

    .line 424
    invoke-interface {v13, v9, v0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 425
    invoke-virtual {v12, v9, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 427
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v5

    .line 428
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 429
    instance-of v0, v0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_6c

    .line 430
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 431
    iget-object v2, v7, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    const/4 v3, 0x0

    int-to-long v0, v3

    .line 432
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v18

    move-wide/from16 v23, v0

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v19, v3

    move-wide/from16 v3, v23

    move-object/from16 p3, v9

    move-object v9, v5

    move-object/from16 v5, v18

    invoke-interface/range {v0 .. v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 433
    invoke-virtual {v9, v6, v0}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    .line 434
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_36

    :cond_6c
    move-object/from16 p3, v9

    const/16 v19, 0x0

    :goto_36
    move-object/from16 v0, p3

    goto :goto_37

    :cond_6d
    const/16 v19, 0x0

    .line 435
    :goto_37
    sget-boolean v1, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v1, :cond_63

    .line 436
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v2

    if-nez v2, :cond_6f

    if-nez v1, :cond_63

    .line 437
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    instance-of v0, v0, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v0, :cond_6e

    goto/16 :goto_33

    .line 439
    :cond_6e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6f
    if-nez v1, :cond_63

    .line 440
    invoke-interface {v0}, Lcom/android/tools/r8/internal/YC;->f()Lcom/android/tools/r8/internal/YV;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    if-ne v0, v1, :cond_63

    .line 441
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W3;->H()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_63

    .line 442
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W3;->E()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_70

    goto/16 :goto_33

    .line 443
    :cond_70
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_71
    const/16 v19, 0x0

    .line 444
    instance-of v1, v0, Lcom/android/tools/r8/internal/vZ;

    if-eqz v1, :cond_63

    .line 445
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->x0()Lcom/android/tools/r8/internal/vZ;

    move-result-object v0

    .line 446
    sget-boolean v1, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v1, :cond_73

    iget-object v1, v7, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    .line 447
    iget-object v2, v0, Lcom/android/tools/r8/internal/vZ;->k:Lcom/android/tools/r8/graph/M2;

    .line 448
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_38

    :cond_72
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 449
    :cond_73
    :goto_38
    iget v0, v0, Lcom/android/tools/r8/internal/vZ;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    .line 450
    invoke-virtual {v8, v0, v2}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v0

    .line 451
    invoke-interface {v13, v0, v2}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    goto/16 :goto_33

    :cond_74
    move-object/from16 v21, v14

    move-object v14, v11

    move-object/from16 v0, v16

    move-object/from16 v13, v18

    move-object/from16 v14, v21

    goto/16 :goto_9

    :cond_75
    move-object v14, v11

    .line 452
    iget-object v0, v8, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x24

    .line 453
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 454
    invoke-virtual {v7, v8, v12, v10}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/fX;)V

    .line 455
    :cond_76
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 456
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_77

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->r()V

    :cond_77
    return-object v14
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/fX;)V
    .locals 8

    .line 457
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 458
    :cond_0
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 459
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 460
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 461
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    .line 462
    :cond_1
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/lQ0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/lQ0;-><init>()V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/qZ;

    if-eqz v2, :cond_0

    .line 463
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/Du;->a(Lcom/android/tools/r8/internal/qZ;Lcom/android/tools/r8/graph/u1;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v4, 0x0

    .line 465
    :goto_1
    iget-object v5, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 467
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 468
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    .line 469
    invoke-virtual {p0, p2, v5}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 470
    new-instance v7, Lcom/android/tools/r8/internal/mQ0;

    invoke-direct {v7, p0, p1, p3, v6}, Lcom/android/tools/r8/internal/mQ0;-><init>(Lcom/android/tools/r8/internal/Ou;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Cu;Lcom/android/tools/r8/internal/B60;)V

    .line 471
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/gK;

    .line 472
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 473
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 474
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 475
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    .line 476
    invoke-interface {v1, p1, v0, v2, v3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Ljava/util/Collection;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/EE;

    move-result-object v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/H5;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/fX;)V
    .locals 2

    .line 619
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_1

    .line 620
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 621
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 622
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 623
    invoke-virtual {p0, p3, v0}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 624
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v1, p3}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object p3

    .line 625
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 626
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/PT;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object p3

    .line 627
    invoke-interface {p5, p3, p2}, Lcom/android/tools/r8/internal/Cu;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 628
    new-instance p2, Lcom/android/tools/r8/internal/gK;

    .line 629
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p5

    .line 630
    iget-object p1, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 631
    invoke-direct {p2, p3, p5, p1}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 632
    invoke-interface {p4, p2, p1}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/internal/fB;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Y5;Ljava/util/Set;Lcom/android/tools/r8/internal/fX;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 492
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    .line 493
    iget-object v0, v6, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0, v2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 494
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 495
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, v6, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v9, Lcom/android/tools/r8/graph/u1;->n2:Lcom/android/tools/r8/graph/M2;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v8, v10, :cond_4

    .line 496
    iget-object v0, v9, Lcom/android/tools/r8/graph/u1;->R4:Lcom/android/tools/r8/graph/J1;

    iget-object v0, v0, Lcom/android/tools/r8/graph/J1;->c:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v0, :cond_23

    .line 497
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->I()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_b

    .line 499
    :cond_1
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->F()Lcom/android/tools/r8/internal/jh;

    move-result-object v0

    .line 501
    iget-object v0, v0, Lcom/android/tools/r8/internal/jh;->l:Lcom/android/tools/r8/graph/M2;

    .line 502
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_b

    .line 503
    :cond_2
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    iget-object v8, v6, Lcom/android/tools/r8/internal/Ou;->f:Lcom/android/tools/r8/internal/nu;

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/internal/nu;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/Tu;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/PT;

    move-result-object v7

    .line 504
    iget-object v8, v6, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 505
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/PT;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v7

    .line 506
    invoke-interface {v5, v7, v2}, Lcom/android/tools/r8/internal/Cu;->f(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 508
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v5

    move-object/from16 v8, p2

    .line 509
    invoke-interface {v8, v5, v11}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 510
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v8, p5

    invoke-interface {v8, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    move-object v5, v11

    .line 511
    :goto_0
    new-instance v2, Lcom/android/tools/r8/internal/gK;

    .line 512
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 513
    iget-object v1, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v7, v5, v1}, Lcom/android/tools/r8/internal/gK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    .line 515
    invoke-interface {v4, v2, v11}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 516
    invoke-virtual {v3, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    move-object/from16 v8, p2

    .line 517
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    iget-object v10, v6, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v10, Lcom/android/tools/r8/graph/u1;->q2:Lcom/android/tools/r8/graph/M2;

    if-ne v9, v14, :cond_19

    .line 518
    iget-object v0, v10, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    iget-object v9, v0, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v9, :cond_9

    .line 519
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_6

    .line 520
    iget-object v7, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v12, :cond_5

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 522
    :cond_6
    :goto_1
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 523
    invoke-virtual {v6, v3, v7}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    if-eqz v3, :cond_23

    if-nez v0, :cond_8

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 525
    :cond_8
    :goto_2
    iget-object v0, v6, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 526
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 527
    iget-object v3, v6, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 528
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Nl0;->c(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 529
    invoke-interface {v5, v0, v2}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 530
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 531
    invoke-static {v4, v1, v0, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    return-void

    .line 532
    :cond_9
    iget-object v9, v0, Lcom/android/tools/r8/graph/j2;->g:Lcom/android/tools/r8/graph/A2;

    const/4 v10, 0x2

    if-ne v7, v9, :cond_c

    .line 533
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_b

    .line 534
    iget-object v0, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 536
    :cond_b
    :goto_3
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 537
    invoke-virtual {v6, v3, v0}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 538
    iget-object v0, v6, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 539
    iget-object v0, v0, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 540
    iget-object v3, v6, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 541
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Nl0;->d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 542
    invoke-interface {v5, v0, v2}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 543
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 544
    invoke-static {v4, v1, v0, v2}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    return-void

    .line 545
    :cond_c
    iget-object v9, v0, Lcom/android/tools/r8/graph/j2;->k:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v9, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 546
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/H5;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/fX;)V

    return-void

    .line 547
    :cond_d
    iget-object v0, v0, Lcom/android/tools/r8/graph/j2;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v0, :cond_23

    .line 548
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_f

    .line 549
    iget-object v7, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 550
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v10, :cond_e

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 551
    :cond_f
    :goto_4
    iget-object v7, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 552
    new-instance v9, Lcom/android/tools/r8/internal/kQ0;

    invoke-direct {v9, v6, v3}, Lcom/android/tools/r8/internal/kQ0;-><init>(Lcom/android/tools/r8/internal/Ou;Ljava/util/Map;)V

    .line 553
    invoke-static {v7, v9}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    .line 555
    iget-object v7, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 556
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    iget-object v7, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 558
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v13

    :goto_5
    if-ge v10, v9, :cond_14

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 559
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 560
    instance-of v12, v12, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v12, :cond_11

    .line 561
    invoke-virtual/range {p2 .. p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v14

    .line 562
    :goto_6
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 563
    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_6

    .line 564
    :cond_10
    iget-object v11, v6, Lcom/android/tools/r8/internal/Ou;->e:Lcom/android/tools/r8/internal/nJ;

    move-object v12, v7

    int-to-long v7, v13

    .line 565
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v19

    move-object/from16 v15, p2

    move-object/from16 v16, v11

    move-wide/from16 v17, v7

    invoke-interface/range {v14 .. v19}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/nJ;JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 566
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    move-object v12, v7

    .line 567
    sget-boolean v7, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v7, :cond_13

    invoke-virtual {v6, v3, v11}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eqz v7, :cond_12

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_13
    :goto_7
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    move-object/from16 v8, p2

    move-object v7, v12

    goto :goto_5

    .line 569
    :cond_14
    iget-object v3, v6, Lcom/android/tools/r8/internal/Ou;->g:Lcom/android/tools/r8/internal/Tu;

    .line 570
    iget-object v3, v3, Lcom/android/tools/r8/internal/Tu;->b:Lcom/android/tools/r8/internal/Nl0;

    .line 571
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 572
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/internal/Nl0;->g(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    .line 573
    invoke-interface {v5, v3, v2}, Lcom/android/tools/r8/internal/Cu;->d(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 574
    invoke-static {v4, v1, v3, v0}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H5;Ljava/util/ArrayList;)V

    return-void

    :cond_15
    if-nez v0, :cond_17

    .line 575
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_9

    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_17
    :goto_9
    if-nez v0, :cond_23

    .line 576
    invoke-virtual {v1, v12}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v0

    if-eqz v0, :cond_18

    goto/16 :goto_b

    :cond_18
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 577
    :cond_19
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, v6, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v9, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    if-ne v8, v10, :cond_1a

    .line 578
    iget-object v0, v9, Lcom/android/tools/r8/graph/u1;->J4:Lcom/android/tools/r8/graph/u1$d;

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1$d;->A:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v0, :cond_23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    .line 579
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Ou;->a(Lcom/android/tools/r8/internal/gK;Lcom/android/tools/r8/graph/H5;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/fX;)V

    return-void

    .line 580
    :cond_1a
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v9, v6, Lcom/android/tools/r8/internal/Ou;->d:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v9, Lcom/android/tools/r8/graph/u1;->L2:Lcom/android/tools/r8/graph/M2;

    if-ne v8, v10, :cond_1e

    .line 581
    iget-object v0, v9, Lcom/android/tools/r8/graph/u1;->V4:Lcom/android/tools/r8/graph/T1;

    iget-object v2, v0, Lcom/android/tools/r8/graph/T1;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v2, :cond_1b

    goto/16 :goto_b

    .line 582
    :cond_1b
    iget-object v0, v0, Lcom/android/tools/r8/graph/T1;->b:Lcom/android/tools/r8/graph/A2;

    if-ne v7, v0, :cond_23

    .line 583
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-nez v0, :cond_1d

    .line 584
    iget-object v0, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 585
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_1c

    goto :goto_a

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 586
    :cond_1d
    :goto_a
    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 587
    invoke-virtual {v6, v3, v0}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 588
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 589
    invoke-interface/range {p4 .. p4}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void

    .line 590
    :cond_1e
    instance-of v7, v0, Lcom/android/tools/r8/graph/H5;

    if-eqz v7, :cond_23

    .line 591
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ou;->c:Lcom/android/tools/r8/internal/f6;

    .line 592
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 593
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ou;->c:Lcom/android/tools/r8/internal/f6;

    .line 594
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 595
    iget-object v7, v6, Lcom/android/tools/r8/internal/Ou;->b:Lcom/android/tools/r8/graph/y;

    .line 596
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    .line 597
    invoke-virtual {v7, v0}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v0

    .line 598
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 599
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object v7

    .line 600
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 601
    instance-of v8, v7, Lcom/android/tools/r8/internal/vc;

    if-eqz v8, :cond_1f

    .line 602
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object v7

    .line 603
    iget v7, v7, Lcom/android/tools/r8/internal/vc;->a:I

    .line 604
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 605
    invoke-virtual {v6, v3, v7}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-eqz v7, :cond_23

    .line 606
    new-instance v8, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 607
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    .line 608
    iput-object v9, v8, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 609
    iget-object v9, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 610
    invoke-virtual {v8, v9}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/fK;

    .line 611
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 612
    iput-object v1, v8, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 613
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object v1

    .line 614
    invoke-interface {v4, v1, v11}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    .line 615
    invoke-virtual {v3, v1, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-interface {v5, v0, v2}, Lcom/android/tools/r8/internal/Cu;->b(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    return-void

    .line 617
    :cond_1f
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-eqz v0, :cond_20

    goto :goto_b

    :cond_20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 618
    :cond_21
    sget-boolean v0, Lcom/android/tools/r8/internal/Ou;->h:Z

    if-eqz v0, :cond_22

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_23
    :goto_b
    return-void
.end method

.method public final synthetic b(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ou;->a(Ljava/util/Map;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
