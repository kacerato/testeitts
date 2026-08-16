.class public Lcom/jme3/scene/control/LodControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/util/clone/JmeCloneable;


# instance fields
.field private distTolerance:F

.field private lastDistance:F

.field private lastLevel:I

.field private numLevels:I

.field private numTris:[I

.field private trisPerPixel:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->trisPerPixel:F

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->distTolerance:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->lastDistance:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->lastLevel:I

    return-void
.end method


# virtual methods
.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v1

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    const v2, 0x40490fdb    # (float)Math.PI

    div-float/2addr v2, v1

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/bounding/BoundingVolume;->distanceTo(Lcom/jme3/math/Vector3f;)F

    move-result p2

    div-float/2addr p2, v2

    iget v1, p0, Lcom/jme3/scene/control/LodControl;->lastDistance:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/jme3/scene/control/LodControl;->distTolerance:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget p1, p0, Lcom/jme3/scene/control/LodControl;->lastLevel:I

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/jme3/scene/control/LodControl;->lastDistance:F

    cmpl-float v2, v1, p2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/jme3/scene/control/LodControl;->lastLevel:I

    if-nez v2, :cond_1

    move p1, v2

    goto :goto_2

    :cond_1
    cmpg-float v1, v1, p2

    if-gez v1, :cond_2

    iget v1, p0, Lcom/jme3/scene/control/LodControl;->lastLevel:I

    iget v2, p0, Lcom/jme3/scene/control/LodControl;->numLevels:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    iput p2, p0, Lcom/jme3/scene/control/LodControl;->lastDistance:F

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2, v0}, Lcom/jme3/scene/control/AreaUtils;->calcScreenArea(Lcom/jme3/bounding/BoundingVolume;FF)F

    move-result p1

    iget p2, p0, Lcom/jme3/scene/control/LodControl;->trisPerPixel:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/scene/control/LodControl;->numLevels:I

    add-int/lit8 v0, p2, -0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_4

    iget-object v1, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    aget v1, v1, p2

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    goto :goto_0

    :cond_4
    :goto_1
    iput v0, p0, Lcom/jme3/scene/control/LodControl;->lastLevel:I

    move p1, v0

    :goto_2
    iget-object p2, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    invoke-virtual {p2, p1}, Lcom/jme3/scene/Spatial;->setLodLevel(I)V

    return-void
.end method

.method public controlUpdate(F)V
    .locals 0

    return-void
.end method

.method public getDistTolerance()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/control/LodControl;->distTolerance:F

    return v0
.end method

.method public getTrisPerPixel()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/control/LodControl;->trisPerPixel:F

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Lcom/jme3/scene/control/AbstractControl;->jmeClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/control/LodControl;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jme3/scene/control/LodControl;->lastDistance:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/jme3/scene/control/LodControl;->lastLevel:I

    iget-object v1, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "trisPerPixel"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->trisPerPixel:F

    const-string v0, "distTolerance"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->distTolerance:F

    const-string v0, "numLevels"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->numLevels:I

    const-string v0, "numTris"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    return-void
.end method

.method public setDistTolerance(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/control/LodControl;->distTolerance:F

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 3

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/jme3/scene/Geometry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LodControl can only be attached to Geometry!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    if-eqz p1, :cond_2

    check-cast p1, Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getNumLodLevels()I

    move-result v0

    iput v0, p0, Lcom/jme3/scene/control/LodControl;->numLevels:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getTriangleCount(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/scene/control/LodControl;->numLevels:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    :cond_3
    return-void
.end method

.method public setTrisPerPixel(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/scene/control/LodControl;->trisPerPixel:F

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/scene/control/LodControl;->trisPerPixel:F

    const-string v1, "trisPerPixel"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/control/LodControl;->distTolerance:F

    const-string v1, "distTolerance"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/control/LodControl;->numLevels:I

    const-string v1, "numLevels"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/scene/control/LodControl;->numTris:[I

    const-string v1, "numTris"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    return-void
.end method
