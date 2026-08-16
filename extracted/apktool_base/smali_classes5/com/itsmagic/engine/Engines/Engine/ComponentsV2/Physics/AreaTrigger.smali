.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;
.source "SourceFile"


# static fields
.field public static final U:Ljava/lang/String; = "AreaTrigger"

.field public static final V:Ljava/lang/Class;


# instance fields
.field public H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

.field public I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

.field public J:I

.field public K:I

.field public L:Z

.field public M:Z

.field public N:I

.field public O:Z

.field public final P:Lcom/jme3/math/Vector3f;

.field public final Q:Lcom/jme3/math/Quaternion;

.field public final R:Lcom/jme3/math/Vector3f;

.field public final S:Lcom/jme3/math/Quaternion;

.field public T:LJAVARuntime/Component;

.field private collisionEvents:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->V:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "AreaTrigger"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->collisionEvents:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->O:Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->P:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->Q:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->R:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->S:Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->collisionEvents:Z

    return p0
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->collisionEvents:Z

    return p1
.end method

.method private addToPhysics()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    :cond_0
    new-instance v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setUserObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->Z0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->P:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const v3, -0x3ee30a3d    # -9.81f

    invoke-direct {v1, v2, v3, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setGravity(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setContactResponse(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->fillCriticalTransformCache()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->P:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->Q:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LK8/a;->o:LCc/c;

    iget-object v1, v1, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateNewHostPhysicsEntityChanged()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fillCriticalTransformCache()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->h0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->i0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->Q:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/jme3/math/Quaternion;->set(FFFF)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method private fillPositionCache(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->P:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private updateLayer()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->J:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->K:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v1

    invoke-virtual {v1}, LIc/m;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->c:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->J:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->i()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    invoke-virtual {v0}, LIc/m;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->K:I

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->g()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->h()I

    move-result v1

    sget-object v2, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v3, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionGroup(I)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollideWithGroups(I)V

    monitor-exit v2

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->collisionEvents:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->collisionEvents:Z

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object p2, LK8/a;->o:LCc/c;

    iget-object p2, p2, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->J:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->K:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateDettachHostPhysicsEntityChanged()V

    :cond_0
    return-void
.end method

.method public disabledUpdatePhysics()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->disabledUpdatePhysics()V

    return-void
.end method

.method public enableCollisionEvents()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->collisionEvents:Z

    return v0
.end method

.method public getBulletObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-direct {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AreaTrigger"

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0700de

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f05009e

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LAYER:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;)V

    invoke-virtual {v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->d(Ljava/lang/String;Landroid/content/Context;Lrb/a;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger$c;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;)V

    const-string v2, "Script collision events"

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLLIDERS:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->N:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    invoke-direct {p1, v1, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc8/b;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, LC5/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TRIGGERS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AreaTrigger"

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onColliderChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->invalidateBulletShapeChildrenCache()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->O:Z

    return-void
.end method

.method public onDetach()V
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    if-eqz v0, :cond_2

    sget-object v0, LK8/a;->o:LCc/c;

    iget-object v1, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    :try_start_1
    sget-object v1, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, v0, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/PhysicsSpace;->removeCollisionObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->propagateDettachHostPhysicsEntityChanged()V

    :cond_2
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onDetach()V

    return-void
.end method

.method public onPhysicsGetTransformations()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->onPhysicsGetTransformations()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->S:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->z3(Lcom/jme3/math/Quaternion;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->R:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->q3(Lcom/jme3/math/Vector3f;)V

    :cond_1
    return-void
.end method

.method public prePhysic()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->w1()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->fillCriticalTransformCache()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->P:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->Q:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->updateLayer()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->addToPhysics()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    :cond_0
    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->T:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->T:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AreaTrigger;

    invoke-direct {v0, p0}, LJAVARuntime/AreaTrigger;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->T:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updatePhysics()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->updatePhysics()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->getBulletShape()Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;->countChildren()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->N:I

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->M:Z

    if-eqz v0, :cond_0

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->M:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->prePhysic()V

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->O:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->L:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v0, :cond_2

    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    sget-object v2, LK8/a;->o:LCc/c;

    iget-object v2, v2, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/PhysicsSpace;->remove(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->H:Lcom/jme3/bullet/collision/shapes/CompoundCollisionShape;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    sget-object v2, LK8/a;->o:LCc/c;

    iget-object v2, v2, LCc/c;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->I:Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/PhysicsSpace;->add(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_2
    :goto_3
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;->O:Z

    :cond_3
    return-void
.end method
