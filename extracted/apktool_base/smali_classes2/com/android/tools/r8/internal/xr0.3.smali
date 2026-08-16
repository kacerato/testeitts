.class public Lcom/android/tools/r8/internal/xr0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/threading/ThreadingModule;

.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/xr0;->a:Lcom/android/tools/r8/threading/ThreadingModule;

    iput-object p2, p0, Lcom/android/tools/r8/internal/xr0;->b:Ljava/util/concurrent/ExecutorService;

    if-lez p3, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Sr0;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-interface {p0}, Lcom/android/tools/r8/internal/Sr0;->a()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0

    .line 23
    invoke-interface {p0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 24
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    iget-object v1, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    new-instance v1, Lcom/android/tools/r8/internal/HU0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/HU0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/function/Predicate;)Ljava/util/ArrayList;
    .locals 2

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xr0;->a()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    .line 21
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v1, Lcom/android/tools/r8/internal/Oy1;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/Oy1;-><init>(Ljava/util/function/Predicate;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final a(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/function/Consumer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/xr0;->a:Lcom/android/tools/r8/threading/ThreadingModule;

    invoke-interface {v0}, Lcom/android/tools/r8/threading/ThreadingModule;->isSingleThreaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/My1;

    invoke-direct {v1, p2, v0}, Lcom/android/tools/r8/internal/My1;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/concurrent/Callable;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/xr0;->a:Lcom/android/tools/r8/threading/ThreadingModule;

    iget-object p2, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/threading/ThreadingModule;->forEach(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(Ljava/util/concurrent/Callable;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xr0;->a:Lcom/android/tools/r8/threading/ThreadingModule;

    iget-object v2, p0, Lcom/android/tools/r8/internal/xr0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1, v2}, Lcom/android/tools/r8/threading/ThreadingModule;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/util/function/Consumer;)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/xr0;->a:Lcom/android/tools/r8/threading/ThreadingModule;

    iget-object v1, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/threading/ThreadingModule;->awaitFutures(Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/concurrent/Future;

    .line 13
    invoke-static {v3}, Lcom/android/tools/r8/internal/My;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/Sr0;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Ny1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Ny1;-><init>(Lcom/android/tools/r8/internal/Sr0;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/concurrent/Callable;)V

    return-void
.end method
