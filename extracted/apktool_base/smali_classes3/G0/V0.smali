.class public final LG0/V0;
.super LG0/o;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/HashMap;

.field public final h:Landroid/content/Context;

.field public volatile i:Landroid/os/Handler;

.field public final j:LG0/T0;

.field public final k:LS0/b;

.field public final l:J

.field public final m:J

.field public volatile n:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, LG0/o;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LG0/V0;->g:Ljava/util/HashMap;

    new-instance v0, LG0/T0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LG0/T0;-><init>(LG0/V0;LG0/U0;)V

    iput-object v0, p0, LG0/V0;->j:LG0/T0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LG0/V0;->h:Landroid/content/Context;

    new-instance p1, Lh1/v;

    invoke-direct {p1, p2, v0}, Lh1/v;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, LG0/V0;->i:Landroid/os/Handler;

    invoke-static {}, LS0/b;->b()LS0/b;

    move-result-object p1

    iput-object p1, p0, LG0/V0;->k:LS0/b;

    const-wide/16 p1, 0x1388

    iput-wide p1, p0, LG0/V0;->l:J

    const-wide/32 p1, 0x493e0

    iput-wide p1, p0, LG0/V0;->m:J

    iput-object p3, p0, LG0/V0;->n:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static bridge synthetic p(LG0/V0;)J
    .locals 2

    iget-wide v0, p0, LG0/V0;->m:J

    return-wide v0
.end method

.method public static bridge synthetic q(LG0/V0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, LG0/V0;->h:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic r(LG0/V0;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, LG0/V0;->i:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic s(LG0/V0;)LS0/b;
    .locals 0

    iget-object p0, p0, LG0/V0;->k:LS0/b;

    return-object p0
.end method

.method public static bridge synthetic t(LG0/V0;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, LG0/V0;->g:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public final m(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;
    .locals 4
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LG0/V0;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG0/V0;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG0/S0;

    if-nez p4, :cond_0

    iget-object p4, p0, LG0/V0;->n:Ljava/util/concurrent/Executor;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :goto_0
    if-nez v1, :cond_1

    new-instance v1, LG0/S0;

    invoke-direct {v1, p0, p1}, LG0/S0;-><init>(LG0/V0;LG0/R0;)V

    invoke-virtual {v1, p2, p2, p3}, LG0/S0;->e(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-static {v1, p3, p4}, LG0/S0;->d(LG0/S0;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;

    move-result-object p2

    iget-object p3, p0, LG0/V0;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget-object v2, p0, LG0/V0;->i:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, p2}, LG0/S0;->h(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, p2, p2, p3}, LG0/S0;->e(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v1}, LG0/S0;->a()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    :goto_1
    move-object p2, v3

    goto :goto_2

    :cond_2
    invoke-static {v1, p3, p4}, LG0/S0;->d(LG0/S0;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, LG0/S0;->b()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, LG0/S0;->c()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, LG0/S0;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, LB0/c;->E:LB0/c;

    monitor-exit v0

    return-object p1

    :cond_4
    if-nez p2, :cond_5

    new-instance p2, LB0/c;

    const/4 p1, -0x1

    invoke-direct {p2, p1}, LB0/c;-><init>(I)V

    :cond_5
    monitor-exit v0

    return-object p2

    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(LG0/R0;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LG0/V0;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG0/V0;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LG0/S0;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, LG0/S0;->h(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2, p3}, LG0/S0;->f(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v1}, LG0/S0;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, LG0/V0;->i:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, LG0/V0;->i:Landroid/os/Handler;

    iget-wide v1, p0, LG0/V0;->l:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Nonexistent connection status for service config: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final u(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LG0/V0;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LG0/V0;->n:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final v(Landroid/os/Looper;)V
    .locals 3

    iget-object v0, p0, LG0/V0;->g:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lh1/v;

    iget-object v2, p0, LG0/V0;->j:LG0/T0;

    invoke-direct {v1, p1, v2}, Lh1/v;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, LG0/V0;->i:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
