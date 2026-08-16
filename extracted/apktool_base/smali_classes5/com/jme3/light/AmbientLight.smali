.class public Lcom/jme3/light/AmbientLight;
.super Lcom/jme3/light/Light;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/ColorRGBA;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/light/Light;-><init>(Lcom/jme3/math/ColorRGBA;)V

    return-void
.end method


# virtual methods
.method public computeLastDistance(Lcom/jme3/scene/Spatial;)V
    .locals 0

    const/high16 p1, -0x40000000    # -2.0f

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    return-void
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/jme3/light/Light$Type;->Ambient:Lcom/jme3/light/Light$Type;

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
