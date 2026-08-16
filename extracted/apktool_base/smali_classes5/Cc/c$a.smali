.class public LCc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LCc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LCc/c;


# direct methods
.method public constructor <init>(LCc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LCc/c$a;->b:LCc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    new-instance v1, Lcom/jme3/bullet/PhysicsSoftSpace;

    sget-object v2, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->DBVT:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    invoke-direct {v1, v2}, Lcom/jme3/bullet/PhysicsSoftSpace;-><init>(Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    iput-object v1, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    new-instance v1, LCc/b;

    invoke-direct {v1}, LCc/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->setMaxSubSteps(I)V

    :goto_0
    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v0}, LCc/c;->a(LCc/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v1}, LCc/c;->b(LCc/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v1}, LCc/c;->c(LCc/c;)Lcom/itsmagic/engine/Engines/Engine/World/World;

    move-result-object v2

    invoke-static {v1, v2}, LCc/c;->d(LCc/c;Lcom/itsmagic/engine/Engines/Engine/World/World;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v1}, LCc/c;->b(LCc/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v0}, LCc/c;->e(LCc/c;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v0}, LCc/c;->e(LCc/c;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    iget-object v2, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v2}, LCc/c;->b(LCc/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v0}, LCc/c;->e(LCc/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, LCc/c$a;->b:LCc/c;

    invoke-static {v2}, LCc/c;->e(LCc/c;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
