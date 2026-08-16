.class public Lcom/jme3/bullet/BulletAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/PhysicsTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bullet/BulletAppState$ThreadingType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

.field private collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

.field private debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

.field private final debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

.field private executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile isRunning:Z

.field private numSolvers:I

.field private final parallelPhysicsUpdate:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private physicsFuture:Ljava/util/concurrent/Future;

.field private solverType:Lcom/jme3/bullet/SolverType;

.field private speed:F

.field private stateManager:Lcom/jme3/app/state/AppStateManager;

.field private threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

.field private tpf:F

.field private final worldMax:Lcom/jme3/math/Vector3f;

.field private final worldMin:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/BulletAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/BulletAppState;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    .line 3
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->DBVT:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    .line 4
    new-instance v0, Lcom/jme3/bullet/BulletAppState$1;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/BulletAppState$1;-><init>(Lcom/jme3/bullet/BulletAppState;)V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->parallelPhysicsUpdate:Ljava/util/concurrent/Callable;

    .line 5
    new-instance v0, Lcom/jme3/bullet/CollisionConfiguration;

    invoke-direct {v0}, Lcom/jme3/bullet/CollisionConfiguration;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    .line 6
    new-instance v0, Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-direct {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/jme3/bullet/BulletAppState;->speed:F

    .line 8
    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->countThreads()I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/BulletAppState;->numSolvers:I

    .line 9
    sget-object v0, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    .line 10
    sget-object v0, Lcom/jme3/bullet/BulletAppState$ThreadingType;->SEQUENTIAL:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    .line 11
    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, 0x461c4000    # 10000.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMax:Lcom/jme3/math/Vector3f;

    .line 12
    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, -0x39e3c000    # -10000.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 3

    .line 13
    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, -0x39e3c000    # -10000.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v2, 0x461c4000    # 10000.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/bullet/BulletAppState;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 14
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->AXIS_SWEEP_3:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/bullet/BulletAppState;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    .line 17
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->DBVT:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    .line 18
    new-instance v0, Lcom/jme3/bullet/BulletAppState$1;

    invoke-direct {v0, p0}, Lcom/jme3/bullet/BulletAppState$1;-><init>(Lcom/jme3/bullet/BulletAppState;)V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->parallelPhysicsUpdate:Ljava/util/concurrent/Callable;

    .line 19
    new-instance v0, Lcom/jme3/bullet/CollisionConfiguration;

    invoke-direct {v0}, Lcom/jme3/bullet/CollisionConfiguration;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    .line 20
    new-instance v0, Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-direct {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/jme3/bullet/BulletAppState;->speed:F

    .line 22
    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->countThreads()I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/BulletAppState;->numSolvers:I

    .line 23
    sget-object v0, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    .line 24
    sget-object v0, Lcom/jme3/bullet/BulletAppState$ThreadingType;->SEQUENTIAL:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    .line 25
    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, 0x461c4000    # 10000.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMax:Lcom/jme3/math/Vector3f;

    .line 26
    new-instance v1, Lcom/jme3/math/Vector3f;

    const v2, -0x39e3c000    # -10000.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    .line 27
    const-string v2, "world min"

    invoke-static {p1, v2}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 28
    const-string v2, "world max"

    invoke-static {p2, v2}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 29
    const-string v2, "broadphase type"

    invoke-static {p3, v2}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 30
    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 31
    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 32
    iput-object p3, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/bullet/debug/DebugConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/jme3/bullet/BulletAppState;)F
    .locals 0

    iget p0, p0, Lcom/jme3/bullet/BulletAppState;->tpf:F

    return p0
.end method

.method public static synthetic access$200(Lcom/jme3/bullet/BulletAppState;)F
    .locals 0

    iget p0, p0, Lcom/jme3/bullet/BulletAppState;->speed:F

    return p0
.end method

.method public static synthetic access$300(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/math/Vector3f;
    .locals 0

    iget-object p0, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/math/Vector3f;
    .locals 0

    iget-object p0, p0, Lcom/jme3/bullet/BulletAppState;->worldMax:Lcom/jme3/math/Vector3f;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/jme3/bullet/BulletAppState;)Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;
    .locals 0

    iget-object p0, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    return-object p0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v1, v0}, Lcom/jme3/app/state/AppStateManager;->detach(Lcom/jme3/app/state/AppState;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->stopPhysics()V

    return-void
.end method

.method public countSolvers()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/BulletAppState;->numSolvers:I

    return v0
.end method

.method public createDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;
    .locals 2

    new-instance v0, Lcom/jme3/bullet/debug/BulletDebugAppState;

    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-direct {v0, v1}, Lcom/jme3/bullet/debug/BulletDebugAppState;-><init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V

    return-object v0
.end method

.method public createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)Lcom/jme3/bullet/PhysicsSpace;
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    sget-object v1, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/bullet/PhysicsSpace;

    iget v6, p0, Lcom/jme3/bullet/BulletAppState;->numSolvers:I

    iget-object v7, p0, Lcom/jme3/bullet/BulletAppState;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;ILcom/jme3/bullet/CollisionConfiguration;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jme3/bullet/BulletAppState;->numSolvers:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/jme3/bullet/PhysicsSpace;

    iget-object v6, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    iget-object v7, p0, Lcom/jme3/bullet/BulletAppState;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;Lcom/jme3/bullet/CollisionConfiguration;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "num=%d, type=%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public debugAxisLength()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->axisArrowLength()F

    move-result v0

    return v0
.end method

.method public debugAxisLineWidth()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->axisLineWidth()F

    move-result v0

    return v0
.end method

.method public getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    return-object v0
.end method

.method public getCollisionConfiguration()Lcom/jme3/bullet/CollisionConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    return-object v0
.end method

.method public getDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    return-object v0
.end method

.method public getDebugCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getDebugConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    return-object v0
.end method

.method public getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    return-object v0
.end method

.method public getSolverType()Lcom/jme3/bullet/SolverType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/BulletAppState;->speed:F

    return v0
.end method

.method public getThreadingType()Lcom/jme3/bullet/BulletAppState$ThreadingType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/debug/DebugConfiguration;->initialize(Lcom/jme3/app/Application;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->startPhysics()V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    return v0
.end method

.method public physicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V
    .locals 0

    return-void
.end method

.method public postRender()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->postRender()V

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->physicsFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->physicsFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    return-void
.end method

.method public prePhysicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V
    .locals 0

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->render(Lcom/jme3/renderer/RenderManager;)V

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    sget-object v0, Lcom/jme3/bullet/BulletAppState$ThreadingType;->PARALLEL:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->parallelPhysicsUpdate:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->physicsFuture:Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/jme3/bullet/BulletAppState$ThreadingType;->SEQUENTIAL:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jme3/bullet/BulletAppState;->tpf:F

    iget v1, p0, Lcom/jme3/bullet/BulletAppState;->speed:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/PhysicsSpace;->update(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBroadphaseType(Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 1

    const-string v0, "broadphase type"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    return-void
.end method

.method public setCollisionConfiguration(Lcom/jme3/bullet/CollisionConfiguration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->collisionConfiguration:Lcom/jme3/bullet/CollisionConfiguration;

    return-void
.end method

.method public setDebugAngularVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setAngularVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setAngularVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :goto_0
    return-void
.end method

.method public setDebugAxisLength(F)V
    .locals 1

    const-string v0, "length"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setAxisArrowLength(F)V

    return-void
.end method

.method public setDebugAxisLineWidth(F)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "width"

    invoke-static {p1, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setAxisLineWidth(F)V

    return-void
.end method

.method public setDebugBoundingBoxFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setBoundingBoxFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setBoundingBoxFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :goto_0
    return-void
.end method

.method public setDebugCamera(Lcom/jme3/renderer/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setCamera(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public setDebugEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setEnabled(Z)V

    return-void
.end method

.method public setDebugFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    return-void
.end method

.method public setDebugGravityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setGravityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setGravityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :goto_0
    return-void
.end method

.method public setDebugInitListener(Lcom/jme3/bullet/debug/DebugInitListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setInitListener(Lcom/jme3/bullet/debug/DebugInitListener;)V

    return-void
.end method

.method public setDebugJointLineWidth(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "width"

    invoke-static {p1, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setJointLineWidth(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setJointLineWidth(F)V

    :goto_0
    return-void
.end method

.method public setDebugShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getRootNode()Lcom/jme3/scene/Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    return-void
.end method

.method public setDebugSweptSphereFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setSweptSphereFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setSweptSphereFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :goto_0
    return-void
.end method

.method public setDebugVelocityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setVelocityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setVelocityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    :goto_0
    return-void
.end method

.method public varargs setDebugViewPorts([Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    const-string v0, "view ports"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setViewPorts([Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method public setNumSolvers(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x40

    const-string v2, "number of solvers"

    invoke-static {p1, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    iput p1, p0, Lcom/jme3/bullet/BulletAppState;->numSolvers:I

    return-void
.end method

.method public setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    return-void
.end method

.method public setSolverType(Lcom/jme3/bullet/SolverType;)V
    .locals 1

    const-string v0, "solver"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->solverType:Lcom/jme3/bullet/SolverType;

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const-string v0, "speed"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/BulletAppState;->speed:F

    return-void
.end method

.method public setThreadingType(Lcom/jme3/bullet/BulletAppState$ThreadingType;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    return-void
.end method

.method public setTransformSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setTransformSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public setWorldMax(Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    const-string v1, "world max"

    invoke-static {v0, v1}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMax:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setWorldMin(Lcom/jme3/math/Vector3f;)V
    .locals 1

    const-string v0, "world min"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public startPhysics()V
    .locals 4

    iget-boolean v0, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->startPhysicsOnExecutor()Z

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/BulletAppState;->worldMax:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/BulletAppState;->broadphaseType:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    invoke-virtual {p0, v0, v2, v3}, Lcom/jme3/bullet/BulletAppState;->createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v2, v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->setSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->addTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/jme3/bullet/BulletAppState;->setRunning(Z)V

    return-void
.end method

.method public startPhysicsOnExecutor()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    :cond_0
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/BulletAppState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Lcom/jme3/bullet/BulletAppState$2;

    invoke-direct {v0, p0, p0}, Lcom/jme3/bullet/BulletAppState$2;-><init>(Lcom/jme3/bullet/BulletAppState;Lcom/jme3/bullet/BulletAppState;)V

    :try_start_0
    iget-object v1, p0, Lcom/jme3/bullet/BulletAppState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    sget-object v1, Lcom/jme3/bullet/BulletAppState;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public stateAttached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->stateAttached(Lcom/jme3/app/state/AppStateManager;)V

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    iget-boolean p1, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->startPhysics()V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->threadingType:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    sget-object v0, Lcom/jme3/bullet/BulletAppState$ThreadingType;->PARALLEL:Lcom/jme3/bullet/BulletAppState$ThreadingType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/bullet/CollisionSpace;->setLocalThreadPhysicsSpace(Lcom/jme3/bullet/CollisionSpace;)V

    :cond_1
    return-void
.end method

.method public stopPhysics()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/bullet/BulletAppState;->isRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    iput-object v1, p0, Lcom/jme3/bullet/BulletAppState;->executor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/PhysicsSpace;->removeTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/BulletAppState;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/BulletAppState;->setRunning(Z)V

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->update(F)V

    iput p1, p0, Lcom/jme3/bullet/BulletAppState;->tpf:F

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->createDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0, p1}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0, p1}, Lcom/jme3/app/state/AppStateManager;->detach(Lcom/jme3/app/state/AppState;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jme3/bullet/BulletAppState;->debugConfig:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/PhysicsSpace;->distributeEvents()V

    return-void
.end method

.method public worldMax()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMax:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public worldMin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/BulletAppState;->worldMin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method
