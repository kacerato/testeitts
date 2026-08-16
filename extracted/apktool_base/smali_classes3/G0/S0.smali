.class public final LG0/S0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements LG0/W0;


# instance fields
.field public final c:Ljava/util/Map;

.field public d:I

.field public e:Z

.field public f:Landroid/os/IBinder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:LG0/R0;

.field public h:Landroid/content/ComponentName;

.field public final synthetic i:LG0/V0;


# direct methods
.method public constructor <init>(LG0/V0;LG0/R0;)V
    .locals 0

    iput-object p1, p0, LG0/S0;->i:LG0/V0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG0/S0;->g:LG0/R0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LG0/S0;->c:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, LG0/S0;->d:I

    return-void
.end method

.method public static bridge synthetic d(LG0/S0;Ljava/lang/String;Ljava/util/concurrent/Executor;)LB0/c;
    .locals 9

    :try_start_0
    iget-object v0, p0, LG0/S0;->g:LG0/R0;

    iget-object v1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v1}, LG0/V0;->q(LG0/V0;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, LG0/R0;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/common/internal/zzaj; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    iput v0, p0, LG0/S0;->d:I

    invoke-static {}, LT0/J;->a()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v1}, LG0/V0;->s(LG0/V0;)LS0/b;

    move-result-object v2

    invoke-static {v1}, LG0/V0;->q(LG0/V0;)Landroid/content/Context;

    move-result-object v3

    const/16 v7, 0x1081

    move-object v4, p1

    move-object v6, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, LS0/b;->e(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, p0, LG0/S0;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {p1}, LG0/V0;->r(LG0/V0;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, LG0/S0;->g:LG0/R0;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, LG0/S0;->i:LG0/V0;

    invoke-static {p2}, LG0/V0;->r(LG0/V0;)Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, LG0/S0;->i:LG0/V0;

    invoke-static {p0}, LG0/V0;->p(LG0/V0;)J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object p0, LB0/c;->E:LB0/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    :try_start_2
    iput p1, p0, LG0/S0;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {p1}, LG0/V0;->s(LG0/V0;)LS0/b;

    move-result-object p2

    invoke-static {p1}, LG0/V0;->q(LG0/V0;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, LS0/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    new-instance p0, LB0/c;

    const/16 p1, 0x10

    invoke-direct {p0, p1}, LB0/c;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    throw p0

    :catch_1
    move-exception p0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzaj;->zza:LB0/c;

    :goto_2
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LG0/S0;->d:I

    return v0
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, LG0/S0;->h:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final c()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LG0/S0;->f:Landroid/os/IBinder;

    return-object v0
.end method

.method public final e(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p3, p0, LG0/S0;->c:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, LG0/S0;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, LG0/S0;->g:LG0/R0;

    iget-object v0, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v0}, LG0/V0;->r(LG0/V0;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {p1}, LG0/V0;->s(LG0/V0;)LS0/b;

    move-result-object v0

    invoke-static {p1}, LG0/V0;->q(LG0/V0;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, LS0/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, LG0/S0;->e:Z

    const/4 p1, 0x2

    iput p1, p0, LG0/S0;->d:I

    return-void
.end method

.method public final h(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, LG0/S0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, LG0/S0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, LG0/S0;->e:Z

    return v0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0, p1}, LG0/S0;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v0}, LG0/V0;->t(LG0/V0;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v1}, LG0/V0;->r(LG0/V0;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, LG0/S0;->g:LG0/R0;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, LG0/S0;->f:Landroid/os/IBinder;

    iput-object p1, p0, LG0/S0;->h:Landroid/content/ComponentName;

    iget-object v1, p0, LG0/S0;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput v3, p0, LG0/S0;->d:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v0}, LG0/V0;->t(LG0/V0;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LG0/S0;->i:LG0/V0;

    invoke-static {v1}, LG0/V0;->r(LG0/V0;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, LG0/S0;->g:LG0/R0;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, LG0/S0;->f:Landroid/os/IBinder;

    iput-object p1, p0, LG0/S0;->h:Landroid/content/ComponentName;

    iget-object v1, p0, LG0/S0;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, LG0/S0;->d:I

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
