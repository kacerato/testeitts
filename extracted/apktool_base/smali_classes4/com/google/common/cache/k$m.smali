.class public Lcom/google/common/cache/k$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/k$A;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/k$A<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile b:Lcom/google/common/cache/k$A;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/google/common/util/concurrent/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/r0<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final d:Lw2/O;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/cache/k;->V()Lcom/google/common/cache/k$A;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/k$m;-><init>(Lcom/google/common/cache/k$A;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/k$A;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/common/util/concurrent/r0;->G()Lcom/google/common/util/concurrent/r0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$m;->c:Lcom/google/common/util/concurrent/r0;

    .line 4
    invoke-static {}, Lw2/O;->e()Lw2/O;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k$m;->d:Lw2/O;

    .line 5
    iput-object p1, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$m;->j(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/cache/k;->V()Lcom/google/common/cache/k$A;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    :goto_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$m;->c:Lcom/google/common/util/concurrent/r0;

    invoke-static {v0}, Lcom/google/common/util/concurrent/H0;->f(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/p;)Lcom/google/common/cache/k$A;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/p<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public f()J
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k$m;->d:Lw2/O;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lw2/O;->g(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->l(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->getWeight()I

    move-result v0

    return v0
.end method

.method public h()Lcom/google/common/cache/k$A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/k$A<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    return-object v0
.end method

.method public i(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/Z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TV;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/k$m;->d:Lw2/O;

    invoke-virtual {v0}, Lw2/O;->k()Lw2/O;

    iget-object v0, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$m;->j(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/common/cache/k$m;->c:Lcom/google/common/util/concurrent/r0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->m(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->f(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/common/util/concurrent/Q;->m(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p2, Lcom/google/common/cache/k$m$a;

    invoke-direct {p2, p0}, Lcom/google/common/cache/k$m$a;-><init>(Lcom/google/common/cache/k$m;)V

    invoke-static {}, Lcom/google/common/util/concurrent/g0;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/Q;->x(Lcom/google/common/util/concurrent/Z;Lw2/t;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$m;->k(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/common/cache/k$m;->c:Lcom/google/common/util/concurrent/r0;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k$m;->g(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p2

    :goto_2
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-object p2
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$m;->b:Lcom/google/common/cache/k$A;

    invoke-interface {v0}, Lcom/google/common/cache/k$A;->isActive()Z

    move-result v0

    return v0
.end method

.method public j(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k$m;->c:Lcom/google/common/util/concurrent/r0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/r0;->C(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public k(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/cache/k$m;->c:Lcom/google/common/util/concurrent/r0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/r0;->D(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
