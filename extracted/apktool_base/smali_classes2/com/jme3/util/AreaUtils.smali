.class public final Lcom/jme3/util/AreaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcScreenArea(Lcom/jme3/bounding/BoundingBox;FF)F
    .locals 3

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v1

    mul-float/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v1

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    mul-float/2addr v0, p2

    mul-float/2addr v0, p2

    mul-float/2addr p1, p1

    const/high16 p0, 0x40800000    # 4.0f

    mul-float/2addr p1, p0

    div-float/2addr v0, p1

    const p0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p0

    return v0
.end method

.method private static calcScreenArea(Lcom/jme3/bounding/BoundingSphere;FF)F
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result p0

    mul-float/2addr p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    mul-float/2addr p0, p0

    const p1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p0, p1

    return p0
.end method

.method public static calcScreenArea(Lcom/jme3/bounding/BoundingVolume;FF)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->Sphere:Lcom/jme3/bounding/BoundingVolume$Type;

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p0, Lcom/jme3/bounding/BoundingSphere;

    invoke-static {p0, p1, p2}, Lcom/jme3/util/AreaUtils;->calcScreenArea(Lcom/jme3/bounding/BoundingSphere;FF)F

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->getType()Lcom/jme3/bounding/BoundingVolume$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/bounding/BoundingVolume$Type;->AABB:Lcom/jme3/bounding/BoundingVolume$Type;

    if-ne v0, v1, :cond_1

    .line 4
    check-cast p0, Lcom/jme3/bounding/BoundingBox;

    invoke-static {p0, p1, p2}, Lcom/jme3/util/AreaUtils;->calcScreenArea(Lcom/jme3/bounding/BoundingBox;FF)F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
