.class public final Lcom/android/tools/r8/internal/RZ;
.super Lcom/android/tools/r8/internal/xY;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/graph/y;

.field public final c:Ljava/util/IdentityHashMap;

.field public d:Lcom/android/tools/r8/internal/pm0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/xY;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Zs0;
    .locals 0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object p0, Lcom/android/tools/r8/internal/Ys0;->c:Lcom/android/tools/r8/internal/Xs0;

    return-object p0

    .line 88
    :cond_0
    sget-object p0, Lcom/android/tools/r8/internal/Ws0;->c:Lcom/android/tools/r8/internal/Vs0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/AA;)Lcom/android/tools/r8/internal/hC;
    .locals 10

    .line 40
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/i;

    .line 43
    iget-object v2, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 44
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/E0;

    new-instance v3, Lcom/android/tools/r8/internal/sV0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/sV0;-><init>(Ljava/util/Set;)V

    .line 46
    invoke-virtual {v1, v2, v3}, Lcom/android/tools/r8/graph/j;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/internal/gt0;)Lcom/android/tools/r8/internal/Zs0;

    .line 47
    new-instance v1, Lcom/android/tools/r8/internal/QZ;

    invoke-direct {v1, p0, p1}, Lcom/android/tools/r8/internal/QZ;-><init>(Lcom/android/tools/r8/internal/RZ;Lcom/android/tools/r8/internal/AA;)V

    .line 48
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/QZ;->a(Ljava/util/Collection;)V

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 50
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    .line 52
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/QZ;->b(Lcom/android/tools/r8/graph/H5;)V

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/QZ;->c()V

    .line 54
    new-instance v2, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 55
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    iget-object p1, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 57
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 58
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 59
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v5

    .line 60
    iget-object v6, p0, Lcom/android/tools/r8/internal/RZ;->d:Lcom/android/tools/r8/internal/pm0;

    .line 61
    iget-object v6, v6, Lcom/android/tools/r8/internal/pm0;->b:Ljava/util/IdentityHashMap;

    .line 62
    invoke-virtual {v6, v4}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/H5;

    :goto_2
    if-eqz v6, :cond_4

    .line 63
    invoke-virtual {v5, v6}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 65
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 66
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    goto :goto_3

    .line 67
    :cond_3
    iget-object v7, p0, Lcom/android/tools/r8/internal/RZ;->d:Lcom/android/tools/r8/internal/pm0;

    .line 68
    iget-object v7, v7, Lcom/android/tools/r8/internal/pm0;->a:Lcom/android/tools/r8/internal/h80;

    .line 69
    iget-object v7, v7, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    .line 70
    sget-object v8, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 71
    new-instance v9, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v9, v8, v6}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 72
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 73
    check-cast v6, Lcom/android/tools/r8/graph/H5;

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_2

    .line 74
    new-instance v6, Lcom/android/tools/r8/internal/tV0;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/tV0;-><init>()V

    .line 75
    invoke-static {v6}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/AA;

    .line 76
    iget-object v5, v5, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 77
    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_5
    iget-object v5, v2, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_6
    sget p1, Lcom/android/tools/r8/internal/hC;->c:I

    .line 80
    new-instance p1, Lcom/android/tools/r8/internal/eC;

    .line 81
    invoke-direct {p1}, Lcom/android/tools/r8/internal/eC;-><init>()V

    .line 82
    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    .line 83
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Iterable;)Lcom/android/tools/r8/internal/eC;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/LinkedList;Ljava/util/concurrent/ExecutorService;)Ljava/lang/Object;
    .locals 4

    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/AA;

    .line 90
    iget-object v1, v0, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 91
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 93
    iget-object v3, p0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    .line 95
    new-instance v0, Lcom/android/tools/r8/internal/om0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/om0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 96
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/om0;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/om0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/om0;->a()Lcom/android/tools/r8/internal/pm0;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/RZ;->d:Lcom/android/tools/r8/internal/pm0;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/AA;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 10

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/RZ;->a(Lcom/android/tools/r8/internal/AA;)Lcom/android/tools/r8/internal/hC;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/AA;

    .line 5
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/QZ;

    invoke-direct {v3, p0, v1}, Lcom/android/tools/r8/internal/QZ;-><init>(Lcom/android/tools/r8/internal/RZ;Lcom/android/tools/r8/internal/AA;)V

    .line 7
    iget-object v1, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 8
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 10
    sget-boolean v5, Lcom/android/tools/r8/internal/RZ;->e:Z

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_2
    :goto_2
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->c1()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 12
    sget v5, Lcom/android/tools/r8/internal/hC;->c:I

    .line 13
    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/QZ;->a(Ljava/util/Collection;)V

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    .line 16
    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/QZ;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/QZ;->c()V

    .line 18
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    .line 19
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/AA;

    .line 20
    iget-object v7, v6, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 21
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 22
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/H2;

    .line 23
    invoke-virtual {v3, v8, v4}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual {v3, v4, v8}, Lcom/android/tools/r8/internal/QZ;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_6
    move-object v5, v6

    goto :goto_4

    .line 25
    :cond_7
    new-instance v5, Lcom/android/tools/r8/internal/AA;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/AA;-><init>()V

    .line 26
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_4
    if-eqz v5, :cond_0

    .line 27
    iget-object v5, v5, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 28
    :cond_8
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 29
    :cond_9
    invoke-static {v0}, Lcom/android/tools/r8/internal/s60;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/AA;

    .line 31
    iget-object v2, v1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 33
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 34
    iget-object v4, p0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 35
    :cond_b
    iget-object p2, p1, Lcom/android/tools/r8/internal/AA;->b:Ljava/util/LinkedList;

    .line 36
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 37
    :cond_c
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/H2;

    .line 38
    iget-object v2, p0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/AA;

    if-ne v2, p1, :cond_c

    .line 39
    iget-object v2, p0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RZ;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "NoClassInitializerCycles"

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RZ;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->K()Lcom/android/tools/r8/internal/nJ$g;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ$g;->b:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
