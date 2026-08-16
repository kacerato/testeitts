.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;
    }
.end annotation

.annotation build Lk0/i;
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:Lk0/g;

.field public static d:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Lk0/g;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/FutureTask;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->p(Ljava/util/concurrent/FutureTask;)V

    return-void
.end method

.method public static synthetic b()Lk0/g;
    .locals 1

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->h()Lk0/g;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/util/concurrent/FutureTask;)Lk0/g;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Lk0/g;",
            ">;)",
            "Lk0/g;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/g;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    if-nez v4, :cond_0

    sput-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    if-ne v2, p0, :cond_1

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    monitor-exit v3

    return-object v2

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_5

    :goto_2
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    if-ne v4, p0, :cond_2

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_5
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    if-ne v4, p0, :cond_4

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_4
    :goto_6
    sget-object p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :goto_7
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public static e(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "specialist",
            "callback"
        }
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;)V

    return-void
.end method

.method public static f(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "specialist",
            "sessionId",
            "callback"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->i()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    invoke-static {}, LNc/d;->c()I

    move-result v1

    invoke-direct {v0, v1, p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;-><init>(ILjava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;)V

    if-eqz p2, :cond_1

    invoke-interface {p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V

    :cond_1
    return-void
.end method

.method public static g(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/s;)V

    return-void
.end method

.method public static h()Lk0/g;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LW7/b;->f:LC8/a;

    iget-object v2, v1, LC8/a;->a:LD8/a;

    invoke-virtual {v2}, LD8/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ai/cache/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, LC8/a;->a:LD8/a;

    invoke-virtual {v1}, LD8/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ai/gemma-4-E2B-it.litertlm"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lk0/j;->a:Lk0/j;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lk0/j;->j(Ljava/lang/Boolean;)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Lk0/j;->l(Ljava/lang/String;)V

    const/16 v2, 0x2710

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lk0/a$b;

    invoke-direct {v4}, Lk0/a$b;-><init>()V

    invoke-static {v1, v2, v4, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->c(Ljava/lang/String;ILk0/a;Ljava/lang/String;)Lk0/h;

    move-result-object v4

    new-instance v5, Lk0/g;

    invoke-direct {v5, v4}, Lk0/g;-><init>(Lk0/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Lk0/g;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v5

    :catchall_0
    move-exception v3

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Lk0/g;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_1
    new-instance v3, Lk0/a$a;

    invoke-direct {v3}, Lk0/a$a;-><init>()V

    invoke-static {v1, v2, v3, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->c(Ljava/lang/String;ILk0/a;Ljava/lang/String;)Lk0/h;

    move-result-object v0

    new-instance v1, Lk0/g;

    invoke-direct {v1, v0}, Lk0/g;-><init>(Lk0/h;)V

    invoke-virtual {v1}, Lk0/g;->j()V

    return-object v1
.end method

.method public static i()V
    .locals 3

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    if-nez v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/b;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/b;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/c;

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/c;-><init>(Ljava/util/concurrent/FutureTask;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static j(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-object v0
.end method

.method public static k(Ljava/util/concurrent/FutureTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Lk0/g;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d(Ljava/util/concurrent/FutureTask;)Lk0/g;

    return-void
.end method

.method public static l()Lk0/g;
    .locals 4

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    if-nez v1, :cond_1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/b;

    invoke-direct {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/b;-><init>()V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    sput-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d:Ljava/util/concurrent/FutureTask;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    :cond_2
    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->d(Ljava/util/concurrent/FutureTask;)Lk0/g;

    move-result-object v0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static m()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/a;

    invoke-direct {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/a;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static n()Z
    .locals 5

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->d()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static o()Z
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static synthetic p(Ljava/util/concurrent/FutureTask;)V
    .locals 0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->k(Ljava/util/concurrent/FutureTask;)V

    return-void
.end method

.method public static synthetic q(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)I
    .locals 2

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static r(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chat"
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;->a(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    const/4 v1, -0x1

    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->u()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->s()Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;

    move-result-object v6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->q()I

    move-result v7

    invoke-virtual {p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;->n()J

    move-result-wide v8

    const/4 v11, 0x0

    move-object v4, v3

    move-object v10, p0

    invoke-direct/range {v4 .. v11}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$b;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;IJLcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/r;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;)V

    if-ltz v1, :cond_3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-ltz v1, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->t()V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    :goto_4
    return-void
.end method

.method public static s()V
    .locals 0

    return-void
.end method

.method public static t()V
    .locals 4

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->n()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    invoke-virtual {v3}, Lk0/g;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sput-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v3

    sput-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->c:Lk0/g;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v3

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static varargs u(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "basePrompt",
            "promp",
            "outputCallback",
            "tools"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->i()V

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;

    invoke-static {}, LNc/d;->c()I

    move-result v1

    invoke-direct {v0, v1, p0, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;-><init>(ILjava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V

    new-instance p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;

    invoke-direct {p0, p2, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;)V

    invoke-virtual {v0, p1, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/i;->j(Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;)V

    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "basePrompt",
            "promp",
            "tools"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/d;->u(Ljava/lang/String;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/h;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)V

    return-void
.end method
