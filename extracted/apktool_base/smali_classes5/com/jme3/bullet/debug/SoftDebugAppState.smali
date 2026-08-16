.class public Lcom/jme3/bullet/debug/SoftDebugAppState;
.super Lcom/jme3/bullet/debug/BulletDebugAppState;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final whiteColor:Lcom/jme3/math/ColorRGBA;


# instance fields
.field private anchorMaterial:Lcom/jme3/material/Material;

.field private clusterFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private clusterMaterial:Lcom/jme3/material/Material;

.field private final faceMaterials:[Lcom/jme3/material/Material;

.field private linkMaterial:Lcom/jme3/material/Material;

.field private pinMaterial:Lcom/jme3/material/Material;

.field private softBodies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/bullet/objects/PhysicsSoftBody;",
            "Lcom/jme3/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private windVelocityMaterial:Lcom/jme3/material/Material;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    sput-object v0, Lcom/jme3/bullet/debug/SoftDebugAppState;->whiteColor:Lcom/jme3/math/ColorRGBA;

    const-class v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/SoftDebugAppState;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;-><init>(Lcom/jme3/bullet/debug/DebugConfiguration;)V

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->softBodies:Ljava/util/Map;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/jme3/material/Material;

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->faceMaterials:[Lcom/jme3/material/Material;

    return-void
.end method

.method private updateSoftBodies()V
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->softBodies:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->softBodies:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getSpace()Lcom/jme3/bullet/PhysicsSpace;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/PhysicsSoftSpace;

    invoke-virtual {v1}, Lcom/jme3/bullet/PhysicsSoftSpace;->getSoftBodyList()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/scene/Node;

    if-nez v3, :cond_0

    new-instance v3, Lcom/jme3/scene/Node;

    invoke-virtual {v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState;->attachChild(Lcom/jme3/scene/Spatial;)V

    :cond_0
    iget-object v4, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->softBodies:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->softBodies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v4, 0x1

    :goto_4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Node;

    const-class v5, Lcom/jme3/bullet/debug/SoftBodyDebugControl;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v5

    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    sget-object v5, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Create new SoftBodyDebugControl"

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v5, Lcom/jme3/bullet/debug/SoftBodyDebugControl;

    invoke-direct {v5, p0, v3}, Lcom/jme3/bullet/debug/SoftBodyDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsSoftBody;)V

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    :cond_6
    :goto_5
    invoke-virtual {p0, v2, v4}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateAxes(Lcom/jme3/scene/Node;Z)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private updateWindVelocities()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getPcoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    instance-of v3, v2, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    invoke-interface {v3, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;->displayObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v1

    const-class v4, Lcom/jme3/bullet/debug/WindVelocityDebugControl;

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/jme3/bullet/debug/BulletDebugAppState;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Create new WindVelocityDebugControl"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    new-instance v3, Lcom/jme3/bullet/debug/WindVelocityDebugControl;

    invoke-direct {v3, p0, v2}, Lcom/jme3/bullet/debug/WindVelocityDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {v1, v4}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getAnchorMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->anchorMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getClusterFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public getClusterMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getFaceMaterial(I)Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->faceMaterials:[Lcom/jme3/material/Material;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLinkMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->linkMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getPinMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getWindVelocityMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->windVelocityMaterial:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public setClusterFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setWindVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->windVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setupMaterials(Lcom/jme3/asset/AssetManager;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->setupMaterials(Lcom/jme3/asset/AssetManager;)V

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Green:Lcom/jme3/math/ColorRGBA;

    const-string v1, "anchorMaterial"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->anchorMaterial:Lcom/jme3/material/Material;

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "MatDefs/wireframe/multicolor2.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v4, v3}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iget-object v5, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    const-string v6, "Color"

    invoke-virtual {v5, v6, v0}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const/high16 v0, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    const-string v7, "PointSize"

    invoke-virtual {v5, v7, v0}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    const-string v5, "clusterMaterial"

    invoke-virtual {v0, v5}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    const-string v0, "Textures/shapes/lozenge.png"

    const/4 v5, 0x0

    invoke-static {p1, v0, v5}, Lif/l;->t(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v0

    iget-object v8, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    const-string v9, "PointShape"

    invoke-virtual {v8, v9, v0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->clusterMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    sget-object v8, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v0, v8}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    invoke-virtual {v0, v5}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->faceMaterials:[Lcom/jme3/material/Material;

    invoke-static {p1}, Lif/l;->e(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;

    move-result-object v10

    aput-object v10, v0, v5

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->faceMaterials:[Lcom/jme3/material/Material;

    sget-object v10, Lcom/jme3/math/ColorRGBA;->Red:Lcom/jme3/math/ColorRGBA;

    const-string v11, "debug red ss"

    invoke-virtual {p0, p1, v10, v11, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v11

    aput-object v11, v0, v2

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->faceMaterials:[Lcom/jme3/material/Material;

    const-string v11, "debug red ds"

    const/4 v12, 0x2

    invoke-virtual {p0, p1, v10, v11, v12}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v10

    aput-object v10, v0, v12

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Orange:Lcom/jme3/math/ColorRGBA;

    const-string v10, "linkMaterial"

    invoke-virtual {p0, p1, v0, v10, v2}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->linkMaterial:Lcom/jme3/material/Material;

    new-instance v0, Lcom/jme3/material/Material;

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0, v3, v4, v4, v3}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1, v6, v0}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const/high16 v0, 0x41c00000    # 24.0f

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1, v7, v0}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    const-string v1, "pinMaterial"

    invoke-virtual {v0, v1}, Lcom/jme3/material/Material;->setName(Ljava/lang/String;)V

    const-string v0, "Textures/shapes/pin.png"

    invoke-static {p1, v0, v5}, Lif/l;->t(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/texture/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1, v9, v0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->pinMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    invoke-virtual {v0, v5}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    sget-object v0, Lcom/jme3/bullet/debug/SoftDebugAppState;->whiteColor:Lcom/jme3/math/ColorRGBA;

    const-string v1, "wind velocity"

    invoke-virtual {p0, p1, v0, v1, v12}, Lcom/jme3/bullet/debug/BulletDebugAppState;->createWireMaterial(Lcom/jme3/asset/AssetManager;Lcom/jme3/math/ColorRGBA;Ljava/lang/String;I)Lcom/jme3/material/Material;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftDebugAppState;->windVelocityMaterial:Lcom/jme3/material/Material;

    return-void
.end method

.method public updateShapes()V
    .locals 0

    invoke-super {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateShapes()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->updateSoftBodies()V

    return-void
.end method

.method public updateVelocities()V
    .locals 0

    invoke-super {p0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->updateVelocities()V

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->updateWindVelocities()V

    return-void
.end method
