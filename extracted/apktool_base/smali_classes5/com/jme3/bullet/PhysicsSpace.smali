.class public Lcom/jme3/bullet/PhysicsSpace;
.super Lcom/jme3/bullet/CollisionSpace;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/collision/ContactListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0x2

.field public static final logger:Ljava/util/logging/Logger;

.field protected static final pQueueTL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Queue<",
            "Lcom/jme3/app/AppTask<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private accuracy:F

.field private final characterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/objects/PhysicsCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private final gravity:Lcom/jme3/math/Vector3f;

.field private final jointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Lcom/jme3/bullet/ContactManager;

.field private maxSubSteps:I

.field private maxTimeStep:F

.field private final pQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/jme3/app/AppTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final rigidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/objects/PhysicsRigidBody;",
            ">;"
        }
    .end annotation
.end field

.field private solverInfo:Lcom/jme3/bullet/SolverInfo;

.field private solverType:Lcom/jme3/bullet/SolverType;

.field private final tickListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/PhysicsTickListener;",
            ">;"
        }
    .end annotation
.end field

.field private final vehicleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/objects/PhysicsVehicle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/bullet/PhysicsSpace$1;

    invoke-direct {v0}, Lcom/jme3/bullet/PhysicsSpace$1;-><init>()V

    sput-object v0, Lcom/jme3/bullet/PhysicsSpace;->pQueueTL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/jme3/math/Vector3f;

    const v1, -0x39e3c000    # -10000.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v2, 0x461c4000    # 10000.0f

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {p0, v0, v1, p1}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;->AXIS_SWEEP_3:Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->countThreads()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;I)V

    .line 4
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class p2, Lcom/jme3/bullet/PhysicsTickListener;

    invoke-direct {p1, p2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    const p1, 0x3c888889

    .line 5
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    const p1, 0x3dcccccd    # 0.1f

    .line 6
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    .line 7
    new-instance p1, Lcom/jme3/bullet/DefaultContactManager;

    invoke-direct {p1, p0}, Lcom/jme3/bullet/DefaultContactManager;-><init>(Lcom/jme3/bullet/PhysicsSpace;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    .line 10
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    .line 12
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    .line 13
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->pQueue:Ljava/util/Queue;

    .line 14
    sget-object p1, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    .line 15
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    const p3, -0x3ee30a3d    # -9.81f

    invoke-direct {p1, p2, p3, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;I)V

    .line 17
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class p2, Lcom/jme3/bullet/PhysicsTickListener;

    invoke-direct {p1, p2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    const p1, 0x3c888889

    .line 18
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    const p1, 0x3dcccccd    # 0.1f

    .line 19
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    .line 20
    new-instance p1, Lcom/jme3/bullet/DefaultContactManager;

    invoke-direct {p1, p0}, Lcom/jme3/bullet/DefaultContactManager;-><init>(Lcom/jme3/bullet/PhysicsSpace;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    const/4 p1, 0x4

    .line 21
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    .line 22
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    .line 23
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    .line 24
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    .line 25
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    .line 26
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->pQueue:Ljava/util/Queue;

    .line 27
    sget-object p1, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    .line 28
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    const p3, -0x3ee30a3d    # -9.81f

    invoke-direct {p1, p2, p3, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;ILcom/jme3/bullet/CollisionConfiguration;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;ILcom/jme3/bullet/CollisionConfiguration;)V

    .line 30
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class p2, Lcom/jme3/bullet/PhysicsTickListener;

    invoke-direct {p1, p2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    const p1, 0x3c888889

    .line 31
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    const p1, 0x3dcccccd    # 0.1f

    .line 32
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    .line 33
    new-instance p1, Lcom/jme3/bullet/DefaultContactManager;

    invoke-direct {p1, p0}, Lcom/jme3/bullet/DefaultContactManager;-><init>(Lcom/jme3/bullet/PhysicsSpace;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    const/4 p1, 0x4

    .line 34
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    .line 35
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    .line 36
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    .line 38
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    .line 39
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->pQueue:Ljava/util/Queue;

    .line 40
    sget-object p1, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    .line 41
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    const p3, -0x3ee30a3d    # -9.81f

    invoke-direct {p1, p2, p3, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;)V
    .locals 6

    .line 42
    new-instance v5, Lcom/jme3/bullet/CollisionConfiguration;

    invoke-direct {v5}, Lcom/jme3/bullet/CollisionConfiguration;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/bullet/PhysicsSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;Lcom/jme3/bullet/CollisionConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;Lcom/jme3/bullet/CollisionConfiguration;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 43
    invoke-direct/range {v0 .. v5}, Lcom/jme3/bullet/CollisionSpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;ILcom/jme3/bullet/CollisionConfiguration;)V

    .line 44
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class p2, Lcom/jme3/bullet/PhysicsTickListener;

    invoke-direct {p1, p2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    const p1, 0x3c888889

    .line 45
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    const p1, 0x3dcccccd    # 0.1f

    .line 46
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    .line 47
    new-instance p1, Lcom/jme3/bullet/DefaultContactManager;

    invoke-direct {p1, p0}, Lcom/jme3/bullet/DefaultContactManager;-><init>(Lcom/jme3/bullet/PhysicsSpace;)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    const/4 p1, 0x4

    .line 48
    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    .line 50
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    .line 51
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    .line 52
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->pQueue:Ljava/util/Queue;

    .line 54
    sget-object p1, Lcom/jme3/bullet/SolverType;->SI:Lcom/jme3/bullet/SolverType;

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    .line 55
    new-instance p1, Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    const p3, -0x3ee30a3d    # -9.81f

    invoke-direct {p1, p2, p3, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    .line 56
    const-string p1, "solver type"

    invoke-static {p4, p1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 57
    iget-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    if-eq p1, p4, :cond_0

    .line 58
    iput-object p4, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    .line 59
    invoke-virtual {p0}, Lcom/jme3/bullet/PhysicsSpace;->updateSolver()V

    :cond_0
    return-void
.end method

.method private static native addAction(JJ)V
.end method

.method private addCharacter(Lcom/jme3/bullet/objects/PhysicsCharacter;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is already added to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Adding {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addCharacterObject(JJ)V

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getControllerId()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addAction(JJ)V

    return-void
.end method

.method private static native addCharacterObject(JJ)V
.end method

.method private static native addConstraintC(JJZ)V
.end method

.method private static native addRigidBody(JJII)V
.end method

.method private addRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is already added to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    const-string v2, "Adding {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v6

    .line 6
    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isKinematic()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {p1, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    move v3, v10

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    move v8, v4

    goto :goto_0

    :cond_3
    move v8, v10

    :goto_0
    if-eqz v2, :cond_4

    const/4 v2, -0x3

    :goto_1
    move v9, v2

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .line 10
    :goto_2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v11

    move-wide v4, v11

    .line 11
    invoke-static/range {v4 .. v9}, Lcom/jme3/bullet/PhysicsSpace;->addRigidBody(JJII)V

    if-eqz v3, :cond_5

    .line 12
    invoke-virtual {p1, v10}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setKinematic(Z)V

    .line 13
    :cond_5
    instance-of v2, p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz v2, :cond_7

    .line 14
    check-cast p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    const-string v2, "Adding action for {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_6
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->createVehicle(Lcom/jme3/bullet/PhysicsSpace;)V

    .line 18
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getVehicleId()J

    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v11, v12, v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->addAction(JJ)V

    :cond_7
    return-void
.end method

.method private checkGravity(Lcom/jme3/math/Vector3f;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/PhysicsSpace;->getGravity(JLcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static native clearForces(J)V
.end method

.method private static native countManifolds(J)I
.end method

.method private native createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;IIJ)J
.end method

.method public static enqueueOnThisThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/app/AppTask;

    invoke-direct {v0, p0}, Lcom/jme3/app/AppTask;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p0, Lcom/jme3/bullet/PhysicsSpace;->pQueueTL:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static native getGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getManifoldByIndex(JI)J
.end method

.method private static native getNumConstraints(J)I
.end method

.method public static getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    invoke-static {}, Lcom/jme3/bullet/CollisionSpace;->getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method private static native getSolverInfo(J)J
.end method

.method public static native getWorldType(J)I
.end method

.method private static native isCcdWithStaticOnly(J)Z
.end method

.method private static native isSpeculativeContactRestitution(J)Z
.end method

.method private postTick(F)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/PhysicsTickListener;

    invoke-interface {v1, p0, p1}, Lcom/jme3/bullet/PhysicsTickListener;->physicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private preTick(F)V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->pQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/AppTask;

    if-nez v0, :cond_1

    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->pQueueTL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/app/AppTask;

    :cond_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/PhysicsTickListener;

    invoke-interface {v1, p0, p1}, Lcom/jme3/bullet/PhysicsTickListener;->prePhysicsTick(Lcom/jme3/bullet/PhysicsSpace;F)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/jme3/app/AppTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/jme3/app/AppTask;->invoke()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static native removeAction(JJ)V
.end method

.method private removeCharacter(Lcom/jme3/bullet/objects/PhysicsCharacter;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} does not exist in {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v2, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Removing {0} from {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsCharacter;->getControllerId()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/jme3/bullet/PhysicsSpace;->removeAction(JJ)V

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCharacterObject(JJ)V

    return-void
.end method

.method private static native removeCharacterObject(JJ)V
.end method

.method private static native removeConstraint(JJ)V
.end method

.method private static native removeRigidBody(JJ)V
.end method

.method private removeRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} does not exist in {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 5
    instance-of v4, p1, Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz v4, :cond_2

    .line 6
    move-object v4, p1

    check-cast v4, Lcom/jme3/bullet/objects/PhysicsVehicle;

    .line 7
    sget-object v5, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    const-string v7, "Removing action for {0} from {1}."

    filled-new-array {v4, p0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    invoke-virtual {v4}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getVehicleId()J

    move-result-wide v4

    .line 10
    iget-object v6, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v2, v3, v4, v5}, Lcom/jme3/bullet/PhysicsSpace;->removeAction(JJ)V

    .line 12
    :cond_2
    sget-object v4, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 13
    const-string v6, "Removing {0} from {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, v5, v6, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeRigidBody(JJ)V

    return-void
.end method

.method private static native setCcdWithStaticOnly(JZ)V
.end method

.method private static native setGravity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setSolverType(JI)V
.end method

.method private static native setSpeculativeContactRestitution(JZ)V
.end method

.method private static native stepSimulation(JFIFI)V
.end method


# virtual methods
.method public activateAll(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->activate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/control/PhysicsControl;

    invoke-interface {p1, p0}, Lcom/jme3/bullet/control/PhysicsControl;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/scene/Spatial;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/jme3/bullet/joints/PhysicsJoint;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public addAll(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/PhysicsSpace;->addAll(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1}, Lcom/jme3/bullet/ContactManager;->addCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    return-void
.end method

.method public addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 1

    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->addRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->addCharacter(Lcom/jme3/bullet/objects/PhysicsCharacter;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->addCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :goto_0
    return-void
.end method

.method public addContactListener(Lcom/jme3/bullet/collision/ContactListener;)V
    .locals 2

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/16 v0, 0xf

    .line 2
    iget-object v1, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v1, p1, v0}, Lcom/jme3/bullet/ContactManager;->addContactListener(Lcom/jme3/bullet/collision/ContactListener;I)V

    return-void
.end method

.method public addContactListener(Lcom/jme3/bullet/collision/ContactListener;ZZZ)V
    .locals 1

    .line 3
    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-eqz p3, :cond_0

    or-int/lit8 p2, p2, 0x2

    :cond_0
    if-eqz p4, :cond_1

    or-int/lit8 p2, p2, 0x4

    .line 4
    :cond_1
    iget-object p3, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {p3, p1, p2}, Lcom/jme3/bullet/ContactManager;->addContactListener(Lcom/jme3/bullet/collision/ContactListener;I)V

    return-void
.end method

.method public addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V
    .locals 4

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->contains(Lcom/jme3/bullet/joints/PhysicsJoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} is already added to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/PhysicsSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "{0} at the A end of {1} has not yet been added to {2}."

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/PhysicsSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "{0} at the B end of {1} has not yet been added to {2}."

    filled-new-array {v0, p1, p0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Adding {0} to {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    instance-of p1, p1, Lcom/jme3/bullet/joints/Constraint;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-static {v2, v3, v0, v1, p1}, Lcom/jme3/bullet/PhysicsSpace;->addConstraintC(JJZ)V

    :cond_4
    return-void
.end method

.method public addOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1}, Lcom/jme3/bullet/ContactManager;->addOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    return-void
.end method

.method public addTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearForces()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->clearForces(J)V

    return-void
.end method

.method public contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 3

    .line 3
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    instance-of v2, p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v2, :cond_0

    .line 5
    iget-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 6
    :cond_0
    instance-of v2, p1, Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->contains(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public contains(Lcom/jme3/bullet/joints/PhysicsJoint;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public countCollisionListeners()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0}, Lcom/jme3/bullet/ContactManager;->countCollisionListeners()I

    move-result v0

    return v0
.end method

.method public countJoints()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->getNumConstraints(J)I

    move-result v0

    return v0
.end method

.method public countManifolds()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->countManifolds(J)I

    move-result v0

    return v0
.end method

.method public countRigidBodies()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public countTickListeners()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public create()V
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->getBroadphaseType()Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/CollisionSpace;->getWorldMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/CollisionSpace;->getWorldMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->countSolvers()I

    move-result v5

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->getConfiguration()Lcom/jme3/bullet/CollisionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/jme3/bullet/PhysicsSpace;->createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;IIJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/CollisionSpace;->initThread(J)V

    invoke-virtual {p0}, Lcom/jme3/bullet/PhysicsSpace;->initSolverInfo()V

    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/jme3/bullet/CollisionSpace;->destroy()V

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-direct {p0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeCharacter(Lcom/jme3/bullet/objects/PhysicsCharacter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {p0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public distributeEvents()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0}, Lcom/jme3/bullet/ContactManager;->distributeEvents()V

    return-void
.end method

.method public enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/app/AppTask;

    invoke-direct {v0, p1}, Lcom/jme3/app/AppTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->pQueue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAccuracy()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    return v0
.end method

.method public getCharacterList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/objects/PhysicsCharacter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getContactManager()Lcom/jme3/bullet/ContactManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    return-object v0
.end method

.method public getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getJointList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getJointMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPcoList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/jme3/bullet/CollisionSpace;->getPcoList()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getRigidBodyList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/objects/PhysicsRigidBody;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSolverInfo()Lcom/jme3/bullet/SolverInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->solverInfo:Lcom/jme3/bullet/SolverInfo;

    return-object v0
.end method

.method public getSolverNumIterations()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->solverInfo:Lcom/jme3/bullet/SolverInfo;

    invoke-virtual {v0}, Lcom/jme3/bullet/SolverInfo;->numIterations()I

    move-result v0

    return v0
.end method

.method public getSolverType()Lcom/jme3/bullet/SolverType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    return-object v0
.end method

.method public getVehicleList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/bullet/objects/PhysicsVehicle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->vehicleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public initSolverInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->getSolverInfo(J)J

    move-result-wide v0

    new-instance v2, Lcom/jme3/bullet/SolverInfo;

    invoke-direct {v2, v0, v1}, Lcom/jme3/bullet/SolverInfo;-><init>(J)V

    iput-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->solverInfo:Lcom/jme3/bullet/SolverInfo;

    return-void
.end method

.method public isCcdWithStaticOnly()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->isCcdWithStaticOnly(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/bullet/CollisionSpace;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->characterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->rigidMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsingScr()Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->isSpeculativeContactRestitution(J)Z

    move-result v0

    return v0
.end method

.method public listManifoldIds()[J
    .locals 7

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->countManifolds(J)I

    move-result v2

    new-array v3, v2, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-static {v0, v1, v4}, Lcom/jme3/bullet/PhysicsSpace;->getManifoldByIndex(JI)J

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public maxSubSteps()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    return v0
.end method

.method public maxTimeStep()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    return v0
.end method

.method public onContactConceived(JJLcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/jme3/bullet/collision/ContactListener;->onContactConceived(JJLcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Z

    move-result p1

    return p1
.end method

.method public onContactEnded(J)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1, p2}, Lcom/jme3/bullet/collision/ContactListener;->onContactEnded(J)V

    return-void
.end method

.method public onContactProcessed(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/jme3/bullet/collision/ContactListener;->onContactProcessed(Lcom/jme3/bullet/collision/PhysicsCollisionObject;Lcom/jme3/bullet/collision/PhysicsCollisionObject;J)V

    return-void
.end method

.method public onContactStarted(J)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1, p2}, Lcom/jme3/bullet/collision/ContactListener;->onContactStarted(J)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/control/PhysicsControl;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/jme3/bullet/control/PhysicsControl;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/scene/Spatial;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/bullet/control/PhysicsControl;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(I)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/jme3/bullet/joints/PhysicsJoint;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/bullet/joints/PhysicsJoint;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->remove(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public removeAll(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/PhysicsSpace;->removeAll(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1}, Lcom/jme3/bullet/ContactManager;->removeCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    return-void
.end method

.method public removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 1

    const-string v0, "collision object"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->removeRigidBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-direct {p0, p1}, Lcom/jme3/bullet/PhysicsSpace;->removeCharacter(Lcom/jme3/bullet/objects/PhysicsCharacter;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/jme3/bullet/CollisionSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    :goto_0
    return-void
.end method

.method public removeContactListener(Lcom/jme3/bullet/collision/ContactListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1}, Lcom/jme3/bullet/ContactManager;->removeContactListener(Lcom/jme3/bullet/collision/ContactListener;)V

    return-void
.end method

.method public removeJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V
    .locals 6

    const-string v0, "joint"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "{0} does not exist in {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v2, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Removing {0} from {1}."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->jointMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/jme3/bullet/joints/PhysicsJoint;->setPhysicsSpace(Lcom/jme3/bullet/PhysicsSpace;)V

    instance-of p1, p1, Lcom/jme3/bullet/joints/Constraint;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/jme3/bullet/PhysicsSpace;->removeConstraint(JJ)V

    :cond_2
    return-void
.end method

.method public removeOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {v0, p1}, Lcom/jme3/bullet/ContactManager;->removeOngoingCollisionListener(Lcom/jme3/bullet/collision/PhysicsCollisionListener;)V

    return-void
.end method

.method public removeTickListener(Lcom/jme3/bullet/PhysicsTickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->tickListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAccuracy(F)V
    .locals 1

    const-string v0, "accuracy"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    return-void
.end method

.method public setCcdWithStaticOnly(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/PhysicsSpace;->setCcdWithStaticOnly(JZ)V

    return-void
.end method

.method public setContactManager(Lcom/jme3/bullet/ContactManager;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->gravity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/PhysicsSpace;->setGravity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setMaxSubSteps(I)V
    .locals 1

    const-string v0, "steps"

    invoke-static {p1, v0}, Lif/E;->q(ILjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    return-void
.end method

.method public setMaxTimeStep(F)V
    .locals 1

    const-string v0, "max time step"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    return-void
.end method

.method public setSolverNumIterations(I)V
    .locals 1

    const-string v0, "number of iterations"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->solverInfo:Lcom/jme3/bullet/SolverInfo;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/SolverInfo;->setNumIterations(I)V

    return-void
.end method

.method public update(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/jme3/bullet/PhysicsSpace;->maxTimeStep:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/bullet/PhysicsSpace;->maxSubSteps:I

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/PhysicsSpace;->update(FI)V

    return-void
.end method

.method public update(FI)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/jme3/bullet/ContactManager;->update(FII)V

    return-void
.end method

.method public update(FII)V
    .locals 9

    .line 6
    invoke-static {}, Lcom/jme3/bullet/util/NativeLibrary;->jniEnvId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jme3/bullet/CollisionSpace;->jniEnvId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/jme3/bullet/PhysicsSpace;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "invoked from wrong thread"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 9
    iget v7, p0, Lcom/jme3/bullet/PhysicsSpace;->accuracy:F

    move v5, p1

    move v6, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lcom/jme3/bullet/PhysicsSpace;->stepSimulation(JFIFI)V

    return-void
.end method

.method public update(FIZZZ)V
    .locals 0

    if-eqz p4, :cond_0

    or-int/lit8 p3, p3, 0x2

    :cond_0
    if-eqz p5, :cond_1

    or-int/lit8 p3, p3, 0x4

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/jme3/bullet/PhysicsSpace;->manager:Lcom/jme3/bullet/ContactManager;

    invoke-interface {p4, p1, p2, p3}, Lcom/jme3/bullet/ContactManager;->update(FII)V

    return-void
.end method

.method public updateSolver()V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jme3/bullet/PhysicsSpace;->solverType:Lcom/jme3/bullet/SolverType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->setSolverType(JI)V

    return-void
.end method

.method public useScr(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/PhysicsSpace;->setSpeculativeContactRestitution(JZ)V

    return-void
.end method
