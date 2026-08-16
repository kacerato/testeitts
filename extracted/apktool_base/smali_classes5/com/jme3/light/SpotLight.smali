.class public Lcom/jme3/light/SpotLight;
.super Lcom/jme3/light/Light;
.source "SourceFile"


# instance fields
.field protected direction:Lcom/jme3/math/Vector3f;

.field protected invSpotRange:F

.field protected outerAngleCos:F

.field protected outerAngleCosSqr:F

.field protected outerAngleSin:F

.field protected outerAngleSinRcp:F

.field protected outerAngleSinSqr:F

.field protected packedAngleCos:F

.field protected position:Lcom/jme3/math/Vector3f;

.field protected spotInnerAngle:F

.field protected spotOuterAngle:F

.field protected spotRange:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jme3/light/Light;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    const v0, 0x3dc90fdb

    .line 4
    iput v0, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    const v0, 0x3e060a92

    .line 5
    iput v0, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    iput v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const v0, 0x3c23d70a    # 0.01f

    .line 7
    iput v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 8
    iput v2, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 9
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/jme3/light/SpotLight;->setSpotRange(F)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;)V
    .locals 2

    .line 36
    invoke-direct {p0, p4}, Lcom/jme3/light/Light;-><init>(Lcom/jme3/math/ColorRGBA;)V

    .line 37
    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p4, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    .line 38
    new-instance p4, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v0, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p4, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    const p4, 0x3dc90fdb

    .line 39
    iput p4, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    const p4, 0x3e060a92

    .line 40
    iput p4, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    const/high16 p4, 0x42c80000    # 100.0f

    .line 41
    iput p4, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const p4, 0x3c23d70a    # 0.01f

    .line 42
    iput p4, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 43
    iput v1, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 44
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    .line 45
    invoke-virtual {p0, p1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 47
    invoke-virtual {p0, p3}, Lcom/jme3/light/SpotLight;->setSpotRange(F)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;FF)V
    .locals 2

    .line 50
    invoke-direct {p0, p4}, Lcom/jme3/light/Light;-><init>(Lcom/jme3/math/ColorRGBA;)V

    .line 51
    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p4, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    .line 52
    new-instance p4, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v0, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p4, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    const/high16 p4, 0x42c80000    # 100.0f

    .line 53
    iput p4, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const p4, 0x3c23d70a    # 0.01f

    .line 54
    iput p4, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 55
    iput v1, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 56
    iput p5, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    .line 57
    iput p6, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    .line 58
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 60
    invoke-virtual {p0, p2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    .line 61
    invoke-virtual {p0, p3}, Lcom/jme3/light/SpotLight;->setSpotRange(F)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;FFZ)V
    .locals 0

    .line 62
    invoke-direct/range {p0 .. p6}, Lcom/jme3/light/SpotLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;FF)V

    .line 63
    iput-boolean p7, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/light/SpotLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;)V

    .line 49
    iput-boolean p5, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FZ)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/light/SpotLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V

    .line 22
    iput-boolean p4, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V
    .locals 2

    .line 23
    invoke-direct {p0, p3}, Lcom/jme3/light/Light;-><init>(Lcom/jme3/math/ColorRGBA;)V

    .line 24
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    .line 25
    new-instance p3, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p3, v1, v0, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object p3, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    const p3, 0x3dc90fdb

    .line 26
    iput p3, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    const p3, 0x3e060a92

    .line 27
    iput p3, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    const/high16 p3, 0x42c80000    # 100.0f

    .line 28
    iput p3, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const p3, 0x3c23d70a    # 0.01f

    .line 29
    iput p3, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    .line 30
    iput v1, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    .line 31
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    .line 32
    invoke-virtual {p0, p1}, Lcom/jme3/light/SpotLight;->setPosition(Lcom/jme3/math/Vector3f;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/jme3/light/SpotLight;->setDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/light/SpotLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/ColorRGBA;)V

    .line 35
    iput-boolean p4, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/jme3/light/SpotLight;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 16
    iput-boolean p3, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/jme3/light/SpotLight;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/jme3/light/Light;->global:Z

    return-void
.end method

.method private computeAngleParameters()V
    .locals 4

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->outerAngleCos:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    float-to-int v3, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    if-ne v3, v2, :cond_0

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/jme3/light/SpotLight;->outerAngleCos:F

    :cond_0
    iget v1, p0, Lcom/jme3/light/SpotLight;->outerAngleCos:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/light/SpotLight;->outerAngleSin:F

    iget v1, p0, Lcom/jme3/light/SpotLight;->outerAngleCos:F

    mul-float/2addr v1, v1

    iput v1, p0, Lcom/jme3/light/SpotLight;->outerAngleCosSqr:F

    mul-float v1, v0, v0

    iput v1, p0, Lcom/jme3/light/SpotLight;->outerAngleSinSqr:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/light/SpotLight;->outerAngleSinRcp:F

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packed angle cosine is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/light/Light;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/SpotLight;->clone()Lcom/jme3/light/SpotLight;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/light/SpotLight;
    .locals 2

    .line 3
    invoke-super {p0}, Lcom/jme3/light/Light;->clone()Lcom/jme3/light/Light;

    move-result-object v0

    check-cast v0, Lcom/jme3/light/SpotLight;

    .line 4
    iget-object v1, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object v1, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

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
    invoke-virtual {p0}, Lcom/jme3/light/SpotLight;->clone()Lcom/jme3/light/SpotLight;

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

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingVolume;->distanceSquaredTo(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/Light;->lastDistance:F

    :goto_0
    return-void
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getInvSpotRange()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    return v0
.end method

.method public getPackedAngleCos()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/SpotLight;->packedAngleCos:F

    return v0
.end method

.method public getPosition()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getSpotInnerAngle()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    return v0
.end method

.method public getSpotOuterAngle()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    return v0
.end method

.method public getSpotRange()F
    .locals 1

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    return v0
.end method

.method public getType()Lcom/jme3/light/Light$Type;
    .locals 1

    sget-object v0, Lcom/jme3/light/Light$Type;->Spot:Lcom/jme3/light/Light$Type;

    return-object v0
.end method

.method public intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
    .locals 6

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-static {p1, v2, v0}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/math/Vector3f;F)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v2, p2, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v4

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v5

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result p1

    invoke-virtual {v2, v4, v5, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v2

    iget-object v4, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    iget v5, p0, Lcom/jme3/light/SpotLight;->outerAngleSinRcp:F

    mul-float/2addr v2, v5

    iget-object v5, p2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, v5}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v4, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    iget-object v5, p2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v4, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    iget-object v5, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    cmpl-float v5, v2, v1

    if-lez v5, :cond_3

    mul-float/2addr v2, v2

    iget v5, p0, Lcom/jme3/light/SpotLight;->outerAngleCosSqr:F

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    iget-object p2, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p2

    neg-float p2, p2

    cmpl-float v1, p2, v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    mul-float/2addr p2, p2

    iget v1, p0, Lcom/jme3/light/SpotLight;->outerAngleSinSqr:F

    mul-float/2addr v1, v0

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_2

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    move v3, v2

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v3
.end method

.method public intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
    .locals 8

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v3, p2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget v4, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/4 v3, 0x5

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {p1, v3}, Lcom/jme3/renderer/Camera;->getWorldPlane(I)Lcom/jme3/math/Plane;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_1

    invoke-virtual {v4, v0}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_1

    iget v5, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    iget v6, p0, Lcom/jme3/light/SpotLight;->outerAngleCos:F

    div-float/2addr v5, v6

    iget v6, p0, Lcom/jme3/light/SpotLight;->outerAngleSin:F

    mul-float/2addr v5, v6

    iget-object v6, p2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v4}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v7, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v7}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget-object v7, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
    .locals 6

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-static {p1, v2, v0}, Lcom/jme3/bounding/Intersection;->intersect(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/math/Vector3f;F)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqr(F)F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v2

    iget-object v4, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    iget v5, p0, Lcom/jme3/light/SpotLight;->outerAngleSinRcp:F

    mul-float/2addr v2, v5

    iget-object v5, p2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, v5}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v4, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    iget-object v5, p2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v5, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, v5}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    iget-object v5, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    cmpl-float v5, v2, v1

    if-lez v5, :cond_3

    mul-float/2addr v2, v2

    iget v5, p0, Lcom/jme3/light/SpotLight;->outerAngleCosSqr:F

    mul-float/2addr v4, v5

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    iget-object p2, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p2

    iget-object v2, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    neg-float p1, p1

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    mul-float/2addr p1, p1

    iget v1, p0, Lcom/jme3/light/SpotLight;->outerAngleSinSqr:F

    mul-float/2addr v1, p2

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    cmpg-float p1, p2, v0

    if-gtz p1, :cond_1

    move v3, v2

    :cond_1
    return v3

    :cond_2
    return v2

    :cond_3
    return v3
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

    const-string v0, "spotInnerAngle"

    const v1, 0x3dc90fdb

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    const-string v0, "spotOuterAngle"

    const v1, 0x3e060a92

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "direction"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "position"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    const-string v0, "spotRange"

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    :goto_0
    return-void
.end method

.method public final setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setPosition(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setSpotInnerAngle(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3fc90fdb

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spot angle must be between 0 and pi/2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpotOuterAngle(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3fc90fdb

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    invoke-direct {p0}, Lcom/jme3/light/SpotLight;->computeAngleParameters()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spot angle must be between 0 and pi/2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpotRange(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    iput p1, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/jme3/light/SpotLight;->invSpotRange:F

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SpotLight range cannot be negative"

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

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", innerAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", outerAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

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

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->direction:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v2, "direction"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/light/SpotLight;->position:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v2, "position"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotInnerAngle:F

    const-string v1, "spotInnerAngle"

    const v2, 0x3dc90fdb

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotOuterAngle:F

    const-string v1, "spotOuterAngle"

    const v2, 0x3e060a92

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/light/SpotLight;->spotRange:F

    const-string v1, "spotRange"

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
