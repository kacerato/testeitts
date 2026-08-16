.class public final Lcom/android/tools/r8/internal/wn0;
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

.method public static a(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;
    .locals 14

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_18

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 30
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    goto :goto_0

    .line 33
    :cond_1
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 34
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    goto :goto_0

    .line 35
    :cond_2
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 36
    :goto_0
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    .line 37
    new-instance v7, Lcom/android/tools/r8/internal/Yx0;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 38
    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 39
    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 40
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/f60;

    .line 41
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 42
    invoke-interface {v11}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 43
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    if-ne v9, v6, :cond_4

    .line 44
    :cond_5
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 45
    invoke-interface {v11}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_6
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/Yx0;->a()Ljava/util/Set;

    move-result-object v6

    .line 47
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    .line 48
    new-instance v9, Lcom/android/tools/r8/internal/Yx0;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 49
    invoke-virtual {v9, v4}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    .line 50
    new-instance v8, Lcom/android/tools/r8/internal/Xx1;

    invoke-direct {v8, v5, v4, v6, v7}, Lcom/android/tools/r8/internal/Xx1;-><init>(Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Ljava/util/Set;Ljava/util/Set;)V

    .line 51
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/BiConsumer;)Lcom/android/tools/r8/internal/Yx0;

    .line 52
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f60;

    .line 53
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/xw0;

    .line 54
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v8}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v8}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_9

    .line 55
    :cond_9
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/f60;

    .line 56
    iget-object v7, v6, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    move v8, v2

    .line 57
    :goto_2
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 58
    iget-object v9, v6, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    .line 59
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 60
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 61
    sget-boolean v11, Lcom/android/tools/r8/internal/wn0;->e:Z

    if-nez v11, :cond_c

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_3

    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_c
    :goto_3
    if-nez v11, :cond_e

    .line 62
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_4

    :cond_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 63
    :cond_e
    :goto_4
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v9

    .line 64
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v12

    if-eqz v12, :cond_13

    .line 65
    sget-boolean v11, Lcom/android/tools/r8/internal/EB;->m:Z

    if-nez v11, :cond_10

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v12

    if-eqz v12, :cond_f

    goto :goto_5

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_10
    :goto_5
    if-nez v11, :cond_12

    .line 66
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->a()Lcom/android/tools/r8/internal/pu0;

    move-result-object v11

    iget-object v12, v5, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    invoke-static {v11, v12}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/internal/NB;)Z

    move-result v11

    if-eqz v11, :cond_11

    goto :goto_6

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 67
    :cond_12
    :goto_6
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/qh;->w2()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->signum(J)I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/android/tools/r8/internal/EB;->b(I)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    goto :goto_8

    .line 68
    :cond_13
    iget-object v12, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 69
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 70
    iget-object v11, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/xw0;

    .line 71
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v11

    .line 72
    invoke-virtual {v5, v11, v9}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    goto :goto_8

    :cond_14
    if-nez v11, :cond_16

    .line 73
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_7

    :cond_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 74
    :cond_16
    :goto_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->n()Lcom/android/tools/r8/internal/lh;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v11

    .line 75
    invoke-virtual {v5, v9, v11}, Lcom/android/tools/r8/internal/EB;->a(Lcom/android/tools/r8/internal/qh;Lcom/android/tools/r8/internal/qh;)Lcom/android/tools/r8/internal/W5;

    move-result-object v9

    .line 76
    :goto_8
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v10

    .line 77
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_18
    :goto_9
    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Bz;Lcom/android/tools/r8/internal/W5;)V
    .locals 6

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 19
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    .line 20
    sget-object v5, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/f60;->a(ILcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Predicate;)V

    goto :goto_0

    .line 21
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/Bz;->l:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v1

    if-ne v1, p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 24
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 25
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/EB;Lcom/android/tools/r8/internal/W5;Ljava/util/Set;Ljava/util/Set;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Yx0;)V
    .locals 3

    .line 78
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 81
    iget-object v0, p4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v2, v1, :cond_3

    .line 87
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 88
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    if-eq p4, p1, :cond_2

    .line 89
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 91
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/LinkedHashMap;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/Vx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Vx1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/EB;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    instance-of v0, v0, Lcom/android/tools/r8/internal/uI;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    instance-of v0, v0, Lcom/android/tools/r8/internal/Fx;

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 10
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/internal/wn0;->e:Z

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 13
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/xw0;

    .line 14
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v2
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->H1()Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/android/tools/r8/internal/fB;)Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/tools/r8/internal/Wx1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Wx1;-><init>()V

    invoke-static {p0, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/wn0;->a(Lcom/android/tools/r8/internal/EB;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->K()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EB;->y2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v3, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    :goto_1
    invoke-static {v2}, Lcom/android/tools/r8/internal/wn0;->a(Lcom/android/tools/r8/internal/EB;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    if-ne v3, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SplitBranch"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 1

    .line 93
    iget-object p2, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v0, 0x19

    .line 94
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 95
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 96
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 p2, 0x6

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 3

    invoke-static {p1}, Lcom/android/tools/r8/internal/wn0;->c(Lcom/android/tools/r8/internal/fB;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/wn0;->a(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/android/tools/r8/internal/we;->a:Lcom/android/tools/r8/internal/ve;

    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/android/tools/r8/internal/wn0;->a(Ljava/util/LinkedHashMap;)V

    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;)Z

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    sget-object p1, Lcom/android/tools/r8/internal/we;->b:Lcom/android/tools/r8/internal/ve;

    return-object p1
.end method
