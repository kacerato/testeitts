.class public Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;
.super Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _arcLengths:Lcom/ardor3d/spline/ArcLengthTable;

.field private _arcLengthsReverse:Lcom/ardor3d/spline/ArcLengthTable;

.field private _curve:Lcom/ardor3d/spline/Curve;

.field private _distance:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    return-void
.end method


# virtual methods
.method public decrementIndex()I
    .locals 4

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    iget-object v2, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengthsReverse:Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/spline/ArcLengthTable;->getLength(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    invoke-super {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->decrementIndex()I

    move-result v0

    return v0
.end method

.method public generateArcLengths(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;->CYCLE:Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->generateArcLengths(IZ)V

    return-void
.end method

.method public generateArcLengths(IZ)V
    .locals 2

    .line 2
    new-instance v0, Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->getCurve()Lcom/ardor3d/spline/Curve;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ardor3d/spline/ArcLengthTable;-><init>(Lcom/ardor3d/spline/Curve;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengths:Lcom/ardor3d/spline/ArcLengthTable;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/ardor3d/spline/ArcLengthTable;->generate(IZ)V

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->getCurve()Lcom/ardor3d/spline/Curve;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/ardor3d/spline/ArcLengthTable;-><init>(Lcom/ardor3d/spline/Curve;)V

    iput-object p2, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengthsReverse:Lcom/ardor3d/spline/ArcLengthTable;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p2, p1, v0}, Lcom/ardor3d/spline/ArcLengthTable;->generate(IZ)V

    :cond_0
    return-void
.end method

.method public getControlPointStart()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    sget-object v1, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType:[I

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isCycleForward()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    :goto_0
    return-object v0
.end method

.method public getCotnrolPointEnd()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v0

    sget-object v1, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController$1;->$SwitchMap$com$ardor3d$scenegraph$controller$ComplexSpatialController$RepeatType:[I

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/ComplexSpatialController;->getRepeatType()Lcom/ardor3d/scenegraph/controller/ComplexSpatialController$RepeatType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    add-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isCycleForward()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    add-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControls()Ljava/util/List;

    move-result-object v1

    add-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/type/ReadOnlyVector3;

    :goto_0
    return-object v0
.end method

.method public getCurve()Lcom/ardor3d/spline/Curve;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_curve:Lcom/ardor3d/spline/Curve;

    return-object v0
.end method

.method public getMaximumIndex()I
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMaximumIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getMinimumIndex()I
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getMinimumIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public incrementDelta(D)D
    .locals 2

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->isConstantSpeed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->isCycleForward()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengths:Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result p2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    invoke-virtual {p1, p2, v0, v1}, Lcom/ardor3d/spline/ArcLengthTable;->getDelta(ID)D

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengthsReverse:Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result p2

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    invoke-virtual {p1, p2, v0, v1}, Lcom/ardor3d/spline/ArcLengthTable;->getDelta(ID)D

    move-result-wide p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setDelta(D)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->incrementDelta(D)D

    move-result-wide p1

    :goto_1
    return-wide p1
.end method

.method public incrementIndex()I
    .locals 4

    iget-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    iget-object v2, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengths:Lcom/ardor3d/spline/ArcLengthTable;

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ardor3d/spline/ArcLengthTable;->getLength(I)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    invoke-super {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->incrementIndex()I

    move-result v0

    return v0
.end method

.method public interpolateVectors(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 8

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->getControlPointStart()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->getCotnrolPointEnd()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->getCurve()Lcom/ardor3d/spline/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/spline/Curve;->getSpline()Lcom/ardor3d/spline/Spline;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/ardor3d/spline/Spline;->interpolate(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->reset()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_distance:D

    return-void
.end method

.method public setConstantSpeed(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->setConstantSpeed(Z)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->isConstantSpeed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_arcLengths:Lcom/ardor3d/spline/ArcLengthTable;

    if-nez p1, :cond_0

    sget-object p1, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->LOGGER:Ljava/util/logging/Logger;

    const-string v0, "Constant speed was set to true, you will need to call generateArcLengths() to avoid errors during update."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCurve(Lcom/ardor3d/spline/Curve;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->_curve:Lcom/ardor3d/spline/Curve;

    invoke-virtual {p1}, Lcom/ardor3d/spline/Curve;->getControlPoints()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->setControls(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;->isConstantSpeed()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->LOGGER:Ljava/util/logging/Logger;

    const-string v0, "Constant speed is set to true, you will need to call generateArcLengths() to avoid errors during update."

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "curve can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
