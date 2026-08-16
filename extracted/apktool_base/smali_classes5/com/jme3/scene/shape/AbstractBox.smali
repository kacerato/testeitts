.class public abstract Lcom/jme3/scene/shape/AbstractBox;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# instance fields
.field public final center:Lcom/jme3/math/Vector3f;

.field public xExtent:F

.field public yExtent:F

.field public zExtent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public final computeVertices()[Lcom/jme3/math/Vector3f;
    .locals 14

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    iget v3, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v11

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v3

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v12

    iget-object v1, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v13

    filled-new-array/range {v6 .. v13}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public abstract doUpdateGeometryIndices()V
.end method

.method public abstract doUpdateGeometryNormals()V
.end method

.method public abstract doUpdateGeometryTextures()V
.end method

.method public abstract doUpdateGeometryVertices()V
.end method

.method public final getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public final getXExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    return v0
.end method

.method public final getYExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    return v0
.end method

.method public final getZExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "xExtent"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    const-string v0, "yExtent"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    const-string v0, "zExtent"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "center"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final updateGeometry()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->doUpdateGeometryVertices()V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->doUpdateGeometryNormals()V

    .line 3
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->doUpdateGeometryTextures()V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->doUpdateGeometryIndices()V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method public final updateGeometry(Lcom/jme3/math/Vector3f;FFF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 7
    :cond_0
    iput p2, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    .line 8
    iput p3, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    .line 9
    iput p4, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    .line 10
    invoke-virtual {p0}, Lcom/jme3/scene/shape/AbstractBox;->updateGeometry()V

    return-void
.end method

.method public final updateGeometry(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    .line 12
    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p1, v1

    .line 13
    iget v1, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    .line 14
    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p2, v2

    .line 15
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/jme3/scene/shape/AbstractBox;->updateGeometry(Lcom/jme3/math/Vector3f;FFF)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Mesh;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/scene/shape/AbstractBox;->xExtent:F

    const-string v1, "xExtent"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/AbstractBox;->yExtent:F

    const-string v1, "yExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/scene/shape/AbstractBox;->zExtent:F

    const-string v1, "zExtent"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/scene/shape/AbstractBox;->center:Lcom/jme3/math/Vector3f;

    const-string v1, "center"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
