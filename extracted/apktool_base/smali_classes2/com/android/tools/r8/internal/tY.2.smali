.class public final Lcom/android/tools/r8/internal/tY;
.super Lcom/android/tools/r8/internal/A8;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/A8;-><init>(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/vY;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/vY;-><init>(Lcom/android/tools/r8/graph/H5;)V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/sY;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Nt1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Nt1;-><init>(Lcom/android/tools/r8/internal/tY;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    .line 4
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 6
    new-instance p1, Lcom/android/tools/r8/internal/sY;

    iget-object v0, p0, Lcom/android/tools/r8/internal/A8;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/sY;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 2

    .line 7
    new-instance v0, Lu/P0;

    invoke-direct {v0}, Lu/P0;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/Ot1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Ot1;-><init>(Lcom/android/tools/r8/internal/tY;)V

    invoke-virtual {p1, v1, v0}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/H5;)V
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/uY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/A8;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/A8;->b(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/E00;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/vY;

    new-instance v3, Lcom/android/tools/r8/internal/Mt1;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Mt1;-><init>(Lcom/android/tools/r8/internal/tY;)V

    iget-object v4, p0, Lcom/android/tools/r8/internal/A8;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/tools/r8/internal/uY;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/vY;Ljava/util/function/Function;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/f6;)V

    return-void
.end method
