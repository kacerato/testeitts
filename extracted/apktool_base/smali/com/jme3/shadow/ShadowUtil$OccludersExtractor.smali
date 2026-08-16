.class public Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/shadow/ShadowUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OccludersExtractor"
.end annotation


# instance fields
.field casterBB:Lcom/jme3/bounding/BoundingBox;

.field public casterCount:Ljava/lang/Integer;

.field splitBB:Lcom/jme3/bounding/BoundingBox;

.field splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

.field vars:Lcom/jme3/util/TempVars;

.field viewProjMatrix:Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Matrix4f;ILcom/jme3/bounding/BoundingBox;Lcom/jme3/bounding/BoundingBox;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/util/TempVars;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitBB:Lcom/jme3/bounding/BoundingBox;

    .line 6
    iput-object p4, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterBB:Lcom/jme3/bounding/BoundingBox;

    .line 7
    iput-object p5, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

    .line 8
    iput-object p6, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->vars:Lcom/jme3/util/TempVars;

    return-void
.end method

.method private process(Lcom/jme3/scene/Spatial;)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v0

    instance-of v1, p1, Lcom/jme3/scene/Geometry;

    const/high16 v2, 0x41c80000    # 25.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/jme3/scene/Geometry;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v5, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->vars:Lcom/jme3/util/TempVars;

    iget-object v5, v5, Lcom/jme3/util/TempVars;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, v1, v5}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitBB:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v5, v0, Lcom/jme3/bounding/BoundingBox;

    if-eqz v5, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v4, v4, v2}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/jme3/bounding/BoundingVolume;->setCenter(Lcom/jme3/math/Vector3f;)V

    iget-object v5, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitBB:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v5, v1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v5

    sub-float/2addr v5, v3

    invoke-virtual {v1, v5}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/bounding/BoundingVolume;->setCenter(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterBB:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    iget-object v0, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto/16 :goto_1

    :cond_2
    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterBB:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    iget-object v0, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitOccluders:Lcom/jme3/renderer/queue/GeometryList;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->viewProjMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v5, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->vars:Lcom/jme3/util/TempVars;

    iget-object v5, v5, Lcom/jme3/util/TempVars;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, v1, v5}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitBB:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v1

    if-nez v1, :cond_4

    instance-of v5, v0, Lcom/jme3/bounding/BoundingBox;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v2}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->setCenter(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->splitBB:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-direct {p0, v0}, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->process(Lcom/jme3/scene/Spatial;)V

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public addOccluders(Lcom/jme3/scene/Spatial;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->process(Lcom/jme3/scene/Spatial;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
