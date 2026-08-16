.class public Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/sjavac/server/Sjavac;


# instance fields
.field private final delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

.field private final idleTimeout:J

.field private final idlenessTimer:Ljava/util/Timer;

.field private idlenessTimerTask:Ljava/util/TimerTask;

.field private outstandingCalls:I

.field private final toShutdown:Lorg/openjdk/tools/sjavac/server/Terminable;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/sjavac/server/Sjavac;Lorg/openjdk/tools/sjavac/server/Terminable;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->outstandingCalls:I

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->toShutdown:Lorg/openjdk/tools/sjavac/server/Terminable;

    iput-wide p3, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idleTimeout:J

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->scheduleTimeout()V

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;)J
    .locals 2

    iget-wide v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idleTimeout:J

    return-wide v0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;)Lorg/openjdk/tools/sjavac/server/Terminable;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->toShutdown:Lorg/openjdk/tools/sjavac/server/Terminable;

    return-object p0
.end method

.method private declared-synchronized endCall()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->outstandingCalls:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->outstandingCalls:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->scheduleTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private scheduleTimeout()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimerTask:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac$1;-><init>(Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;)V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimerTask:Ljava/util/TimerTask;

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimer:Ljava/util/Timer;

    iget-wide v2, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idleTimeout:J

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Idle timeout already scheduled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized startCall()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->outstandingCalls:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->outstandingCalls:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimerTask:Ljava/util/TimerTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Idle timeout already cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->startCall()V

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/sjavac/server/Sjavac;->compile([Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->endCall()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->endCall()V

    throw p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->idlenessTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/server/IdleResetSjavac;->delegate:Lorg/openjdk/tools/sjavac/server/Sjavac;

    invoke-interface {v0}, Lorg/openjdk/tools/sjavac/server/Sjavac;->shutdown()V

    return-void
.end method
