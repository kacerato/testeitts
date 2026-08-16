.class public Lcom/ardor3d/spline/Curve;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _controlPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ardor3d/math/type/ReadOnlyVector3;",
            ">;"
        }
    .end annotation
.end field

.field private _spline:Lcom/ardor3d/spline/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/ardor3d/spline/Spline;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/type/ReadOnlyVector3;",
            ">;",
            "Lcom/ardor3d/spline/Spline;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ardor3d/spline/Curve;->setControlPoints(Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/ardor3d/spline/Curve;->setSpline(Lcom/ardor3d/spline/Spline;)V

    return-void
.end method

.method private toVector3(III)[Lcom/ardor3d/math/Vector3;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-lez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_4

    if-ge v0, v1, :cond_3

    if-le v2, v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/spline/Curve;->getControlPoints()Ljava/util/List;

    move-result-object v3

    sub-int/2addr v1, v0

    mul-int/2addr v1, v2

    new-array v4, v1, [Lcom/ardor3d/math/Vector3;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    rem-int v6, v5, v2

    if-nez v6, :cond_0

    if-lt v5, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    int-to-double v6, v6

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    div-double v15, v6, v8

    add-int/lit8 v6, v0, -0x1

    add-int/lit8 v7, v0, 0x1

    add-int/lit8 v8, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/spline/Curve;->getSpline()Lcom/ardor3d/spline/Spline;

    move-result-object v10

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface/range {v10 .. v16}, Lcom/ardor3d/spline/Spline;->interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;D)Lcom/ardor3d/math/Vector3;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "steps must be >= 1! steps="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start must be < end! start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", end="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end must be < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "! end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start must be > 0! start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getApproximateLength(I)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ardor3d/spline/Curve;->getApproximateLength(III)D

    move-result-wide v0

    return-wide v0
.end method

.method public getApproximateLength(III)D
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ardor3d/spline/Curve;->toVector3(III)[Lcom/ardor3d/math/Vector3;

    move-result-object p1

    const-wide/16 p2, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 4
    aget-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/ardor3d/math/Vector3;->distance(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v1

    add-double/2addr p2, v1

    goto :goto_0

    :cond_0
    return-wide p2
.end method

.method public getControlPointCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getControlPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/type/ReadOnlyVector3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/spline/Curve;->_controlPoints:Ljava/util/List;

    return-object v0
.end method

.method public getSpline()Lcom/ardor3d/spline/Spline;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/spline/Curve;->_spline:Lcom/ardor3d/spline/Spline;

    return-object v0
.end method

.method public interpolate(IID)Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 6

    .line 1
    new-instance v5, Lcom/ardor3d/math/Vector3;

    invoke-direct {v5}, Lcom/ardor3d/math/Vector3;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/spline/Curve;->interpolate(IIDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    return-object p1
.end method

.method public interpolate(IIDLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 9

    if-lez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p2, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPoints()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getSpline()Lcom/ardor3d/spline/Spline;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/ardor3d/math/type/ReadOnlyVector3;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/ardor3d/spline/Spline;->interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "end must be < "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "! end="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "start must be > 0! start="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setControlPoints(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ardor3d/math/type/ReadOnlyVector3;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/spline/Curve;->_controlPoints:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "controlPoints must contain at least 4 elements for this class to work!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "controlPoints can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpline(Lcom/ardor3d/spline/Spline;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/spline/Curve;->_spline:Lcom/ardor3d/spline/Spline;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spline can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRenderableLine(I)Lcom/ardor3d/scenegraph/Line;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ardor3d/spline/Curve;->toRenderableLine(III)Lcom/ardor3d/scenegraph/Line;

    move-result-object p1

    return-object p1
.end method

.method public toRenderableLine(III)Lcom/ardor3d/scenegraph/Line;
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ardor3d/spline/Curve;->toVector3(III)[Lcom/ardor3d/math/Vector3;

    move-result-object v2

    .line 3
    new-instance p1, Lcom/ardor3d/scenegraph/Line;

    const-string v1, "curve"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/scenegraph/Line;-><init>(Ljava/lang/String;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;[Lcom/ardor3d/math/type/ReadOnlyVector2;)V

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p2

    sget-object p3, Lcom/ardor3d/renderer/IndexMode;->LineStrip:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p2, p3}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    return-object p1
.end method

.method public toRenderablePoint(I)Lcom/ardor3d/scenegraph/Point;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/spline/Curve;->getControlPointCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/ardor3d/spline/Curve;->toRenderablePoint(III)Lcom/ardor3d/scenegraph/Point;

    move-result-object p1

    return-object p1
.end method

.method public toRenderablePoint(III)Lcom/ardor3d/scenegraph/Point;
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ardor3d/spline/Curve;->toVector3(III)[Lcom/ardor3d/math/Vector3;

    move-result-object v2

    .line 3
    new-instance p1, Lcom/ardor3d/scenegraph/Point;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "point"

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/scenegraph/Point;-><init>(Ljava/lang/String;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyVector3;[Lcom/ardor3d/math/type/ReadOnlyColorRGBA;[Lcom/ardor3d/math/type/ReadOnlyVector2;)V

    return-object p1
.end method
