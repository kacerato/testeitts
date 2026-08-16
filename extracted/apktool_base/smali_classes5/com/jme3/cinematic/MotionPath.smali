.class public Lcom/jme3/cinematic/MotionPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# instance fields
.field private assetManager:Lcom/jme3/asset/AssetManager;

.field private debugNode:Lcom/jme3/scene/Node;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/cinematic/MotionPathListener;",
            ">;"
        }
    .end annotation
.end field

.field prevWayPoint:I

.field private spline:Lcom/jme3/math/Spline;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Spline;

    invoke-direct {v0}, Lcom/jme3/math/Spline;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/cinematic/MotionPath;->prevWayPoint:I

    return-void
.end method

.method private attachDebugNode(Lcom/jme3/scene/Node;)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    if-nez v0, :cond_3

    new-instance v0, Lcom/jme3/scene/Node;

    invoke-direct {v0}, Lcom/jme3/scene/Node;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v1, "Common/Materials/RedColor.j3m"

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadMaterial(Ljava/lang/String;)Lcom/jme3/material/Material;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v1}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/scene/Geometry;

    new-instance v4, Lcom/jme3/scene/shape/Box;

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v4, v5, v5, v5}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    const-string v5, "box"

    invoke-direct {v3, v5, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v2, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/cinematic/MotionPath$1;->$SwitchMap$com$jme3$math$Spline$SplineType:[I

    iget-object v1, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v1}, Lcom/jme3/math/Spline;->getType()Lcom/jme3/math/Spline$SplineType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-direct {p0}, Lcom/jme3/cinematic/MotionPath;->createLinearPath()Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-direct {p0}, Lcom/jme3/cinematic/MotionPath;->createLinearPath()Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-direct {p0}, Lcom/jme3/cinematic/MotionPath;->createCatmullRomPath()Lcom/jme3/scene/Geometry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :goto_1
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_3
    return-void
.end method

.method private createCatmullRomPath()Lcom/jme3/scene/Geometry;
    .locals 5

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/cinematic/MotionPath;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    const-string v1, "Color"

    sget-object v2, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/scene/shape/Curve;

    iget-object v3, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/shape/Curve;-><init>(Lcom/jme3/math/Spline;I)V

    const-string v3, "line"

    invoke-direct {v1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method

.method private createLinearPath()Lcom/jme3/scene/Geometry;
    .locals 5

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/cinematic/MotionPath;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jme3/material/RenderState;->setWireframe(Z)V

    const-string v1, "Color"

    sget-object v2, Lcom/jme3/math/ColorRGBA;->Blue:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Lcom/jme3/scene/shape/Curve;

    iget-object v3, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/shape/Curve;-><init>(Lcom/jme3/math/Spline;I)V

    const-string v3, "line"

    invoke-direct {v1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/jme3/cinematic/MotionPathListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->listeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->listeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWayPoint(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Spline;->addControlPoint(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public checkWayPoint(Lcom/jme3/cinematic/events/MotionEvent;F)V
    .locals 2

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentWayPoint()I

    move-result v0

    iget v1, p0, Lcom/jme3/cinematic/MotionPath;->prevWayPoint:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentValue()F

    move-result v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    invoke-virtual {p1}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentWayPoint()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/jme3/cinematic/MotionPath;->triggerWayPointReach(ILcom/jme3/cinematic/events/MotionEvent;)V

    invoke-virtual {p1}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentWayPoint()I

    move-result p1

    iput p1, p0, Lcom/jme3/cinematic/MotionPath;->prevWayPoint:I

    :cond_0
    return-void
.end method

.method public clearWayPoints()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->clearControlPoints()V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/scene/Node;

    iput-object p2, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    iget-object p2, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Spline;

    iput-object p1, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    return-void
.end method

.method public disableDebugShape()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public enableDebugShape(Lcom/jme3/asset/AssetManager;Lcom/jme3/scene/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/cinematic/MotionPath;->assetManager:Lcom/jme3/asset/AssetManager;

    invoke-direct {p0, p2}, Lcom/jme3/cinematic/MotionPath;->attachDebugNode(Lcom/jme3/scene/Node;)V

    return-void
.end method

.method public getCurveTension()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getCurveTension()F

    move-result v0

    return v0
.end method

.method public getLength()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getTotalLength()F

    move-result v0

    return v0
.end method

.method public getNbWayPoints()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPathSplineType()Lcom/jme3/math/Spline$SplineType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getType()Lcom/jme3/math/Spline$SplineType;

    move-result-object v0

    return-object v0
.end method

.method public getSpline()Lcom/jme3/math/Spline;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    return-object v0
.end method

.method public getWayPoint(I)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public getWayPointIndexForDistance(FLcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 5

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getTotalLength()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p2, v1, v1}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    return-object p2

    :cond_0
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getTotalLength()F

    move-result v0

    rem-float/2addr p1, v0

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getSegmentsLength()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_1

    new-instance p2, Lcom/jme3/math/Vector2f;

    int-to-float v0, v2

    sub-float/2addr p1, v1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    div-float/2addr p1, v1

    invoke-direct {p2, v0, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    return-object p2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1, v0}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    return-object p2
.end method

.method public interpolatePath(FLcom/jme3/cinematic/events/MotionEvent;F)F
    .locals 6

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    invoke-virtual {p0}, Lcom/jme3/cinematic/MotionPath;->getLength()F

    move-result v4

    invoke-virtual {p2}, Lcom/jme3/cinematic/events/AbstractCinematicEvent;->getInitialDuration()F

    move-result v5

    div-float/2addr v4, v5

    mul-float/2addr p1, v4

    invoke-virtual {p0, p1, v3}, Lcom/jme3/cinematic/MotionPath;->getWayPointIndexForDistance(FLcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    move-result-object v3

    iget v4, v3, Lcom/jme3/math/Vector2f;->x:F

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/jme3/cinematic/events/MotionEvent;->setCurrentWayPoint(I)V

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p2, v3}, Lcom/jme3/cinematic/events/MotionEvent;->setCurrentValue(F)V

    invoke-virtual {p0}, Lcom/jme3/cinematic/MotionPath;->getSpline()Lcom/jme3/math/Spline;

    move-result-object v3

    invoke-virtual {p2}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentValue()F

    move-result v4

    invoke-virtual {p2}, Lcom/jme3/cinematic/events/MotionEvent;->getCurrentWayPoint()I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/jme3/math/Spline;->interpolate(FILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/cinematic/events/MotionEvent;->needsDirection()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/jme3/cinematic/events/MotionEvent;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/jme3/cinematic/events/MotionEvent;->setDirection(Lcom/jme3/math/Vector3f;)V

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/jme3/cinematic/MotionPath;->checkWayPoint(Lcom/jme3/cinematic/events/MotionEvent;F)V

    invoke-virtual {p2}, Lcom/jme3/cinematic/events/MotionEvent;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1
.end method

.method public isCycle()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->isCycle()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public jmeClone()Lcom/jme3/cinematic/MotionPath;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/cinematic/MotionPath;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/cinematic/MotionPath;->jmeClone()Lcom/jme3/cinematic/MotionPath;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "spline"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Spline;

    iput-object p1, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    return-void
.end method

.method public removeListener(Lcom/jme3/cinematic/MotionPathListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeWayPoint(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/cinematic/MotionPath;->removeWayPoint(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public removeWayPoint(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Spline;->removeControlPoint(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setCurveTension(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Spline;->setCurveTension(F)V

    iget-object p1, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-direct {p0, p1}, Lcom/jme3/cinematic/MotionPath;->attachDebugNode(Lcom/jme3/scene/Node;)V

    :cond_0
    return-void
.end method

.method public setCycle(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Spline;->setCycle(Z)V

    iget-object p1, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-direct {p0, p1}, Lcom/jme3/cinematic/MotionPath;->attachDebugNode(Lcom/jme3/scene/Node;)V

    :cond_0
    return-void
.end method

.method public setPathSplineType(Lcom/jme3/math/Spline$SplineType;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Spline;->setType(Lcom/jme3/math/Spline$SplineType;)V

    iget-object p1, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->removeFromParent()Z

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/cinematic/MotionPath;->debugNode:Lcom/jme3/scene/Node;

    invoke-direct {p0, p1}, Lcom/jme3/cinematic/MotionPath;->attachDebugNode(Lcom/jme3/scene/Node;)V

    :cond_0
    return-void
.end method

.method public triggerWayPointReach(ILcom/jme3/cinematic/events/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->listeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/cinematic/MotionPathListener;

    invoke-interface {v1, p2, p1}, Lcom/jme3/cinematic/MotionPathListener;->onWayPointReach(Lcom/jme3/cinematic/events/MotionEvent;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/cinematic/MotionPath;->spline:Lcom/jme3/math/Spline;

    const-string v1, "spline"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
