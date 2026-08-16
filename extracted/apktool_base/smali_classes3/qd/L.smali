.class public final Lqd/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lqd/j;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lqd/z;

.field public final d:Lqd/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/y<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lqd/A;

.field public final f:Lqd/K;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/K<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Lqd/p;

.field public final h:Lqd/z;


# direct methods
.method public constructor <init>(Lqd/y;Lqd/A;Lqd/K;Lqd/p;Lqd/z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/y<",
            "TT;>;",
            "Lqd/A;",
            "Lqd/K<",
            "TT;>;",
            "Lqd/p;",
            "Lqd/z;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lqd/L;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lqd/z;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lqd/z;-><init>(J)V

    iput-object v0, p0, Lqd/L;->c:Lqd/z;

    iput-object p1, p0, Lqd/L;->d:Lqd/y;

    iput-object p2, p0, Lqd/L;->e:Lqd/A;

    iput-object p3, p0, Lqd/L;->f:Lqd/K;

    iput-object p4, p0, Lqd/L;->g:Lqd/p;

    iput-object p5, p0, Lqd/L;->h:Lqd/z;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lqd/L;->f:Lqd/K;

    instance-of v1, v0, Lqd/t;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lqd/t;

    invoke-interface {v0}, Lqd/t;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqd/L;->g:Lqd/p;

    invoke-interface {v1, v0}, Lqd/p;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lqd/L;->f:Lqd/K;

    instance-of v1, v0, Lqd/t;

    if-eqz v1, :cond_0

    :try_start_0
    check-cast v0, Lqd/t;

    invoke-interface {v0}, Lqd/t;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqd/L;->g:Lqd/p;

    invoke-interface {v1, v0}, Lqd/p;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public R()Lqd/z;
    .locals 1

    iget-object v0, p0, Lqd/L;->c:Lqd/z;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lqd/L;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lqd/L;->e:Lqd/A;

    invoke-interface {v0}, Lqd/A;->d()V

    return-void
.end method

.method public run()V
    .locals 8

    iget-object v0, p0, Lqd/L;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqd/L;->e:Lqd/A;

    invoke-interface {v0}, Lqd/A;->e()V

    invoke-direct {p0}, Lqd/L;->b()V

    iget-object v0, p0, Lqd/L;->c:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v3

    const/4 v0, 0x0

    :goto_0
    move v5, v2

    :cond_0
    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lqd/L;->h:Lqd/z;

    invoke-virtual {v5}, Lqd/z;->d()J

    move-result-wide v3

    iget-object v5, p0, Lqd/L;->c:Lqd/z;

    const-wide/16 v6, 0x1

    sub-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Lqd/z;->e(J)V
    :try_end_0
    .catch Lcom/lmax/disruptor/AlertException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v1

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move v5, v1

    goto :goto_3

    :cond_1
    :goto_1
    :try_start_1
    iget-object v6, p0, Lqd/L;->e:Lqd/A;

    invoke-interface {v6, v3, v4}, Lqd/A;->a(J)J

    iget-object v6, p0, Lqd/L;->d:Lqd/y;

    invoke-virtual {v6, v3, v4}, Lqd/y;->u(J)Ljava/lang/Object;

    move-result-object v0

    iget-object v6, p0, Lqd/L;->f:Lqd/K;

    invoke-interface {v6, v0}, Lqd/K;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/lmax/disruptor/AlertException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    iget-object v6, p0, Lqd/L;->g:Lqd/p;

    invoke-interface {v6, v5, v3, v4, v0}, Lqd/p;->c(Ljava/lang/Throwable;JLjava/lang/Object;)V

    goto :goto_0

    :catch_1
    :goto_3
    iget-object v6, p0, Lqd/L;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lqd/L;->a()V

    iget-object v0, p0, Lqd/L;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
