.class public Lcom/jme3/bullet/debug/BulletDebugAppState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final blueColor:Lcom/jme3/math/ColorRGBA;

.field private static final brownColor:Lcom/jme3/math/ColorRGBA;

.field private static final cyanColor:Lcom/jme3/math/ColorRGBA;

.field public static final enableChildColoring:Lcom/jme3/material/Material;

.field private static final greenColor:Lcom/jme3/math/ColorRGBA;

.field public static final logger:Ljava/util/logging/Logger;

.field private static final magentaColor:Lcom/jme3/math/ColorRGBA;

.field private static final orangeColor:Lcom/jme3/math/ColorRGBA;

.field private static final pinkColor:Lcom/jme3/math/ColorRGBA;

.field private static final redColor:Lcom/jme3/math/ColorRGBA;

.field private static final transformIdentity:Lcom/jme3/math/Transform;

.field private static final whiteColor:Lcom/jme3/math/ColorRGBA;

.field private static final yellowColor:Lcom/jme3/math/ColorRGBA;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private final blues:[Lcom/jme3/material/Material;

.field private final childMaterials:[Lcom/jme3/material/Material;

.field private final configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

.field private gravity:Lcom/jme3/material/Material;

.field private jointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/bullet/joints/PhysicsJoint;",
            "Lcom/jme3/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private jointMaterialA:Lcom/jme3/material/Material;

.field private jointMaterialB:Lcom/jme3/material/Material;

.field private final magentas:[Lcom/jme3/material/Material;

.field private pcoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            "Lcom/jme3/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final pink:[Lcom/jme3/material/Material;

.field private final root:Lcom/jme3/scene/Node;

.field private white:Lcom/jme3/material/Material;

.field private final yellows:[Lcom/jme3/material/Material;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blueColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3e20a0a1

    const v4, 0x3dc8c8c9

    const v5, 0x3e828283

    invoke-direct {v0, v5, v3, v4, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->brownColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->cyanColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->greenColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentaColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3f7bfbfc

    const v4, 0x3f028283

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->orangeColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v2, v3, v3, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pinkColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->redColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v2, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->whiteColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellowColor:Lcom/jme3/math/ColorRGBA;

    const-class v0, Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/material/Material;

    invoke-direct {v0}, Lcom/jme3/material/Material;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->enableChildColoring:Lcom/jme3/material/Material;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    sput-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->transformIdentity:Lcom/jme3/math/Transform;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMap:Ljava/util/Map;

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/jme3/material/Material;

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blues:[Lcom/jme3/material/Material;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/jme3/material/Material;

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    new-array v1, v0, [Lcom/jme3/material/Material;

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentas:[Lcom/jme3/material/Material;

    new-array v1, v0, [Lcom/jme3/material/Material;

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pink:[Lcom/jme3/material/Material;

    new-array v0, v0, [Lcom/jme3/material/Material;

    iput-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellows:[Lcom/jme3/material/Material;

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Physics Debug Root Node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    return-void
.end method

.method private updateAngularVelocities()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getAngularVelocityFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    instance-of v4, v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    const-class v5, Lcom/jme3/bullet/debug/AngularVelocityDebugControl;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create AngularVelocityDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/AngularVelocityDebugControl;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/AngularVelocityDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateBoundingBoxes()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getBoundingBoxFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    const-class v5, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new BoundingBoxDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateGravityVectors()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getGravityVectorFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    instance-of v4, v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isKinematic()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    instance-of v7, v3, Lcom/jme3/bullet/objects/PhysicsBody;

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isStatic()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v4, :cond_3

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v5, v6

    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    const-class v4, Lcom/jme3/bullet/debug/GravityVectorDebugControl;

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new GravityVectorDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/GravityVectorDebugControl;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/GravityVectorDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method private updateJoints()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMap:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v2}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/PhysicsSpace;->getJointList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/joints/PhysicsJoint;

    if-eqz v0, :cond_1

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Node;

    if-nez v4, :cond_4

    new-instance v4, Lcom/jme3/scene/Node;

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/PhysicsJoint;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/jme3/bullet/debug/BulletDebugAppState;->attachChild(Lcom/jme3/scene/Spatial;)V

    instance-of v5, v3, Lcom/jme3/bullet/joints/Anchor;

    if-eqz v5, :cond_2

    sget-object v5, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Create new AnchorDebugControl"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lcom/jme3/bullet/joints/Anchor;

    new-instance v6, Lcom/jme3/bullet/debug/AnchorDebugControl;

    invoke-direct {v6, p0, v5}, Lcom/jme3/bullet/debug/AnchorDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/joints/Anchor;)V

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lcom/jme3/bullet/joints/Constraint;

    if-eqz v5, :cond_3

    sget-object v5, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Create new ConstraintDebugControl"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lcom/jme3/bullet/joints/Constraint;

    new-instance v6, Lcom/jme3/bullet/debug/ConstraintDebugControl;

    invoke-direct {v6, p0, v5}, Lcom/jme3/bullet/debug/ConstraintDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/joints/Constraint;)V

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Create new SoftJointDebugControl"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    new-instance v6, Lcom/jme3/bullet/debug/SoftJointDebugControl;

    invoke-direct {v6, p0, v5}, Lcom/jme3/bullet/debug/SoftJointDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/joints/SoftPhysicsJoint;)V

    :goto_1
    invoke-virtual {v4, v6}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    :cond_4
    iget-object v5, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMap:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private updatePcoMap()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/PhysicsSpace;->getPcoList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Node;

    if-nez v3, :cond_0

    new-instance v3, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState;->attachChild(Lcom/jme3/scene/Spatial;)V

    new-instance v4, Lcom/jme3/scene/Node;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " transformed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    move-object v3, v4

    :cond_0
    iget-object v4, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private updateSweptSpheres()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSweptSphereFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdMotionThreshold()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-virtual {v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    const-class v5, Lcom/jme3/bullet/debug/SweptSphereDebugControl;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new SweptSphereDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/SweptSphereDebugControl;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/SweptSphereDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateVehicles()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/PhysicsSpace;->getVehicleList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/objects/PhysicsVehicle;

    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iget-object v4, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Node;

    const-class v5, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new BulletVehicleDebugControl"

    invoke-virtual {v3, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v3, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;

    invoke-direct {v3, p0, v2}, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsVehicle;)V

    invoke-virtual {v4, v3}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {v4, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateVelocityVectors()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getVelocityVectorFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    instance-of v4, v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-virtual {v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    const-class v5, Lcom/jme3/bullet/debug/VelocityVectorDebugControl;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new VelocityVectorDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/VelocityVectorDebugControl;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/VelocityVectorDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v2, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public attachChild(Lcom/jme3/scene/Spatial;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;
    .locals 3

    const-string v0, "asset manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "color"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, 0x2

    const-string v1, "number of sides"

    const/4 v2, 0x1

    invoke-static {p4, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    invoke-static {p1, p2}, Lif/l;->q(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p2

    if-le p4, v2, :cond_0

    sget-object p3, Lcom/jme3/material/RenderState$FaceCullMode;->Off:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {p2, p3}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    :cond_0
    return-object p1
.end method

.method public getActiveMaterial(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentas:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getAngularVelocityMaterial()Lcom/jme3/material/Material;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentas:[Lcom/jme3/material/Material;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBoundingBoxMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->white:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getCharacterMaterial(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pink:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getChildMaterial(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    array-length v0, v0

    invoke-static {p1, v0}, Ljf/f;->K(II)I

    move-result p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    return-object v0
.end method

.method public getGhostMaterial(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellows:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getGravityVectorMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->gravity:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getInactiveMaterial(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blues:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getJointMaterial(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/material/Material;
    .locals 2

    sget-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMaterialB:Lcom/jme3/material/Material;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMaterialA:Lcom/jme3/material/Material;

    :goto_0
    return-object p1
.end method

.method public getPcoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            "Lcom/jme3/scene/Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRootNode()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getSweptSphereMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->white:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getVelocityVectorMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->white:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 1

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setupMaterials(Lcom/jme3/asset/AssetManager;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getInitListener()Lcom/jme3/bullet/debug/DebugInitListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-interface {p1, v0}, Lcom/jme3/bullet/debug/DebugInitListener;->bulletDebugInit(Lcom/jme3/scene/Node;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->shadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    return-void
.end method

.method public onDisable()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->listViewPorts()[Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v3, v4}, Lcom/jme3/renderer/ViewPort;->detachScene(Lcom/jme3/scene/Spatial;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnable()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->listViewPorts()[Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v3, v4}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/jme3/app/state/BaseAppState;->render(Lcom/jme3/renderer/RenderManager;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1, v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->renderAllViewPorts(Lcom/jme3/renderer/RenderManager;Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public setAngularVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setAngularVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const-class v1, Lcom/jme3/bullet/debug/AngularVelocityDebugControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBoundingBoxFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setBoundingBoxFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const-class v1, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    return-void
.end method

.method public setGravityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setGravityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const-class v1, Lcom/jme3/bullet/debug/GravityVectorDebugControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setJointLineWidth(F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "width"

    invoke-static {p1, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setJointLineWidth(F)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMaterialA:Lcom/jme3/material/Material;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMaterialB:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/material/RenderState;->setLineWidth(F)V

    :cond_0
    return-void
.end method

.method public setSweptSphereFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setSweptSphereFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const-class v1, Lcom/jme3/bullet/debug/SweptSphereDebugControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVelocityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->setVelocityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const-class v1, Lcom/jme3/bullet/debug/VelocityVectorDebugControl;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupMaterials(Lcom/jme3/asset/AssetManager;)V
    .locals 8

    invoke-static {p1}, Lif/l;->e(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blues:[Lcom/jme3/material/Material;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->blueColor:Lcom/jme3/math/ColorRGBA;

    const-string v4, "debug blue ss"

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blues:[Lcom/jme3/material/Material;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blues:[Lcom/jme3/material/Material;

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->blues:[Lcom/jme3/material/Material;

    const-string v4, "debug blue ds"

    const/4 v6, 0x2

    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v4

    aput-object v4, v1, v6

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->whiteColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v4}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->redColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v4}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->greenColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v4}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v4

    aput-object v4, v1, v6

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    const/4 v4, 0x3

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellowColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->cyanColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->orangeColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentaColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->pinkColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->brownColor:Lcom/jme3/math/ColorRGBA;

    invoke-static {p1, v3}, Lif/l;->n(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;)Lcom/jme3/material/Material;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->childMaterials:[Lcom/jme3/material/Material;

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "debug child "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/jme3/bullet/debug/BulletDebugAppState;->cyanColor:Lcom/jme3/math/ColorRGBA;

    const-string v3, "debug gravity"

    invoke-virtual {p0, p1, v1, v3, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->gravity:Lcom/jme3/material/Material;

    sget-object v1, Lcom/jme3/bullet/debug/BulletDebugAppState;->greenColor:Lcom/jme3/math/ColorRGBA;

    const-string v3, "debug joint A wire"

    invoke-virtual {p0, p1, v1, v3, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMaterialA:Lcom/jme3/material/Material;

    sget-object v1, Lcom/jme3/bullet/debug/BulletDebugAppState;->redColor:Lcom/jme3/math/ColorRGBA;

    const-string v3, "debug joint B wire"

    invoke-virtual {p0, p1, v1, v3, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->jointMaterialB:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->jointLineWidth()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setJointLineWidth(F)V

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentas:[Lcom/jme3/material/Material;

    aput-object v0, v1, v2

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentaColor:Lcom/jme3/math/ColorRGBA;

    const-string v4, "debug magenta ss"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->magentas:[Lcom/jme3/material/Material;

    const-string v4, "debug magenta ds"

    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v3

    aput-object v3, v1, v6

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pink:[Lcom/jme3/material/Material;

    aput-object v0, v1, v2

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->pinkColor:Lcom/jme3/math/ColorRGBA;

    const-string v4, "debug pink ss"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v4

    aput-object v4, v1, v5

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pink:[Lcom/jme3/material/Material;

    const-string v4, "debug pink ds"

    invoke-virtual {p0, p1, v3, v4, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v3

    aput-object v3, v1, v6

    sget-object v1, Lcom/jme3/bullet/debug/BulletDebugAppState;->whiteColor:Lcom/jme3/math/ColorRGBA;

    const-string v3, "debug white"

    invoke-virtual {p0, p1, v1, v3, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->white:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellows:[Lcom/jme3/material/Material;

    aput-object v0, v1, v2

    sget-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellowColor:Lcom/jme3/math/ColorRGBA;

    const-string v2, "debug yellow ss"

    invoke-virtual {p0, p1, v0, v2, v5}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->yellows:[Lcom/jme3/material/Material;

    const-string v2, "debug yellow ds"

    invoke-virtual {p0, p1, v0, v2, v6}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object p1

    aput-object p1, v1, v6

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/app/state/BaseAppState;->update(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updatePcoMap()V

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateShapes()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateVehicles()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateBoundingBoxes()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateGravityVectors()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateSweptSpheres()V

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateVelocities()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateJoints()V

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getTransformSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    sget-object v0, Lcom/jme3/bullet/debug/BulletDebugAppState;->transformIdentity:Lcom/jme3/math/Transform;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalTransform(Lcom/jme3/math/Transform;)V

    :goto_0
    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->root:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-void
.end method

.method public updateAxes(Lcom/jme3/scene/Node;Z)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->axisArrowLength()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->axisLineWidth()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    const-class v4, Ljme3utilities/debug/a;

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljme3utilities/debug/a;

    if-eqz v4, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v4, v0}, Ljme3utilities/debug/a;->m(F)V

    invoke-virtual {v4, v1}, Ljme3utilities/debug/a;->o(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Ljme3utilities/debug/a;->setEnabled(Z)V

    invoke-virtual {p1, v4}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance p2, Ljme3utilities/debug/a;

    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {p2, v2, v0, v1}, Ljme3utilities/debug/a;-><init>(Lcom/jme3/asset/AssetManager;FF)V

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    invoke-virtual {p2, v3}, Ljme3utilities/debug/a;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateShapes()V
    .locals 7

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->pcoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletDebugAppState;->configuration:Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v2}, Lcom/jme3/bullet/debug/DebugConfiguration;->getFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    instance-of v4, v3, Lcom/jme3/bullet/objects/PhysicsCharacter;

    if-eqz v4, :cond_5

    const-class v4, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new BulletCharacterDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;

    check-cast v3, Lcom/jme3/bullet/objects/PhysicsCharacter;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/BulletCharacterDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsCharacter;)V

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_3

    :cond_3
    if-eqz v4, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_4
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateAxes(Lcom/jme3/scene/Node;Z)V

    goto :goto_0

    :cond_5
    instance-of v4, v3, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    if-eqz v4, :cond_8

    const-class v4, Lcom/jme3/bullet/debug/BulletGhostObjectDebugControl;

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v2, :cond_6

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new BulletGhostObjectDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/BulletGhostObjectDebugControl;

    check-cast v3, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/BulletGhostObjectDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsGhostObject;)V

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_7
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateAxes(Lcom/jme3/scene/Node;Z)V

    goto/16 :goto_0

    :cond_8
    instance-of v4, v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    if-eqz v4, :cond_0

    const-class v4, Lcom/jme3/bullet/debug/BulletRigidBodyDebugControl;

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    if-nez v4, :cond_9

    if-eqz v2, :cond_9

    sget-object v4, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "Create new BulletRigidBodyDebugControl"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v4, Lcom/jme3/bullet/debug/BulletRigidBodyDebugControl;

    check-cast v3, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    invoke-direct {v4, p0, v3}, Lcom/jme3/bullet/debug/BulletRigidBodyDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsRigidBody;)V

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_a
    :goto_5
    invoke-virtual {p0, v1, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateAxes(Lcom/jme3/scene/Node;Z)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public updateVelocities()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateAngularVelocities()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateVelocityVectors()V

    return-void
.end method
