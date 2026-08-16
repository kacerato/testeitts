.class public LCc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/jme3/bullet/PhysicsSpace;

.field public final d:Ljava/lang/Object;

.field public volatile e:Ljava/lang/Thread;

.field public volatile f:Lcom/itsmagic/engine/Engines/Engine/World/World;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bulletjme"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LCc/c;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LCc/c;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LCc/c;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LCc/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LCc/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LCc/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, LCc/c$a;

    invoke-direct {v0, p0}, LCc/c$a;-><init>(LCc/c;)V

    iput-object v0, p0, LCc/c;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(LCc/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, LCc/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic b(LCc/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, LCc/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic c(LCc/c;)Lcom/itsmagic/engine/Engines/Engine/World/World;
    .locals 0

    iget-object p0, p0, LCc/c;->f:Lcom/itsmagic/engine/Engines/Engine/World/World;

    return-object p0
.end method

.method public static synthetic d(LCc/c;Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 0

    invoke-virtual {p0, p1}, LCc/c;->h(Lcom/itsmagic/engine/Engines/Engine/World/World;)V

    return-void
.end method

.method public static synthetic e(LCc/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LCc/c;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic f(LCc/c;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, LCc/c;->j:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public g()V
    .locals 2

    iget-object v0, p0, LCc/c;->e:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LCc/c$b;

    invoke-direct {v1, p0}, LCc/c$b;-><init>(LCc/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "Physics-0"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iput-object v0, p0, LCc/c;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final h(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    invoke-static {}, Lc8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lc8/b;->i()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p1, :cond_0

    goto/16 :goto_e

    :cond_0
    const-class v0, Lh9/a;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, LK8/d;->b()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-gez v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v5, v1, v2

    if-lez v5, :cond_5

    const v5, 0x3d3c6a7f    # 0.046f

    invoke-static {v2, v1, v5}, LNc/b;->E(FFF)F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object p1

    invoke-static {}, Lp6/d;->E1()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Sync"

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    move v5, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    :try_start_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v6, Lh9/a;

    invoke-interface {v6}, Lh9/a;->isActiveForPhysics()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Lh9/a;->updatePhysics()V

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Lh9/a;->disabledUpdatePhysics()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    invoke-static {}, Lp6/d;->E1()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Physics simulation"

    invoke-static {v2}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v2

    goto :goto_4

    :cond_4
    move-object v2, v4

    :goto_4
    sget-object v5, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v6, p0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->c()I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/jme3/bullet/PhysicsSpace;->setSolverNumIterations(I)V

    iget-object p1, p0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {p1, v1}, Lcom/jme3/bullet/PhysicsSpace;->update(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_5
    :try_start_2
    invoke-static {}, LJ4/d;->E1()V

    invoke-static {p1}, LJ4/d;->c2(Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lp6/d;->J1(Lp6/g;)V

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_5
    :goto_8
    sget-object p1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    invoke-static {}, Lp6/d;->E1()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Distribute"

    invoke-static {v1}, Lp6/d;->L1(Ljava/lang/String;)Lp6/g;

    move-result-object v4

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_d

    :cond_6
    :goto_9
    move v1, v3

    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ge v1, v2, :cond_8

    :try_start_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v2, Lh9/a;

    invoke-interface {v2}, Lh9/a;->isActiveForPhysics()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Lh9/a;->beforeCollisionEvents()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    :catch_3
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_8
    iget-object v1, p0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v1}, Lcom/jme3/bullet/PhysicsSpace;->distributeEvents()V

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v1, Lh9/a;

    invoke-interface {v1}, Lh9/a;->isActiveForPhysics()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Lh9/a;->onPhysicsGetTransformations()V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_a
    invoke-static {v4}, Lp6/d;->J1(Lp6/g;)V

    monitor-exit p1

    return-void

    :goto_d
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_b
    :goto_e
    return-void
.end method

.method public i()V
    .locals 4

    invoke-static {}, Lc8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lc8/b;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lh9/a;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v2, Lh9/a;

    invoke-interface {v2}, Lh9/a;->isActiveForPhysics()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lh9/a;->resyncOnFrame()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "world"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->d0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, LCc/c;->f:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object p1, p0, LCc/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, LCc/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, LCc/c;->e:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, LCc/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LCc/c;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LCc/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ge v3, v0, :cond_2

    iget-object v3, p0, LCc/c;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, LCc/c;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lt v4, v0, :cond_1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v4, p0, LCc/c;->d:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x1

    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_3
    iget-object v0, p0, LCc/c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    return-void
.end method
