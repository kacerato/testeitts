.class public final Lcom/android/tools/r8/shaking/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Ef;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;

.field public final c:Ljava/util/LinkedList;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Lcom/android/tools/r8/internal/h80;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Ef;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Q;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Q;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Q;->e:Lcom/android/tools/r8/internal/h80;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Q;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/shaking/Q;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Q;->a:Lcom/android/tools/r8/internal/Ef;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/H2;)Ljava/util/Set;
    .locals 0

    .line 13
    invoke-static {}, Lcom/android/tools/r8/internal/Al0;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H2;Ljava/util/Set;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->o:Lcom/android/tools/r8/graph/s5;

    .line 37
    iget-object p0, p0, Lcom/android/tools/r8/shaking/N;->f:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/graph/j;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/E0;

    .line 40
    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/tools/r8/graph/s5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->W:Lcom/android/tools/r8/shaking/x1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/x1;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 3
    sget-object v0, Lcom/android/tools/r8/shaking/c0;->a:Lcom/android/tools/r8/shaking/c0;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/d0;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/shaking/H1;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/Df;
    .locals 0

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/shaking/Q;->a:Lcom/android/tools/r8/internal/Ef;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/E0;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/na;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/na;-><init>()V

    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 12
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Q;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/H5;

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/shaking/Q;->h:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/I0;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/I0;

    .line 6
    sget-boolean v1, Lcom/android/tools/r8/shaking/Q;->h:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/shaking/N;)V
    .locals 5

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/shaking/Q;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->f0:Lcom/android/tools/r8/shaking/S0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/tools/r8/shaking/R0;->a:Lcom/android/tools/r8/shaking/R0;

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Q;->c:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 25
    iget-object v3, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;)V

    goto :goto_1

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/shaking/Q;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 27
    sget-boolean v3, Lcom/android/tools/r8/shaking/Q;->h:Z

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/tools/r8/shaking/N;->K:Lcom/android/tools/r8/shaking/M;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    .line 28
    iget-object v3, v3, Lcom/android/tools/r8/shaking/M;->a:Ljava/util/Set;

    .line 29
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 31
    :cond_4
    :goto_3
    invoke-virtual {p1, v0, v2}, Lcom/android/tools/r8/shaking/N;->c(Lcom/android/tools/r8/shaking/X1;Lcom/android/tools/r8/graph/H5;)V

    .line 32
    iget-object v3, p1, Lcom/android/tools/r8/shaking/N;->S:Lcom/android/tools/r8/shaking/L0;

    invoke-virtual {v3, v2, v2, v0}, Lcom/android/tools/r8/shaking/L0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/D5;Lcom/android/tools/r8/shaking/X1;)Z

    goto :goto_2

    .line 33
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/shaking/N;->C:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/Q;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/android/tools/r8/shaking/ka;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/ka;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 35
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->e:Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/shaking/la;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/shaking/la;-><init>(Lcom/android/tools/r8/shaking/N;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->e:Lcom/android/tools/r8/internal/h80;

    new-instance v1, Lcom/android/tools/r8/shaking/ma;

    invoke-direct {v1}, Lcom/android/tools/r8/shaking/ma;-><init>()V

    .line 15
    invoke-static {v1}, Lcom/android/tools/r8/internal/TU;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v2, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 18
    new-instance v3, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v3, v2, p2}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, v1, v3}, Lcom/android/tools/r8/internal/Pn;->a(Ljava/util/function/Function;Lcom/android/tools/r8/internal/fv;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    check-cast p2, Lcom/android/tools/r8/shaking/H1;

    .line 21
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/Df;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Q;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    new-instance v2, Lcom/android/tools/r8/shaking/oa;

    invoke-direct {v2, p0, p1}, Lcom/android/tools/r8/shaking/oa;-><init>(Lcom/android/tools/r8/shaking/Q;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/Df;

    return-object p1
.end method
