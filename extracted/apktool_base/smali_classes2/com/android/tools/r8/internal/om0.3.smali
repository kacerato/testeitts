.class public final Lcom/android/tools/r8/internal/om0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/h80;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/h80;->l()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/om0;->b:Lcom/android/tools/r8/internal/h80;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/om0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/internal/om0;->a:Lcom/android/tools/r8/graph/y;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object v0, Lcom/android/tools/r8/internal/g80;->a:Lcom/android/tools/r8/internal/g80;

    .line 21
    new-instance v1, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 22
    iget-object p0, p0, Lcom/android/tools/r8/internal/Pn;->b:Ljava/util/Map;

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;Ljava/util/Optional;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/bp1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/bp1;-><init>(Lcom/android/tools/r8/internal/h80;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 16
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Ljava/util/Optional;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/android/tools/r8/internal/cp1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/cp1;-><init>(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V
    .locals 1

    .line 8
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/om0;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/dp1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/dp1;-><init>(Lcom/android/tools/r8/internal/om0;)V

    new-instance v1, Lcom/android/tools/r8/internal/ep1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/ep1;-><init>(Lcom/android/tools/r8/internal/om0;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/om0;->a:Lcom/android/tools/r8/graph/y;

    .line 2
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/Yx;Lcom/android/tools/r8/internal/Wr0;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object p0
.end method

.method public final a()Lcom/android/tools/r8/internal/pm0;
    .locals 4

    .line 10
    invoke-static {}, Lcom/android/tools/r8/internal/h80;->k()Lcom/android/tools/r8/internal/h80;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/tools/r8/internal/om0;->b:Lcom/android/tools/r8/internal/h80;

    new-instance v2, Lcom/android/tools/r8/internal/Zo1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/Zo1;-><init>(Lcom/android/tools/r8/internal/h80;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Pn;->forEach(Ljava/util/function/BiConsumer;)V

    .line 12
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/om0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/android/tools/r8/internal/ap1;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/ap1;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/pm0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/pm0;-><init>(Lcom/android/tools/r8/internal/h80;Ljava/util/IdentityHashMap;)V

    return-object v2
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/android/tools/r8/internal/nm0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/om0;->a:Lcom/android/tools/r8/graph/y;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/tools/r8/internal/nm0;-><init>(Lcom/android/tools/r8/internal/om0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method

.method public final a(Ljava/util/function/Consumer;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/om0;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    new-instance v1, Lcom/android/tools/r8/internal/fp1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/fp1;-><init>(Ljava/util/function/Consumer;)V

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/H2;

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    return-void
.end method
