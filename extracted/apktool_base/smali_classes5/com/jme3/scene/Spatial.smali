.class public abstract Lcom/jme3/scene/Spatial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/collision/Collidable;
.implements Lcom/jme3/asset/CloneableSmartAsset;
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/anim/util/HasLocalTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/scene/Spatial$CullHint;,
        Lcom/jme3/scene/Spatial$BatchHint;,
        Lcom/jme3/scene/Spatial$DFSMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final RF_BOUND:I = 0x2

.field protected static final RF_CHILD_LIGHTLIST:I = 0x8

.field protected static final RF_GLOBAL_LIGHTS:I = 0x20

.field protected static final RF_LIGHTLIST:I = 0x4

.field protected static final RF_MATPARAM_OVERRIDE:I = 0x10

.field protected static final RF_TRANSFORM:I = 0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected batchHint:Lcom/jme3/scene/Spatial$BatchHint;

.field protected controls:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/scene/control/Control;",
            ">;"
        }
    .end annotation
.end field

.field protected cullHint:Lcom/jme3/scene/Spatial$CullHint;

.field protected transient frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

.field protected key:Lcom/jme3/asset/AssetKey;

.field protected localLights:Lcom/jme3/light/LightList;

.field protected localOverrides:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;"
        }
    .end annotation
.end field

.field protected localTransform:Lcom/jme3/math/Transform;

.field protected name:Ljava/lang/String;

.field protected transient parent:Lcom/jme3/scene/Node;

.field protected queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public transient queueDistance:F

.field protected transient refreshFlags:I

.field private requiresUpdates:Z

.field protected shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field protected userData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/export/Savable;",
            ">;"
        }
    .end annotation
.end field

.field protected worldBound:Lcom/jme3/bounding/BoundingVolume;

.field protected transient worldLights:Lcom/jme3/light/LightList;

.field protected worldOverrides:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;"
        }
    .end annotation
.end field

.field protected worldTransform:Lcom/jme3/math/Transform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Spatial;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/jme3/scene/Spatial;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    .line 4
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    .line 5
    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    .line 6
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 7
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 8
    iput v0, p0, Lcom/jme3/scene/Spatial;->queueDistance:F

    .line 9
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/scene/control/Control;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/jme3/scene/Spatial;->requiresUpdates:Z

    .line 13
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 14
    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    .line 15
    new-instance p1, Lcom/jme3/math/Transform;

    invoke-direct {p1}, Lcom/jme3/math/Transform;-><init>()V

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    .line 16
    new-instance p1, Lcom/jme3/light/LightList;

    invoke-direct {p1, p0}, Lcom/jme3/light/LightList;-><init>(Lcom/jme3/scene/Spatial;)V

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    .line 17
    new-instance p1, Lcom/jme3/light/LightList;

    invoke-direct {p1, p0}, Lcom/jme3/light/LightList;-><init>(Lcom/jme3/scene/Spatial;)V

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    .line 18
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class v0, Lcom/jme3/material/MatParamOverride;

    invoke-direct {p1, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    .line 19
    new-instance p1, Lcom/jme3/util/SafeArrayList;

    invoke-direct {p1, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    .line 20
    iget p1, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    return-void
.end method

.method public static synthetic a(Lcom/jme3/light/Light;)Z
    .locals 0

    invoke-static {p0}, Lcom/jme3/scene/Spatial;->lambda$updateWorldLightList$0(Lcom/jme3/light/Light;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/jme3/light/Light;)Z
    .locals 0

    invoke-static {p0}, Lcom/jme3/scene/Spatial;->lambda$updateWorldLightList$1(Lcom/jme3/light/Light;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateWorldLightList$0(Lcom/jme3/light/Light;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/light/Light;->isGlobal()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$updateWorldLightList$1(Lcom/jme3/light/Light;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/light/Light;->isGlobal()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private runControlUpdate(F)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/control/Control;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1}, Lcom/jme3/scene/control/Control;->update(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addControl(Lcom/jme3/scene/control/Control;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result v0

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lcom/jme3/scene/control/Control;->setSpatial(Lcom/jme3/scene/Spatial;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result p1

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v1, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/scene/Node;->invalidateUpdateList()V

    :cond_0
    return-void
.end method

.method public addControlAt(ILcom/jme3/scene/control/Control;)V
    .locals 3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getNumControls()I

    move-result v0

    if-ltz p1, :cond_2

    if-gt p1, v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p2}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p2}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/util/SafeArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Control is already added here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for numControls="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null control"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addLight(Lcom/jme3/light/Light;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v0, p1}, Lcom/jme3/light/LightList;->add(Lcom/jme3/light/Light;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    return-void
.end method

.method public addMatParamOverride(Lcom/jme3/material/MatParamOverride;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "override cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public breadthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    .line 5
    invoke-interface {p1, v1}, Lcom/jme3/scene/SceneGraphVisitor;->visit(Lcom/jme3/scene/Spatial;)V

    .line 6
    invoke-virtual {v1, p1, v0}, Lcom/jme3/scene/Spatial;->breadthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Ljava/util/Queue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract breadthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Ljava/util/Queue;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/SceneGraphVisitor;",
            "Ljava/util/Queue<",
            "Lcom/jme3/scene/Spatial;",
            ">;)V"
        }
    .end annotation
.end method

.method public center()Lcom/jme3/scene/Spatial;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    return-object p0
.end method

.method public checkCulling(Lcom/jme3/renderer/Camera;)Z
    .locals 4

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V

    return v2

    :cond_0
    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    :goto_0
    iput-object v0, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v0

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->containsGui(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    :cond_4
    iget-object p1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq p1, v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scene graph is not properly updated for rendering.\nState was changed after rootNode.updateGeometricState() call. \nMake sure you do not modify the scene from another thread!\nProblem spatial name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/jme3/scene/threadwarden/SceneGraphThreadWarden;->getTurnOnAssertsPrompt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkDoBoundUpdate()V
    .locals 4

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->checkDoBoundUpdate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    return-void
.end method

.method public checkDoTransformUpdate()V
    .locals 6

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_3

    :cond_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->spatialStack:[Lcom/jme3/scene/Spatial;

    const/4 v2, 0x0

    move-object v3, p0

    :goto_0
    iget-object v4, v3, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v4, :cond_2

    iget-object v4, v3, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v5, v3, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v4, v5}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget v4, v3, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v3, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_2

    :cond_2
    aput-object v3, v1, v2

    iget v3, v4, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    :goto_1
    if-ltz v2, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    :goto_3
    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_0
.end method

.method public clearMatParamOverrides()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/scene/Spatial;
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->clone(Z)Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/scene/Spatial;
    .locals 3

    .line 3
    new-instance v0, Lcom/jme3/util/clone/Cloner;

    invoke-direct {v0}, Lcom/jme3/util/clone/Cloner;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/util/clone/Cloner;->setClonedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/jme3/util/clone/IdentityCloneFunction;

    invoke-direct {p1}, Lcom/jme3/util/clone/IdentityCloneFunction;-><init>()V

    const-class v1, Lcom/jme3/material/Material;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/util/clone/Cloner;->setCloneFunction(Ljava/lang/Class;Lcom/jme3/util/clone/CloneFunction;)V

    .line 6
    :cond_0
    new-instance p1, Lcom/jme3/util/clone/IdentityCloneFunction;

    invoke-direct {p1}, Lcom/jme3/util/clone/IdentityCloneFunction;-><init>()V

    const-class v1, Lcom/jme3/scene/Mesh;

    invoke-virtual {v0, v1, p1}, Lcom/jme3/util/clone/Cloner;->setCloneFunction(Ljava/lang/Class;Lcom/jme3/util/clone/CloneFunction;)V

    .line 7
    invoke-virtual {v0, p0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/Spatial;

    .line 8
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    .line 9
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    .line 10
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->clone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 3

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Node;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/bounding/BoundingVolume;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/light/LightList;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/light/LightList;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Transform;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/util/SafeArrayList;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    iput-object p2, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/export/Savable;

    instance-of v2, v1, Ljava/lang/Cloneable;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/export/Savable;

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deepClone()Lcom/jme3/scene/Spatial;
    .locals 3

    new-instance v0, Lcom/jme3/util/clone/Cloner;

    invoke-direct {v0}, Lcom/jme3/util/clone/Cloner;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/util/clone/Cloner;->setClonedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    return-object v0
.end method

.method public depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/scene/Spatial$DFSMode;->POST_ORDER:Lcom/jme3/scene/Spatial$DFSMode;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/scene/Spatial;->depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Lcom/jme3/scene/Spatial$DFSMode;)V

    return-void
.end method

.method public abstract depthFirstTraversal(Lcom/jme3/scene/SceneGraphVisitor;Lcom/jme3/scene/Spatial$DFSMode;)V
.end method

.method public forceRefresh(ZZZ)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    :cond_2
    return-void
.end method

.method public getBatchHint()Lcom/jme3/scene/Spatial$BatchHint;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getBatchHint()Lcom/jme3/scene/Spatial$BatchHint;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Always:Lcom/jme3/scene/Spatial$BatchHint;

    return-object v0
.end method

.method public getControl(I)Lcom/jme3/scene/control/Control;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/control/Control;

    return-object p1
.end method

.method public getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/scene/control/Control;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/control/Control;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCullHint()Lcom/jme3/scene/Spatial$CullHint;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Dynamic:Lcom/jme3/scene/Spatial$CullHint;

    return-object v0
.end method

.method public getKey()Lcom/jme3/asset/AssetKey;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->key:Lcom/jme3/asset/AssetKey;

    return-object v0
.end method

.method public getLastFrustumIntersection()Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object v0
.end method

.method public getLocalBatchHint()Lcom/jme3/scene/Spatial$BatchHint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    return-object v0
.end method

.method public getLocalCullHint()Lcom/jme3/scene/Spatial$CullHint;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    return-object v0
.end method

.method public getLocalLightList()Lcom/jme3/light/LightList;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    return-object v0
.end method

.method public getLocalMatParamOverrides()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getLocalQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-object v0
.end method

.method public getLocalRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getLocalScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLocalShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object v0
.end method

.method public getLocalToWorldMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix4f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix4f;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix4f;->scale(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Quaternion;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Matrix4f;->setTranslation(Lcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLocalTransform()Lcom/jme3/math/Transform;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getLocalTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumControls()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getQueueBucket()Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-object v0
.end method

.method public getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object v0
.end method

.method public abstract getTriangleCount()I
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/export/Savable;

    instance-of v0, p1, Lcom/jme3/scene/UserData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/scene/UserData;

    invoke-virtual {p1}, Lcom/jme3/scene/UserData;->getValue()Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getUserDataKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public abstract getVertexCount()I
.end method

.method public getWorldBound()Lcom/jme3/bounding/BoundingVolume;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoBoundUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    return-object v0
.end method

.method public getWorldLightList()Lcom/jme3/light/LightList;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    return-object v0
.end method

.method public getWorldMatParamOverrides()Lcom/jme3/util/SafeArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    return-object v0
.end method

.method public getWorldRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getWorldScale()Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getWorldTransform()Lcom/jme3/math/Transform;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    return-object v0
.end method

.method public getWorldTranslation()Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public hasAncestor(Lcom/jme3/scene/Node;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->hasAncestor(Lcom/jme3/scene/Node;)Z

    move-result p1

    return p1
.end method

.method public hasGlobalLights()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v2}, Lcom/jme3/light/LightList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v2, v1}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/light/Light;->isGlobal()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public jmeClone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->jmeClone()Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public localToWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    iget-object v2, v1, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, v1, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_0
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public matches(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/scene/Spatial;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public move(FFF)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-object p0
.end method

.method public move(Lcom/jme3/math/Vector3f;)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-object p0
.end method

.method public oldClone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    const-string v0, "world_bound"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingVolume;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    const-class v0, Lcom/jme3/scene/Spatial$CullHint;

    sget-object v2, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    const-string v3, "cull_mode"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial$CullHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    const-class v0, Lcom/jme3/scene/Spatial$BatchHint;

    sget-object v2, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    const-string v3, "batch_hint"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial$BatchHint;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    const-class v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v3, "queue"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-class v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v3, "shadow_mode"

    invoke-interface {p1, v3, v0, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v0, "transform"

    sget-object v2, Lcom/jme3/math/Transform;->IDENTITY:Lcom/jme3/math/Transform;

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Transform;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    const-string v0, "lights"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/LightList;

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v0, p0}, Lcom/jme3/light/LightList;->setOwner(Lcom/jme3/scene/Spatial;)V

    const-string v0, "overrides"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-class v2, Lcom/jme3/material/MatParamOverride;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/jme3/util/SafeArrayList;

    invoke-direct {v3, v2, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    :goto_0
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    const-string v2, "controlsList"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/jme3/util/SafeArrayList;->addAll(ILjava/util/Collection;)Z

    const-string v0, "user_data"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readStringSavableMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    return-void
.end method

.method public removeControl(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/scene/control/Control;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/control/Control;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, v1}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/control/Control;

    const/4 v1, 0x0

    .line 5
    invoke-interface {p1, v1}, Lcom/jme3/scene/control/Control;->setSpatial(Lcom/jme3/scene/Spatial;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/jme3/scene/Node;->invalidateUpdateList()V

    :cond_2
    return-void
.end method

.method public removeControl(Lcom/jme3/scene/control/Control;)Z
    .locals 3

    .line 9
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 11
    invoke-interface {p1, v2}, Lcom/jme3/scene/control/Control;->setSpatial(Lcom/jme3/scene/Spatial;)V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->requiresUpdates()Z

    move-result p1

    .line 13
    iget-object v2, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v2, :cond_1

    if-eq v0, p1, :cond_1

    .line 14
    invoke-virtual {v2}, Lcom/jme3/scene/Node;->invalidateUpdateList()V

    :cond_1
    return v1
.end method

.method public removeFromParent()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeLight(Lcom/jme3/light/Light;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setLightListRefresh()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    invoke-virtual {v0, p1}, Lcom/jme3/light/LightList;->remove(Lcom/jme3/light/Light;)V

    return-void
.end method

.method public removeMatParamOverride(Lcom/jme3/material/MatParamOverride;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setMatParamOverrideRefresh()V

    :cond_0
    return-void
.end method

.method public requiresUpdates()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/Spatial;->requiresUpdates:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public rotate(FFF)Lcom/jme3/scene/Spatial;
    .locals 2

    .line 3
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    .line 5
    invoke-virtual {v1, p1, p2, p3}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    .line 6
    invoke-virtual {p0, v1}, Lcom/jme3/scene/Spatial;->rotate(Lcom/jme3/math/Quaternion;)Lcom/jme3/scene/Spatial;

    .line 7
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p0
.end method

.method public rotate(Lcom/jme3/math/Quaternion;)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-object p0
.end method

.method public rotateUpTo(Lcom/jme3/math/Vector3f;)V
    .locals 5

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v3, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->angleBetween(Lcom/jme3/math/Vector3f;)F

    move-result v4

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v3, v3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public runControlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/control/Control;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/jme3/scene/control/Control;->render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scale(F)Lcom/jme3/scene/Spatial;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1, p1}, Lcom/jme3/scene/Spatial;->scale(FFF)Lcom/jme3/scene/Spatial;

    move-result-object p1

    return-object p1
.end method

.method public scale(FFF)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->multLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 3
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-object p0
.end method

.method public setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    return-void
.end method

.method public setBoundRefresh()V
    .locals 3

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, v0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    return-void
.end method

.method public setKey(Lcom/jme3/asset/AssetKey;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->key:Lcom/jme3/asset/AssetKey;

    return-void
.end method

.method public setLastFrustumIntersection(Lcom/jme3/renderer/Camera$FrustumIntersect;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->frustrumIntersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-void
.end method

.method public setLightListRefresh()V
    .locals 4

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->hasGlobalLights()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    iget v2, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    or-int/lit8 v3, v2, 0x8

    iput v3, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    if-eqz v1, :cond_3

    or-int/lit8 v2, v2, 0x2c

    iput v2, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :cond_3
    iget-object v0, v0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setLocalRotation(Lcom/jme3/math/Matrix3f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalScale(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalScale(FFF)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Transform;->setScale(FFF)Lcom/jme3/math/Transform;

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalScale(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 6
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalTransform(Lcom/jme3/math/Transform;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalTranslation(FFF)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Transform;->setTranslation(FFF)Lcom/jme3/math/Transform;

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLocalTranslation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setTransformRefresh()V

    return-void
.end method

.method public setLodLevel(I)V
    .locals 0

    return-void
.end method

.method public setMatParamOverrideRefresh()V
    .locals 3

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_0

    return-void

    :cond_0
    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, v0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 0

    return-void
.end method

.method public abstract setModelBound(Lcom/jme3/bounding/BoundingVolume;)V
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lcom/jme3/scene/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    return-void
.end method

.method public setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-void
.end method

.method public setRequiresUpdates(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/jme3/scene/Spatial;->requiresUpdates:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setRequiresUpdates() cannot be called once attached."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-void
.end method

.method public setTransformRefresh()V
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    :cond_1
    instance-of v0, p2, Lcom/jme3/export/Savable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    check-cast p2, Lcom/jme3/export/Savable;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    new-instance v1, Lcom/jme3/scene/UserData;

    invoke-static {p2}, Lcom/jme3/scene/UserData;->getObjectType(Ljava/lang/Object;)B

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/jme3/scene/UserData;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateGeometricState()V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldLightList()V

    :cond_0
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldTransforms()V

    :cond_1
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateWorldBound()V

    :cond_2
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->updateMatParamOverrides()V

    :cond_3
    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :cond_4
    return-void
.end method

.method public updateLogicalState(F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/scene/Spatial;->runControlUpdate(F)V

    return-void
.end method

.method public updateMatParamOverrides()V
    .locals 2

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v0, v0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldOverrides:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public abstract updateModelBound()V
.end method

.method public updateWorldBound()V
    .locals 1

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    return-void
.end method

.method public updateWorldLightList()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    new-instance v2, Lcom/jme3/scene/a;

    invoke-direct {v2}, Lcom/jme3/scene/a;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/light/LightList;->update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;Ljava/util/function/Predicate;)V

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    iget-object v0, v0, Lcom/jme3/scene/Spatial;->worldLights:Lcom/jme3/light/LightList;

    new-instance v3, Lcom/jme3/scene/b;

    invoke-direct {v3}, Lcom/jme3/scene/b;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Lcom/jme3/light/LightList;->update(Lcom/jme3/light/LightList;Lcom/jme3/light/LightList;Ljava/util/function/Predicate;)V

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :goto_0
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->parent:Lcom/jme3/scene/Node;

    iget-object v1, v1, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Transform;->combineWithParent(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    :goto_0
    return-void
.end method

.method public worldToLocal(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    if-nez p2, :cond_0

    .line 4
    new-instance p2, Lcom/jme3/math/Quaternion;

    invoke-direct {p2, p1}, Lcom/jme3/math/Quaternion;-><init>(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 6
    :goto_0
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    .line 9
    invoke-virtual {p2, v0}, Lcom/jme3/math/Quaternion;->multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 10
    invoke-virtual {p1}, Lcom/jme3/util/TempVars;->release()V

    return-object p2
.end method

.method public worldToLocal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->checkDoTransformUpdate()V

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/math/Transform;->transformInverseVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->worldBound:Lcom/jme3/bounding/BoundingVolume;

    const-string v1, "world_bound"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->cullHint:Lcom/jme3/scene/Spatial$CullHint;

    const-string v1, "cull_mode"

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Inherit:Lcom/jme3/scene/Spatial$CullHint;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->batchHint:Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "batch_hint"

    sget-object v3, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->queueBucket:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "queue"

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "shadow_mode"

    sget-object v3, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localTransform:Lcom/jme3/math/Transform;

    const-string v1, "transform"

    sget-object v3, Lcom/jme3/math/Transform;->IDENTITY:Lcom/jme3/math/Transform;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->localLights:Lcom/jme3/light/LightList;

    const-string v1, "lights"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->localOverrides:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "overrides"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "controlsList"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/scene/Spatial;->userData:Ljava/util/HashMap;

    const-string v1, "user_data"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeStringSavableMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
