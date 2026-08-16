.class public Lcom/jme3/light/SphereProbeArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/light/ProbeArea;


# instance fields
.field private center:Lcom/jme3/math/Vector3f;

.field private radius:F

.field private final uniformMatrix:Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    .line 4
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/SphereProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    .line 8
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/SphereProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    .line 9
    iget-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 10
    iput p2, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    .line 11
    invoke-direct {p0}, Lcom/jme3/light/SphereProbeArea;->updateMatrix()V

    return-void
.end method

.method private updateMatrix()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/light/SphereProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m03:F

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    iput v2, v0, Lcom/jme3/math/Matrix4f;->m13:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m23:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/light/SphereProbeArea;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/light/SphereProbeArea;

    iget-object v1, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-direct {v0, v1, v2}, Lcom/jme3/light/SphereProbeArea;-><init>(Lcom/jme3/math/Vector3f;F)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/SphereProbeArea;->clone()Lcom/jme3/light/SphereProbeArea;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    return v0
.end method

.method public getUniformMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SphereProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget-object p2, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    iget v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-static {p1, p2, v0}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget-object p2, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    iget v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-static {p1, p2, v0}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/renderer/Camera;Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget-object p2, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    iget v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-static {p1, p2, v0}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/math/Vector3f;F)Z

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

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "center"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    const-string v0, "radius"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-direct {p0}, Lcom/jme3/light/SphereProbeArea;->updateMatrix()V

    return-void
.end method

.method public setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/light/SphereProbeArea;->updateMatrix()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-direct {p0}, Lcom/jme3/light/SphereProbeArea;->updateMatrix()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SphereProbeArea{center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/SphereProbeArea;->center:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v2, "center"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/light/SphereProbeArea;->radius:F

    const-string v1, "radius"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
