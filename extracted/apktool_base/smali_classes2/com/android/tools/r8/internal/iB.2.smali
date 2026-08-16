.class public abstract Lcom/android/tools/r8/internal/iB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/QJ;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 2
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-eq v4, p1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/f80;)Lcom/android/tools/r8/internal/e80;
    .locals 7

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/f80;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/f80;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/e80;->k()Lcom/android/tools/r8/internal/e80;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/android/tools/r8/internal/YN0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/YN0;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/No0;

    .line 9
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/D3;->o()Lcom/android/tools/r8/graph/F5;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    iget-object v4, p2, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    .line 11
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/tools/r8/internal/f80;->b:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    sget-object v4, Lcom/android/tools/r8/internal/Mn;->a:Lcom/android/tools/r8/internal/Mn;

    .line 13
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 14
    iget-object v6, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/f80;->a(Lcom/android/tools/r8/graph/F5;)Z

    .line 16
    iget-object v2, v1, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 17
    new-instance v5, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v5, v4, v3}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 18
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static a(Lcom/android/tools/r8/internal/zE;)V
    .locals 3

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/internal/iB;->a:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->J()Lcom/android/tools/r8/internal/qh;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/qh;->A2()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->Z1()Z

    move-result v1

    if-nez v1, :cond_4

    .line 24
    sget-boolean p0, Lcom/android/tools/r8/internal/iB;->a:Z

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 25
    :cond_4
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_5
    instance-of p0, p0, Lcom/android/tools/r8/internal/oZ;

    if-eqz p0, :cond_9

    .line 29
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 30
    sget-boolean v2, Lcom/android/tools/r8/internal/iB;->a:Z

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    instance-of v2, v0, Lcom/android/tools/r8/internal/C4;

    if-nez v2, :cond_6

    goto :goto_1

    .line 32
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 33
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    .line 34
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_9
    sget-boolean p0, Lcom/android/tools/r8/internal/iB;->a:Z

    if-eqz p0, :cond_b

    .line 36
    :cond_a
    :goto_2
    invoke-static {v1}, Lcom/android/tools/r8/internal/iB;->a(Ljava/util/ArrayDeque;)V

    return-void

    .line 37
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_c
    :goto_3
    return-void
.end method

.method public static a(Ljava/util/ArrayDeque;)V
    .locals 7

    .line 38
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/FE;

    .line 41
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 43
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    if-eq v3, v1, :cond_2

    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->f0()V

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 48
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v3, v3, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    :goto_2
    invoke-virtual {p0, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 49
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_6
    invoke-interface {v1}, Lcom/android/tools/r8/internal/GE;->k()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    :cond_7
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/CE;->c(Lcom/android/tools/r8/internal/zE;)V

    .line 53
    iget-object v2, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 55
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v5

    goto :goto_4

    :cond_8
    iget-object v5, v5, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    :goto_4
    invoke-virtual {p0, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 56
    :cond_9
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method
