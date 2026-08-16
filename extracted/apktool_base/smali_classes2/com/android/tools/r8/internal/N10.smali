.class public final Lcom/android/tools/r8/internal/N10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ir/optimize/A;


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/gK;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 80
    :cond_0
    sget-boolean v1, Lcom/android/tools/r8/internal/N10;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 81
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v1, :cond_6

    .line 82
    iget-object v1, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 83
    :cond_6
    :goto_2
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v1

    .line 84
    invoke-interface {p1, v1, v0}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/xw0;->f(Lcom/android/tools/r8/internal/xw0;)V

    .line 86
    sget-boolean v0, Lcom/android/tools/r8/internal/gK;->o:Z

    .line 87
    new-instance v0, Lcom/android/tools/r8/internal/fK;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/fK;-><init>()V

    .line 88
    iput-object p1, v0, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 89
    iget-object p1, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    .line 90
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/graph/u1;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    .line 91
    iput-object p1, v0, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    .line 92
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/UJ;->a(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/fK;

    .line 93
    iput-object p4, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 94
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fK;->c()Lcom/android/tools/r8/internal/gK;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/graph/proto/j;Lcom/android/tools/r8/internal/R00;)Ljava/util/Set;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v9, p4

    .line 1
    sget-boolean v3, Lcom/android/tools/r8/internal/N10;->c:Z

    if-nez v3, :cond_1

    .line 2
    instance-of v4, v9, Lcom/android/tools/r8/internal/K10;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v10

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    const v11, 0x7fffffff

    if-nez v3, :cond_3

    .line 9
    iget-object v3, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 10
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    .line 11
    invoke-static {v11, v3}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 13
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->l()I

    move-result v3

    const/4 v12, 0x0

    move v7, v12

    :goto_2
    if-ge v7, v3, :cond_7

    .line 14
    iget-object v8, v2, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 15
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v8

    .line 16
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/internal/zE;

    .line 17
    sget-boolean v14, Lcom/android/tools/r8/internal/N10;->c:Z

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 18
    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    instance-of v14, v8, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v14, :cond_6

    .line 20
    invoke-virtual {v13}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v8

    .line 21
    invoke-virtual {p0, v1, v13, v8, v6}, Lcom/android/tools/r8/internal/N10;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/gK;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 22
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 23
    :cond_7
    sget-boolean v3, Lcom/android/tools/r8/internal/N10;->c:Z

    if-nez v3, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 24
    :cond_9
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v12

    :goto_5
    if-ge v6, v3, :cond_a

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/tools/r8/internal/gK;

    .line 25
    invoke-interface {v5, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 27
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->p()Lcom/android/tools/r8/internal/hB;

    move-result-object v13

    .line 28
    :cond_b
    :goto_6
    invoke-interface {v13}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 29
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 31
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v14

    .line 32
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    .line 34
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object v6

    .line 35
    iget-object v7, v9, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 36
    sget-object v8, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    move-object/from16 v3, p4

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/R00;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v3

    .line 38
    iget-object v3, v3, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 39
    check-cast v3, Lcom/android/tools/r8/graph/A2;

    .line 40
    sget-boolean v4, Lcom/android/tools/r8/internal/N10;->c:Z

    if-nez v4, :cond_d

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 41
    :cond_d
    :goto_7
    iget-object v5, v9, Lcom/android/tools/r8/internal/R00;->d:Lcom/android/tools/r8/internal/Hz;

    .line 42
    invoke-virtual {v9, v5, v3}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/proto/j;

    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v4, :cond_f

    .line 44
    iget-object v4, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 45
    iget-object v4, v4, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    .line 46
    invoke-static {v11, v4}, Lcom/android/tools/r8/graph/proto/c;->a(ILcom/android/tools/r8/internal/jG;)I

    move-result v4

    if-nez v4, :cond_e

    goto :goto_8

    .line 47
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    :goto_8
    move v4, v12

    .line 48
    :goto_9
    iget-object v5, v14, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 50
    iget-object v5, v3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 51
    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    instance-of v6, v5, Lcom/android/tools/r8/graph/proto/k;

    if-eqz v6, :cond_10

    .line 54
    invoke-virtual {v14, v4}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 55
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/proto/b;->b()Lcom/android/tools/r8/graph/proto/k;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v7

    .line 56
    invoke-virtual {p0, v1, v6, v5, v7}, Lcom/android/tools/r8/internal/N10;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/mK;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 57
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 58
    invoke-interface {v13, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 59
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 60
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lcom/android/tools/r8/internal/zE;->a(ILcom/android/tools/r8/internal/xw0;)V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 61
    :cond_11
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 62
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 63
    iget-object v3, v3, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 64
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    .line 65
    invoke-virtual {p0, v1, v4, v3, v5}, Lcom/android/tools/r8/internal/N10;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/gK;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 66
    invoke-interface {v13, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 68
    :cond_12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v4

    .line 69
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v4

    if-nez v4, :cond_b

    .line 70
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 72
    iget-object v5, v2, Lcom/android/tools/r8/graph/proto/j;->c:Lcom/android/tools/r8/graph/proto/k;

    .line 73
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    .line 74
    invoke-virtual {p0, v1, v4, v5, v6}, Lcom/android/tools/r8/internal/N10;->b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/mK;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 75
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 76
    invoke-interface {v13, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 77
    invoke-interface {v13}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 78
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    const/4 v6, 0x0

    .line 79
    invoke-virtual {v3, v5, v4, v6}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    goto/16 :goto_6

    :cond_13
    return-object v10
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/proto/k;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/mK;
    .locals 3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/N10;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M2;->P0()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_1
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->s6:Lcom/android/tools/r8/internal/eA;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->f()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eA;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    sget-boolean v0, Lcom/android/tools/r8/internal/mK;->o:Z

    new-instance v0, Lcom/android/tools/r8/internal/lK;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lK;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/u1;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    iput-object v1, v0, Lcom/android/tools/r8/internal/UJ;->d:Lcom/android/tools/r8/graph/A2;

    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->e:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/k;->e()Lcom/android/tools/r8/graph/M2;

    move-result-object p3

    iget-object v1, p0, Lcom/android/tools/r8/internal/N10;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, v1}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/android/tools/r8/internal/sE;->a(Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/sE;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    sget p3, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance p3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {p3, p2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/UJ;->a(Ljava/util/List;)Lcom/android/tools/r8/internal/UJ;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/lK;

    iput-object p4, p1, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/lK;->c()Lcom/android/tools/r8/internal/mK;

    move-result-object p1

    return-object p1
.end method
