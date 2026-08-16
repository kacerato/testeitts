.class public final Lcom/google/common/util/concurrent/D$d;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/google/common/util/concurrent/D$c;",
        ">;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/common/util/concurrent/D;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public c:Ljava/util/concurrent/Executor;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public d:Ljava/lang/Runnable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public e:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/D;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/D$c;->NOT_RUN:Lcom/google/common/util/concurrent/D$c;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/D$d;->c:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/D$d;->b:Lcom/google/common/util/concurrent/D;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/D;Lcom/google/common/util/concurrent/D$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/D$d;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/D;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/D$d;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/D$d;->d()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/D$d;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/D$d;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    sget-object v0, Lcom/google/common/util/concurrent/D$c;->NOT_RUN:Lcom/google/common/util/concurrent/D$c;

    sget-object v1, Lcom/google/common/util/concurrent/D$c;->CANCELLED:Lcom/google/common/util/concurrent/D$c;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    sget-object v0, Lcom/google/common/util/concurrent/D$c;->NOT_RUN:Lcom/google/common/util/concurrent/D$c;

    sget-object v1, Lcom/google/common/util/concurrent/D$c;->STARTED:Lcom/google/common/util/concurrent/D$c;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/D$c;->CANCELLED:Lcom/google/common/util/concurrent/D$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->c:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->b:Lcom/google/common/util/concurrent/D;

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/D$d;->e:Ljava/lang/Thread;

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/D$d;->b:Lcom/google/common/util/concurrent/D;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/D;->b(Lcom/google/common/util/concurrent/D;)Lcom/google/common/util/concurrent/D$e;

    move-result-object v0

    iget-object v1, v0, Lcom/google/common/util/concurrent/D$e;->a:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/common/util/concurrent/D$d;->e:Ljava/lang/Thread;

    if-ne v1, v3, :cond_2

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->b:Lcom/google/common/util/concurrent/D;

    iget-object v1, v0, Lcom/google/common/util/concurrent/D$e;->b:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lw2/H;->g0(Z)V

    iput-object p1, v0, Lcom/google/common/util/concurrent/D$e;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Lcom/google/common/util/concurrent/D$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, v0, Lcom/google/common/util/concurrent/D$e;->c:Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->c:Ljava/util/concurrent/Executor;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/D$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->c:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/D$d;->d:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->e:Ljava/lang/Thread;

    return-void

    :goto_2
    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->e:Ljava/lang/Thread;

    throw p1
.end method

.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/D$d;->e:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/D$d;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/D$e;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/D$e;-><init>(Lcom/google/common/util/concurrent/D$a;)V

    iput-object v0, v1, Lcom/google/common/util/concurrent/D$e;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/common/util/concurrent/D$d;->b:Lcom/google/common/util/concurrent/D;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/D;->c(Lcom/google/common/util/concurrent/D;Lcom/google/common/util/concurrent/D$e;)Lcom/google/common/util/concurrent/D$e;

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->b:Lcom/google/common/util/concurrent/D;

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/D$d;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/google/common/util/concurrent/D$d;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, v1, Lcom/google/common/util/concurrent/D$e;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/google/common/util/concurrent/D$e;->c:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_1

    iput-object v2, v1, Lcom/google/common/util/concurrent/D$e;->b:Ljava/lang/Runnable;

    iput-object v2, v1, Lcom/google/common/util/concurrent/D$e;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v2, v1, Lcom/google/common/util/concurrent/D$e;->a:Ljava/lang/Thread;

    return-void

    :goto_1
    iput-object v2, v1, Lcom/google/common/util/concurrent/D$e;->a:Ljava/lang/Thread;

    throw v0
.end method
