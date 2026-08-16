.class public final Lcom/google/android/gms/internal/measurement/I1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile j:Lcom/google/android/gms/internal/measurement/I1;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LT0/g;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Ln1/a;

.field public final e:Ljava/util/List;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "listenerList"
    .end annotation
.end field

.field public f:I

.field public g:Z

.field public final h:Ljava/lang/String;

.field public volatile i:Lcom/google/android/gms/internal/measurement/w0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FA"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    invoke-static {}, LT0/k;->e()LT0/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->b:LT0/g;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/r0;->a()Lcom/google/android/gms/internal/measurement/p0;

    new-instance v8, Lcom/google/android/gms/internal/measurement/j1;

    invoke-direct {v8, p0}, Lcom/google/android/gms/internal/measurement/j1;-><init>(Lcom/google/android/gms/internal/measurement/I1;)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->unconfigurableExecutorService(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ln1/a;

    invoke-direct {v0, p0}, Ln1/a;-><init>(Lcom/google/android/gms/internal/measurement/I1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->d:Ln1/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->e:Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/d3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "google_app_id"

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/measurement/internal/l5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    const-class v2, Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/measurement/I1;->g:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string p2, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Add Google Analytics for Firebase to resume data collection."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    :goto_0
    const-string v0, "fa"

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->h:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/measurement/W0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/W0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string p2, "Unable to register lifecycle notifications. Application null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/measurement/H1;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/measurement/H1;-><init>(Lcom/google/android/gms/internal/measurement/I1;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static v(Landroid/content/Context;Landroid/os/Bundle;)Lcom/google/android/gms/internal/measurement/I1;
    .locals 2

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/measurement/I1;->j:Lcom/google/android/gms/internal/measurement/I1;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/I1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/I1;->j:Lcom/google/android/gms/internal/measurement/I1;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/measurement/I1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/measurement/I1;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/I1;->j:Lcom/google/android/gms/internal/measurement/I1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/I1;->j:Lcom/google/android/gms/internal/measurement/I1;

    return-object p0
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 3

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->e:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string v1, "OnEventListener already registered."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/measurement/y1;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/measurement/y1;-><init>(Lcom/google/android/gms/measurement/internal/e4;)V

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/measurement/w0;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/F0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string v0, "Failed to register event listener on calling thread. Trying again on the dynamite thread."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/t1;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/measurement/t1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/y1;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final B(Lcom/google/android/gms/measurement/internal/e4;)V
    .locals 3

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->e:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string v1, "OnEventListener had not been registered."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/measurement/y1;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/w0;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/F0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string v1, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/measurement/u1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/u1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/y1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final C(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/I1;->u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/I1;->u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/I1;->u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/measurement/M0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/M0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final G(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/N0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/N0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/O0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/O0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/P0;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/P0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    const-class p2, Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->e1(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final J(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/Q0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Q0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final K(Lcom/google/android/gms/internal/measurement/K0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/R0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/R0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/K0;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final L(Ljava/lang/Boolean;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/S0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/S0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final M(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/T0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/T0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final N()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/U0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/U0;-><init>(Lcom/google/android/gms/internal/measurement/I1;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final O(J)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/V0;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/V0;-><init>(Lcom/google/android/gms/internal/measurement/I1;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/X0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/X0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/Y0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/Y0;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final R(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/a1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/a1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final S()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/b1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/b1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final T()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/c1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/c1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final U()J
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/d1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/d1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->t(J)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->b:LT0/g;

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/I1;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/I1;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/e1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/e1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/g1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/g1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8

    new-instance v6, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/measurement/h1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/h1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 p1, 0x1388

    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Double;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_2
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final d(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    new-instance p1, Lcom/google/android/gms/internal/measurement/i1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/i1;-><init>(Lcom/google/android/gms/internal/measurement/I1;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final e(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/k1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/k1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/os/Bundle;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    if-eqz p2, :cond_0

    const-wide/16 p1, 0x1388

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/t0;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/l1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/l1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Integer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/t0;->e1(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/16 p1, 0x19

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final g()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/m1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/m1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->k(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/n1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/measurement/n1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->t(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/o1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/internal/measurement/o1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/t0;I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    const-class v0, Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/t0;->e1(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final k(Z)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/p1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/p1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final l(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/q1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/q1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final synthetic m(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final synthetic n(Ljava/lang/Exception;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/I1;->t(Ljava/lang/Exception;ZZ)V

    return-void
.end method

.method public final synthetic o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/I1;->g:Z

    return v0
.end method

.method public final synthetic q()Lcom/google/android/gms/internal/measurement/w0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    return-object v0
.end method

.method public final synthetic r(Lcom/google/android/gms/internal/measurement/w0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/measurement/w1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t(Ljava/lang/Exception;ZZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/I1;->g:Z

    or-int/2addr v0, p2

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/I1;->g:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string p3, "Data collection startup failed. No data will be collected."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p2, "Error with data collection. Data lost."

    if-eqz p3, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/I1;->d(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V
    .locals 9

    new-instance v8, Lcom/google/android/gms/internal/measurement/v1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/measurement/v1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final w()Ln1/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/I1;->d:Ln1/a;

    return-object v0
.end method

.method public final x(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/w0;
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->i:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/google/android/gms/dynamite/DynamiteModule;->g:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    :goto_0
    const-string v0, "com.google.android.gms.measurement.dynamite"

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->e(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p1

    const-string p2, "com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/v0;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/w0;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/I1;->t(Ljava/lang/Exception;ZZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final y(Lcom/google/android/gms/measurement/internal/d4;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/x1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/x1;-><init>(Lcom/google/android/gms/measurement/internal/d4;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->i:Lcom/google/android/gms/internal/measurement/w0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/measurement/w0;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/F0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/NetworkOnMainThreadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/I1;->a:Ljava/lang/String;

    const-string v1, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/r1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/measurement/r1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Lcom/google/android/gms/internal/measurement/x1;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final z(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/s1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/s1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/I1;->s(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method
