.class public abstract Lcom/android/tools/r8/internal/pX;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qX;Lcom/android/tools/r8/graph/c4;Ljava/util/Set;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/android/tools/r8/internal/mX;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/mX;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qX;Lcom/android/tools/r8/graph/c4;)V

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/O60;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/graph/c4;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)Lcom/android/tools/r8/graph/c4;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/b80;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/b80;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 3
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/i6;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/android/tools/r8/internal/rX;->b:Lcom/android/tools/r8/internal/rX;

    .line 5
    new-instance v2, Lcom/android/tools/r8/internal/qX;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/qX;-><init>()V

    .line 6
    new-instance v3, Lcom/android/tools/r8/internal/Gp1;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/tools/r8/internal/Gp1;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/qX;Lcom/android/tools/r8/graph/c4;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    .line 8
    invoke-static {v1, v3, v0, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 9
    new-instance v0, Lcom/android/tools/r8/internal/rX;

    new-instance v1, Ljava/util/IdentityHashMap;

    iget-object v2, v2, Lcom/android/tools/r8/internal/qX;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/rX;-><init>(Ljava/util/Map;)V

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/graph/y;->o:Lcom/android/tools/r8/internal/rX;

    .line 11
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/tools/r8/internal/tX;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/tX;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 13
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/O60;

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/android/tools/r8/internal/tX;->a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    return-void
.end method
