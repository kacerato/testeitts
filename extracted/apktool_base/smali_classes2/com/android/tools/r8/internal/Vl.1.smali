.class public final Lcom/android/tools/r8/internal/Vl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/BZ0;

    invoke-direct {v0, p2, p3}, Lcom/android/tools/r8/internal/BZ0;-><init>(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Vl;->a:Lcom/android/tools/r8/graph/y;

    iput-object v0, p0, Lcom/android/tools/r8/internal/Vl;->b:Ljava/util/function/Function;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Ljava/util/Set;)V
    .locals 8

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/f60;

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->f()Lcom/android/tools/r8/internal/z7;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 7
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    sget-boolean v1, Lcom/android/tools/r8/internal/Vl;->c:Z

    if-nez v1, :cond_6

    .line 10
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v1

    .line 11
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 12
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 13
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 14
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 15
    iget-object v5, p0, Lcom/android/tools/r8/internal/Vl;->a:Lcom/android/tools/r8/graph/y;

    iget-object v6, p0, Lcom/android/tools/r8/internal/Vl;->b:Ljava/util/function/Function;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 17
    sget-boolean v6, Lcom/android/tools/r8/internal/Vl;->c:Z

    if-nez v6, :cond_4

    if-eq v5, v4, :cond_4

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_6
    sget-boolean v1, Lcom/android/tools/r8/internal/Vl;->c:Z

    if-nez v1, :cond_c

    .line 19
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 20
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/xw0;

    .line 21
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 22
    invoke-interface {v3}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    .line 24
    sget-boolean v5, Lcom/android/tools/r8/internal/Vl;->c:Z

    if-nez v5, :cond_a

    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v6, v4, Lcom/android/tools/r8/internal/z7;

    if-eqz v6, :cond_9

    goto :goto_3

    .line 26
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_3
    if-nez v5, :cond_8

    .line 27
    invoke-interface {p2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->x()Z

    move-result v3

    if-nez v3, :cond_8

    .line 29
    instance-of v3, v4, Lcom/android/tools/r8/internal/Zd0;

    if-nez v3, :cond_8

    .line 30
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/tools/r8/internal/Vl;->a:Lcom/android/tools/r8/graph/y;

    iget-object v5, p0, Lcom/android/tools/r8/internal/Vl;->b:Ljava/util/function/Function;

    .line 31
    sget-object v6, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/y;Ljava/util/function/Function;Ljava/util/Set;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    if-ne v3, v4, :cond_b

    goto :goto_2

    .line 32
    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 33
    :cond_c
    new-instance v1, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v1}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_d
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/f60;

    .line 37
    iget-object v3, p0, Lcom/android/tools/r8/internal/Vl;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/f60;->d(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 38
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/pu0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 39
    sget-boolean v4, Lcom/android/tools/r8/internal/Vl;->c:Z

    if-nez v4, :cond_f

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    instance-of v4, v3, Lcom/android/tools/r8/internal/z7;

    if-nez v4, :cond_e

    goto :goto_5

    .line 41
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_f
    :goto_5
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/pu0;)V

    .line 43
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 44
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a()Lcom/android/tools/r8/ir/optimize/a;

    move-result-object v2

    .line 45
    iget-object v3, v1, Lcom/android/tools/r8/ir/optimize/a;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 46
    :cond_10
    sget-boolean v0, Lcom/android/tools/r8/internal/Vl;->c:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/tools/r8/internal/Vl;->a:Lcom/android/tools/r8/graph/y;

    .line 47
    new-instance v2, Lcom/android/tools/r8/internal/lu0;

    const/4 v3, 0x0

    .line 48
    invoke-direct {v2, v0, p1, v3}, Lcom/android/tools/r8/internal/lu0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Z)V

    const/4 v0, 0x5

    .line 49
    invoke-virtual {v2, p2, v0}, Lcom/android/tools/r8/internal/lu0;->a(Ljava/lang/Iterable;I)V

    .line 50
    :cond_11
    iget-object p2, p0, Lcom/android/tools/r8/internal/Vl;->a:Lcom/android/tools/r8/graph/y;

    .line 51
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {v1, p2, p1, v0}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    return-void
.end method
