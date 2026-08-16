.class public final Lcom/jme3/light/DefaultLightFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/light/LightFilter;


# instance fields
.field private camera:Lcom/jme3/renderer/Camera;

.field private probeBlendStrategy:Lcom/jme3/light/LightProbeBlendingStrategy;

.field private final processedLights:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/jme3/light/Light;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/DefaultLightFilter;->processedLights:Ljava/util/HashSet;

    .line 3
    new-instance v0, Lcom/jme3/light/WeightedProbeBlendingStrategy;

    invoke-direct {v0}, Lcom/jme3/light/WeightedProbeBlendingStrategy;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/DefaultLightFilter;->probeBlendStrategy:Lcom/jme3/light/LightProbeBlendingStrategy;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/light/LightProbeBlendingStrategy;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/DefaultLightFilter;->processedLights:Ljava/util/HashSet;

    .line 6
    iput-object p1, p0, Lcom/jme3/light/DefaultLightFilter;->probeBlendStrategy:Lcom/jme3/light/LightProbeBlendingStrategy;

    return-void
.end method


# virtual methods
.method public filterLights(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V
    .locals 7

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldLightList()Lcom/jme3/light/LightList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lcom/jme3/light/LightList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v1, v3}, Lcom/jme3/light/LightList;->get(I)Lcom/jme3/light/Light;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/light/Light;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v5, v4, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jme3/light/DefaultLightFilter;->processedLights:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-boolean v2, v4, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    iget-object v5, p0, Lcom/jme3/light/DefaultLightFilter;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v4, v5, v0}, Lcom/jme3/light/Light;->intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/jme3/light/Light;->intersectsFrustum:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_1
    iget-boolean v5, v4, Lcom/jme3/light/Light;->intersectsFrustum:Z

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v5

    instance-of v6, v5, Lcom/jme3/bounding/BoundingBox;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v4, v5, v0}, Lcom/jme3/light/Light;->intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_3
    instance-of v6, v5, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v6, :cond_4

    move-object v6, v5

    check-cast v6, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {v6}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_4

    check-cast v5, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {v4, v5, v0}, Lcom/jme3/light/Light;->intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/jme3/light/Light;->getType()Lcom/jme3/light/Light$Type;

    move-result-object v5

    sget-object v6, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/jme3/light/DefaultLightFilter;->probeBlendStrategy:Lcom/jme3/light/LightProbeBlendingStrategy;

    check-cast v4, Lcom/jme3/light/LightProbe;

    invoke-interface {v5, v4}, Lcom/jme3/light/LightProbeBlendingStrategy;->registerProbe(Lcom/jme3/light/LightProbe;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v4}, Lcom/jme3/light/LightList;->add(Lcom/jme3/light/Light;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/jme3/light/DefaultLightFilter;->probeBlendStrategy:Lcom/jme3/light/LightProbeBlendingStrategy;

    invoke-interface {v1, p1, p2}, Lcom/jme3/light/LightProbeBlendingStrategy;->populateProbes(Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void

    :goto_3
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    throw p1
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 2

    iput-object p1, p0, Lcom/jme3/light/DefaultLightFilter;->camera:Lcom/jme3/renderer/Camera;

    iget-object p1, p0, Lcom/jme3/light/DefaultLightFilter;->processedLights:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/Light;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jme3/light/Light;->frustumCheckNeeded:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/light/DefaultLightFilter;->processedLights:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public setLightProbeBlendingStrategy(Lcom/jme3/light/LightProbeBlendingStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/light/DefaultLightFilter;->probeBlendStrategy:Lcom/jme3/light/LightProbeBlendingStrategy;

    return-void
.end method
