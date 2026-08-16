.class public Lcom/jme3/bullet/MultiBodyAppState;
.super Lcom/jme3/bullet/BulletAppState;
.source "SourceFile"


# static fields
.field public static final logger2:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/MultiBodyAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/MultiBodyAppState;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/bullet/BulletAppState;-><init>()V

    return-void
.end method


# virtual methods
.method public createDebugAppState()Lcom/jme3/bullet/debug/BulletDebugAppState;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getDebugConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    new-instance v1, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/debug/MultiBodyDebugAppState;-><init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V

    return-object v1
.end method

.method public createPhysicsSpace(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;)Lcom/jme3/bullet/PhysicsSpace;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getSolverType()Lcom/jme3/bullet/SolverType;

    move-result-object v0

    new-instance v1, Lcom/jme3/bullet/MultiBodySpace;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/jme3/bullet/MultiBodySpace;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/PhysicsSpace$BroadphaseType;Lcom/jme3/bullet/SolverType;)V

    return-object v1
.end method

.method public getMultiBodySpace()Lcom/jme3/bullet/MultiBodySpace;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/BulletAppState;->getPhysicsSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBodySpace;

    return-object v0
.end method
