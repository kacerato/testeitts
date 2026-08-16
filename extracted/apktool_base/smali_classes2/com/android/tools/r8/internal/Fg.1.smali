.class public final Lcom/android/tools/r8/internal/Fg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic d:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/Gg;

.field public final c:Lcom/android/tools/r8/internal/Eg;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Eg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    new-instance v0, Lcom/android/tools/r8/internal/Gg;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Gg;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Fg;->b:Lcom/android/tools/r8/internal/Gg;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fg;->c:Lcom/android/tools/r8/internal/Eg;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->j1()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)Z
    .locals 0

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    invoke-interface {p2}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;)Lcom/android/tools/r8/internal/OW;
    .locals 3

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/eA;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/eA;-><init>(I)V

    .line 15
    new-instance v1, Lcom/android/tools/r8/internal/HE0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/HE0;-><init>(Lcom/android/tools/r8/internal/Fg;Lcom/android/tools/r8/internal/f6;)V

    .line 16
    sget-object v2, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/H2;->g(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 17
    new-instance p1, Lcom/android/tools/r8/internal/OW;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-direct {p1, v1, p2, v0}, Lcom/android/tools/r8/internal/OW;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/internal/eA;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V
    .locals 2

    .line 30
    sget-boolean v0, Lcom/android/tools/r8/internal/Fg;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 33
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/tools/r8/internal/Fg;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    .line 34
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/Fg;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;)Lcom/android/tools/r8/internal/OW;

    move-result-object p2

    .line 35
    iget-object p3, p0, Lcom/android/tools/r8/internal/Fg;->c:Lcom/android/tools/r8/internal/Eg;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/Eg;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/OW;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fg;->c:Lcom/android/tools/r8/internal/Eg;

    .line 44
    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/Eg;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/H0;->x()Lcom/android/tools/r8/graph/D2;

    move-result-object p2

    .line 46
    iget-object p1, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    .line 47
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Bq;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    .line 55
    iget-object p2, p0, Lcom/android/tools/r8/internal/Fg;->b:Lcom/android/tools/r8/internal/Gg;

    .line 56
    invoke-interface {p3}, Lcom/android/tools/r8/graph/o0;->z()Lcom/android/tools/r8/graph/f0;

    move-result-object p3

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    check-cast p3, Lcom/android/tools/r8/graph/E0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    iget-object v0, p2, Lcom/android/tools/r8/internal/Gg;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Dq;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/Gg;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/internal/Dq;

    move-result-object v0

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    iget-object p2, v0, Lcom/android/tools/r8/internal/Dq;->b:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 63
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/F2;

    .line 64
    iget-object v0, p1, Lcom/android/tools/r8/internal/Cq;->b:Ljava/util/Map;

    invoke-interface {v0, p3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->c(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    .line 38
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/t1;->e(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fg;->c:Lcom/android/tools/r8/internal/Eg;

    .line 39
    invoke-interface {v0, p2}, Lcom/android/tools/r8/internal/Eg;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 40
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/A2;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Bq;)V
    .locals 7

    .line 48
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 50
    new-instance v4, Lcom/android/tools/r8/internal/DE0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/DE0;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/EE0;

    invoke-direct {v5, p0, p2}, Lcom/android/tools/r8/internal/EE0;-><init>(Lcom/android/tools/r8/internal/Fg;Lcom/android/tools/r8/internal/Bq;)V

    invoke-virtual {v3, v5, v4}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    .line 51
    iget-object v4, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/FE0;

    invoke-direct {v5, v0}, Lcom/android/tools/r8/internal/FE0;-><init>(Ljava/util/Set;)V

    new-instance v6, Lcom/android/tools/r8/internal/GE0;

    invoke-direct {v6, p0, p2}, Lcom/android/tools/r8/internal/GE0;-><init>(Lcom/android/tools/r8/internal/Fg;Lcom/android/tools/r8/internal/Bq;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/d1;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 7

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    new-instance p1, Lcom/android/tools/r8/errors/q;

    invoke-direct {p1}, Lcom/android/tools/r8/errors/q;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 20
    new-instance p1, Lcom/android/tools/r8/internal/Bq;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Bq;-><init>()V

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Fg;->a(Ljava/util/ArrayList;Lcom/android/tools/r8/internal/Bq;)V

    .line 22
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 24
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 25
    invoke-virtual {p0, v5, v1, p1}, Lcom/android/tools/r8/internal/Fg;->b(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v5

    if-nez v5, :cond_2

    .line 29
    invoke-virtual {p0, v4, v1, p1}, Lcom/android/tools/r8/internal/Fg;->a(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 1
    const-string v0, "Concurrent method fixup"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    const-string v0, "Compute strongly connected components"

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/b80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 8
    const-string v1, "Process strongly connected components"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 9
    new-instance v1, Lcom/android/tools/r8/internal/IE0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/IE0;-><init>(Lcom/android/tools/r8/internal/Fg;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 11
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 12
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 13
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V
    .locals 3

    sget-boolean v0, Lcom/android/tools/r8/internal/Fg;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->R0()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fg;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/tools/r8/internal/Fg;->b(Lcom/android/tools/r8/graph/H2;Ljava/util/Set;Lcom/android/tools/r8/internal/Bq;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/android/tools/r8/internal/Fg;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/Bq;)Lcom/android/tools/r8/internal/OW;

    move-result-object p2

    iget-object p3, p0, Lcom/android/tools/r8/internal/Fg;->c:Lcom/android/tools/r8/internal/Eg;

    invoke-interface {p3, p1, p2}, Lcom/android/tools/r8/internal/Eg;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/OW;)V

    return-void
.end method
