.class public final Lv1/P;
.super LD0/h;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(LD0/i;)V
    .locals 1

    invoke-direct {p0, p1}, LD0/h;-><init>(LD0/i;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv1/P;->c:Ljava/util/List;

    iget-object p1, p0, LD0/h;->b:LD0/i;

    const-string v0, "TaskOnStopCallback"

    invoke-interface {p1, v0, p0}, LD0/i;->c(Ljava/lang/String;LD0/h;)V

    return-void
.end method

.method public static m(Landroid/app/Activity;)Lv1/P;
    .locals 2

    invoke-static {p0}, LD0/h;->d(Landroid/app/Activity;)LD0/i;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    const-string v0, "TaskOnStopCallback"

    const-class v1, Lv1/P;

    invoke-interface {p0, v0, v1}, LD0/i;->a(Ljava/lang/String;Ljava/lang/Class;)LD0/h;

    move-result-object v0

    check-cast v0, Lv1/P;

    if-nez v0, :cond_0

    new-instance v0, Lv1/P;

    invoke-direct {v0, p0}, Lv1/P;-><init>(LD0/i;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final l()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lv1/P;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv1/P;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv1/K;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lv1/K;->P1()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lv1/P;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n(Lv1/K;)V
    .locals 3

    iget-object v0, p0, Lv1/P;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lv1/P;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
