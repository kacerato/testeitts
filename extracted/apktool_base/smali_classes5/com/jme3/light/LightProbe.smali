.class public Lcom/jme3/light/LightProbe;
.super Lcom/jme3/light/Light;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/light/LightProbe$AreaType;
    }
.end annotation


# static fields
.field public static final FALLBACK_MATRIX:Lcom/jme3/math/Matrix4f;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private area:Lcom/jme3/light/ProbeArea;

.field private nbMipMaps:I

.field private position:Lcom/jme3/math/Vector3f;

.field private prefilteredEnvMap:Lcom/jme3/texture/TextureCubeMap;

.field private ready:Z

.field private shCoefficients:[Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-class v0, Lcom/jme3/light/LightProbe;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/light/LightProbe;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix4f;

    move-object v1, v0

    const/16 v16, 0x0

    const/high16 v17, -0x40800000    # -1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/jme3/math/Matrix4f;-><init>(FFFFFFFFFFFFFFFF)V

    sput-object v0, Lcom/jme3/light/LightProbe;->FALLBACK_MATRIX:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    new-instance v0, Lcom/jme3/light/SphereProbeArea;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/jme3/light/SphereProbeArea;-><init>(Lcom/jme3/math/Vector3f;F)V

    iput-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/light/LightProbe;->ready:Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingVolume;->distanceSquaredTo(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    :goto_0
    return-void
.end method

.method public getArea()Lcom/jme3/light/ProbeArea;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    return-object v0
.end method

.method public getAreaType()Lcom/jme3/light/LightProbe$AreaType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    instance-of v0, v0, Lcom/jme3/light/SphereProbeArea;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jme3/light/LightProbe$AreaType;->Spherical:Lcom/jme3/light/LightProbe$AreaType;

    return-object v0

    :cond_0
    sget-object v0, Lcom/jme3/light/LightProbe$AreaType;->OrientedBox:Lcom/jme3/light/LightProbe$AreaType;

    return-object v0
.end method

.method public getBounds()Lcom/jme3/bounding/BoundingVolume;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    iget-object v1, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v1}, Lcom/jme3/light/ProbeArea;->getRadius()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    check-cast v2, Lcom/jme3/light/SphereProbeArea;

    invoke-virtual {v2}, Lcom/jme3/light/SphereProbeArea;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    return-object v0
.end method

.method public getNbMipMaps()I
    .locals 1

    iget v0, p0, Lcom/jme3/light/LightProbe;->nbMipMaps:I

    return v0
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getPrefilteredEnvMap()Lcom/jme3/texture/TextureCubeMap;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->prefilteredEnvMap:Lcom/jme3/texture/TextureCubeMap;

    return-object v0
.end method

.method public getShCoeffs()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->shCoefficients:[Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/jme3/light/Light$Type;->Probe:Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public getUniformMatrix()Lcom/jme3/math/Matrix4f;
    .locals 4

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v0}, Lcom/jme3/light/ProbeArea;->getUniformMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/light/LightProbe;->nbMipMaps:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v2}, Lcom/jme3/light/ProbeArea;->getRadius()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/jme3/math/Matrix4f;->m33:F

    return-object v0
.end method

.method public intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v0, p1, p2}, Lcom/jme3/light/ProbeArea;->intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z

    move-result p1

    return p1
.end method

.method public intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v0, p1, p2}, Lcom/jme3/light/ProbeArea;->intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z

    move-result p1

    return p1
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v0, p1, p2}, Lcom/jme3/light/ProbeArea;->intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/light/LightProbe;->ready:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/light/Light;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "prefilteredEnvMap"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/TextureCubeMap;

    iput-object v0, p0, Lcom/jme3/light/LightProbe;->prefilteredEnvMap:Lcom/jme3/texture/TextureCubeMap;

    const-string v0, "position"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    const-string v0, "area"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/ProbeArea;

    iput-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v3, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v3}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    const-string v2, "bounds"

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingSphere;

    new-instance v2, Lcom/jme3/light/SphereProbeArea;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/jme3/light/SphereProbeArea;-><init>(Lcom/jme3/math/Vector3f;F)V

    iput-object v2, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    :cond_0
    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    iget-object v2, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v2}, Lcom/jme3/light/ProbeArea;->setCenter(Lcom/jme3/math/Vector3f;)V

    const-string v0, "nbMipMaps"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/light/LightProbe;->nbMipMaps:I

    const-string v0, "ready"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/light/LightProbe;->ready:Z

    const-string v0, "shCoeffs"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    if-nez p1, :cond_1

    iput-boolean v2, p0, Lcom/jme3/light/LightProbe;->ready:Z

    sget-object p1, Lcom/jme3/light/LightProbe;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "LightProbe is missing parameters, it should be recomputed. Please use lightProbeFactory.updateProbe()"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    array-length v0, p1

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/light/LightProbe;->shCoefficients:[Lcom/jme3/math/Vector3f;

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->shCoefficients:[Lcom/jme3/math/Vector3f;

    aget-object v1, p1, v2

    check-cast v1, Lcom/jme3/math/Vector3f;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setAreaType(Lcom/jme3/light/LightProbe$AreaType;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/light/OrientedBoxProbeArea;

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    invoke-direct {p1, v0}, Lcom/jme3/light/OrientedBoxProbeArea;-><init>(Lcom/jme3/math/Transform;)V

    iput-object p1, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/jme3/light/SphereProbeArea;

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Lcom/jme3/light/SphereProbeArea;-><init>(Lcom/jme3/math/Vector3f;F)V

    iput-object p1, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    :goto_0
    iget-object p1, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0}, Lcom/jme3/light/ProbeArea;->setCenter(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setNbMipMaps(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/light/LightProbe;->nbMipMaps:I

    return-void
.end method

.method public setPosition(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    invoke-interface {v0, p1}, Lcom/jme3/light/ProbeArea;->setCenter(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPrefilteredMap(Lcom/jme3/texture/TextureCubeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/light/LightProbe;->prefilteredEnvMap:Lcom/jme3/texture/TextureCubeMap;

    return-void
.end method

.method public setReady(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/light/LightProbe;->ready:Z

    return-void
.end method

.method public setShCoeffs([Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/light/LightProbe;->shCoefficients:[Lcom/jme3/math/Vector3f;

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

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/light/Light;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->shCoefficients:[Lcom/jme3/math/Vector3f;

    const-string v1, "shCoeffs"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->prefilteredEnvMap:Lcom/jme3/texture/TextureCubeMap;

    const-string v1, "prefilteredEnvMap"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->position:Lcom/jme3/math/Vector3f;

    const-string v1, "position"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/light/LightProbe;->area:Lcom/jme3/light/ProbeArea;

    new-instance v1, Lcom/jme3/light/SphereProbeArea;

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lcom/jme3/light/SphereProbeArea;-><init>(Lcom/jme3/math/Vector3f;F)V

    const-string v2, "area"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/light/LightProbe;->ready:Z

    const-string v1, "ready"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/light/LightProbe;->nbMipMaps:I

    const-string v1, "nbMipMaps"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
