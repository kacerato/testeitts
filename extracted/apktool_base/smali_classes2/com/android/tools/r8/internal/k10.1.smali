.class public final Lcom/android/tools/r8/internal/k10;
.super Lcom/android/tools/r8/internal/l10;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/R00;

.field public final d:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/R00;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/l10;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/k10;->d:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/k10;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/k10;->c:Lcom/android/tools/r8/internal/R00;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;)Z
    .locals 0

    .line 1
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 13
    iget-object v0, p0, Lcom/android/tools/r8/internal/k10;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/k10;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 16
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 18
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    move-object v7, v1

    .line 19
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 21
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v8

    .line 23
    iget-object v1, p0, Lcom/android/tools/r8/internal/k10;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/android/tools/r8/internal/k10;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    .line 25
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 26
    invoke-interface {v5}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v1

    .line 27
    new-instance v3, Lcom/android/tools/r8/internal/Yx0;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Yx0;-><init>(I)V

    .line 28
    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    move v1, v2

    .line 29
    :cond_5
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Yx0;->b()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 30
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Yx0;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/f60;

    .line 31
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/xw0;

    .line 32
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 33
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->l()Lcom/android/tools/r8/internal/f60;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/Yx0;->b(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_6
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 36
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->R()Lcom/android/tools/r8/internal/ew;

    move-result-object v1

    .line 37
    invoke-interface {v1}, Lcom/android/tools/r8/internal/ew;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 38
    iget-object v6, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    iget-object v9, p0, Lcom/android/tools/r8/internal/k10;->c:Lcom/android/tools/r8/internal/R00;

    invoke-virtual {v6, v9, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 39
    iget-object v6, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    .line 41
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_1

    .line 42
    :cond_7
    sget-boolean v2, Lcom/android/tools/r8/internal/k10;->e:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_9
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->D1()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 45
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->R()Lcom/android/tools/r8/internal/ew;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Lcom/android/tools/r8/internal/ew;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 47
    iget-object v3, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/k10;->c:Lcom/android/tools/r8/internal/R00;

    invoke-virtual {v3, v4, v1}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    .line 50
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/D3;->p()Lcom/android/tools/r8/graph/F0;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/shaking/i;->a(Lcom/android/tools/r8/graph/F0;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 51
    :cond_a
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 52
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/vA0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/vA0;-><init>()V

    .line 53
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 54
    invoke-virtual {v1, v3, v2}, Lcom/android/tools/r8/internal/B60;->a(Ljava/util/function/Predicate;Z)Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    move-object v4, v1

    .line 55
    :goto_2
    iget-boolean v1, v4, Lcom/android/tools/r8/internal/B60;->e:Z

    if-eqz v1, :cond_c

    .line 56
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    .line 57
    iput-boolean v2, v1, Lcom/android/tools/r8/internal/B60$a;->d:Z

    .line 58
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$a;->c()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object v1

    .line 60
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Lcom/android/tools/r8/internal/B60;->a(Lcom/android/tools/r8/internal/B60;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/B60;

    move-result-object v2

    .line 61
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/B60;)V

    move-object v6, v1

    goto :goto_3

    :cond_c
    move-object v6, v4

    .line 62
    :goto_3
    iget-object v2, p0, Lcom/android/tools/r8/internal/k10;->a:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/internal/k10;->b:Lcom/android/tools/r8/internal/fB;

    move-object v1, v7

    move-object v4, v0

    invoke-interface/range {v1 .. v6}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/VJ;

    .line 63
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 64
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v1

    .line 65
    new-instance v2, Lcom/android/tools/r8/internal/fg1;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/fg1;-><init>(Lcom/android/tools/r8/internal/W5;)V

    .line 66
    invoke-static {v0, v2}, Lcom/android/tools/r8/internal/xK;->a(Lcom/android/tools/r8/internal/Z5;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    .line 67
    sget-boolean v3, Lcom/android/tools/r8/internal/k10;->e:Z

    if-nez v3, :cond_e

    if-ne v2, v1, :cond_d

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_e
    :goto_4
    iget-object v2, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/W5;

    iput-object v2, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 69
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v1

    move-object v7, v1

    .line 70
    :cond_f
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    .line 71
    sget-boolean v2, Lcom/android/tools/r8/internal/k10;->e:Z

    if-nez v2, :cond_2

    if-ne v1, v8, :cond_10

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    :goto_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p3, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 4
    iget-object p3, p3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/proto/c;->a(I)Lcom/android/tools/r8/graph/proto/b;

    move-result-object p3

    .line 6
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of p3, p3, Lcom/android/tools/r8/graph/proto/i;

    if-nez p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance p3, Lcom/android/tools/r8/internal/gg1;

    invoke-direct {p3}, Lcom/android/tools/r8/internal/gg1;-><init>()V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object p3, p0, Lcom/android/tools/r8/internal/k10;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method
