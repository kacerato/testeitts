.class public LU2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LU2/y$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, LU2/y$a;->INSTANCE:LU2/y$a;

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;I)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, LU2/A;

    invoke-direct {v0, p0, p1}, LU2/A;-><init>(Ljava/util/concurrent/Executor;I)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/ExecutorService;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    new-instance v0, LU2/D;

    invoke-direct {v0, p0, p1}, LU2/D;-><init>(Ljava/util/concurrent/ExecutorService;I)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/ExecutorService;I)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    new-instance v0, LU2/o;

    invoke-static {p0, p1}, LU2/y;->c(Ljava/util/concurrent/ExecutorService;I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    sget-object p1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:LT2/y;

    invoke-virtual {p1}, LT2/y;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, p1}, LU2/o;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static e(Ljava/util/concurrent/Executor;)LU2/E;
    .locals 2

    new-instance v0, LU2/F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LU2/F;-><init>(ZLjava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static f(Ljava/util/concurrent/ExecutorService;)LU2/G;
    .locals 2

    new-instance v0, LU2/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LU2/J;-><init>(ZLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static g(Ljava/util/concurrent/ScheduledExecutorService;)LU2/K;
    .locals 2

    new-instance v0, LU2/L;

    invoke-static {p0}, LU2/y;->f(Ljava/util/concurrent/ExecutorService;)LU2/G;

    move-result-object p0

    sget-object v1, Lcom/google/firebase/concurrent/ExecutorsRegistrar;->d:LT2/y;

    invoke-virtual {v1}, LT2/y;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, p0, v1}, LU2/L;-><init>(LU2/G;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public static h(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, LU2/M;

    invoke-direct {v0, p0}, LU2/M;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
