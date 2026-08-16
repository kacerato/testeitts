.class public final Lcom/android/tools/r8/internal/Pr0;
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

.method public static a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    instance-of v1, v0, Lcom/android/tools/r8/internal/bY;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v1

    if-eq v1, v3, :cond_4

    :cond_3
    :goto_0
    return v2

    .line 14
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 15
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/zE;

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/f60;

    .line 21
    iget-object v6, v5, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    if-ne v0, v6, :cond_5

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_b

    .line 23
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 24
    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v0

    if-nez v0, :cond_9

    .line 26
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    .line 28
    :cond_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v0

    if-eq v0, v3, :cond_a

    :cond_9
    :goto_3
    return v2

    :cond_a
    move-object v0, v5

    .line 29
    :cond_b
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    goto :goto_1

    .line 30
    :cond_c
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 31
    iget-object p0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 32
    sget-boolean v4, Lcom/android/tools/r8/internal/Pr0;->e:Z

    if-nez v4, :cond_e

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_d

    goto :goto_4

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 33
    :cond_e
    :goto_4
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eq p0, v0, :cond_f

    return v2

    .line 34
    :cond_f
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N8;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 36
    :cond_10
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    .line 38
    iget-object v1, p0, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 39
    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-static {v1}, Lcom/android/tools/r8/internal/Pr0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_11
    return v3

    :cond_12
    return v2

    .line 40
    :cond_13
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Triviality check should always return before the loop terminates"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "ThrowCatchOptimizer"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v1, Lcom/android/tools/r8/internal/Ct;

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v7}, Lcom/android/tools/r8/internal/Ct;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Ct;->a()Z

    move-result v1

    new-instance v8, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v8}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v14

    move v15, v2

    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->t2()Z

    move-result v3

    const/16 v16, 0x1

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Z0()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v3

    if-eqz v3, :cond_c

    instance-of v1, v2, Lcom/android/tools/r8/internal/C4;

    if-eqz v1, :cond_9

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v1, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v1, :cond_4

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    if-ne v1, v13, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_2
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    if-ne v3, v2, :cond_7

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    iget-object v3, v1, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    iget-object v3, v1, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->R()V

    goto :goto_3

    :cond_6
    move/from16 v15, v16

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->J1()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->X()Lcom/android/tools/r8/internal/WD;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    sget-object v3, Lcom/android/tools/r8/internal/yE;->e:Lcom/android/tools/r8/internal/wE;

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v11}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    invoke-virtual {v1, v2, v11, v4, v3}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/xE;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/xE;-><init>()V

    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v11}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v4

    invoke-virtual {v1, v3, v11, v4, v2}, Lcom/android/tools/r8/internal/WJ;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    :cond_b
    :goto_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    move-object v1, v14

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v9

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    :goto_5
    move/from16 v1, v16

    goto/16 :goto_1

    :cond_c
    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    :cond_d
    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/VJ;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    iget-object v5, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/android/tools/r8/graph/Z4$c;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/H0;)Lcom/android/tools/r8/internal/TW;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->s()Ljava/util/BitSet;

    move-result-object v4

    const/4 v5, 0x0

    :goto_6
    iget-object v6, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    iget-object v6, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    iget-object v12, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v12}, Lcom/android/tools/r8/internal/xw0;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->D()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_7
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    iput-object v1, v14, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    invoke-interface {v14}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    move-object v1, v14

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v9

    move-object v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/a;)V

    const/4 v1, 0x0

    iput-object v1, v14, Lcom/android/tools/r8/internal/Y5;->f:Lcom/android/tools/r8/internal/B60;

    goto/16 :goto_5

    :cond_11
    move v2, v15

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/Collection;)V

    if-eqz v2, :cond_13

    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    iget-object v3, v8, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_13
    sget-boolean v2, Lcom/android/tools/r8/internal/Pr0;->e:Z

    if-nez v2, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->n()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_8

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_15
    :goto_8
    iget-object v2, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v8, v2, v7, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual/range {p0 .. p1}, Lcom/android/tools/r8/internal/Pr0;->c(Lcom/android/tools/r8/internal/fB;)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_17
    if-eqz v1, :cond_18

    sget-object v1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object v1

    :cond_18
    sget-object v1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object v1
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v9, :cond_19

    iget-object v9, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/graph/u1;->E4:Lcom/android/tools/r8/graph/j2;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/graph/A2;

    iget-object v13, v9, Lcom/android/tools/r8/graph/j2;->f:Lcom/android/tools/r8/graph/A2;

    if-eq v12, v13, :cond_1

    iget-object v13, v9, Lcom/android/tools/r8/graph/j2;->g:Lcom/android/tools/r8/graph/A2;

    if-eq v12, v13, :cond_1

    iget-object v13, v9, Lcom/android/tools/r8/graph/j2;->h:Lcom/android/tools/r8/graph/A2;

    if-eq v12, v13, :cond_1

    iget-object v13, v9, Lcom/android/tools/r8/graph/j2;->i:Lcom/android/tools/r8/graph/A2;

    if-eq v12, v13, :cond_1

    iget-object v9, v9, Lcom/android/tools/r8/graph/j2;->j:Lcom/android/tools/r8/graph/A2;

    if-ne v12, v9, :cond_2

    :cond_1
    :goto_1
    move-object/from16 v17, v2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    iget-object v12, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v13

    if-nez v13, :cond_5

    sget-boolean v8, Lcom/android/tools/r8/internal/Pr0;->e:Z

    if-nez v8, :cond_1

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_5
    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v11, :cond_1

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->R0()Lcom/android/tools/r8/internal/Or0;

    move-result-object v13

    iget-object v14, v13, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v15

    if-eqz v15, :cond_7

    iget-object v15, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v15

    if-eqz v15, :cond_7

    goto :goto_2

    :cond_7
    new-instance v15, Lcom/android/tools/r8/internal/hz0;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/hz0;-><init>()V

    invoke-virtual {v14, v15}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v15

    if-eqz v15, :cond_b

    iget-object v14, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v14

    iget-object v15, v14, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->E3:Lcom/android/tools/r8/graph/M2;

    if-eq v15, v3, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v3

    if-eq v3, v10, :cond_9

    goto/16 :goto_1

    :cond_9
    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v14

    invoke-static {v3, v14}, Lcom/android/tools/r8/internal/iB;->a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    if-nez v3, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    iget-object v14, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v14, v14, Lcom/android/tools/r8/graph/u1;->W4:Lcom/android/tools/r8/graph/h2;

    iget-object v14, v14, Lcom/android/tools/r8/graph/h2;->a:Lcom/android/tools/r8/graph/A2;

    if-eq v3, v14, :cond_c

    goto/16 :goto_1

    :cond_b
    :goto_2
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v14, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_c
    invoke-virtual {v12, v13}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/zE;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/zE;

    iget-object v15, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/xw0;->V()I

    move-result v17

    if-lez v17, :cond_d

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/tools/r8/internal/zE;

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v11

    move-object/from16 v17, v2

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-eq v11, v2, :cond_e

    goto/16 :goto_8

    :cond_e
    move-object/from16 v2, v17

    const/4 v11, 0x1

    goto :goto_4

    :cond_f
    move-object/from16 v17, v2

    invoke-static {v15, v10}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v2

    sget-object v11, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v14, v15, v10, v2, v11}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v2, v17

    const/4 v10, 0x2

    const/4 v11, 0x1

    goto :goto_3

    :cond_10
    move-object/from16 v17, v2

    invoke-virtual {v6, v12}, Lcom/android/tools/r8/internal/W5;->c(Lcom/android/tools/r8/internal/W5;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_8

    :cond_11
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/W5;->T()V

    sget-boolean v4, Lcom/android/tools/r8/internal/Pr0;->e:Z

    if-nez v4, :cond_13

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    if-ne v9, v5, :cond_12

    goto :goto_5

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_13
    :goto_5
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    new-instance v10, Lcom/android/tools/r8/internal/mK;

    iget-object v9, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    new-instance v11, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v11, v9}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-direct {v10, v5, v9, v11}, Lcom/android/tools/r8/internal/mK;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/xw0;Ljava/util/List;)V

    invoke-virtual {v10, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-interface {v7, v10}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    invoke-interface {v7, v2, v9}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    if-nez v4, :cond_15

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_6

    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_15
    :goto_6
    if-nez v4, :cond_17

    invoke-static {v6}, Lcom/android/tools/r8/internal/R5;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-ne v2, v3, :cond_16

    goto :goto_7

    :cond_16
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_17
    :goto_7
    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_9

    :cond_18
    :goto_8
    move-object/from16 v2, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_19
    move-object/from16 v17, v2

    :goto_9
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->c2()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->w0()Lcom/android/tools/r8/internal/tZ;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tools/r8/internal/tZ;->k:Lcom/android/tools/r8/graph/M2;

    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v3, v3, Lcom/android/tools/r8/graph/u1;->E3:Lcom/android/tools/r8/graph/M2;

    if-ne v2, v3, :cond_1d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->U()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    iget-object v10, v0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->W4:Lcom/android/tools/r8/graph/h2;

    iget-object v10, v10, Lcom/android/tools/r8/graph/h2;->a:Lcom/android/tools/r8/graph/A2;

    if-ne v9, v10, :cond_1d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v10

    if-ne v9, v10, :cond_1d

    iget-object v9, v3, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v9

    if-ne v3, v9, :cond_1d

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->m2()Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->R0()Lcom/android/tools/r8/internal/Or0;

    move-result-object v9

    iget-object v9, v9, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    if-ne v9, v12, :cond_1c

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v12, v13, v5}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    new-instance v9, Lcom/android/tools/r8/internal/Or0;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/tools/r8/internal/Or0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v12, Lcom/android/tools/r8/internal/Pr0;->e:Z

    if-nez v12, :cond_1b

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v12

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    if-ne v12, v2, :cond_1a

    goto :goto_a

    :cond_1a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1b
    :goto_a
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v3, v9}, Lcom/android/tools/r8/internal/zE;->c(Lcom/android/tools/r8/internal/zE;)V

    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->remove()V

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->remove()V

    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    invoke-interface {v7}, Lcom/android/tools/r8/internal/EE;->remove()V

    invoke-interface {v7, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {v7, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    move v5, v10

    :cond_1c
    :goto_b
    move v3, v11

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_1d
    const/4 v11, 0x0

    goto :goto_b

    :cond_1e
    if-eqz v4, :cond_1f

    new-instance v2, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v2}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    iget-object v3, v0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    :cond_1f
    if-eqz v5, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->x()V

    :cond_20
    return v5
.end method
