.class public LO9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:I

.field public static c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LO9/b;->a:Ljava/lang/Object;

    invoke-static {}, LIc/i;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0}, LO9/b;->b(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, LO9/b;->b:I

    return v0
.end method

.method public static b(I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mc"
        }
    .end annotation

    sget-object v0, LO9/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, LIc/i;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, p0, v1}, LNc/b;->F(III)I

    move-result p0

    sput p0, LO9/b;->b:I

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v3, LO9/b;->b:I

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, LO9/b$a;

    invoke-direct {v8}, LO9/b$a;-><init>()V

    const-wide/16 v4, 0x0

    move-object v1, p0

    move v2, v3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object p0, LO9/b;->c:Ljava/util/concurrent/ExecutorService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LO9/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LO9/b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    sget-object v0, LO9/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LO9/b;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static e()V
    .locals 1

    invoke-static {}, LIc/i;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-static {v0}, LO9/b;->b(I)V

    return-void
.end method
