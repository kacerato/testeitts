.class public Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/controller/SpatialController;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ardor3d/scenegraph/controller/SpatialController<",
        "Lcom/ardor3d/scenegraph/Spatial;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _curveController:Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;

.field private _localRotation:Z

.field private final _previous:Lcom/ardor3d/math/Vector3;

.field private _worldUp:Lcom/ardor3d/math/type/ReadOnlyVector3;


# direct methods
.method public constructor <init>(Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/math/Vector3;->UNIT_Y:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {p0, p1, v0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;-><init>(Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public constructor <init>(Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_localRotation:Z

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_curveController:Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;

    .line 5
    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControlFrom()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, p1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_previous:Lcom/ardor3d/math/Vector3;

    .line 6
    invoke-virtual {p0, p2}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->setWorldUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "curveController can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isLocalRotation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_localRotation:Z

    return v0
.end method

.method public setLocalRotation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_localRotation:Z

    return-void
.end method

.method public setWorldUp(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_worldUp:Lcom/ardor3d/math/type/ReadOnlyVector3;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "worldUp can not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 6

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/ardor3d/math/Vector3;->fetchTempInstance()Lcom/ardor3d/math/Vector3;

    move-result-object p1

    invoke-static {}, Lcom/ardor3d/math/Matrix3;->fetchTempInstance()Lcom/ardor3d/math/Matrix3;

    move-result-object p2

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_curveController:Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControlFrom()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/type/ReadOnlyVector3;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_curveController:Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;

    invoke-virtual {v2}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getControlTo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/type/ReadOnlyVector3;

    iget-object v3, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_curveController:Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;

    invoke-virtual {v3}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;->getDelta()D

    move-result-wide v3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveInterpolationController;->interpolateVectors(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_previous:Lcom/ardor3d/math/Vector3;

    iget-object v1, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_worldUp:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-static {v0, p1, v1, p2}, Lcom/ardor3d/math/MathUtils;->matrixLookAt(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/Matrix3;)V

    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->isLocalRotation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p2}, Lcom/ardor3d/scenegraph/Spatial;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Lcom/ardor3d/scenegraph/Spatial;->setWorldRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    :goto_0
    iget-object p3, p0, Lcom/ardor3d/scenegraph/controller/interpolation/CurveLookAtController;->_previous:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p3, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-static {p2}, Lcom/ardor3d/math/Matrix3;->releaseTempInstance(Lcom/ardor3d/math/Matrix3;)V

    invoke-static {p1}, Lcom/ardor3d/math/Vector3;->releaseTempInstance(Lcom/ardor3d/math/Vector3;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "caller can not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
