.class public final LD0/t;
.super LD0/h;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation


# instance fields
.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(LD0/i;)V
    .locals 1

    invoke-direct {p0, p1}, LD0/h;-><init>(LD0/i;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LD0/t;->c:Ljava/util/List;

    iget-object p1, p0, LD0/h;->b:LD0/i;

    const-string v0, "LifecycleObserverOnStop"

    invoke-interface {p1, v0, p0}, LD0/i;->c(Ljava/lang/String;LD0/h;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/app/Activity;)LD0/t;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {p0}, LD0/h;->d(Landroid/app/Activity;)LD0/i;

    move-result-object v0

    const-string v1, "LifecycleObserverOnStop"

    const-class v2, LD0/t;

    invoke-interface {v0, v1, v2}, LD0/i;->a(Ljava/lang/String;Ljava/lang/Class;)LD0/h;

    move-result-object v1

    check-cast v1, LD0/t;

    if-nez v1, :cond_0

    new-instance v1, LD0/t;

    invoke-direct {v1, v0}, LD0/t;-><init>(LD0/i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static bridge synthetic n(LD0/t;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, LD0/t;->o(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LD0/t;->c:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LD0/t;->c:Ljava/util/List;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized o(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LD0/t;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
