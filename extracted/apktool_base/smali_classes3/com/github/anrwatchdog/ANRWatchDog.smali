.class public Lcom/github/anrwatchdog/ANRWatchDog;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;,
        Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;,
        Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANR_INTERCEPTOR:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

.field private static final DEFAULT_ANR_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

.field private static final DEFAULT_ANR_TIMEOUT:I = 0x1388

.field private static final DEFAULT_INTERRUPTION_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;


# instance fields
.field private _anrInterceptor:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

.field private _anrListener:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

.field private _ignoreDebugger:Z

.field private _interruptionListener:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

.field private _logThreadsWithoutStackTrace:Z

.field private _namePrefix:Ljava/lang/String;

.field private volatile _reported:Z

.field private volatile _tick:J

.field private final _ticker:Ljava/lang/Runnable;

.field private final _timeoutInterval:I

.field private final _uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$1;

    invoke-direct {v0}, Lcom/github/anrwatchdog/ANRWatchDog$1;-><init>()V

    sput-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$2;

    invoke-direct {v0}, Lcom/github/anrwatchdog/ANRWatchDog$2;-><init>()V

    sput-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$3;

    invoke-direct {v0}, Lcom/github/anrwatchdog/ANRWatchDog$3;-><init>()V

    sput-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1388

    .line 1
    invoke-direct {p0, v0}, Lcom/github/anrwatchdog/ANRWatchDog;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3
    sget-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrListener:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    .line 4
    sget-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrInterceptor:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    .line 5
    sget-object v0, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_interruptionListener:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    .line 9
    iput-boolean v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_ignoreDebugger:Z

    const-wide/16 v1, 0x0

    .line 10
    iput-wide v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    .line 11
    iput-boolean v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_reported:Z

    .line 12
    new-instance v0, Lcom/github/anrwatchdog/ANRWatchDog$4;

    invoke-direct {v0, p0}, Lcom/github/anrwatchdog/ANRWatchDog$4;-><init>(Lcom/github/anrwatchdog/ANRWatchDog;)V

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    .line 13
    iput p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_timeoutInterval:I

    return-void
.end method

.method public static synthetic access$002(Lcom/github/anrwatchdog/ANRWatchDog;J)J
    .locals 0

    iput-wide p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    return-wide p1
.end method

.method public static synthetic access$102(Lcom/github/anrwatchdog/ANRWatchDog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_reported:Z

    return p1
.end method


# virtual methods
.method public getTimeoutInterval()I
    .locals 1

    iget v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_timeoutInterval:I

    return v0
.end method

.method public run()V
    .locals 8

    const-string v0, "|ANR-WatchDog|"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_timeoutInterval:I

    int-to-long v0, v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_7

    iget-wide v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-wide v6, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_uiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_ticker:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v6, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_reported:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_ignoreDebugger:Z

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "ANRWatchdog"

    const-string v4, "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_reported:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrInterceptor:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    iget-wide v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    invoke-interface {v0, v1, v2}, Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;->intercept(J)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    iget-object v2, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    invoke-static {v0, v1, v2, v4}, Lcom/github/anrwatchdog/ANRError;->New(JLjava/lang/String;Z)Lcom/github/anrwatchdog/ANRError;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget-wide v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_tick:J

    invoke-static {v0, v1}, Lcom/github/anrwatchdog/ANRError;->NewMainOnly(J)Lcom/github/anrwatchdog/ANRError;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrListener:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    invoke-interface {v1, v0}, Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;->onAppNotResponding(Lcom/github/anrwatchdog/ANRError;)V

    iget v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_timeoutInterval:I

    int-to-long v0, v0

    iput-boolean v3, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_reported:Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_interruptionListener:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    invoke-interface {v1, v0}, Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;->onInterrupted(Ljava/lang/InterruptedException;)V

    :cond_7
    return-void
.end method

.method public setANRInterceptor(Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;)Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_ANR_INTERCEPTOR:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrInterceptor:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrInterceptor:Lcom/github/anrwatchdog/ANRWatchDog$ANRInterceptor;

    :goto_0
    return-object p0
.end method

.method public setANRListener(Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;)Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_ANR_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrListener:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_anrListener:Lcom/github/anrwatchdog/ANRWatchDog$ANRListener;

    :goto_0
    return-object p0
.end method

.method public setIgnoreDebugger(Z)Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 0

    iput-boolean p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_ignoreDebugger:Z

    return-object p0
.end method

.method public setInterruptionListener(Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;)Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/github/anrwatchdog/ANRWatchDog;->DEFAULT_INTERRUPTION_LISTENER:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_interruptionListener:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_interruptionListener:Lcom/github/anrwatchdog/ANRWatchDog$InterruptionListener;

    :goto_0
    return-object p0
.end method

.method public setLogThreadsWithoutStackTrace(Z)Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 0

    iput-boolean p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_logThreadsWithoutStackTrace:Z

    return-object p0
.end method

.method public setReportAllThreads()Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportMainThreadOnly()Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lcom/github/anrwatchdog/ANRWatchDog;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/github/anrwatchdog/ANRWatchDog;->_namePrefix:Ljava/lang/String;

    return-object p0
.end method
