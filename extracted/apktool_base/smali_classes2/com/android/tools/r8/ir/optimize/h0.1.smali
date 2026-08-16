.class public Lcom/android/tools/r8/ir/optimize/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/fv;)Ljava/util/List;
    .locals 0

    .line 282
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/mS;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;",
            "Lcom/android/tools/r8/internal/fB;",
            "Lcom/android/tools/r8/internal/mS;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V

    .line 2
    iget-object p0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v3, Lcom/android/tools/r8/ir/optimize/d0;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/ir/optimize/d0;-><init>(Lcom/android/tools/r8/internal/mS;)V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 6
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 8
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/ir/optimize/d0;->a(Lcom/android/tools/r8/internal/zE;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->s()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    .line 12
    iget v6, v4, Lcom/android/tools/r8/internal/zE;->g:I

    .line 13
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->M()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 14
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    .line 15
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    instance-of v8, v8, Lcom/android/tools/r8/internal/ix;

    if-eqz v8, :cond_3

    move v7, v1

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    .line 18
    iget-object v8, v8, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 19
    iget v7, v7, Lcom/android/tools/r8/internal/zE;->g:I

    .line 20
    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v7

    .line 21
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/FT;->k()Z

    move-result v7

    :goto_1
    if-eqz v7, :cond_4

    .line 22
    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->s()V

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p2, v5, v6}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v5

    .line 24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/qh;

    if-eqz v6, :cond_5

    .line 25
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/qh;->b(Lcom/android/tools/r8/internal/zE;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 26
    invoke-interface {v0}, Lcom/android/tools/r8/internal/EE;->s()V

    goto :goto_0

    .line 27
    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v5, 0x1

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 30
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/qh;

    if-eqz v4, :cond_1

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 33
    :cond_7
    invoke-virtual {p2, v5, v6}, Lcom/android/tools/r8/internal/mS;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v4

    move v6, v1

    .line 34
    :goto_2
    iget-object v7, v5, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v7

    if-ge v6, v7, :cond_8

    add-int v7, v4, v6

    .line 35
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v4, v4, -0x1

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/qh;

    if-eqz v5, :cond_1

    .line 37
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->s2()Lcom/android/tools/r8/internal/Kw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/Kw0;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 39
    :cond_9
    new-instance p0, Lcom/android/tools/r8/ir/optimize/Z;

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/ir/optimize/Z;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 41
    iget-object v2, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 42
    invoke-static {v3, p2, v0, p0}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/mS;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/Z;)V

    goto :goto_3

    .line 43
    :cond_a
    iget-object p0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 44
    invoke-static {p1, p2, v1}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;I)V

    .line 45
    sget-boolean p0, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez p0, :cond_b

    .line 46
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Z)V

    :cond_b
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/mS;Ljava/util/Set;Lcom/android/tools/r8/ir/optimize/Z;)V
    .locals 7

    .line 47
    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 48
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 52
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 53
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    sget-boolean p0, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez p0, :cond_10

    invoke-interface {p2, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_4

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 55
    :cond_5
    iget-object v3, v2, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v3

    const/4 v4, 0x1

    .line 57
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 58
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 59
    iget-object v5, v5, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 60
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    .line 61
    invoke-virtual {p3, v3, v5}, Lcom/android/tools/r8/internal/gv;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    :cond_7
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 63
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_4

    .line 64
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 65
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_4

    .line 66
    :cond_a
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->T()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 67
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 68
    iget v5, v3, Lcom/android/tools/r8/internal/zE;->g:I

    .line 69
    invoke-interface {p1, v4, v5}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result v4

    .line 70
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    .line 71
    iget-object v5, v5, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 72
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lv/I0;

    invoke-direct {v6, p1, p0, v3, v4}, Lv/I0;-><init>(Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;I)V

    .line 73
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_4

    .line 74
    :cond_b
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {v4, v5}, Lcom/android/tools/r8/internal/ev;->a(Lcom/android/tools/r8/internal/ev;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 76
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    goto/16 :goto_4

    .line 77
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 78
    iget-object v5, v5, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 79
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    .line 80
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 81
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_1

    .line 82
    :cond_d
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->U1()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 83
    iget-object v4, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    .line 84
    iget-object v5, v4, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 85
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v4

    const/4 v5, 0x0

    .line 87
    invoke-virtual {v4, v3, v5}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->f()V

    .line 90
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    goto :goto_2

    .line 92
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_f

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 93
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->f()V

    goto :goto_3

    .line 94
    :cond_f
    invoke-interface {p2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 95
    invoke-static {p0}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_10
    :goto_4
    return-void

    .line 96
    :cond_11
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 99
    instance-of v1, v3, Lcom/android/tools/r8/internal/fj;

    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v1

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 102
    iget-object v3, v3, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    .line 103
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    goto :goto_5
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V
    .locals 14

    .line 283
    new-instance v0, Lcom/android/tools/r8/ir/optimize/s;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/ir/optimize/s;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 285
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move v6, v2

    .line 286
    :goto_0
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 287
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    .line 288
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    goto/16 :goto_4

    .line 289
    :cond_2
    new-instance v8, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v8, v0, v7}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 291
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 292
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 293
    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez v8, :cond_4

    invoke-interface {p1}, Lcom/android/tools/r8/internal/Je0;->e()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v8, :cond_4

    .line 294
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    .line 295
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 296
    :cond_4
    :goto_1
    invoke-interface {p1, v3, v7}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 297
    sget-object v8, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v8, v7, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 298
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    const/4 v10, 0x0

    .line 299
    iput-object v10, v8, Lcom/android/tools/r8/internal/CE;->c:Lcom/android/tools/r8/internal/zE;

    .line 300
    iput-object v10, v8, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    .line 301
    iput v2, v8, Lcom/android/tools/r8/internal/CE;->e:I

    .line 302
    iget-object v8, v0, Lcom/android/tools/r8/ir/optimize/s;->c:[I

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->q()I

    move-result v11

    const/4 v12, -0x1

    aput v12, v8, v11

    .line 303
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/W5;

    .line 304
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v12

    sget-object v13, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v11, v7, v10, v12, v13}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    goto :goto_2

    .line 306
    :cond_5
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 307
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez v8, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 309
    :cond_7
    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v8, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 311
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 312
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    .line 313
    invoke-virtual {v3, v8, v10}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    move v3, v9

    goto :goto_4

    .line 314
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    if-nez v3, :cond_0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 121
    iget-object v2, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/fB;->f()Ljava/util/List;

    move-result-object v3

    .line 123
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v4

    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->S0()Z

    move-result v2

    if-nez v2, :cond_5

    .line 126
    iget-object v2, v0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 127
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/EW$a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 128
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/dH;

    const/16 v5, 0x10

    .line 129
    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 130
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 131
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v7

    .line 132
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v7

    .line 133
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 134
    iget-object v7, v7, Lcom/android/tools/r8/internal/xw0;->h:Lcom/android/tools/r8/internal/FT;

    .line 135
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v8

    .line 136
    iget v8, v8, Lcom/android/tools/r8/internal/zE;->g:I

    .line 137
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/FT;->a(I)Lcom/android/tools/r8/internal/FT;

    move-result-object v7

    .line 138
    iget v7, v7, Lcom/android/tools/r8/internal/FT;->k:I

    .line 139
    sget-boolean v8, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez v8, :cond_2

    const/high16 v8, -0x80000000

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/dH;->a(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 141
    invoke-virtual {v2, v7}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_2

    .line 142
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {v2, v7, v8}, Lcom/android/tools/r8/internal/dH;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v7, v8

    .line 144
    :goto_2
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dH;->values()Lcom/android/tools/r8/internal/Od0;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/VG;

    .line 146
    new-instance v3, Lcom/android/tools/r8/internal/cH;

    .line 147
    iget-object v2, v2, Lcom/android/tools/r8/internal/VG;->b:Lcom/android/tools/r8/internal/dH;

    .line 148
    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/cH;-><init>(Lcom/android/tools/r8/internal/dH;)V

    .line 149
    :goto_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 150
    iget-object v2, v3, Lcom/android/tools/r8/internal/cH;->h:Lcom/android/tools/r8/internal/dH;

    iget-object v2, v2, Lcom/android/tools/r8/internal/dH;->c:[Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/bH;->a()I

    move-result v5

    aget-object v2, v2, v5

    .line 151
    check-cast v2, Ljava/util/List;

    .line 152
    new-instance v5, Lcom/android/tools/r8/internal/W5;

    .line 153
    iget-object v7, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 154
    invoke-direct {v5, v7}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 155
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 157
    :cond_5
    :goto_4
    new-instance v2, Lcom/android/tools/r8/internal/W5;

    .line 158
    iget-object v5, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 159
    invoke-direct {v2, v5}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 160
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    .line 163
    iget-object v3, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 164
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    iget-object v3, v0, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    .line 166
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    :cond_7
    :goto_5
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 169
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 170
    new-instance v7, Lcom/android/tools/r8/ir/optimize/Z;

    invoke-direct {v7, v0, v1}, Lcom/android/tools/r8/ir/optimize/Z;-><init>(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Je0;)V

    .line 171
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 172
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x2

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 173
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 174
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v6, :cond_9

    .line 175
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v12

    if-le v12, v6, :cond_9

    .line 176
    iget-object v11, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    .line 177
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v11

    .line 178
    new-instance v12, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v12, v7, v11}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 179
    new-instance v11, Lv/G0;

    invoke-direct {v11}, Lv/G0;-><init>()V

    .line 180
    invoke-virtual {v8, v12, v11}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 181
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 182
    :cond_9
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 183
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 184
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v12

    if-le v12, v11, :cond_8

    .line 185
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v11

    .line 186
    new-instance v12, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v12, v7, v11}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 187
    new-instance v11, Lv/H0;

    invoke-direct {v11}, Lv/H0;-><init>()V

    .line 188
    invoke-virtual {v8, v12, v11}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 189
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 190
    :cond_a
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 191
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v9, v11, :cond_b

    goto :goto_8

    :cond_b
    const/4 v9, 0x0

    .line 192
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 193
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v12

    move v13, v6

    .line 194
    :goto_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_19

    .line 195
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W5;

    .line 196
    sget-boolean v16, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez v16, :cond_d

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v17

    if-eqz v17, :cond_c

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    :goto_a
    if-nez v16, :cond_f

    .line 197
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v16

    if-nez v16, :cond_f

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v16

    if-eqz v16, :cond_e

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_f
    :goto_b
    iget-object v11, v10, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-nez v11, :cond_10

    const/4 v15, 0x0

    goto :goto_d

    .line 199
    :cond_10
    new-instance v15, Lcom/android/tools/r8/internal/dH;

    .line 200
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/dH;->size()I

    move-result v9

    invoke-direct {v15, v9}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 201
    invoke-virtual {v15, v11}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    .line 202
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    .line 203
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    instance-of v6, v11, Lcom/android/tools/r8/internal/fj;

    if-eqz v6, :cond_11

    .line 205
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v6

    invoke-virtual {v6, v15}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    :cond_11
    const/4 v6, 0x1

    goto :goto_c

    .line 206
    :cond_12
    :goto_d
    iget-object v6, v14, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-nez v6, :cond_13

    move-object/from16 v18, v2

    const/4 v9, 0x0

    goto :goto_f

    .line 207
    :cond_13
    new-instance v9, Lcom/android/tools/r8/internal/dH;

    .line 208
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dH;->size()I

    move-result v11

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 209
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    .line 210
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/internal/zE;

    .line 211
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v2

    .line 212
    instance-of v2, v11, Lcom/android/tools/r8/internal/fj;

    if-eqz v2, :cond_14

    .line 213
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    :cond_14
    move-object/from16 v2, v18

    goto :goto_e

    :cond_15
    move-object/from16 v18, v2

    .line 214
    :goto_f
    invoke-static {v15, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v9, 0x0

    goto :goto_11

    .line 215
    :cond_16
    iget-object v2, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 216
    iget-object v6, v14, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    const/4 v9, 0x0

    :goto_10
    if-eqz v2, :cond_18

    if-eqz v6, :cond_18

    .line 217
    iget-object v11, v0, Lcom/android/tools/r8/internal/fB;->b:Lcom/android/tools/r8/internal/EW$a;

    .line 218
    invoke-virtual {v2, v6, v1, v11}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/EW;)Z

    move-result v11

    if-nez v11, :cond_17

    goto :goto_11

    .line 219
    :cond_17
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v2

    .line 220
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    .line 221
    :cond_18
    :goto_11
    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v18

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x2

    goto/16 :goto_9

    :cond_19
    move-object/from16 v18, v2

    .line 222
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    mul-int/2addr v2, v12

    sub-int v2, p2, v2

    if-le v12, v6, :cond_30

    if-ltz v2, :cond_1a

    :goto_12
    move-object/from16 v2, v18

    const/4 v11, 0x2

    goto/16 :goto_8

    .line 223
    :cond_1a
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_13

    :cond_1b
    move-object v9, v5

    const/4 v2, 0x0

    .line 224
    :goto_13
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    .line 225
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/h0;->a:Z

    if-nez v2, :cond_1e

    if-eqz v9, :cond_1c

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->G1()Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    if-nez v9, :cond_1d

    .line 226
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_14

    .line 227
    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 228
    :cond_1e
    :goto_14
    new-instance v2, Lcom/android/tools/r8/internal/W5;

    .line 229
    iget-object v11, v0, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    .line 230
    invoke-direct {v2, v11}, Lcom/android/tools/r8/internal/W5;-><init>(Lcom/android/tools/r8/internal/mB;)V

    .line 231
    iget-object v11, v0, Lcom/android/tools/r8/internal/fB;->f:Lcom/android/tools/r8/internal/z10;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/z10;->a()I

    move-result v11

    .line 232
    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/W5;->d(I)V

    .line 233
    iget-object v11, v10, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    if-eqz v11, :cond_20

    .line 234
    new-instance v13, Lcom/android/tools/r8/internal/dH;

    .line 235
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/dH;->size()I

    move-result v14

    invoke-direct {v13, v14}, Lcom/android/tools/r8/internal/dH;-><init>(I)V

    .line 236
    invoke-virtual {v13, v11}, Lcom/android/tools/r8/internal/dH;->putAll(Ljava/util/Map;)V

    .line 237
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v11

    sub-int/2addr v11, v12

    .line 238
    iget-object v14, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    move-object v15, v14

    const/4 v14, 0x0

    :goto_15
    if-ge v14, v11, :cond_21

    .line 239
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    instance-of v6, v15, Lcom/android/tools/r8/internal/fj;

    if-eqz v6, :cond_1f

    .line 241
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->M()Lcom/android/tools/r8/internal/fj;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/android/tools/r8/internal/fj;->a(Lcom/android/tools/r8/internal/SG;)Z

    .line 242
    :cond_1f
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_15

    :cond_20
    const/4 v13, 0x0

    .line 243
    :cond_21
    invoke-interface {v1, v2, v12, v8}, Lcom/android/tools/r8/internal/Je0;->a(Lcom/android/tools/r8/internal/W5;ILjava/util/List;)V

    .line 244
    iget-object v6, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    move-object v14, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_16
    if-ge v6, v12, :cond_24

    if-nez v11, :cond_23

    .line 245
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->o()Z

    move-result v11

    if-eqz v11, :cond_22

    goto :goto_17

    :cond_22
    const/4 v11, 0x0

    goto :goto_18

    :cond_23
    :goto_17
    const/4 v11, 0x1

    .line 246
    :goto_18
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 247
    :cond_24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    if-nez v14, :cond_25

    .line 248
    iget-object v14, v10, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v14}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    goto :goto_19

    .line 249
    :cond_25
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/zE;->Y0()Lcom/android/tools/r8/internal/zE;

    move-result-object v14

    :goto_19
    invoke-virtual {v6, v14}, Lcom/android/tools/r8/internal/CE;->d(Lcom/android/tools/r8/internal/zE;)V

    if-eqz v11, :cond_26

    .line 250
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v6

    if-eqz v6, :cond_26

    .line 251
    iget-object v6, v10, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v6, v2, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 252
    sget-object v6, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v6, v10, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    .line 253
    :cond_26
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/internal/W5;

    .line 254
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v15

    if-ne v14, v10, :cond_27

    .line 255
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v19

    goto :goto_1c

    .line 256
    :cond_27
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->t()Lcom/android/tools/r8/internal/B60;

    move-result-object v19

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v12, :cond_28

    .line 257
    invoke-virtual {v15}, Lcom/android/tools/r8/internal/CE;->b()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p1

    goto :goto_1b

    .line 258
    :cond_28
    :goto_1c
    iget-object v0, v15, Lcom/android/tools/r8/internal/CE;->d:Lcom/android/tools/r8/internal/zE;

    :goto_1d
    if-eqz v0, :cond_29

    .line 259
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60;->o()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 261
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v19

    :cond_29
    move-object/from16 v0, v19

    goto :goto_1e

    .line 262
    :cond_2a
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b1()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    goto :goto_1d

    .line 263
    :goto_1e
    new-instance v1, Lcom/android/tools/r8/internal/Bz;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Bz;-><init>()V

    .line 264
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    const/4 v0, 0x0

    .line 265
    invoke-virtual {v15, v1, v0}, Lcom/android/tools/r8/internal/CE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/internal/zE;)V

    .line 266
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_2b

    .line 267
    invoke-virtual {v14, v9, v2}, Lcom/android/tools/r8/internal/W5;->b(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)V

    .line 268
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/W5;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 269
    :cond_2b
    invoke-virtual {v14}, Lcom/android/tools/r8/internal/W5;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    if-eqz v11, :cond_2c

    .line 270
    sget-object v0, Lcom/android/tools/r8/internal/N8;->e:Lcom/android/tools/r8/internal/N8;

    iput-object v0, v14, Lcom/android/tools/r8/internal/W5;->e:Lcom/android/tools/r8/internal/N8;

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1a

    :cond_2d
    const/4 v0, 0x0

    .line 271
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/aB;)V

    if-eqz v13, :cond_2e

    .line 272
    iput-object v13, v2, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    :cond_2e
    if-eqz v9, :cond_2f

    .line 273
    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/W5;->g(Lcom/android/tools/r8/internal/W5;)V

    :cond_2f
    const/4 v0, 0x0

    .line 274
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v3, v0, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v11, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    goto/16 :goto_8

    :cond_30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_12

    :cond_31
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_6

    .line 275
    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 276
    :cond_33
    :goto_20
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 277
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    .line 278
    invoke-virtual {v3, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 279
    invoke-virtual {v3, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    invoke-interface {v0, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_20

    .line 280
    :cond_34
    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 281
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_5
.end method

.method public static a(Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;ILcom/android/tools/r8/internal/xw0;)Z
    .locals 4

    .line 104
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/W5;->i()Lcom/android/tools/r8/internal/sL;

    move-result-object p1

    .line 105
    iget p1, p1, Lcom/android/tools/r8/internal/zE;->g:I

    .line 106
    invoke-interface {p0, p4, p1}, Lcom/android/tools/r8/internal/Je0;->b(Lcom/android/tools/r8/internal/xw0;I)I

    move-result p0

    const/4 p1, 0x0

    move v0, p1

    .line 107
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 108
    iget-object v1, v1, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 109
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v1

    if-ge v0, v1, :cond_2

    move v1, p1

    .line 110
    :goto_1
    iget-object v2, p4, Lcom/android/tools/r8/internal/xw0;->m:Lcom/android/tools/r8/internal/pu0;

    .line 111
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/pu0;->C()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int v2, p3, v0

    add-int v3, p0, v1

    if-ne v2, v3, :cond_0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 6

    .line 112
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->p()Ljava/util/List;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 114
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 115
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    return v1

    .line 116
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    move v3, v2

    .line 117
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 118
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 119
    iget-object v5, v0, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->a:Lcom/android/tools/r8/internal/dH;

    .line 120
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/fv;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
