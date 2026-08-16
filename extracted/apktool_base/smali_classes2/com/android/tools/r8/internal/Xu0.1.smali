.class public final Lcom/android/tools/r8/internal/Xu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/IdentityHashMap;

.field public final synthetic b:Lcom/android/tools/r8/internal/Yu0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Yu0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Xu0;->a:Ljava/util/IdentityHashMap;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Ljava/util/Map;)V
    .locals 4

    .line 74
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/w21;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/w21;-><init>()V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/graph/I9;

    invoke-direct {v0}, Lcom/android/tools/r8/graph/I9;-><init>()V

    .line 75
    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 78
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    sget-boolean p1, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez p1, :cond_1

    .line 81
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/android/tools/r8/graph/j1;

    .line 82
    sget-boolean v3, Lcom/android/tools/r8/graph/N4;->d:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/N4;->c(Lcom/android/tools/r8/graph/j1;)V

    goto :goto_0

    .line 83
    :cond_1
    sget-object p1, Lcom/android/tools/r8/graph/j1;->v:Lcom/android/tools/r8/graph/j1;

    iput-object p1, p0, Lcom/android/tools/r8/graph/N4;->c:Lcom/android/tools/r8/graph/j1;

    .line 84
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/O4;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;)Z
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/tools/r8/graph/E0;->l:Lcom/android/tools/r8/graph/N4;

    .line 71
    iget-object p0, p0, Lcom/android/tools/r8/graph/N4;->b:Lcom/android/tools/r8/graph/O4;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/O4;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 11

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/tools/r8/internal/Xu0;->b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p3

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 13
    invoke-virtual {p2, v0, p3}, Lcom/android/tools/r8/graph/A2;->b(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/Yu0;->b:Lcom/android/tools/r8/internal/qd;

    .line 15
    iget-object v1, v1, Lcom/android/tools/r8/internal/qd;->a:Lcom/android/tools/r8/internal/hC;

    .line 16
    new-instance v2, Lcom/android/tools/r8/internal/u21;

    invoke-direct {v2, p1}, Lcom/android/tools/r8/internal/u21;-><init>(Lcom/android/tools/r8/graph/H2;)V

    .line 17
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/hC;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 19
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    const/4 v0, 0x1

    .line 20
    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/li;->a(Lcom/android/tools/r8/graph/A2;Z)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 21
    new-instance v2, Lcom/android/tools/r8/graph/K4;

    invoke-direct {v2}, Lcom/android/tools/r8/graph/K4;-><init>()V

    .line 22
    iget-object v3, v2, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    check-cast v3, Lcom/android/tools/r8/graph/L4;

    const/high16 v4, 0x10000

    .line 23
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/g;->a(I)V

    .line 24
    invoke-virtual {v2, v0}, Lcom/android/tools/r8/graph/f;->a(Z)Lcom/android/tools/r8/graph/f;

    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/tools/r8/graph/K4;

    .line 26
    iget-object v3, v2, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 27
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g;->z()Lcom/android/tools/r8/graph/g;

    .line 28
    iget-object v2, v2, Lcom/android/tools/r8/graph/f;->a:Lcom/android/tools/r8/graph/g;

    .line 29
    check-cast v2, Lcom/android/tools/r8/graph/L4;

    .line 30
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/android/tools/r8/internal/i60;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/i60;-><init>()V

    .line 32
    iget-object v3, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    .line 33
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-static {p3, v0, v2, v3}, Lcom/android/tools/r8/internal/WS;->a(Lcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/bT;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/PS;

    move-result-object v3

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 36
    iget-object v6, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {v5, v7, v6}, Lcom/android/tools/r8/internal/pu0;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    .line 38
    new-instance v6, Lcom/android/tools/r8/internal/xw0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 39
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v5

    .line 41
    iget-object v9, v2, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v9, v5, v6}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 42
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    .line 43
    :goto_2
    invoke-virtual {p2, v7}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 44
    invoke-virtual {p2, v0, v7}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 45
    iget-object v6, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object v6, v6, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5, v6}, Lcom/android/tools/r8/graph/M2;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    .line 46
    new-instance v9, Lcom/android/tools/r8/internal/xw0;

    invoke-direct {v9, v0, v6, v8}, Lcom/android/tools/r8/internal/xw0;-><init>(ILcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)V

    .line 47
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v6

    .line 49
    iget-object v10, v2, Lcom/android/tools/r8/internal/i60;->b:Lcom/android/tools/r8/internal/qd0;

    invoke-virtual {v10, v6, v9}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    .line 50
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/xw0;->t()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 51
    :cond_3
    :goto_3
    invoke-virtual {p3, v7}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 52
    invoke-virtual {p3, v0, v7}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/M2;->F0()Z

    invoke-virtual {v3, v0}, Lcom/android/tools/r8/internal/PS;->a(I)Lcom/android/tools/r8/internal/PS;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 54
    :cond_4
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/16 p3, 0xcd

    invoke-virtual {v3, p3, p2, v4}, Lcom/android/tools/r8/internal/PS;->a(ILjava/util/List;Ljava/util/List;)Lcom/android/tools/r8/internal/PS;

    .line 55
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/PS;->b()Lcom/android/tools/r8/internal/PS;

    .line 56
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/PS;->d()Lcom/android/tools/r8/internal/WS;

    move-result-object p2

    .line 57
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/i0;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p2

    sget-object p3, Lcom/android/tools/r8/internal/Ib;->g:Lcom/android/tools/r8/internal/Ib;

    .line 58
    iput-object p3, p2, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 59
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    .line 60
    iget-object v0, p3, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 61
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p3

    .line 62
    iput-object p3, p2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 63
    iget-object p3, p0, Lcom/android/tools/r8/internal/Xu0;->b:Lcom/android/tools/r8/internal/Yu0;

    iget-object p3, p3, Lcom/android/tools/r8/internal/Yu0;->a:Lcom/android/tools/r8/graph/y;

    .line 64
    iget-object v0, p3, Lcom/android/tools/r8/graph/y;->S:Lcom/android/tools/r8/androidapi/a;

    .line 65
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/androidapi/a;->a(Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/androidapi/f;

    move-result-object p3

    .line 66
    iput-object p3, p2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 67
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p2

    .line 68
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    .line 69
    invoke-interface {p4, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/H5;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Xu0;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xu0;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/internal/t21;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/t21;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final declared-synchronized b(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)Lcom/android/tools/r8/graph/H5;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Xu0;->a:Ljava/util/IdentityHashMap;

    new-instance v1, Lcom/android/tools/r8/graph/Ra;

    invoke-direct {v1}, Lcom/android/tools/r8/graph/Ra;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v7, Lcom/android/tools/r8/internal/v21;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/tools/r8/internal/v21;-><init>(Lcom/android/tools/r8/internal/Xu0;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/A2;Ljava/util/Map;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
