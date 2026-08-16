.class public Lcom/jme3/scene/shape/Curve;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field private spline:Lcom/jme3/math/Spline;

.field private temp:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Spline;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 5
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    .line 6
    iput-object p1, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    .line 7
    sget-object v0, Lcom/jme3/scene/shape/Curve$1;->$SwitchMap$com$jme3$math$Spline$SplineType:[I

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getType()Lcom/jme3/math/Spline$SplineType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/jme3/scene/shape/Curve;->createLinearMesh()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p2}, Lcom/jme3/scene/shape/Curve;->createNurbMesh(I)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-direct {p0, p2}, Lcom/jme3/scene/shape/Curve;->createBezierMesh(I)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, p2}, Lcom/jme3/scene/shape/Curve;->createCatmullRomMesh(I)V

    :goto_0
    return-void
.end method

.method public constructor <init>([Lcom/jme3/math/Vector3f;I)V
    .locals 4

    .line 3
    new-instance v0, Lcom/jme3/math/Spline;

    sget-object v1, Lcom/jme3/math/Spline$SplineType;->CatmullRom:Lcom/jme3/math/Spline$SplineType;

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/jme3/math/Spline;-><init>(Lcom/jme3/math/Spline$SplineType;[Lcom/jme3/math/Vector3f;FZ)V

    invoke-direct {p0, v0, p2}, Lcom/jme3/scene/shape/Curve;-><init>(Lcom/jme3/math/Spline;I)V

    return-void
.end method

.method private createBezierMesh(I)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    iget-object v3, v0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v3}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    add-int/2addr v3, v4

    const/4 v5, 0x3

    div-int/2addr v3, v5

    sub-int/2addr v3, v1

    mul-int v6, v3, v2

    add-int/lit8 v7, v6, 0x1

    mul-int/2addr v7, v5

    new-array v7, v7, [F

    iget-object v8, v0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v8}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    if-ge v10, v3, :cond_2

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/math/Vector3f;

    add-int/lit8 v14, v12, 0x1

    iget v15, v13, Lcom/jme3/math/Vector3f;->x:F

    aput v15, v7, v12

    add-int/lit8 v15, v12, 0x2

    iget v1, v13, Lcom/jme3/math/Vector3f;->y:F

    aput v1, v7, v14

    add-int/lit8 v12, v12, 0x3

    iget v1, v13, Lcom/jme3/math/Vector3f;->z:F

    aput v1, v7, v15

    const/4 v1, 0x1

    :goto_2
    if-ge v1, v2, :cond_1

    iget-object v13, v0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    int-to-float v14, v1

    int-to-float v15, v2

    div-float/2addr v14, v15

    iget-object v15, v0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13, v14, v11, v15}, Lcom/jme3/math/Spline;->interpolate(FILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v13, v12, 0x1

    iget-object v14, v0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v14}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v14

    aput v14, v7, v12

    add-int/lit8 v14, v12, 0x2

    iget-object v15, v0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v15}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v15

    aput v15, v7, v13

    add-int/lit8 v12, v12, 0x3

    iget-object v13, v0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v13}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v13

    aput v13, v7, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    add-int/lit8 v2, v12, 0x1

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    aput v3, v7, v12

    add-int/2addr v12, v4

    iget v3, v1, Lcom/jme3/math/Vector3f;->y:F

    aput v3, v7, v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    aput v1, v7, v12

    shl-int/lit8 v1, v6, 0x1

    new-array v1, v1, [S

    move v2, v9

    :goto_3
    if-ge v9, v6, :cond_3

    add-int/lit8 v3, v2, 0x1

    int-to-short v8, v9

    aput-short v8, v1, v2

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v2, v4

    int-to-short v8, v9

    aput-short v8, v1, v3

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v5, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v2, v4, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method private createCatmullRomMesh(I)V
    .locals 13

    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    add-int/2addr v0, v1

    const/4 v2, 0x3

    mul-int/2addr v0, v2

    new-array v0, v0, [F

    iget-object v3, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v3}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int/2addr v3, p1

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    new-array v3, v3, [S

    iget-object v5, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v5}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jme3/math/Vector3f;

    iget v10, v9, Lcom/jme3/math/Vector3f;->x:F

    aput v10, v0, v7

    add-int/lit8 v10, v7, 0x1

    iget v11, v9, Lcom/jme3/math/Vector3f;->y:F

    aput v11, v0, v10

    add-int/lit8 v10, v7, 0x2

    iget v9, v9, Lcom/jme3/math/Vector3f;->z:F

    aput v9, v0, v10

    add-int/2addr v7, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v1

    :goto_1
    if-ge v9, p1, :cond_0

    iget-object v10, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    int-to-float v11, v9

    int-to-float v12, p1

    div-float/2addr v11, v12

    iget-object v12, p0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v11, v8, v12}, Lcom/jme3/math/Spline;->interpolate(FILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v10, p0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v10

    aput v10, v0, v7

    add-int/lit8 v10, v7, 0x1

    iget-object v11, p0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v11

    aput v11, v0, v10

    add-int/lit8 v10, v7, 0x2

    iget-object v11, p0, Lcom/jme3/scene/shape/Curve;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v11

    aput v11, v0, v10

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_2
    iget-object v7, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v7}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    mul-int/2addr v7, p1

    if-ge v6, v7, :cond_2

    int-to-short v7, v6

    aput-short v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-short v8, v6

    aput-short v8, v3, v7

    add-int/2addr v5, v4

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v4, v3}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method private createLinearMesh()V
    .locals 11

    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    iget-object v2, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v2}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    new-array v2, v2, [S

    iget-object v4, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v4}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/math/Vector3f;

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->getX()F

    move-result v9

    aput v9, v0, v5

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->getY()F

    move-result v10

    aput v10, v0, v9

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {v8}, Lcom/jme3/math/Vector3f;->getZ()F

    move-result v8

    aput v8, v0, v9

    add-int/2addr v5, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    int-to-short v8, v6

    aput-short v8, v2, v7

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    int-to-short v9, v6

    aput-short v9, v2, v8

    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    sget-object v4, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v4, v1, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    return-void
.end method

.method private createNurbMesh(I)V
    .locals 10

    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {p1}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p1

    add-int/lit8 p1, v0, 0x1

    :goto_0
    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getMinNurbKnot()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v1}, Lcom/jme3/math/Spline;->getMaxNurbKnot()F

    move-result v1

    sub-float/2addr v1, v0

    int-to-float v2, p1

    div-float/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    new-array v4, v2, [F

    new-instance v5, Lcom/jme3/math/Vector3f;

    invoke-direct {v5}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v2, :cond_1

    iget-object v8, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v8, v0, v6, v5}, Lcom/jme3/math/Spline;->interpolate(FILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v8, v5, Lcom/jme3/math/Vector3f;->x:F

    aput v8, v4, v7

    add-int/lit8 v8, v7, 0x1

    iget v9, v5, Lcom/jme3/math/Vector3f;->y:F

    aput v9, v4, v8

    add-int/lit8 v8, v7, 0x2

    iget v9, v5, Lcom/jme3/math/Vector3f;->z:F

    aput v9, v4, v8

    add-float/2addr v0, v1

    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    :cond_1
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [S

    move v1, v6

    :goto_2
    const/4 v2, 0x2

    if-ge v6, p1, :cond_2

    add-int/lit8 v5, v1, 0x1

    int-to-short v7, v6

    aput-short v7, v0, v1

    add-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    int-to-short v2, v6

    aput-short v2, v0, v5

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v3, v4}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, p1, v2, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateCounts()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getLength()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/Curve;->spline:Lcom/jme3/math/Spline;

    invoke-virtual {v0}, Lcom/jme3/math/Spline;->getTotalLength()F

    move-result v0

    return v0
.end method
