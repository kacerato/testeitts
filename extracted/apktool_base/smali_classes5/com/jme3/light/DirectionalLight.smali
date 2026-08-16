.class public Lcom/jme3/light/DirectionalLight;
.super Lcom/jme3/light/Light;
.source "SourceFile"


# instance fields
.field protected direction:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {p0, p1}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    .line 10
    invoke-direct {p0, p2}, Lcom/jme3/light/Light;-><init>(Lcom/jme3/math/ColorRGBA;)V

    .line 11
    new-instance p2, Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p2, v0, v1, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p2, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/light/DirectionalLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/jme3/light/DirectionalLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V

    .line 14
    iput-boolean p3, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/light/DirectionalLight;-><init>(Lcom/jme3/math/Vector3f;)V

    .line 9
    iput-boolean p2, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/light/DirectionalLight;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/light/DirectionalLight;
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/jme3/light/Light;->clone()Lcom/jme3/light/Light;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/DirectionalLight;

    .line 4
    iget-object v1, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/light/Light;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/DirectionalLight;->clone()Lcom/jme3/light/DirectionalLight;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/jme3/light/DirectionalLight;->clone()Lcom/jme3/light/DirectionalLight;

    move-result-object v0

    return-object v0
.end method

.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    return-void
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/jme3/light/Light$Type;->Directional:Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
    .locals 0

    const/4 p1, 0x1

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

    const-string v0, "direction"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->isUnitVector()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    :cond_0
    return-void
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

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lcom/jme3/light/DirectionalLight;->direction:Lcom/jme3/math/Vector3f;

    const-string v1, "direction"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
