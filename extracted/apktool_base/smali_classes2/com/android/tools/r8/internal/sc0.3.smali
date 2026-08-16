.class public final Lcom/android/tools/r8/internal/sc0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kB;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/kB;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/sc0;->b:Lcom/android/tools/r8/internal/kB;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/sc0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/sc0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/sc0;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->D:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 7
    iget-object v2, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    .line 8
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/tools/r8/graph/d1;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v2

    .line 9
    sget-boolean v3, Lcom/android/tools/r8/internal/sc0;->c:Z

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/H2;->e(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    if-nez v3, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_2
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v2, v1}, Lcom/android/tools/r8/internal/sc0;->a(ZLcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/Js1;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/Js1;-><init>(Lcom/android/tools/r8/internal/sc0;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/sc0;->a(ZLcom/android/tools/r8/graph/H5;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Z5;)V
    .locals 3

    .line 76
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_5

    .line 77
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    new-instance v1, Lcom/android/tools/r8/internal/dR0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/dR0;-><init>()V

    .line 79
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    if-eqz v1, :cond_2

    .line 80
    invoke-interface {v0, p1, p3}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    .line 81
    invoke-interface {p3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/android/tools/r8/internal/W5;->a(Lcom/android/tools/r8/internal/fB;Ljava/util/ListIterator;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/nJ;)V

    .line 83
    invoke-interface {p3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/W5;

    .line 84
    sget-boolean v1, Lcom/android/tools/r8/internal/sc0;->c:Z

    if-nez v1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 85
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p2

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    goto :goto_0

    .line 86
    :cond_2
    sget-boolean p2, Lcom/android/tools/r8/internal/sc0;->c:Z

    if-nez p2, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const/4 v0, 0x0

    move-object p2, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final a(ZLcom/android/tools/r8/graph/H5;)V
    .locals 13

    .line 17
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 18
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    .line 19
    invoke-static {v1}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v2

    .line 20
    invoke-virtual {v0, p2, v1, v2}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 23
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 24
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    instance-of v5, v4, Lcom/android/tools/r8/internal/rc0;

    if-eqz v5, :cond_1

    .line 29
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->D0()Lcom/android/tools/r8/internal/rc0;

    move-result-object v2

    .line 30
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    .line 31
    iget-object v5, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 32
    iget-object v6, v2, Lcom/android/tools/r8/internal/rc0;->k:[Lcom/android/tools/r8/graph/l1;

    .line 33
    sget-boolean v7, Lcom/android/tools/r8/internal/sc0;->c:Z

    if-nez v7, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, v6

    if-ne v7, v8, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 34
    :cond_3
    :goto_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v1

    .line 35
    :goto_2
    array-length v9, v6

    if-ge v8, v9, :cond_5

    .line 36
    iget-object v9, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    .line 37
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v9

    iget-object v10, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v10

    aget-object v11, v6, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v12

    .line 40
    invoke-virtual {v10, v12, v11}, Lcom/android/tools/r8/internal/Hz;->b(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/l1;

    move-result-object v10

    .line 41
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iget-object v11, v10, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v9, v11, v10, v4}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D3;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/D3;->y()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 44
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/xw0;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 45
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 46
    invoke-virtual {p2, v4, v5}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v4

    .line 47
    iget-object v6, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/tools/r8/internal/B60;->s()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v6

    .line 48
    :goto_3
    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 49
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 50
    invoke-interface {v3, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 51
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 52
    new-instance v8, Lcom/android/tools/r8/internal/oZ;

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 54
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    iget-object v10, p0, Lcom/android/tools/r8/internal/sc0;->a:Lcom/android/tools/r8/graph/y;

    .line 55
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v10

    iget-object v10, v10, Lcom/android/tools/r8/graph/u1;->l2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v8, v9, v4, v10}, Lcom/android/tools/r8/internal/oZ;-><init>(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/graph/M2;)V

    .line 56
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 57
    invoke-interface {v3, v8, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/ir/optimize/a;)V

    move v4, v1

    .line 58
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 59
    invoke-virtual {p2, v4, v5}, Lcom/android/tools/r8/internal/fB;->a(ILcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v9

    .line 60
    invoke-virtual {v9, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 61
    invoke-interface {v3, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 62
    sget-object v10, Lcom/android/tools/r8/internal/YV;->b:Lcom/android/tools/r8/internal/YV;

    .line 63
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 64
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v9

    .line 65
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/tools/r8/internal/xw0;

    .line 66
    invoke-static {v10, v11, v9, v12}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/T3;

    move-result-object v9

    .line 67
    invoke-interface {v3, v9}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 69
    :cond_7
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 70
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    invoke-virtual {p0, p2, v2, v0}, Lcom/android/tools/r8/internal/sc0;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/Z5;)V

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 71
    :cond_9
    sget-boolean v0, Lcom/android/tools/r8/internal/sc0;->c:Z

    if-nez v0, :cond_b

    if-nez p1, :cond_b

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 72
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/android/tools/r8/internal/sc0;->b:Lcom/android/tools/r8/internal/kB;

    .line 73
    sget-object v0, Lcom/android/tools/r8/internal/n40;->b:Lcom/android/tools/r8/internal/m40;

    .line 74
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v1

    .line 75
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method
