.class public Lcom/jme3/light/PointLight;
.super Lcom/jme3/light/Light;
.source "SourceFile"


# instance fields
.field protected invRadius:F

.field protected position:Lcom/jme3/math/Vector3f;

.field protected radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jme3/light/PointLight;->radius:F

    .line 4
    iput v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 8
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/jme3/light/PointLight;->radius:F

    .line 10
    iput v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    .line 11
    invoke-virtual {p0, p1}, Lcom/jme3/light/PointLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/jme3/light/PointLight;-><init>(Lcom/jme3/math/Vector3f;)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/jme3/light/PointLight;->setRadius(F)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;FZ)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/jme3/light/PointLight;-><init>(Lcom/jme3/math/Vector3f;F)V

    .line 28
    iput-boolean p3, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V
    .locals 0

    .line 14
    invoke-direct {p0, p2}, Lcom/jme3/light/Light;-><init>(Lcom/jme3/math/ColorRGBA;)V

    .line 15
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p2, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    const/4 p2, 0x0

    .line 16
    iput p2, p0, Lcom/jme3/light/PointLight;->radius:F

    .line 17
    iput p2, p0, Lcom/jme3/light/PointLight;->invRadius:F

    .line 18
    invoke-virtual {p0, p1}, Lcom/jme3/light/PointLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;F)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/jme3/light/PointLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V

    .line 22
    invoke-virtual {p0, p3}, Lcom/jme3/light/PointLight;->setRadius(F)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;FZ)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/light/PointLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;F)V

    .line 24
    iput-boolean p4, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/jme3/light/PointLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V

    .line 20
    iput-boolean p3, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Z)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/jme3/light/PointLight;-><init>(Lcom/jme3/math/Vector3f;)V

    .line 13
    iput-boolean p2, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/light/PointLight;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/light/Light;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/PointLight;->clone()Lcom/jme3/light/PointLight;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/light/PointLight;
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/jme3/light/Light;->clone()Lcom/jme3/light/Light;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/PointLight;

    .line 4
    iget-object v1, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/light/PointLight;->clone()Lcom/jme3/light/PointLight;

    move-result-object v0

    return-object v0
.end method

.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingVolume;->distanceSquaredTo(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    :goto_0
    return-void
.end method

.method public getInvRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    return v0
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/PointLight;->radius:F

    return v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/jme3/light/Light$Type;->Point:Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget p2, p0, Lcom/jme3/light/PointLight;->radius:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, p2}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget p2, p0, Lcom/jme3/light/PointLight;->radius:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, p2}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget p2, p0, Lcom/jme3/light/PointLight;->radius:F

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-static {p1, v0, p2}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/light/Light;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    const-string v0, "radius"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/PointLight;->radius:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/jme3/light/PointLight;->invRadius:F

    :goto_0
    return-void
.end method

.method public final setPosition(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7e7fffff

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/PointLight;->radius:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/jme3/light/PointLight;->invRadius:F

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Light radius cannot be a NaN (Not a Number) value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Light radius cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/Light;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/light/PointLight;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/Light;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/light/Light;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/light/Light;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/PointLight;->position:Lcom/jme3/math/Vector3f;

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/light/PointLight;->radius:F

    const-string v1, "radius"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
