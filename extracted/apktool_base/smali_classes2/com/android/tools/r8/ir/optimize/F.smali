.class public final Lcom/android/tools/r8/ir/optimize/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Ljava/util/Queue;Lcom/android/tools/r8/internal/xw0;)V
    .locals 1

    .line 34
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 38
    iget-object v0, p1, Lcom/android/tools/r8/internal/zE;->b:Lcom/android/tools/r8/internal/W5;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 40
    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)V
    .locals 11

    .line 1
    const-string v0, "Remove dead code"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/dY;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/dY;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/K7;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/K7;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 4
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 5
    :cond_0
    new-instance v8, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v8}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 6
    new-instance v9, Lcom/android/tools/r8/internal/Fw0;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v9, v2, p1}, Lcom/android/tools/r8/internal/Fw0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->B()Lcom/android/tools/r8/internal/hC;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/tools/r8/internal/W5;

    move-object v2, p0

    move-object v3, v1

    move-object v4, p1

    move-object v5, v10

    move-object v6, v8

    move-object v7, v9

    .line 10
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/ir/optimize/F;->a(Ljava/util/Queue;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Fw0;)V

    .line 11
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/W5;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 12
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 14
    invoke-virtual {v9, v3}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 16
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 17
    iget-object v7, v6, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {v7, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 19
    iput-object v5, v6, Lcom/android/tools/r8/internal/xw0;->g:Lcom/android/tools/r8/internal/QC;

    .line 20
    invoke-static {v1, v6}, Lcom/android/tools/r8/ir/optimize/F;->a(Ljava/util/Queue;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->d0()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 23
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    sget-object v6, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v3, v5, v5, v4, v6}, Lcom/android/tools/r8/internal/f60;->a(Lcom/android/tools/r8/internal/aB;Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)Z

    goto :goto_0

    .line 24
    :cond_4
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v8, v2, p1, v3}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 26
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/K7;->c(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/F7;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-boolean v2, v2, Lcom/android/tools/r8/internal/F7;->e:Z

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 31
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/F;->b:Z

    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/F;->b(Lcom/android/tools/r8/internal/fB;)V

    .line 33
    :cond_7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Ljava/util/Queue;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Fw0;)V
    .locals 6

    .line 41
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/CE;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/W5;->b(I)Lcom/android/tools/r8/internal/Y5;

    move-result-object p3

    .line 42
    :cond_0
    :goto_0
    invoke-interface {p3}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 43
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 44
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 46
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    .line 48
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    instance-of v4, v3, Lcom/android/tools/r8/internal/Zd0;

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    iget-object v3, v1, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 54
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/M2;->E0()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 55
    iget-object v3, v1, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->m()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->K0()Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_3

    .line 57
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v2

    if-nez v2, :cond_3

    .line 58
    sget-boolean v1, Lcom/android/tools/r8/internal/jc;->m:Z

    if-nez v1, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 59
    :cond_3
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v2

    .line 60
    iget-object v3, v1, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    if-eq v3, v2, :cond_4

    goto :goto_3

    .line 61
    :cond_4
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 62
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    .line 63
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    .line 65
    iget-object v3, v3, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 66
    move-object v4, p1

    check-cast v4, Ljava/util/ArrayDeque;

    invoke-virtual {v4, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 67
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v2, v3, p4}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 68
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/tK0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/tK0;-><init>()V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/zE;->d(Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/xw0;

    .line 71
    :cond_8
    instance-of v1, v0, Lcom/android/tools/r8/internal/Mo0;

    if-eqz v1, :cond_a

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->P()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 75
    new-instance v1, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 76
    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    .line 78
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->K0()Lcom/android/tools/r8/internal/Mo0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 79
    new-instance v4, Lv/b;

    invoke-direct {v4, v1}, Lv/b;-><init>(Lcom/android/tools/r8/internal/C7;)V

    .line 80
    invoke-interface {p3, v2, p2, v3, v4}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Ljava/util/function/Consumer;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 81
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 83
    sget-boolean v2, Lcom/android/tools/r8/ir/optimize/F;->b:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 84
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, v1, p2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    instance-of v2, v1, Lcom/android/tools/r8/ir/optimize/C;

    if-eqz v2, :cond_b

    goto/16 :goto_0

    .line 87
    :cond_b
    instance-of v2, v1, Lcom/android/tools/r8/ir/optimize/D;

    if-eqz v2, :cond_d

    .line 88
    invoke-virtual {v1}, Lcom/android/tools/r8/ir/optimize/E;->a()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 89
    invoke-virtual {p5, v2}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    .line 90
    :cond_d
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 91
    invoke-virtual {p5, v1}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    .line 92
    :cond_e
    iget-object v2, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 94
    invoke-static {p1, v5}, Lcom/android/tools/r8/ir/optimize/F;->a(Ljava/util/Queue;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_5

    .line 95
    :cond_f
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->V0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/xw0;

    .line 96
    invoke-static {p1, v2}, Lcom/android/tools/r8/ir/optimize/F;->a(Ljava/util/Queue;Lcom/android/tools/r8/internal/xw0;)V

    goto :goto_6

    :cond_10
    if-eqz v1, :cond_11

    .line 97
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->d()V

    .line 98
    :cond_11
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;)Z
    .locals 13

    .line 99
    iget-object v0, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 100
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_12

    .line 102
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v4

    .line 104
    sget v6, Lcom/android/tools/r8/internal/hC;->c:I

    .line 105
    new-instance v6, Lcom/android/tools/r8/internal/eC;

    .line 106
    invoke-direct {v6}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 107
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v3

    move v7, v1

    .line 108
    :goto_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 109
    iget-object v8, v3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 110
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/M2;

    .line 111
    iget-object v9, v3, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 112
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/W5;

    move v10, v1

    :goto_2
    if-ge v10, v7, :cond_2

    .line 113
    iget-object v11, v3, Lcom/android/tools/r8/internal/N8;->b:Lcom/android/tools/r8/internal/hC;

    .line 114
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/graph/M2;

    .line 115
    iget-object v12, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v8, v11}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/t40;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 116
    new-instance v10, Lcom/android/tools/r8/internal/M8;

    invoke-direct {v10, v8, v9}, Lcom/android/tools/r8/internal/M8;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    goto :goto_5

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_7

    .line 117
    iget-object v10, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    .line 118
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v11

    .line 119
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v11

    .line 120
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    sget-boolean v12, Lcom/android/tools/r8/graph/c1;->a:Z

    if-nez v12, :cond_4

    iget-object v12, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v12, v8, :cond_4

    .line 122
    new-instance v12, Lcom/android/tools/r8/graph/W;

    invoke-direct {v12}, Lcom/android/tools/r8/graph/W;-><init>()V

    .line 123
    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/W;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/W;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/tools/r8/graph/W;->a()Lcom/android/tools/r8/graph/b0;

    move-result-object v12

    if-ne v12, v11, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 124
    :cond_4
    :goto_3
    iget-object v12, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v12, v8, :cond_5

    goto :goto_4

    .line 125
    :cond_5
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/tools/r8/graph/h;->f(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;

    move-result-object v11

    .line 126
    :goto_4
    invoke-interface {v11}, Lcom/android/tools/r8/graph/b0;->X()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v11}, Lcom/android/tools/r8/graph/b0;->n()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_5

    .line 127
    :cond_6
    invoke-interface {v11}, Lcom/android/tools/r8/graph/b0;->D()Lcom/android/tools/r8/graph/E0;

    move-result-object v10

    .line 128
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 129
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/tools/r8/shaking/i;->b(Lcom/android/tools/r8/graph/H2;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 130
    new-instance v10, Lcom/android/tools/r8/internal/M8;

    invoke-direct {v10, v8, v9}, Lcom/android/tools/r8/internal/M8;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/lang/Object;)V

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 131
    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/M8;

    .line 134
    iget-object v4, v3, Lcom/android/tools/r8/internal/M8;->b:Ljava/lang/Object;

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    iget-object v3, v3, Lcom/android/tools/r8/internal/M8;->a:Lcom/android/tools/r8/graph/M2;

    .line 135
    sget-boolean v6, Lcom/android/tools/r8/internal/W5;->q:Z

    if-nez v6, :cond_a

    .line 136
    iget-object v7, v4, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    .line 137
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_9

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_a
    :goto_7
    if-nez v6, :cond_c

    .line 138
    iget-object v7, v4, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v5, :cond_b

    goto :goto_8

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 140
    :cond_c
    :goto_8
    iget-object v7, v4, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    .line 141
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/internal/W5;

    if-nez v6, :cond_e

    .line 142
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v6

    .line 143
    iget-object v6, v6, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 144
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_9

    :cond_d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 145
    :cond_e
    :goto_9
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v6

    .line 146
    iget-object v6, v6, Lcom/android/tools/r8/internal/N8;->c:Lcom/android/tools/r8/internal/hC;

    .line 147
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/W5;

    if-ne v8, v4, :cond_f

    add-int/lit8 v7, v7, 0x1

    if-le v7, v5, :cond_f

    .line 148
    iget-object v4, v4, Lcom/android/tools/r8/internal/W5;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    .line 149
    invoke-virtual {v4, v3}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_6

    .line 150
    :cond_10
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->R()V

    goto :goto_6

    :cond_11
    move v2, v5

    goto/16 :goto_0

    .line 151
    :cond_12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->j()Lcom/android/tools/r8/internal/N8;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/N8;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 153
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->R()V

    move v2, v5

    goto :goto_a

    :cond_13
    if-eqz v2, :cond_14

    .line 154
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 155
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/android/tools/r8/internal/fB;->a(Lcom/android/tools/r8/ir/optimize/a;Ljava/util/function/Consumer;)V

    .line 156
    iget-object v3, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    .line 157
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v0, v3, p1, v4}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 158
    :cond_14
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/F;->b:Z

    if-nez v0, :cond_15

    .line 159
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/fB;->b(Z)V

    :cond_15
    return v2
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)V
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/F;->b:Z

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/tools/r8/internal/dY;

    iget-object v2, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/dY;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/tools/r8/internal/te;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/we;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/internal/we;->a()Lcom/android/tools/r8/internal/t40;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/f7;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/ir/optimize/F;->a(Lcom/android/tools/r8/internal/fB;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Fw0;

    iget-object v1, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Fw0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    iget-object v1, p1, Lcom/android/tools/r8/internal/fB;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    sget-boolean v3, Lcom/android/tools/r8/ir/optimize/F;->b:Z

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    sget-boolean v4, Lcom/android/tools/r8/ir/optimize/F;->b:Z

    if-nez v4, :cond_9

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->N1()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_4
    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/tools/r8/ir/optimize/F;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3, v4, p1}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/E;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v4, Lcom/android/tools/r8/ir/optimize/B;

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Fw0;->a(Lcom/android/tools/r8/internal/xw0;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_3

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    return-void
.end method
