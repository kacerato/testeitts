.class public Lcom/ardor3d/light/SpotLight;
.super Lcom/ardor3d/light/PointLight;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _angle:F

.field private final _direction:Lcom/ardor3d/math/Vector3;

.field private _exponent:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ardor3d/light/PointLight;-><init>()V

    new-instance v0, Lcom/ardor3d/math/Vector3;

    sget-object v1, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v0, v1}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    iput-object v0, p0, Lcom/ardor3d/light/SpotLight;->_direction:Lcom/ardor3d/math/Vector3;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/ardor3d/light/Light;->setAmbient(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/SpotLight;->_angle:F

    return v0
.end method

.method public getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/SpotLight;->_direction:Lcom/ardor3d/math/Vector3;

    return-object v0
.end method

.method public getExponent()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/light/SpotLight;->_exponent:F

    return v0
.end method

.method public getType()Lcom/ardor3d/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/ardor3d/light/Light$Type;->Spot:Lcom/ardor3d/light/Light$Type;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/light/PointLight;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/light/SpotLight;->_direction:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "direction"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    const-string v0, "angle"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/light/SpotLight;->_angle:F

    const-string v0, "exponent"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/ardor3d/light/SpotLight;->_exponent:F

    return-void
.end method

.method public setAngle(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/ardor3d/light/SpotLight;->_angle:F

    return-void

    :cond_1
    new-instance p1, Lcom/ardor3d/util/Ardor3dException;

    const-string v0, "invalid angle.  Angle must be between 0 and 90, or 180"

    invoke-direct {p1, v0}, Lcom/ardor3d/util/Ardor3dException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDirection(Lcom/ardor3d/math/type/ReadOnlyVector3;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/light/SpotLight;->_direction:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    return-void
.end method

.method public setExponent(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/light/SpotLight;->_exponent:F

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/light/PointLight;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/light/SpotLight;->_direction:Lcom/ardor3d/math/Vector3;

    new-instance v1, Lcom/ardor3d/math/Vector3;

    sget-object v2, Lcom/ardor3d/math/Vector3;->UNIT_Z:Lcom/ardor3d/math/type/ReadOnlyVector3;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/Vector3;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    const-string v2, "direction"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget v0, p0, Lcom/ardor3d/light/SpotLight;->_angle:F

    const-string v1, "angle"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/light/SpotLight;->_exponent:F

    const-string v1, "exponent"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
