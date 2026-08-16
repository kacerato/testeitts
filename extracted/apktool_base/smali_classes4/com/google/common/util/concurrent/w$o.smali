.class public final Lcom/google/common/util/concurrent/w$o;
.super Ljava/util/IdentityHashMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "Ljava/io/Closeable;",
        "Ljava/util/concurrent/Executor;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/common/util/concurrent/w$w;

.field public volatile c:Z

.field public volatile d:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/w$w;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/w$w;-><init>(Lcom/google/common/util/concurrent/w$o;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w$o;->b:Lcom/google/common/util/concurrent/w$w;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/w$d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/w$o;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/w$o;)Lcom/google/common/util/concurrent/w$w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$o;->b:Lcom/google/common/util/concurrent/w$w;

    return-object p0
.end method


# virtual methods
.method public b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$o;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/w;->h(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(Lcom/google/common/util/concurrent/w$n;Ljava/lang/Object;)Lcom/google/common/util/concurrent/F;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$n<",
            "TV;TU;>;TV;)",
            "Lcom/google/common/util/concurrent/F<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/w$o;-><init>()V

    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/w$o;->b:Lcom/google/common/util/concurrent/w$w;

    invoke-interface {p1, v1, p2}, Lcom/google/common/util/concurrent/w$n;->a(Lcom/google/common/util/concurrent/w$w;Ljava/lang/Object;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/w;->c(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$o;)V

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->a(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/F;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    throw p1
.end method

.method public close()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$o;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$o;->c:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/w$o;->c:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/w;->h(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractMap;->clear()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$o;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$o;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public d(Lcom/google/common/util/concurrent/w$q;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$q<",
            "-TV;TU;>;TV;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$o;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/w$o;-><init>()V

    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/w$o;->b:Lcom/google/common/util/concurrent/w$w;

    invoke-interface {p1, v1, p2}, Lcom/google/common/util/concurrent/w$q;->a(Lcom/google/common/util/concurrent/w$w;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->m(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$o;->b(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    throw p1
.end method

.method public e()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$o;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/w$o;->c:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/w$o;->d:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Lw2/H;->g0(Z)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/w$o;->d:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
