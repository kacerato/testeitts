.class public abstract Lcom/android/tools/r8/internal/BJ;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/AJ;

.field public static final c:Lcom/android/tools/r8/internal/AJ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/AJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AJ;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    new-instance v0, Lcom/android/tools/r8/internal/AJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/AJ;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/BJ;->c:Lcom/android/tools/r8/internal/AJ;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;)V
    .locals 7

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    instance-of v5, v0, Lcom/android/tools/r8/internal/zJ;

    if-nez v5, :cond_2

    sget-object v6, Lcom/android/tools/r8/internal/BJ;->c:Lcom/android/tools/r8/internal/AJ;

    if-ne v0, v6, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/android/tools/r8/internal/zJ;

    :cond_3
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x3e8

    if-le v4, v6, :cond_7

    sget-object v6, Lcom/android/tools/r8/internal/BJ;->c:Lcom/android/tools/r8/internal/AJ;

    if-eq v0, v6, :cond_4

    invoke-static {p0, v0, v6}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v5

    :goto_3
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v2, p0

    check-cast v2, Lcom/android/tools/r8/internal/nt0;

    iget-object v3, v2, Lcom/android/tools/r8/internal/nt0;->e:Lcom/android/tools/r8/internal/ot0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/D;->isDone()Z

    move-result v3

    if-nez v3, :cond_5

    :try_start_0
    move-object v4, p0

    check-cast v4, Lcom/android/tools/r8/internal/nt0;

    iget-object v4, v4, Lcom/android/tools/r8/internal/nt0;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_1
    instance-of v5, v4, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v4

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v5, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    invoke-static {p0, v0, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/BJ;->a(Ljava/lang/Thread;)V

    :cond_2
    if-nez v3, :cond_8

    iget-object v0, v2, Lcom/android/tools/r8/internal/nt0;->e:Lcom/android/tools/r8/internal/ot0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/tools/r8/internal/w;

    invoke-direct {v2, v4}, Lcom/android/tools/r8/internal/w;-><init>(Ljava/lang/Throwable;)V

    sget-object v3, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/D;)V

    goto :goto_3

    :goto_1
    sget-object v5, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    invoke-static {p0, v0, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/BJ;->a(Ljava/lang/Thread;)V

    :cond_3
    if-nez v3, :cond_4

    iget-object v0, v2, Lcom/android/tools/r8/internal/nt0;->e:Lcom/android/tools/r8/internal/ot0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/tools/r8/internal/D;->h:Ljava/lang/Object;

    sget-object v3, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/D;)V

    :cond_4
    throw v4

    :cond_5
    move-object v4, v1

    :goto_2
    sget-object v5, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    invoke-static {p0, v0, v5}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/BJ;->a(Ljava/lang/Thread;)V

    :cond_6
    if-nez v3, :cond_8

    iget-object v0, v2, Lcom/android/tools/r8/internal/nt0;->e:Lcom/android/tools/r8/internal/ot0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_7

    sget-object v4, Lcom/android/tools/r8/internal/D;->h:Ljava/lang/Object;

    :cond_7
    sget-object v2, Lcom/android/tools/r8/internal/D;->g:Lcom/android/tools/r8/internal/t;

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/tools/r8/internal/t;->a(Lcom/android/tools/r8/internal/D;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/android/tools/r8/internal/D;->a(Lcom/android/tools/r8/internal/D;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lcom/android/tools/r8/internal/BJ;->b:Lcom/android/tools/r8/internal/AJ;

    if-ne v0, v1, :cond_0

    const-string v0, "running=[DONE]"

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/tools/r8/internal/zJ;

    if-eqz v1, :cond_1

    const-string v0, "running=[INTERRUPTED]"

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running=[RUNNING ON "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "running=[NOT STARTED YET]"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/nt0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nt0;->d:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
