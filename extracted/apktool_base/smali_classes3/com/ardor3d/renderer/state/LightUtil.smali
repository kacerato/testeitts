.class public abstract Lcom/ardor3d/renderer/state/LightUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/LightUtil$LightComparator;
    }
.end annotation


# static fields
.field private static lightComparator:Lcom/ardor3d/renderer/state/LightUtil$LightComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;-><init>(Lcom/ardor3d/renderer/state/LightUtil$1;)V

    sput-object v0, Lcom/ardor3d/renderer/state/LightUtil;->lightComparator:Lcom/ardor3d/renderer/state/LightUtil$LightComparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorValue(Lcom/ardor3d/light/Light;)D
    .locals 4

    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getAmbient()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v0

    invoke-static {v0}, Lcom/ardor3d/renderer/state/LightUtil;->strength(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getDiffuse()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object p0

    invoke-static {p0}, Lcom/ardor3d/renderer/state/LightUtil;->strength(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static getValueFor(Lcom/ardor3d/light/Light;Lcom/ardor3d/bounding/BoundingVolume;)D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getType()Lcom/ardor3d/light/Light$Type;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/light/Light$Type;->Directional:Lcom/ardor3d/light/Light$Type;

    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/ardor3d/renderer/state/LightUtil;->getColorValue(Lcom/ardor3d/light/Light;)D

    move-result-wide p0

    return-wide p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getType()Lcom/ardor3d/light/Light$Type;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/light/Light$Type;->Point:Lcom/ardor3d/light/Light$Type;

    if-ne v0, v1, :cond_2

    .line 5
    check-cast p0, Lcom/ardor3d/light/PointLight;

    invoke-static {p0, p1}, Lcom/ardor3d/renderer/state/LightUtil;->getValueFor(Lcom/ardor3d/light/PointLight;Lcom/ardor3d/bounding/BoundingVolume;)D

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getType()Lcom/ardor3d/light/Light$Type;

    move-result-object v0

    sget-object v1, Lcom/ardor3d/light/Light$Type;->Spot:Lcom/ardor3d/light/Light$Type;

    if-ne v0, v1, :cond_3

    .line 7
    check-cast p0, Lcom/ardor3d/light/SpotLight;

    invoke-static {p0, p1}, Lcom/ardor3d/renderer/state/LightUtil;->getValueFor(Lcom/ardor3d/light/SpotLight;Lcom/ardor3d/bounding/BoundingVolume;)D

    move-result-wide p0

    return-wide p0

    :cond_3
    const-wide p0, 0x3fd3333333333333L    # 0.3

    return-wide p0
.end method

.method public static getValueFor(Lcom/ardor3d/light/PointLight;Lcom/ardor3d/bounding/BoundingVolume;)D
    .locals 8

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->isAttenuate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/ardor3d/light/PointLight;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/ardor3d/bounding/BoundingVolume;->distanceTo(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    .line 11
    invoke-static {p0}, Lcom/ardor3d/renderer/state/LightUtil;->getColorValue(Lcom/ardor3d/light/Light;)D

    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getConstant()F

    move-result p1

    float-to-double v4, p1

    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getLinear()F

    move-result p1

    float-to-double v6, p1

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/ardor3d/light/Light;->getQuadratic()F

    move-result p0

    float-to-double p0, p0

    mul-double/2addr p0, v0

    mul-double/2addr p0, v0

    add-double/2addr v4, p0

    div-double/2addr v2, v4

    return-wide v2

    .line 13
    :cond_1
    invoke-static {p0}, Lcom/ardor3d/renderer/state/LightUtil;->getColorValue(Lcom/ardor3d/light/Light;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getValueFor(Lcom/ardor3d/light/SpotLight;Lcom/ardor3d/bounding/BoundingVolume;)D
    .locals 7

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/light/SpotLight;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/ardor3d/light/PointLight;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v3

    .line 16
    new-instance v4, Lcom/ardor3d/math/Plane;

    invoke-interface {v2, v3}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v5

    invoke-direct {v4, v2, v5, v6}, Lcom/ardor3d/math/Plane;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector3;D)V

    .line 17
    invoke-virtual {p1, v4}, Lcom/ardor3d/bounding/BoundingVolume;->whichSide(Lcom/ardor3d/math/type/ReadOnlyPlane;)Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/math/type/ReadOnlyPlane$Side;->Inside:Lcom/ardor3d/math/type/ReadOnlyPlane$Side;

    if-eq v2, v3, :cond_1

    .line 18
    invoke-static {p0, p1}, Lcom/ardor3d/renderer/state/LightUtil;->getValueFor(Lcom/ardor3d/light/PointLight;Lcom/ardor3d/bounding/BoundingVolume;)D

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method public static sort(Lcom/ardor3d/scenegraph/Mesh;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ardor3d/scenegraph/Mesh;",
            "Ljava/util/List<",
            "Lcom/ardor3d/light/Light;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ardor3d/renderer/state/LightUtil;->lightComparator:Lcom/ardor3d/renderer/state/LightUtil$LightComparator;

    invoke-virtual {v0, p0}, Lcom/ardor3d/renderer/state/LightUtil$LightComparator;->setSpatial(Lcom/ardor3d/scenegraph/Spatial;)V

    sget-object p0, Lcom/ardor3d/renderer/state/LightUtil;->lightComparator:Lcom/ardor3d/renderer/state/LightUtil$LightComparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static strength(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)D
    .locals 3

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v0

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getRed()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getGreen()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result v1

    invoke-interface {p0}, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;->getBlue()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method
