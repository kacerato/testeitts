.class public final Lqd/c;
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

.field public c:Lqd/p;

.field public final d:Lqd/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final e:Lqd/A;

.field public final f:Lqd/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/i<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Lqd/z;

.field public final h:Lqd/I;


# direct methods
.method public constructor <init>(Lqd/g;Lqd/A;Lqd/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/g<",
            "TT;>;",
            "Lqd/A;",
            "Lqd/i<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lqd/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lqd/q;

    invoke-direct {v0}, Lqd/q;-><init>()V

    iput-object v0, p0, Lqd/c;->c:Lqd/p;

    new-instance v0, Lqd/z;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Lqd/z;-><init>(J)V

    iput-object v0, p0, Lqd/c;->g:Lqd/z;

    iput-object p1, p0, Lqd/c;->d:Lqd/g;

    iput-object p2, p0, Lqd/c;->e:Lqd/A;

    iput-object p3, p0, Lqd/c;->f:Lqd/i;

    instance-of p1, p3, Lqd/D;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lqd/D;

    invoke-interface {p1, v0}, Lqd/D;->a(Lqd/z;)V

    :cond_0
    instance-of p1, p3, Lqd/I;

    if-eqz p1, :cond_1

    check-cast p3, Lqd/I;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lqd/c;->h:Lqd/I;

    return-void
.end method


# virtual methods
.method public R()Lqd/z;
    .locals 1

    iget-object v0, p0, Lqd/c;->g:Lqd/z;

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lqd/c;->f:Lqd/i;

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

    iget-object v1, p0, Lqd/c;->c:Lqd/p;

    invoke-interface {v1, v0}, Lqd/p;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lqd/c;->f:Lqd/i;

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

    iget-object v1, p0, Lqd/c;->c:Lqd/p;

    invoke-interface {v1, v0}, Lqd/p;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final c(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lqd/c;->h:Lqd/I;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lqd/I;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqd/c;->c:Lqd/p;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p1, p2, v2}, Lqd/p;->c(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Lqd/p;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lqd/c;->c:Lqd/p;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lqd/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lqd/c;->e:Lqd/A;

    invoke-interface {v0}, Lqd/A;->d()V

    return-void
.end method

.method public run()V
    .locals 11

    iget-object v0, p0, Lqd/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lqd/c;->e:Lqd/A;

    invoke-interface {v0}, Lqd/A;->e()V

    invoke-virtual {p0}, Lqd/c;->b()V

    iget-object v0, p0, Lqd/c;->g:Lqd/z;

    invoke-virtual {v0}, Lqd/z;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const/4 v0, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lqd/c;->e:Lqd/A;

    invoke-interface {v7, v3, v4}, Lqd/A;->a(J)J

    move-result-wide v7

    :goto_1
    cmp-long v9, v3, v7

    if-gtz v9, :cond_2

    iget-object v10, p0, Lqd/c;->d:Lqd/g;

    invoke-interface {v10, v3, v4}, Lqd/g;->u(J)Ljava/lang/Object;

    move-result-object v0

    iget-object v10, p0, Lqd/c;->f:Lqd/i;

    if-nez v9, :cond_1

    move v9, v2

    goto :goto_2

    :cond_1
    move v9, v1

    :goto_2
    invoke-interface {v10, v0, v3, v4, v9}, Lqd/i;->b(Ljava/lang/Object;JZ)V

    add-long/2addr v3, v5

    goto :goto_1

    :catchall_0
    move-exception v7

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lqd/c;->g:Lqd/z;

    invoke-virtual {v9, v7, v8}, Lqd/z;->e(J)V
    :try_end_0
    .catch Lcom/lmax/disruptor/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lmax/disruptor/AlertException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_3
    iget-object v8, p0, Lqd/c;->c:Lqd/p;

    invoke-interface {v8, v7, v3, v4, v0}, Lqd/p;->c(Ljava/lang/Throwable;JLjava/lang/Object;)V

    iget-object v7, p0, Lqd/c;->g:Lqd/z;

    invoke-virtual {v7, v3, v4}, Lqd/z;->e(J)V

    add-long/2addr v3, v5

    goto :goto_0

    :catch_0
    iget-object v7, p0, Lqd/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lqd/c;->a()V

    iget-object v0, p0, Lqd/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_1
    iget-object v7, p0, Lqd/c;->g:Lqd/z;

    invoke-virtual {v7}, Lqd/z;->c()J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lqd/c;->c(J)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
