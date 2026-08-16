.class public abstract LG0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:I = 0x9

.field public static c:LG0/V0; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static d:Landroid/os/HandlerThread; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static e:Ljava/util/concurrent/Executor; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static f:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LG0/o;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()I
    .locals 1
    .annotation build LC0/a;
    .end annotation

    const/16 v0, 0x1081

    return v0
.end method

.method public static e(Landroid/content/Context;)LG0/o;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LG0/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG0/o;->c:LG0/V0;

    if-nez v1, :cond_1

    new-instance v1, LG0/V0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, LG0/o;->f:Z

    if-eqz v3, :cond_0

    invoke-static {}, LG0/o;->f()Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    sget-object v3, LG0/o;->e:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2, p0, v3}, LG0/V0;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V

    sput-object v1, LG0/o;->c:LG0/V0;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, LG0/o;->c:LG0/V0;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static f()Landroid/os/HandlerThread;
    .locals 4
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LG0/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG0/o;->d:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    sget v3, LG0/o;->b:I

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG0/o;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, LG0/o;->d:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static g(I)Landroid/os/HandlerThread;
    .locals 3
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, LG0/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG0/o;->d:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    invoke-direct {v1, v2, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG0/o;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object p0, LG0/o;->d:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    sget-object v0, LG0/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG0/o;->c:LG0/V0;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, LG0/V0;->u(Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sput-object p0, LG0/o;->e:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static i(I)Z
    .locals 2
    .annotation build LC0/a;
    .end annotation

    sget-object v0, LG0/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG0/o;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    sput p0, LG0/o;->b:I

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static j()V
    .locals 3
    .annotation build LC0/a;
    .end annotation

    sget-object v0, LG0/o;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LG0/o;->c:LG0/V0;

    if-eqz v1, :cond_0

    sget-boolean v2, LG0/o;->f:Z

    if-nez v2, :cond_0

    invoke-static {}, LG0/o;->f()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, LG0/V0;->v(Landroid/os/Looper;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    sput-boolean v1, LG0/o;->f:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LG0/R0;

    const/16 v1, 0x1081

    invoke-direct {v0, p1, v1}, LG0/R0;-><init>(Landroid/content/ComponentName;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, LG0/o;->m(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;

    move-result-object p1

    invoke-virtual {p1}, LB0/c;->u0()Z

    move-result p1

    return p1
.end method

.method public b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LG0/R0;

    const/16 v1, 0x1081

    invoke-direct {v0, p1, v1}, LG0/R0;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v0, p2, p3, p4}, LG0/o;->m(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;

    move-result-object p1

    invoke-virtual {p1}, LB0/c;->u0()Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LG0/R0;

    const/16 v1, 0x1081

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LG0/R0;-><init>(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p3, p1}, LG0/o;->m(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;

    move-result-object p1

    invoke-virtual {p1}, LB0/c;->u0()Z

    move-result p1

    return p1
.end method

.method public k(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LG0/R0;

    const/16 v1, 0x1081

    invoke-direct {v0, p1, v1}, LG0/R0;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, v0, p2, p3}, LG0/o;->n(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    new-instance v0, LG0/R0;

    const/16 v1, 0x1081

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LG0/R0;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p2, p3}, LG0/o;->n(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public abstract m(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract n(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p3, LG0/R0;

    const/16 v0, 0x1081

    invoke-direct {p3, p1, p2, v0, p6}, LG0/R0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, p3, p4, p5}, LG0/o;->n(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method
