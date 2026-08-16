.class public Lcom/jme3/environment/util/LightsDebugState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# static fields
.field private static final LIGHT_DIR_ARROW_NAME:Ljava/lang/String; = "LightDirection"

.field private static final POINT_LIGHT_RADIUS_NAME:Ljava/lang/String; = "PointLightRadius"

.field private static final PROBE_BOUNDS_NAME:Ljava/lang/String; = "DebugProbeBounds"

.field private static final PROBE_GEOMETRY_NAME:Ljava/lang/String; = "DebugProbeGeometry"

.field private static final SPOT_LIGHT_INNER_RADIUS_NAME:Ljava/lang/String; = "SpotLightInnerRadius"

.field private static final SPOT_LIGHT_OUTER_RADIUS_NAME:Ljava/lang/String; = "SpotLightOuterRadius"

.field private static final SPOT_LIGHT_RADIUS_NAME:Ljava/lang/String; = "RadiusNode"


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private final debugColor:Lcom/jme3/math/ColorRGBA;

.field private debugMaterial:Lcom/jme3/material/Material;

.field private debugNode:Lcom/jme3/scene/Node;

.field private final lightDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation
.end field

.field private lightFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation
.end field

.field private final lightGizmoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jme3/light/Light;",
            "Lcom/jme3/scene/Spatial;",
            ">;"
        }
    .end annotation
.end field

.field private lightProbeScale:F

.field private scene:Lcom/jme3/scene/Spatial;

.field private showOnTop:Z

.field private final tempRotation:Lcom/jme3/math/Quaternion;

.field private viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightGizmoMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightDeque:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/jme3/environment/util/a;

    invoke-direct {v0}, Lcom/jme3/environment/util/a;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightFilter:Ljava/util/function/Predicate;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/environment/util/LightsDebugState;->showOnTop:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightProbeScale:F

    sget-object v0, Lcom/jme3/math/ColorRGBA;->DarkGray:Lcom/jme3/math/ColorRGBA;

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugColor:Lcom/jme3/math/ColorRGBA;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->tempRotation:Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static synthetic a(Lcom/jme3/light/Light;)Z
    .locals 0

    invoke-static {p0}, Lcom/jme3/environment/util/LightsDebugState;->lambda$new$0(Lcom/jme3/light/Light;)Z

    move-result p0

    return p0
.end method

.method private cleanUpRemovedLights()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightGizmoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/light/Light;

    iget-object v3, p0, Lcom/jme3/environment/util/LightsDebugState;->lightDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method private createBulb()Lcom/jme3/scene/Spatial;
    .locals 4

    new-instance v0, Lcom/jme3/scene/shape/Quad;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "LightBulb"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v0}, Lcom/jme3/scene/shape/Quad;->getHeight()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/jme3/scene/shape/Quad;->getWidth()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/jme3/scene/Spatial;->move(FFF)Lcom/jme3/scene/Spatial;

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v3, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v2, v3}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v3, "Common/Textures/lightbulb32.png"

    invoke-interface {v2, v3}, Lcom/jme3/asset/AssetManager;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object v2

    const-string v3, "ColorMap"

    invoke-virtual {v0, v3, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v2

    sget-object v3, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v2, v3}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v2, "Billboard"

    invoke-direct {v0, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/jme3/scene/control/BillboardControl;

    invoke-direct {v2}, Lcom/jme3/scene/control/BillboardControl;-><init>()V

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object v0
.end method

.method private createDirectionalGizmo()Lcom/jme3/scene/Spatial;
    .locals 5

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "DirectionalLightNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v2, v1}, Lcom/jme3/scene/Spatial;->move(FFF)Lcom/jme3/scene/Spatial;

    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createBulb()Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v3, Lcom/jme3/scene/debug/Arrow;

    sget-object v4, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    const-string v2, "LightDirection"

    invoke-direct {v1, v2, v3}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object v0
.end method

.method private createLightGizmo(Lcom/jme3/light/Light;)Lcom/jme3/scene/Spatial;
    .locals 1

    sget-object v0, Lcom/jme3/environment/util/LightsDebugState$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {p1}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createSpotGizmo()Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createDirectionalGizmo()Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createPointGizmo()Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createLightProbeGizmo()Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1
.end method

.method private createLightProbeGizmo()Lcom/jme3/scene/Spatial;
    .locals 5

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "LightProbeNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/jme3/scene/shape/Sphere;

    const/16 v2, 0x20

    iget v3, p0, Lcom/jme3/environment/util/LightsDebugState;->lightProbeScale:F

    invoke-direct {v1, v2, v2, v3}, Lcom/jme3/scene/shape/Sphere;-><init>(IIF)V

    new-instance v2, Lcom/jme3/scene/Geometry;

    const-string v3, "DebugProbeGeometry"

    invoke-direct {v2, v3, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v1, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v4, "Common/MatDefs/Misc/reflect.j3md"

    invoke-direct {v1, v3, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-static {v1}, Lcom/jme3/environment/util/BoundingSphereDebug;->createDebugSphere(Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Geometry;

    move-result-object v1

    const-string v2, "DebugProbeBounds"

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Spatial;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object v0
.end method

.method private createPointGizmo()Lcom/jme3/scene/Spatial;
    .locals 4

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "PointLightNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createBulb()Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/environment/util/BoundingSphereDebug;

    invoke-direct {v2}, Lcom/jme3/environment/util/BoundingSphereDebug;-><init>()V

    const-string v3, "PointLightRadius"

    invoke-direct {v1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object v0
.end method

.method private createRadiusShape(Ljava/lang/String;F)Lcom/jme3/scene/Geometry;
    .locals 3

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-static {v0, p1}, Lcom/jme3/environment/util/Circle;->createShape(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)Lcom/jme3/scene/Geometry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    const-string v1, "Color"

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->debugColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    const-string v1, "DashSize"

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-object p1
.end method

.method private createSpotGizmo()Lcom/jme3/scene/Spatial;
    .locals 4

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "SpotLightNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->createBulb()Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v1, Lcom/jme3/scene/Node;

    const-string v2, "RadiusNode"

    invoke-direct {v1, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const-string v2, "SpotLightInnerRadius"

    const v3, 0x3f39999a    # 0.725f

    invoke-direct {p0, v2, v3}, Lcom/jme3/environment/util/LightsDebugState;->createRadiusShape(Ljava/lang/String;F)Lcom/jme3/scene/Geometry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const-string v2, "SpotLightOuterRadius"

    const v3, 0x3ea66666    # 0.325f

    invoke-direct {p0, v2, v3}, Lcom/jme3/environment/util/LightsDebugState;->createRadiusShape(Ljava/lang/String;F)Lcom/jme3/scene/Geometry;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/scene/debug/Arrow;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v3}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    const-string v3, "LightDirection"

    invoke-direct {v1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-object v0
.end method

.method private static synthetic lambda$new$0(Lcom/jme3/light/Light;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private updateGizmoProperties(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)V
    .locals 5

    move-object v0, p2

    check-cast v0, Lcom/jme3/scene/Node;

    sget-object v1, Lcom/jme3/environment/util/LightsDebugState$1;->$SwitchMap$com$jme3$light$Light$Type:[I

    invoke-virtual {p1}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    check-cast p1, Lcom/jme3/light/SpotLight;

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->tempRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v2

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->tempRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getSpotRange()F

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getSpotInnerAngle()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/light/SpotLight;->getSpotOuterAngle()F

    move-result p1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->tan(F)F

    move-result v1

    mul-float/2addr v1, p2

    invoke-static {p1}, Lcom/jme3/math/FastMath;->tan(F)F

    move-result p1

    mul-float/2addr p1, p2

    const-string v2, "SpotLightInnerRadius"

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    const-string v1, "SpotLightOuterRadius"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    const-string p1, "RadiusNode"

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    const-string p1, "LightDirection"

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/jme3/light/DirectionalLight;

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->tempRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/light/DirectionalLight;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, v1}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->tempRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/jme3/light/PointLight;

    const-string v1, "PointLightRadius"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/light/PointLight;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    invoke-virtual {p1}, Lcom/jme3/light/PointLight;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/jme3/light/LightProbe;

    const-string v1, "DebugProbeGeometry"

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Geometry;

    const-string v2, "DebugProbeBounds"

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v2

    const-string v3, "CubeMap"

    invoke-virtual {v2, v3}, Lcom/jme3/material/Material;->getTextureParam(Ljava/lang/String;)Lcom/jme3/material/MatParamTexture;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_4
    iget v2, p0, Lcom/jme3/environment/util/LightsDebugState;->lightProbeScale:F

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getArea()Lcom/jme3/light/ProbeArea;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/light/ProbeArea;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    invoke-virtual {p1}, Lcom/jme3/light/LightProbe;->getPosition()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    :goto_0
    return-void
.end method

.method private updateLightGizmos(Lcom/jme3/scene/Spatial;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getLocalLightList()Lcom/jme3/light/LightList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/light/LightList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/light/Light;

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->lightFilter:Ljava/util/function/Predicate;

    invoke-interface {v2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->lightDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/jme3/environment/util/LightsDebugState;->lightGizmoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/jme3/environment/util/LightsDebugState;->createLightGizmo(Lcom/jme3/light/Light;)Lcom/jme3/scene/Spatial;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v3, p0, Lcom/jme3/environment/util/LightsDebugState;->lightGizmoMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/jme3/environment/util/LightsDebugState;->updateGizmoProperties(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/jme3/environment/util/LightsDebugState;->updateGizmoProperties(Lcom/jme3/light/Light;Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/environment/util/LightsDebugState;->updateLightGizmos(Lcom/jme3/scene/Spatial;)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightGizmoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->removeMainView(Lcom/jme3/renderer/ViewPort;)Z

    return-void
.end method

.method public getLightProbeScale()F
    .locals 1

    iget v0, p0, Lcom/jme3/environment/util/LightsDebugState;->lightProbeScale:F

    return v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 5

    invoke-interface {p1}, Lcom/jme3/app/Application;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    const-string v1, "LightsDebugView"

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/renderer/RenderManager;->createMainView(Ljava/lang/String;Lcom/jme3/renderer/Camera;)Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-boolean v1, p0, Lcom/jme3/environment/util/LightsDebugState;->showOnTop:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    invoke-interface {p1}, Lcom/jme3/app/Application;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "LightsDebugNode"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v4, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    const-string v1, "Color"

    iget-object v4, p0, Lcom/jme3/environment/util/LightsDebugState;->debugColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v4}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugMaterial:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/jme3/app/Application;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    iput-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    :cond_0
    return-void
.end method

.method public isShowOnTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/environment/util/LightsDebugState;->showOnTop:Z

    return v0
.end method

.method public onDisable()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->detachScene(Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public onEnable()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-void
.end method

.method public setLightFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/light/Light;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->lightFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public setLightProbeScale(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/environment/util/LightsDebugState;->lightProbeScale:F

    return-void
.end method

.method public setScene(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    iget-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->detachAllChildren()V

    iget-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->lightGizmoMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/jme3/environment/util/LightsDebugState;->lightDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public setShowOnTop(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/jme3/environment/util/LightsDebugState;->showOnTop:Z

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/ViewPort;->setClearDepth(Z)V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->scene:Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/environment/util/LightsDebugState;->updateLightGizmos(Lcom/jme3/scene/Spatial;)V

    iget-object v0, p0, Lcom/jme3/environment/util/LightsDebugState;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    invoke-direct {p0}, Lcom/jme3/environment/util/LightsDebugState;->cleanUpRemovedLights()V

    return-void
.end method
