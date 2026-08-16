.class public final Lcom/android/tools/r8/internal/w50;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public e:Ljava/util/List;


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

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/Zs0;
    .locals 2

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/nx1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/nx1;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    .line 30
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/vK;->b(Ljava/lang/Iterable;Lcom/android/tools/r8/internal/V60;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 31
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0

    .line 32
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    .line 33
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/QJ;Lcom/android/tools/r8/internal/zE;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/QJ;Ljava/util/ArrayDeque;)Z
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->C()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    :goto_0
    if-ge v2, v3, :cond_2

    .line 8
    iget-object v5, v0, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v5

    .line 9
    iget-object v6, v5, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 10
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/Iv1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Iv1;-><init>(Lcom/android/tools/r8/internal/EE;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    invoke-interface {v0, p0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/EE;I)V

    .line 15
    sget-boolean v1, Lcom/android/tools/r8/internal/w50;->f:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Y5;->h()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_1
    if-ne v0, p0, :cond_4

    goto :goto_2

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_5
    :goto_2
    return v4

    :cond_6
    :goto_3
    return v2
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 37
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->m()Lcom/android/tools/r8/internal/rE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rE;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "Parent constructor hoisting pass"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 2

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    .line 20
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->e()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object p2

    .line 26
    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    .line 27
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w50;->d(Lcom/android/tools/r8/internal/fB;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/zE;)Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/internal/te;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->c0()Lcom/android/tools/r8/internal/QJ;

    move-result-object p3

    .line 36
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    if-eq v0, p1, :cond_1

    return v1

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/tools/r8/internal/VJ;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/H0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/TW;->a(Lcom/android/tools/r8/internal/VJ;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/w50;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w50;->c(Lcom/android/tools/r8/internal/fB;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/w50;->e:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/w50;->e:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/QJ;

    .line 5
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 6
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    :goto_1
    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 10
    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;)V

    .line 11
    :goto_2
    invoke-interface {v3}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 12
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 13
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_5

    .line 14
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 15
    iget-object v5, v1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->w1()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 18
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_7

    .line 20
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 21
    iget-object v8, v7, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    .line 22
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/CE;->b(Lcom/android/tools/r8/internal/zE;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 23
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/zE;

    .line 24
    invoke-interface {v3, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 25
    :cond_8
    invoke-interface {v3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 26
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    neg-int v4, v5

    .line 27
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/EE;I)V

    goto :goto_2

    .line 28
    :cond_9
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v1

    goto :goto_6

    .line 29
    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 30
    :goto_6
    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 31
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 32
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->f:Lcom/android/tools/r8/internal/CE;

    .line 33
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/CE;->a()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    if-ne v4, v3, :cond_1

    .line 34
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/w50;->a(Lcom/android/tools/r8/internal/QJ;Ljava/util/ArrayDeque;)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_0

    .line 35
    :cond_b
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 36
    sget-object p1, Lcom/android/tools/r8/internal/we;->c:Lcom/android/tools/r8/internal/we;

    return-object p1
.end method

.method public final c(Lcom/android/tools/r8/internal/fB;)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/rx1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/tools/r8/internal/rx1;-><init>(Lcom/android/tools/r8/internal/w50;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/fB;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/android/tools/r8/internal/fB;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->m()Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Yx0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/w50;->e:Ljava/util/List;

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/w50;->c(Lcom/android/tools/r8/internal/fB;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/w50;->e:Ljava/util/List;

    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/w50;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/QJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/ox1;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/internal/ox1;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    new-instance v5, Lcom/android/tools/r8/internal/px1;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/px1;-><init>(Lcom/android/tools/r8/internal/QJ;)V

    invoke-static {v3, v4, v5}, Lcom/android/tools/r8/internal/qK;->a(Lcom/android/tools/r8/internal/CE;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/qx1;

    invoke-direct {p1, v0, v1}, Lcom/android/tools/r8/internal/qx1;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/Yx0;)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Yx0;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/internal/Zs0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Zs0;->c()Z

    move-result p1

    return p1
.end method
