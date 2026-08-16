.class public final Lcom/android/tools/r8/internal/Dt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/H5;

.field public final b:Lcom/android/tools/r8/internal/fB;

.field public final c:Lcom/android/tools/r8/internal/S50;

.field public d:Ljava/util/Set;

.field public final synthetic e:Lcom/android/tools/r8/internal/Et;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Et;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/S50;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dt;->b:Lcom/android/tools/r8/internal/fB;

    iput-object p4, p0, Lcom/android/tools/r8/internal/Dt;->c:Lcom/android/tools/r8/internal/S50;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;)Z
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
.method public final a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Wf;
    .locals 6

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 90
    :cond_0
    iget-object v0, p1, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 91
    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->c:Lcom/android/tools/r8/internal/S50;

    .line 92
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 93
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/W5;

    .line 94
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object v1

    .line 95
    iget-object v3, p0, Lcom/android/tools/r8/internal/Dt;->c:Lcom/android/tools/r8/internal/S50;

    const/4 v5, 0x1

    .line 96
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/W5;

    .line 97
    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object v0

    if-eqz v1, :cond_9

    if-nez v0, :cond_1

    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/rg;->a(Lcom/android/tools/r8/internal/rg;)Lcom/android/tools/r8/internal/Vf;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 99
    invoke-interface {v3}, Lcom/android/tools/r8/internal/Vf;->g()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 100
    :cond_2
    check-cast v3, Lcom/android/tools/r8/internal/Wf;

    .line 101
    iget-object p1, p1, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    if-ne p1, p2, :cond_3

    move-object v1, v0

    .line 102
    :cond_3
    iget-object p1, v1, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/R50;

    .line 103
    sget-boolean p2, Lcom/android/tools/r8/internal/rg;->c:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_0
    if-nez p2, :cond_7

    .line 104
    sget-object p2, Lcom/android/tools/r8/internal/R50;->d:Lcom/android/tools/r8/internal/R50;

    if-eq p1, p2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 105
    :cond_7
    :goto_1
    sget-object p2, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    if-ne p1, p2, :cond_8

    .line 106
    new-instance p1, Lcom/android/tools/r8/internal/Wf;

    iget-object p2, v3, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v0, v3, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/android/tools/r8/internal/Wf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/NB;)V

    return-object p1

    :cond_8
    return-object v3

    :cond_9
    :goto_2
    return-object v2
.end method

.method public final a()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->b:Lcom/android/tools/r8/internal/fB;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v2

    .line 7
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/ZC0;

    invoke-direct {v4, p0, v1}, Lcom/android/tools/r8/internal/ZC0;-><init>(Lcom/android/tools/r8/internal/Dt;Lcom/android/tools/r8/internal/k3;)V

    new-instance v5, Lcom/android/tools/r8/internal/aD0;

    invoke-direct {v5, p0, v1}, Lcom/android/tools/r8/internal/aD0;-><init>(Lcom/android/tools/r8/internal/Dt;Lcom/android/tools/r8/internal/k3;)V

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/internal/k3;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/k3;Lcom/android/tools/r8/internal/Vf;)V
    .locals 3

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/aX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 11
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/Dt;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 13
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Et;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/k3;Lcom/android/tools/r8/internal/xw0;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 8

    .line 19
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    const/4 v2, 0x1

    .line 20
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v3

    .line 21
    invoke-static {v0, v1, v3}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_e

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_e

    .line 23
    :cond_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_e

    .line 24
    sget-boolean p1, Lcom/android/tools/r8/internal/Dt;->f:Z

    if-nez p1, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 27
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->D()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_e

    .line 28
    :cond_4
    sget-boolean p1, Lcom/android/tools/r8/internal/xw0;->o:Z

    if-nez p1, :cond_6

    .line 29
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    if-nez p1, :cond_8

    .line 31
    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 32
    :cond_8
    :goto_2
    iget-object v0, p2, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/f60;

    .line 33
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Wf;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_e

    .line 34
    :cond_9
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    if-nez p1, :cond_b

    .line 35
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    if-ne p3, v2, :cond_a

    goto :goto_3

    .line 36
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_b
    :goto_3
    if-nez p1, :cond_d

    .line 37
    iget-object p1, p2, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 38
    :cond_d
    :goto_4
    iget-object p1, p2, Lcom/android/tools/r8/internal/xw0;->f:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/f60;

    .line 39
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result p3

    if-nez p3, :cond_26

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result p3

    if-eqz p3, :cond_1f

    goto/16 :goto_e

    .line 40
    :cond_e
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 41
    iget-object p3, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object p3

    .line 42
    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ$b;->b:Z

    if-eqz p3, :cond_26

    .line 43
    iget-object p3, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    .line 44
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->p()Lcom/android/tools/r8/internal/Mf;

    move-result-object p3

    iget-object p4, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Mf;->a(Lcom/android/tools/r8/graph/D5;)Z

    move-result p3

    if-nez p3, :cond_f

    goto/16 :goto_e

    .line 45
    :cond_f
    sget-boolean p3, Lcom/android/tools/r8/internal/Dt;->f:Z

    if-nez p3, :cond_11

    iget-object p4, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p4, p4, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p4}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object p4

    .line 46
    iget-boolean p4, p4, Lcom/android/tools/r8/internal/nJ$b;->b:Z

    if-eqz p4, :cond_10

    goto :goto_5

    .line 47
    :cond_10
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_11
    :goto_5
    if-nez p3, :cond_13

    .line 48
    iget-object p3, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->p()Lcom/android/tools/r8/internal/Mf;

    move-result-object p3

    iget-object p4, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Mf;->a(Lcom/android/tools/r8/graph/D5;)Z

    move-result p3

    if-eqz p3, :cond_12

    goto :goto_6

    :cond_12
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 49
    :cond_13
    :goto_6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->a0()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p4, 0x0

    move-object v0, p4

    :cond_14
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/f60;

    move v4, v1

    .line 50
    :goto_8
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f60;->c0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 51
    iget-object v5, v3, Lcom/android/tools/r8/internal/f60;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/xw0;

    if-ne v5, p2, :cond_17

    .line 52
    iget-object v5, v3, Lcom/android/tools/r8/internal/f60;->p:Lcom/android/tools/r8/internal/W5;

    .line 53
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v5

    .line 54
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/W5;

    .line 55
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/internal/W5;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_9

    :cond_15
    if-eqz v0, :cond_16

    goto :goto_a

    :cond_16
    move-object v0, v3

    goto :goto_7

    :cond_17
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_18
    move-object p4, v0

    :goto_a
    if-nez p4, :cond_19

    goto/16 :goto_e

    .line 56
    :cond_19
    invoke-virtual {p0, p4, p2}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/internal/f60;Lcom/android/tools/r8/internal/xw0;)Lcom/android/tools/r8/internal/Wf;

    move-result-object p3

    if-nez p3, :cond_1a

    goto/16 :goto_e

    .line 57
    :cond_1a
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/zE;

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->c:Lcom/android/tools/r8/internal/S50;

    .line 59
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/android/tools/r8/internal/S50;->a(Lcom/android/tools/r8/internal/W5;)Lcom/android/tools/r8/internal/O50;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/O50;->d()Lcom/android/tools/r8/internal/rg;

    move-result-object p4

    if-nez p4, :cond_1c

    goto/16 :goto_e

    .line 60
    :cond_1c
    invoke-virtual {p4}, Lcom/android/tools/r8/internal/rg;->f()V

    .line 61
    iget-object v0, p4, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/R50;

    .line 62
    sget-object v1, Lcom/android/tools/r8/internal/R50;->c:Lcom/android/tools/r8/internal/R50;

    if-eq v0, v1, :cond_1b

    .line 63
    new-instance v0, Lcom/android/tools/r8/internal/Wf;

    iget-object v1, p3, Lcom/android/tools/r8/internal/Xf;->a:Lcom/android/tools/r8/internal/Vf;

    iget-object v3, p3, Lcom/android/tools/r8/internal/Wf;->c:Lcom/android/tools/r8/internal/NB;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/NB;->b()Lcom/android/tools/r8/internal/NB;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/android/tools/r8/internal/Wf;-><init>(Lcom/android/tools/r8/internal/Vf;Lcom/android/tools/r8/internal/NB;)V

    .line 64
    iget-object p4, p4, Lcom/android/tools/r8/internal/rg;->b:Ljava/util/Map;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/internal/R50;

    .line 65
    sget-object v0, Lcom/android/tools/r8/internal/R50;->b:Lcom/android/tools/r8/internal/R50;

    if-ne p4, v0, :cond_26

    goto :goto_b

    .line 66
    :cond_1d
    iget-object p2, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p2, p2, Lcom/android/tools/r8/internal/Et;->d:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p4, Lcom/android/tools/r8/internal/aX;

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    .line 67
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 68
    invoke-direct {p4, v0, p1}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 69
    invoke-virtual {p2, p4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1e
    move-object p1, p2

    .line 70
    :cond_1f
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 71
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    .line 72
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->P1()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 73
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v2, v2, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    .line 75
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j;->f(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/Z4;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Dt;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_e

    .line 79
    :cond_20
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 80
    new-instance v3, Lcom/android/tools/r8/internal/YC0;

    invoke-direct {v3, p2}, Lcom/android/tools/r8/internal/YC0;-><init>(Lcom/android/tools/r8/internal/xw0;)V

    sget-boolean v4, Lcom/android/tools/r8/internal/AT;->a:Z

    const/4 v4, -0x1

    move v5, v1

    move v6, v4

    .line 81
    :goto_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_22

    .line 82
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 83
    invoke-interface {v3, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    if-ne v6, v4, :cond_23

    move v6, v5

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_22
    move v4, v6

    :cond_23
    if-ltz v4, :cond_26

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    .line 85
    invoke-static {v0, v2, v4}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;I)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_e

    .line 86
    :cond_24
    new-instance v0, Lcom/android/tools/r8/internal/aX;

    invoke-direct {v0, v2, v4}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 87
    :cond_25
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_26

    .line 88
    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_26
    :goto_e
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/k3;Ljava/util/Set;)V
    .locals 3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/aX;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    const/4 v2, 0x1

    .line 15
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result p1

    .line 16
    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/aX;-><init>(Lcom/android/tools/r8/graph/H0;I)V

    .line 17
    sget-boolean p1, Lcom/android/tools/r8/internal/Dt;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Et;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Et;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)Z
    .locals 3

    .line 121
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 122
    iget-object v0, v0, Lcom/android/tools/r8/graph/j1;->g:Lcom/android/tools/r8/graph/L4;

    .line 123
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/L4;->D()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Et;->e:Lcom/android/tools/r8/internal/j80;

    .line 126
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 127
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 128
    sget-boolean v0, Lcom/android/tools/r8/internal/Dt;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/r50;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public final a(Lcom/android/tools/r8/internal/W5;)Z
    .locals 7

    .line 107
    sget-boolean v0, Lcom/android/tools/r8/internal/Dt;->f:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->c()Lcom/android/tools/r8/internal/nJ$b;

    move-result-object v1

    .line 108
    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$b;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->p()Lcom/android/tools/r8/internal/Mf;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->a:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Mf;->a(Lcom/android/tools/r8/graph/D5;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 111
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->d:Ljava/util/Set;

    if-nez v0, :cond_5

    .line 112
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Dt;->d:Ljava/util/Set;

    .line 113
    new-instance v0, Lcom/android/tools/r8/internal/tR;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->b:Lcom/android/tools/r8/internal/fB;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/tR;-><init>(Lcom/android/tools/r8/internal/fB;)V

    .line 114
    iget-object v1, p0, Lcom/android/tools/r8/internal/Dt;->e:Lcom/android/tools/r8/internal/Et;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Et;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->p()Lcom/android/tools/r8/internal/Mf;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/android/tools/r8/internal/Dt;->b:Lcom/android/tools/r8/internal/fB;

    new-instance v3, Lcom/android/tools/r8/internal/XC0;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/XC0;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/fB;->b(Ljava/util/function/Predicate;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/mK;

    .line 116
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/v2;->t0()Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    iget-object v5, v1, Lcom/android/tools/r8/internal/Mf;->a:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/L2;->g(Lcom/android/tools/r8/graph/L2;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/android/tools/r8/internal/Dt;->d:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tR;->c()Lcom/android/tools/r8/internal/dt;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v3, v6}, Lcom/android/tools/r8/internal/dt;->a(Lcom/android/tools/r8/internal/W5;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 119
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/Dt;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
