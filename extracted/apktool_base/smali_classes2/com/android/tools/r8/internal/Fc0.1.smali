.class public final Lcom/android/tools/r8/internal/Fc0;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public static c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/eU;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/eU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eU;-><init>()V

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/eU;->a(J)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/eU;->b(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/tools/r8/internal/eU;->a(Ljava/lang/Object;J)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static d(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/dt;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/dt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/dt;-><init>(Lcom/android/tools/r8/internal/fB;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "RedundantConstNumberRemover"

    return-object v0
.end method

.method public final a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z
    .locals 9

    .line 9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 10
    :cond_0
    iget-object v0, p5, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    .line 11
    invoke-virtual {p5, v0}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p5

    .line 12
    check-cast p5, Lcom/android/tools/r8/internal/eU;

    .line 13
    invoke-virtual {p5, p1, p2}, Lcom/android/tools/r8/internal/eU;->b(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_c

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 16
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 17
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/qh;

    .line 18
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 19
    sget-boolean v5, Lcom/android/tools/r8/internal/Fc0;->e:Z

    if-nez v5, :cond_4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v5, :cond_6

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 21
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v6, p4, :cond_8

    .line 22
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eq v8, v7, :cond_8

    if-eqz v5, :cond_7

    goto :goto_0

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_8
    const/4 v5, 0x0

    .line 24
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 25
    invoke-virtual {p3, v5}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    .line 26
    :cond_9
    iget-object v5, p6, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    .line 27
    invoke-virtual {p6, v5}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/tools/r8/internal/dt;

    invoke-virtual {v5, v6, p4}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 29
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    iget-object v8, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v6, v8}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 30
    invoke-virtual {v4, p3}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 31
    iget-object v1, v3, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 32
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    move v1, v7

    goto/16 :goto_0

    .line 33
    :cond_a
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    .line 34
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_c

    .line 35
    invoke-virtual {p5, p1, p2}, Lcom/android/tools/r8/internal/eU;->c(J)Ljava/lang/Object;

    :cond_c
    :goto_3
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v0, Lcom/android/tools/r8/internal/C2;->w:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/C2;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ$p;->k0:Z

    if-nez p2, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    iget-boolean p2, p2, Lcom/android/tools/r8/internal/nJ;->h0:Z

    if-eqz p2, :cond_1

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0xf

    .line 8
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 21

    move-object/from16 v0, p1

    new-instance v8, Lcom/android/tools/r8/internal/sR;

    new-instance v1, Lcom/android/tools/r8/internal/zE0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/zE0;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {v8, v1}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    new-instance v9, Lcom/android/tools/r8/internal/sR;

    new-instance v1, Lcom/android/tools/r8/internal/AE0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/AE0;-><init>(Lcom/android/tools/r8/internal/fB;)V

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/sR;-><init>(Ljava/util/function/Supplier;)V

    iget-object v1, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v1

    iget-object v2, v1, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    iget-object v3, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v3

    const/4 v15, 0x1

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object v7, v13

    :goto_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v2, v3, :cond_3

    sget-object v4, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    move-object v5, v2

    move-object/from16 v16, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->u2()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    move-object/from16 v16, v2

    move-object v5, v3

    :goto_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fc0;->a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z

    move-result v1

    or-int/2addr v12, v1

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-wide/16 v2, 0x1

    move-object/from16 v1, p0

    move-object v4, v14

    move-object/from16 v5, v16

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fc0;->a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z

    move-result v1

    :goto_3
    or-int/2addr v1, v12

    move v12, v1

    goto/16 :goto_a

    :cond_5
    sget-boolean v17, Lcom/android/tools/r8/internal/Fc0;->e:Z

    if-nez v17, :cond_7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_7
    :goto_4
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v1

    const-wide/16 v18, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    move-object/from16 v1, p0

    move-object v4, v7

    move-object v6, v8

    move-object v11, v7

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fc0;->a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z

    move-result v1

    or-int/2addr v12, v1

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v11, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v17, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_9
    :goto_5
    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v1

    cmp-long v1, v1, v18

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    :goto_6
    int-to-long v2, v15

    move-object/from16 v1, p0

    move-object v4, v11

    move-object/from16 v5, v16

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fc0;->a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z

    move-result v1

    or-int/2addr v12, v1

    goto :goto_a

    :cond_b
    move-object v11, v7

    if-nez v17, :cond_d

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_7
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v2

    move-object/from16 v1, p0

    move-object v4, v14

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fc0;->a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z

    move-result v1

    or-int/2addr v12, v1

    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v11, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-nez v17, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/tools/r8/internal/xw0;->a(Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_8

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v1

    cmp-long v1, v1, v18

    if-nez v1, :cond_10

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    :goto_9
    int-to-long v2, v15

    move-object/from16 v1, p0

    move-object v4, v14

    move-object/from16 v5, v16

    move-object v6, v8

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Lcom/android/tools/r8/internal/Fc0;->a(JLcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/sR;Lcom/android/tools/r8/internal/sR;)Z

    move-result v1

    goto/16 :goto_3

    :cond_11
    :goto_a
    iget-object v1, v8, Lcom/android/tools/r8/internal/sR;->b:Ljava/util/function/Supplier;

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/D7;->a(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/eU;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/eU;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_13
    :goto_b
    if-eqz v12, :cond_14

    invoke-virtual {v0, v13, v13}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    :cond_14
    if-eqz v12, :cond_15

    sget-object v0, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v0

    :cond_15
    sget-object v0, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v0
.end method
