.class public Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;


# instance fields
.field private final calcVec1:Lcom/jme3/math/Vector3f;

.field private final gridTriA:Lcom/jme3/math/Triangle;

.field private final gridTriB:Lcom/jme3/math/Triangle;

.field private multipleCollisions:Z

.field private final root:Lcom/jme3/terrain/geomipmap/TerrainQuad;

.field private final tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

.field private final workRay:Lcom/jme3/math/Ray;

.field private final worldPickRay:Lcom/jme3/math/Ray;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Triangle;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Triangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    new-instance v0, Lcom/jme3/math/Triangle;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/math/Triangle;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->calcVec1:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Ray;

    invoke-direct {v0}, Lcom/jme3/math/Ray;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    new-instance v0, Lcom/jme3/math/Ray;

    invoke-direct {v0}, Lcom/jme3/math/Ray;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->worldPickRay:Lcom/jme3/math/Ray;

    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-direct {v0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->root:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    return-void
.end method

.method private addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z
    .locals 2

    new-instance v0, Lcom/jme3/collision/CollisionResult;

    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-direct {v0, p3, p5}, Lcom/jme3/collision/CollisionResult;-><init>(Lcom/jme3/math/Vector3f;F)V

    invoke-virtual {v0, p2}, Lcom/jme3/collision/CollisionResult;->setGeometry(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {p4}, Lcom/jme3/math/Triangle;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/jme3/collision/CollisionResult;->setContactNormal(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p4}, Lcom/jme3/math/Triangle;->getIndex()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/jme3/collision/CollisionResult;->setTriangleIndex(I)V

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResults;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    invoke-virtual {p1, p3}, Lcom/jme3/collision/CollisionResults;->getCollision(I)Lcom/jme3/collision/CollisionResult;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result p5

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v1

    cmpl-float p5, p5, v1

    if-nez p5, :cond_0

    invoke-virtual {p4}, Lcom/jme3/collision/CollisionResult;->getGeometry()Lcom/jme3/scene/Geometry;

    move-result-object p5

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getGeometry()Lcom/jme3/scene/Geometry;

    move-result-object v1

    if-ne p5, v1, :cond_0

    invoke-virtual {p4}, Lcom/jme3/collision/CollisionResult;->getContactPoint()Lcom/jme3/math/Vector3f;

    move-result-object p5

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getContactPoint()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/jme3/collision/CollisionResult;->getContactNormal()Lcom/jme3/math/Vector3f;

    move-result-object p4

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getContactNormal()Lcom/jme3/math/Vector3f;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/jme3/collision/CollisionResults;->addCollision(Lcom/jme3/collision/CollisionResult;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public checkTriangles(FFLcom/jme3/math/Ray;Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Triangle;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->getTriangles(FFLcom/jme3/terrain/geomipmap/TerrainPatch;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    invoke-virtual {p3, p1, p4}, Lcom/jme3/math/Ray;->intersectWhere(Lcom/jme3/math/Triangle;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    const/4 p5, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object p3, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    invoke-virtual {p3}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p6, p1, p2, p3}, Lcom/jme3/math/Triangle;->set(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return p5

    :cond_1
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    invoke-virtual {p3, p1, p4}, Lcom/jme3/math/Ray;->intersectWhere(Lcom/jme3/math/Triangle;Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    invoke-virtual {p2}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object p3, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    invoke-virtual {p3}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p6, p1, p2, p3}, Lcom/jme3/math/Triangle;->set(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return p5

    :cond_2
    return p2
.end method

.method public findClosestHeightIndex(Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainPatch;)I
    .locals 3

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-int v0, v0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-int p1, p1

    const/4 v1, -0x1

    if-ltz v0, :cond_2

    invoke-virtual {p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    invoke-virtual {p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result p2

    mul-int/2addr p1, p2

    add-int/2addr p1, v0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getTerrainIntersection(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->worldPickRay:Lcom/jme3/math/Ray;

    invoke-virtual {v0, v8}, Lcom/jme3/math/Ray;->set(Lcom/jme3/math/Ray;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->root:Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->clone()Lcom/jme3/math/Ray;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findPick(Lcom/jme3/math/Ray;Ljava/util/List;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    return v9

    :cond_0
    iget-object v1, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    invoke-virtual {v1, v8}, Lcom/jme3/math/Ray;->set(Lcom/jme3/math/Ray;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v9

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;

    iget-object v12, v0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->targetPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v1, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->getGridSpacing()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v12}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v1, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-virtual {v12}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->setGridOrigin(Lcom/jme3/math/Vector3f;)V

    iget-object v1, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    invoke-virtual {v1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->cr:Lcom/jme3/collision/CollisionResult;

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v0

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    iget-object v1, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->startWalk(Lcom/jme3/math/Ray;)V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->getGridLocation()Lcom/jme3/math/Vector2f;

    move-result-object v14

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->isRayPerpendicularToGrid()Z

    move-result v0

    const/high16 v15, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    new-instance v16, Lcom/jme3/math/Triangle;

    invoke-direct/range {v16 .. v16}, Lcom/jme3/math/Triangle;-><init>()V

    iget v1, v14, Lcom/jme3/math/Vector2f;->x:F

    iget v2, v14, Lcom/jme3/math/Vector2f;->y:F

    iget-object v3, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    move-object/from16 v0, p0

    move-object v4, v13

    move-object v5, v12

    move v14, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->checkTriangles(FFLcom/jme3/math/Ray;Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Triangle;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->worldPickRay:Lcom/jme3/math/Ray;

    iget-object v0, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v13}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v0

    cmpg-float v0, v0, v15

    if-gez v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v0

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    if-nez v0, :cond_1

    return v14

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    if-nez v0, :cond_1

    return v14

    :cond_3
    :goto_1
    iget v0, v14, Lcom/jme3/math/Vector2f;->x:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_c

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_c

    iget v0, v14, Lcom/jme3/math/Vector2f;->y:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_c

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    new-instance v16, Lcom/jme3/math/Triangle;

    invoke-direct/range {v16 .. v16}, Lcom/jme3/math/Triangle;-><init>()V

    iget v1, v14, Lcom/jme3/math/Vector2f;->x:F

    iget v2, v14, Lcom/jme3/math/Vector2f;->y:F

    iget-object v3, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    move-object/from16 v0, p0

    move-object v4, v13

    move-object v5, v12

    move v9, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->checkTriangles(FFLcom/jme3/math/Ray;Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Triangle;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->worldPickRay:Lcom/jme3/math/Ray;

    iget-object v0, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v13}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v0

    cmpg-float v0, v0, v15

    if-gez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v0

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    if-nez v0, :cond_4

    return v9

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    if-nez v0, :cond_4

    return v9

    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->getLastStepDirection()Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    move-result-object v0

    sget-object v1, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker$1;->$SwitchMap$com$jme3$terrain$geomipmap$picking$BresenhamYUpGridTracer$Direction:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v9, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    move v6, v9

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move v0, v9

    goto :goto_3

    :goto_4
    iget v1, v14, Lcom/jme3/math/Vector2f;->x:F

    int-to-float v2, v6

    add-float/2addr v1, v2

    iget v2, v14, Lcom/jme3/math/Vector2f;->y:F

    int-to-float v0, v0

    add-float/2addr v2, v0

    iget-object v3, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->workRay:Lcom/jme3/math/Ray;

    move-object/from16 v0, p0

    move-object v4, v13

    move-object v5, v12

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->checkTriangles(FFLcom/jme3/math/Ray;Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Triangle;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->worldPickRay:Lcom/jme3/math/Ray;

    iget-object v0, v0, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v13}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v0

    cmpg-float v0, v0, v15

    if-gez v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Ray;->getLimit()F

    move-result v0

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    if-nez v0, :cond_9

    return v9

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v13

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->addCollision(Lcom/jme3/collision/CollisionResults;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Triangle;F)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    if-nez v0, :cond_9

    return v9

    :cond_b
    :goto_5
    iget-object v0, v7, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->tracer:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->next()V

    move v6, v9

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_c
    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    return v11
.end method

.method public getTriangles(FFLcom/jme3/terrain/geomipmap/TerrainPatch;)Z
    .locals 3

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->calcVec1:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->calcVec1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0, p3}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->findClosestHeightIndex(Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainPatch;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getGridTriangles(FF)[Lcom/jme3/math/Triangle;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length p2, p1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    aget-object p3, p1, v2

    invoke-virtual {p3}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jme3/math/Triangle;->set1(Lcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    aget-object p3, p1, v2

    invoke-virtual {p3}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jme3/math/Triangle;->set2(Lcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriA:Lcom/jme3/math/Triangle;

    aget-object p3, p1, v2

    invoke-virtual {p3}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jme3/math/Triangle;->set3(Lcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    const/4 p3, 0x1

    aget-object v0, p1, p3

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get1()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Triangle;->set1(Lcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    aget-object v0, p1, p3

    invoke-virtual {v0}, Lcom/jme3/math/Triangle;->get2()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Triangle;->set2(Lcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->gridTriB:Lcom/jme3/math/Triangle;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Triangle;->set3(Lcom/jme3/math/Vector3f;)V

    return p3

    :cond_2
    :goto_0
    return v2
.end method

.method public isSupportingMultipleCollisions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    return v0
.end method

.method public setSupportMultipleCollisions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->multipleCollisions:Z

    return-void
.end method
