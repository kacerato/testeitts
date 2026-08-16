.class public final Lcom/google/common/util/concurrent/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lw2/Q;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/v;->i(Lw2/Q;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/d0;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/v;->f(Lcom/google/common/util/concurrent/d0;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lw2/Q;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/v;->h(Lw2/Q;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/common/util/concurrent/v;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/d0;)Lcom/google/common/util/concurrent/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/common/util/concurrent/d0;",
            ")",
            "Lcom/google/common/util/concurrent/l<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/s;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/s;-><init>(Lcom/google/common/util/concurrent/d0;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/google/common/util/concurrent/d0;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/d0;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/Z;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method public static synthetic h(Lw2/Q;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/v;->m(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/v;->m(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/v;->m(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw p1
.end method

.method public static synthetic i(Lw2/Q;Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lw2/Q;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/v;->m(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result p0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/v;->m(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/v;->m(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw p1
.end method

.method public static j(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/j0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/t;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Runnable;Lw2/Q;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lw2/Q<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/u;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/u;-><init>(Lw2/Q;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static l(Ljava/util/concurrent/Callable;Lw2/Q;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lw2/Q<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/r;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/r;-><init>(Lw2/Q;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
