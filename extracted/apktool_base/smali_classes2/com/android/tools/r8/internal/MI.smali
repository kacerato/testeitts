.class public final Lcom/android/tools/r8/internal/MI;
.super Lcom/android/tools/r8/internal/KI;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/R00;

.field public final d:Lcom/android/tools/r8/internal/Hz;

.field public final e:Ljava/util/IdentityHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/R00;Lcom/android/tools/r8/internal/Hz;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/KI;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/MI;->e:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/MI;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MI;->c:Lcom/android/tools/r8/internal/R00;

    iput-object p4, p0, Lcom/android/tools/r8/internal/MI;->d:Lcom/android/tools/r8/internal/Hz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/t40;
    .locals 1

    .line 88
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 90
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_4

    .line 91
    :cond_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p3

    invoke-static {p3}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 92
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p5, :cond_3

    goto :goto_2

    .line 93
    :cond_3
    invoke-interface {p1}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    .line 94
    :cond_4
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object p3

    .line 95
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p3

    if-ne p3, p2, :cond_5

    goto :goto_2

    .line 96
    :cond_5
    :goto_0
    sget-boolean p1, Lcom/android/tools/r8/internal/MI;->f:Z

    if-nez p1, :cond_7

    if-nez p5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 97
    :cond_7
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    return-object p1

    .line 98
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4, p2}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object p2

    .line 99
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object p1

    iget-object p3, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/pu0;->b(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/y;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 100
    invoke-static {p1}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p1

    return-object p1

    .line 101
    :cond_9
    :goto_3
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1

    .line 102
    :cond_a
    :goto_4
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1

    .line 103
    :cond_b
    :goto_5
    sget-object p1, Lcom/android/tools/r8/internal/t40;->b:Lcom/android/tools/r8/internal/t40;

    return-object p1
.end method

.method public final a()V
    .locals 13

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/internal/MI;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/MI;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v0

    .line 44
    :cond_1
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 45
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 46
    iget-object v1, v0, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/W5;

    iput-object v1, v0, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 47
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v2

    .line 48
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/tools/r8/internal/zE;

    .line 50
    iget-object v3, p0, Lcom/android/tools/r8/internal/MI;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Deque;

    if-nez v3, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v2

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/LI;

    .line 52
    iget v3, v2, Lcom/android/tools/r8/internal/LI;->a:I

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/internal/zE;->a(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v11

    .line 53
    iget-object v5, v2, Lcom/android/tools/r8/internal/LI;->b:Lcom/android/tools/r8/graph/M2;

    .line 54
    iget-object v12, v2, Lcom/android/tools/r8/internal/LI;->c:Lcom/android/tools/r8/graph/M2;

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v11

    move-object v4, v1

    move-object v6, v12

    .line 55
    invoke-virtual/range {v2 .. v7}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v2

    .line 56
    sget-boolean v3, Lcom/android/tools/r8/internal/MI;->f:Z

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 57
    :cond_5
    :goto_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-nez v3, :cond_7

    if-ne v2, v8, :cond_6

    goto :goto_3

    .line 59
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_7
    :goto_3
    sget-boolean v2, Lcom/android/tools/r8/internal/jc;->m:Z

    .line 61
    new-instance v2, Lcom/android/tools/r8/internal/ic;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ic;-><init>()V

    .line 62
    iput-object v12, v2, Lcom/android/tools/r8/internal/ic;->d:Lcom/android/tools/r8/graph/M2;

    .line 63
    iput-object v11, v2, Lcom/android/tools/r8/internal/ic;->e:Lcom/android/tools/r8/internal/xw0;

    .line 64
    iget-object v4, p0, Lcom/android/tools/r8/internal/MI;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v5, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    .line 65
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-static {v12, v6, v5}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 67
    invoke-virtual {v11}, Lcom/android/tools/r8/internal/xw0;->s()Lcom/android/tools/r8/graph/j0;

    move-result-object v6

    .line 68
    invoke-interface {v4, v5, v6}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 69
    iput-object v4, v2, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 70
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    .line 71
    iput-object v4, v2, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 72
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ic;->c()Lcom/android/tools/r8/internal/jc;

    move-result-object v2

    .line 73
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 74
    iget-object v4, p0, Lcom/android/tools/r8/internal/MI;->b:Lcom/android/tools/r8/internal/fB;

    iget-object v6, p0, Lcom/android/tools/r8/internal/MI;->a:Lcom/android/tools/r8/graph/y;

    .line 75
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    .line 76
    invoke-interface {v10, v4, v0, v6, v5}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;Ljava/util/function/UnaryOperator;)Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 77
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 78
    invoke-interface {v10, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v10

    goto :goto_4

    .line 80
    :cond_8
    invoke-interface {v10, v2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 81
    :goto_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    .line 82
    invoke-virtual {v8, v11, v2, v5}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    .line 83
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    if-nez v3, :cond_3

    if-ne v2, v8, :cond_9

    goto/16 :goto_1

    .line 84
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_a
    move-object v2, v10

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/internal/NW;Lcom/android/tools/r8/internal/W5;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 3
    iget-object p3, p3, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 4
    iget-object p3, p3, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 5
    iget-object p3, p3, Lcom/android/tools/r8/graph/proto/c;->a:Lcom/android/tools/r8/internal/iG;

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/iG;->values()Lcom/android/tools/r8/internal/w30;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/internal/TF;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/hG;

    .line 7
    iget-object p3, p3, Lcom/android/tools/r8/internal/TF;->b:Lcom/android/tools/r8/internal/iG;

    .line 8
    invoke-direct {v2, p3}, Lcom/android/tools/r8/internal/hG;-><init>(Lcom/android/tools/r8/internal/iG;)V

    .line 9
    :cond_0
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gG;->a()Lcom/android/tools/r8/internal/UF;

    move-result-object p3

    iget-object p3, p3, Lcom/android/tools/r8/internal/M;->c:Ljava/lang/Object;

    .line 11
    check-cast p3, Lcom/android/tools/r8/graph/proto/b;

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/proto/b;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 13
    sget-boolean p1, Lcom/android/tools/r8/internal/MI;->f:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 14
    :cond_2
    iget-object p3, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v2

    if-eq p3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 17
    :goto_0
    iget-object v2, p1, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_5

    .line 19
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v2

    invoke-virtual {v0, p3, v2}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 21
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v3

    invoke-virtual {v1, p3, v3}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    const/4 v8, 0x0

    move-object v3, p0

    move-object v5, p4

    move-object v6, v2

    move-object v7, v9

    .line 22
    invoke-virtual/range {v3 .. v8}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    invoke-virtual {p0, p2, p3, v2, v9}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/zE;ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/ww;Lcom/android/tools/r8/internal/W5;)V
    .locals 7

    .line 34
    invoke-interface {p1}, Lcom/android/tools/r8/internal/ww;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 35
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ww;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 36
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ww;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, v6

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p3

    .line 38
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 39
    move-object p3, p2

    check-cast p3, Lcom/android/tools/r8/internal/hw;

    .line 40
    invoke-interface {p2}, Lcom/android/tools/r8/internal/ww;->g()I

    move-result p2

    .line 41
    invoke-virtual {p0, p3, p2, p1, v6}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/zE;ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/yk0;Lcom/android/tools/r8/internal/W5;)V
    .locals 8

    .line 25
    sget-boolean v0, Lcom/android/tools/r8/internal/MI;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/MI;->c:Lcom/android/tools/r8/internal/R00;

    iget-object v1, p0, Lcom/android/tools/r8/internal/MI;->b:Lcom/android/tools/r8/internal/fB;

    .line 27
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MI;->d:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/android/tools/r8/internal/MI;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/H0;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 30
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v7

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Z)Lcom/android/tools/r8/internal/t40;

    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/f7;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0, v7}, Lcom/android/tools/r8/internal/MI;->a(Lcom/android/tools/r8/internal/zE;ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/zE;ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/MI;->e:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/EM0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/EM0;-><init>()V

    .line 86
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Deque;

    new-instance v0, Lcom/android/tools/r8/internal/LI;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/tools/r8/internal/LI;-><init>(ILcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V

    .line 87
    invoke-interface {p1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method
