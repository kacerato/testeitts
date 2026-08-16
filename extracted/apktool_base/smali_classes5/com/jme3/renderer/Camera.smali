.class public Lcom/jme3/renderer/Camera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/renderer/Camera$FrustumIntersect;
    }
.end annotation


# static fields
.field private static final BOTTOM_PLANE:I = 0x2

.field private static final FAR_PLANE:I = 0x4

.field private static final FRUSTUM_PLANES:I = 0x6

.field private static final LEFT_PLANE:I = 0x0

.field private static final MAX_WORLD_PLANES:I = 0x6

.field private static final NEAR_PLANE:I = 0x5

.field private static final RIGHT_PLANE:I = 0x1

.field private static final TOP_PLANE:I = 0x3

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected coeffBottom:[F

.field protected coeffLeft:[F

.field protected coeffRight:[F

.field protected coeffTop:[F

.field protected frustumBottom:F

.field protected frustumFar:F

.field protected frustumLeft:F

.field protected frustumNear:F

.field protected frustumRight:F

.field protected frustumTop:F

.field private guiBounding:Lcom/jme3/bounding/BoundingBox;

.field protected height:I

.field protected location:Lcom/jme3/math/Vector3f;

.field protected name:Ljava/lang/String;

.field private overrideProjection:Z

.field private parallelProjection:Z

.field private planeState:I

.field protected projectionMatrix:Lcom/jme3/math/Matrix4f;

.field protected projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

.field protected rotation:Lcom/jme3/math/Quaternion;

.field protected viewMatrix:Lcom/jme3/math/Matrix4f;

.field protected viewPortBottom:F

.field protected viewPortLeft:F

.field protected viewPortRight:F

.field protected viewPortTop:F

.field protected viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

.field protected viewportChanged:Z

.field protected width:I

.field protected worldPlane:[Lcom/jme3/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/renderer/Camera;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    .line 3
    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    .line 4
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    .line 5
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    .line 6
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 7
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 8
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    const/4 v0, 0x6

    .line 9
    new-array v1, v0, [Lcom/jme3/math/Plane;

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    iget-object v2, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    new-instance v3, Lcom/jme3/math/Plane;

    invoke-direct {v3}, Lcom/jme3/math/Plane;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/jme3/renderer/Camera;-><init>()V

    .line 12
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 13
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 15
    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    const/high16 v1, -0x41000000    # -0.5f

    .line 16
    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    iput v2, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    .line 18
    iput v2, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    .line 19
    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    const/4 v1, 0x2

    .line 20
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    .line 21
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    .line 22
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    .line 23
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    .line 25
    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    .line 26
    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    .line 27
    iput v1, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    .line 28
    iput p1, p0, Lcom/jme3/renderer/Camera;->width:I

    .line 29
    iput p2, p0, Lcom/jme3/renderer/Camera;->height:I

    .line 30
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    .line 31
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    .line 32
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    .line 33
    sget-object v0, Lcom/jme3/renderer/Camera;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Camera created (W: {0}, H: {1})"

    invoke-virtual {v0, v1, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setGuiBounding()V
    .locals 6

    iget v0, p0, Lcom/jme3/renderer/Camera;->width:I

    int-to-float v1, v0

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    mul-float/2addr v1, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/renderer/Camera;->height:I

    int-to-float v3, v2

    iget v4, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    mul-float/2addr v3, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    mul-float/2addr v2, v4

    sub-float/2addr v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    add-float/2addr v1, v0

    add-float/2addr v3, v2

    invoke-virtual {v4, v1, v3, v5}, Lcom/jme3/bounding/BoundingVolume;->setCenter(FFF)V

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/jme3/bounding/BoundingBox;->setXExtent(F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, v2}, Lcom/jme3/bounding/BoundingBox;->setYExtent(F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    return-void
.end method


# virtual methods
.method public clearViewportChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    return-void
.end method

.method public clone()Lcom/jme3/renderer/Camera;
    .locals 4

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/Camera;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/jme3/renderer/Camera;->planeState:I

    const/4 v2, 0x6

    .line 5
    new-array v2, v2, [Lcom/jme3/math/Plane;

    iput-object v2, v0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 7
    iget-object v3, v0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/jme3/math/Plane;->clone()Lcom/jme3/math/Plane;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 8
    new-array v2, v1, [F

    iput-object v2, v0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    .line 9
    new-array v2, v1, [F

    iput-object v2, v0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    .line 10
    new-array v2, v1, [F

    iput-object v2, v0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    .line 11
    new-array v1, v1, [F

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    .line 12
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 13
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v1}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    .line 14
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    .line 17
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 18
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->clone()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    .line 19
    iget-object v1, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    check-cast v1, Lcom/jme3/bounding/BoundingBox;

    iput-object v1, v0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    .line 20
    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->update()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 21
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->clone()Lcom/jme3/renderer/Camera;

    move-result-object v0

    return-object v0
.end method

.method public contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;
    .locals 7

    if-nez p1, :cond_0

    sget-object p1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object p1

    :cond_0
    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Inside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    const/4 v1, 0x6

    move v2, v1

    :goto_0
    if-ltz v2, :cond_6

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCheckPlane()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_1
    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCheckPlane()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    iget v5, p0, Lcom/jme3/renderer/Camera;->planeState:I

    and-int/2addr v5, v4

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v3

    invoke-virtual {p1, v5}, Lcom/jme3/bounding/BoundingVolume;->whichSide(Lcom/jme3/math/Plane;)Lcom/jme3/math/Plane$Side;

    move-result-object v5

    sget-object v6, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Lcom/jme3/bounding/BoundingVolume;->setCheckPlane(I)V

    sget-object p1, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    return-object p1

    :cond_3
    sget-object v3, Lcom/jme3/math/Plane$Side;->Positive:Lcom/jme3/math/Plane$Side;

    if-ne v5, v3, :cond_4

    iget v3, p0, Lcom/jme3/renderer/Camera;->planeState:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/jme3/renderer/Camera;->planeState:I

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/jme3/renderer/Camera$FrustumIntersect;->Intersects:Lcom/jme3/renderer/Camera$FrustumIntersect;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public containsGui(Lcom/jme3/bounding/BoundingVolume;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, p1}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result p1

    return p1
.end method

.method public copyFrom(Lcom/jme3/renderer/Camera;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget v0, p1, Lcom/jme3/renderer/Camera;->frustumNear:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->frustumFar:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->frustumRight:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->frustumTop:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    aput v3, v0, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->coeffRight:[F

    aget v4, v1, v2

    aput v4, v0, v2

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    aget v4, v1, v2

    aput v4, v0, v2

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->coeffTop:[F

    aget v4, v1, v2

    aput v4, v0, v2

    aget v1, v1, v3

    aput v1, v0, v3

    iget v0, p1, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->viewPortRight:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->viewPortTop:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    iget v0, p1, Lcom/jme3/renderer/Camera;->width:I

    iput v0, p0, Lcom/jme3/renderer/Camera;->width:I

    iget v0, p1, Lcom/jme3/renderer/Camera;->height:I

    iput v0, p0, Lcom/jme3/renderer/Camera;->height:I

    iput v2, p0, Lcom/jme3/renderer/Camera;->planeState:I

    iput-boolean v3, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    :goto_0
    const/4 v0, 0x6

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v0, v0, v2

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Plane;->setNormal(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v0, v0, v2

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Plane;->setConstant(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    iget-boolean v0, p1, Lcom/jme3/renderer/Camera;->overrideProjection:Z

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->overrideProjection:Z

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->setXExtent(F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->setYExtent(F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->setCenter(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    iget-object v1, p1, Lcom/jme3/renderer/Camera;->guiBounding:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingVolume;->getCheckPlane()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingVolume;->setCheckPlane(I)V

    iget-object p1, p1, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    return-void
.end method

.method public distanceToNearPlane(Lcom/jme3/math/Vector3f;)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    return p1
.end method

.method public getAspect()F
    .locals 4

    iget v0, p0, Lcom/jme3/renderer/Camera;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/renderer/Camera;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    iget v3, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v0

    return v1
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getFov()F
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    div-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->atan(F)F

    move-result v0

    const v1, 0x3c0efa35

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFrustumBottom()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    return v0
.end method

.method public getFrustumFar()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    return v0
.end method

.method public getFrustumLeft()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    return v0
.end method

.method public getFrustumNear()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    return v0
.end method

.method public getFrustumRight()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    return v0
.end method

.method public getFrustumTop()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->height:I

    return v0
.end method

.method public getLeft()Lcom/jme3/math/Vector3f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaneState()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->planeState:I

    return v0
.end method

.method public getProjectionMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->overrideProjection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    return-object v0
.end method

.method public getScreenCoordinates(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/Camera;->getScreenCoordinates(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getScreenCoordinates(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result p1

    .line 4
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    .line 5
    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    iget v1, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    sub-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    add-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 6
    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr p1, v0

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    iget v3, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    div-float/2addr p1, v1

    add-float/2addr p1, v3

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 7
    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr p1, v0

    div-float/2addr p1, v1

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public getUp()Lcom/jme3/math/Vector3f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->getRotationColumn(I)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getViewMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getViewPortBottom()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    return v0
.end method

.method public getViewPortLeft()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    return v0
.end method

.method public getViewPortRight()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    return v0
.end method

.method public getViewPortTop()F
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    return v0
.end method

.method public getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public getViewToProjectionZ(F)F
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v1

    sub-float v2, v0, v1

    div-float v2, v0, v2

    mul-float v3, v0, v1

    sub-float/2addr v1, v0

    div-float/2addr v3, v1

    div-float/2addr v3, p1

    add-float/2addr v2, v3

    return v2
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/renderer/Camera;->width:I

    return v0
.end method

.method public getWorldCoordinates(Lcom/jme3/math/Vector2f;F)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 6

    if-nez p3, :cond_0

    .line 2
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-direct {v0, v1}, Lcom/jme3/math/Matrix4f;-><init>(Lcom/jme3/math/Matrix4f;)V

    .line 4
    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    .line 5
    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    .line 6
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    sub-float/2addr v3, v2

    div-float/2addr v1, v3

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v1, v3

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    .line 7
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    iget v4, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    sub-float/2addr p1, v4

    iget v5, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    sub-float/2addr v5, v4

    div-float/2addr p1, v5

    mul-float/2addr p1, v2

    sub-float/2addr p1, v3

    mul-float/2addr p2, v2

    sub-float/2addr p2, v3

    .line 8
    invoke-virtual {p3, v1, p1, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 9
    invoke-virtual {v0, p3, p3}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result p1

    div-float/2addr v3, p1

    .line 10
    invoke-virtual {p3, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-object p3
.end method

.method public getWorldPlane(I)Lcom/jme3/math/Plane;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isParallelProjection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    return v0
.end method

.method public isViewportChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    return v0
.end method

.method public lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 5

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    sget-object p1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, p1}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v1, Lcom/jme3/math/Vector3f;->x:F

    const/4 p2, 0x0

    cmpl-float v4, p1, p2

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    neg-float p1, p1

    invoke-virtual {v3, v4, p1, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    iget p1, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    neg-float v4, v4

    invoke-virtual {v3, p2, p1, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v3, v2, v1}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public lookAtDirection(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/math/Quaternion;->lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public normalize()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public onFrameChange()V
    .locals 14

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/Camera;->getLeft(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v7, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v8, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    aget v9, v8, v6

    mul-float/2addr v7, v9

    iput v7, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v9

    iput v7, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v9

    iput v7, v5, Lcom/jme3/math/Vector3f;->z:F

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    const/4 v9, 0x1

    aget v8, v8, v9

    mul-float/2addr v7, v8

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v10, v8

    iget v11, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v11, v8

    invoke-virtual {v5, v7, v10, v11}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v7, v7, v6

    iget-object v8, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v7, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v8, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    aget v10, v8, v6

    mul-float/2addr v7, v10

    iput v7, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v10

    iput v7, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v10

    iput v7, v5, Lcom/jme3/math/Vector3f;->z:F

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    aget v8, v8, v9

    mul-float/2addr v7, v8

    iget v10, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v10, v8

    iget v11, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v11, v8

    invoke-virtual {v5, v7, v10, v11}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v7, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v7, v7, v9

    iget-object v8, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual {v7, v5}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v8, v3, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    aget v11, v10, v6

    mul-float/2addr v8, v11

    iput v8, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v3, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v8, v11

    iput v8, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v8, v11

    iput v8, v5, Lcom/jme3/math/Vector3f;->z:F

    iget v8, v2, Lcom/jme3/math/Vector3f;->x:F

    aget v10, v10, v9

    mul-float/2addr v8, v10

    iget v11, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v11, v10

    iget v12, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v12, v10

    invoke-virtual {v5, v8, v11, v12}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v8, v8, v7

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v10, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual {v8, v5}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v8, 0x3

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v10, v3, Lcom/jme3/math/Vector3f;->x:F

    iget-object v11, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    aget v12, v11, v6

    mul-float/2addr v10, v12

    iput v10, v5, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v3, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v10, v12

    iput v10, v5, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v10, v12

    iput v10, v5, Lcom/jme3/math/Vector3f;->z:F

    iget v10, v2, Lcom/jme3/math/Vector3f;->x:F

    aget v11, v11, v9

    mul-float/2addr v10, v11

    iget v12, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v12, v11

    iget v13, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v13, v11

    invoke-virtual {v5, v10, v12, v13}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v10, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v10, v10, v8

    iget-object v11, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v11, v5}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v5

    invoke-virtual {v10, v5}, Lcom/jme3/math/Plane;->setConstant(F)V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v6

    iget v10, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    add-float/2addr v6, v10

    invoke-virtual {v5, v6}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v6

    iget v9, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    sub-float/2addr v6, v9

    invoke-virtual {v5, v6}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v6

    iget v8, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    sub-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v6

    iget v7, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/jme3/math/Plane;->setConstant(F)V

    :cond_0
    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Lcom/jme3/math/Plane;->setNormal(Lcom/jme3/math/Vector3f;)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v6

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    neg-float v7, v7

    iget v8, v2, Lcom/jme3/math/Vector3f;->y:F

    neg-float v8, v8

    iget v9, v2, Lcom/jme3/math/Vector3f;->z:F

    neg-float v9, v9

    invoke-virtual {v5, v7, v8, v9}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v6

    iget v6, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    add-float/2addr v6, v4

    neg-float v6, v6

    invoke-virtual {v5, v6}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    iget v7, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v5, v7, v8, v9}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->worldPlane:[Lcom/jme3/math/Plane;

    aget-object v5, v5, v6

    iget v6, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    add-float/2addr v4, v6

    invoke-virtual {v5, v4}, Lcom/jme3/math/Plane;->setConstant(F)V

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v5, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5, v2, v3, v1}, Lcom/jme3/math/Matrix4f;->fromFrame(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    return-void
.end method

.method public onFrustumChange()V
    .locals 13

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float/2addr v0, v0

    iget v3, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    mul-float/2addr v3, v3

    iget v4, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    mul-float/2addr v4, v4

    iget v5, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    mul-float/2addr v5, v5

    iget v6, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    mul-float/2addr v6, v6

    add-float/2addr v3, v0

    invoke-static {v3}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v3

    iget-object v7, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    iget v8, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    neg-float v8, v8

    mul-float/2addr v8, v3

    aput v8, v7, v2

    iget v8, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    neg-float v8, v8

    mul-float/2addr v8, v3

    aput v8, v7, v1

    add-float/2addr v4, v0

    invoke-static {v4}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v3

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    iget v7, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float/2addr v7, v3

    aput v7, v4, v2

    iget v7, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    mul-float/2addr v7, v3

    aput v7, v4, v1

    add-float/2addr v5, v0

    invoke-static {v5}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v3

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    iget v5, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float/2addr v5, v3

    aput v5, v4, v2

    iget v5, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    aput v5, v4, v1

    add-float/2addr v0, v6

    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v0

    iget-object v3, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    iget v4, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    neg-float v4, v4

    mul-float/2addr v4, v0

    aput v4, v3, v2

    iget v2, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    mul-float/2addr v2, v0

    aput v2, v3, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    const/4 v4, 0x0

    aput v4, v0, v1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v2

    aput v4, v0, v1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    aput v5, v0, v2

    aput v4, v0, v1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    aput v3, v0, v2

    aput v4, v0, v1

    :goto_0
    iget-object v5, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    iget v6, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    iget v7, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    iget v8, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iget v9, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    iget v10, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iget v11, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iget-boolean v12, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    invoke-virtual/range {v5 .. v12}, Lcom/jme3/math/Matrix4f;->fromFrustum(FFFFFFZ)V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public onViewPortChange()V
    .locals 2

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    iget v1, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->viewportChanged:Z

    invoke-direct {p0}, Lcom/jme3/renderer/Camera;->setGuiBounding()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Viewport must have left < right"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Viewport must have bottom < top"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "location"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    const-string v1, "rotation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const-string v0, "frustumNear"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    const-string v0, "frustumFar"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    const-string v0, "frustumLeft"

    const/high16 v2, -0x41000000    # -0.5f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    const-string v0, "frustumRight"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    const-string v0, "frustumTop"

    invoke-interface {p1, v0, v3}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    const-string v0, "frustumBottom"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    const/4 v0, 0x2

    new-array v2, v0, [F

    const-string v3, "coeffLeft"

    invoke-interface {p1, v3, v2}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const-string v2, "coeffRight"

    new-array v3, v0, [F

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const-string v2, "coeffBottom"

    new-array v3, v0, [F

    invoke-interface {p1, v2, v3}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v2

    iput-object v2, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const-string v2, "coeffTop"

    new-array v0, v0, [F

    invoke-interface {p1, v2, v0}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const-string v0, "viewPortLeft"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    const-string v0, "viewPortRight"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    const-string v0, "viewPortTop"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    const-string v0, "viewPortBottom"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    const-string v0, "width"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/renderer/Camera;->height:I

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public resize(IIZ)V
    .locals 1

    iput p1, p0, Lcom/jme3/renderer/Camera;->width:I

    iput p2, p0, Lcom/jme3/renderer/Camera;->height:I

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    if-eqz p3, :cond_0

    int-to-float p2, p2

    iget p3, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    sub-float/2addr p3, v0

    mul-float/2addr p2, p3

    int-to-float p1, p1

    iget p3, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    sub-float/2addr p3, v0

    mul-float/2addr p1, p3

    div-float/2addr p1, p2

    iget p2, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    mul-float/2addr p2, p1

    iput p2, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    neg-float p1, p2

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    :cond_0
    return-void
.end method

.method public screenPointToRay(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Ray;
    .locals 4

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v3, v2}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v2, Lcom/jme3/math/Ray;

    invoke-direct {v2, v1, p1}, Lcom/jme3/math/Ray;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object v2
.end method

.method public setAxes(Lcom/jme3/math/Quaternion;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 4
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 2
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setClipPlane(Lcom/jme3/math/Plane;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Plane;->whichSide(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Plane$Side;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/renderer/Camera;->setClipPlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Plane$Side;)V

    return-void
.end method

.method public setClipPlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Plane$Side;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/jme3/math/Plane$Side;->Negative:Lcom/jme3/math/Plane$Side;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v3}, Lcom/jme3/math/Plane;->whichSide(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Plane$Side;

    move-result-object v3

    if-ne v3, p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object p2

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    iget-object v4, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    .line 6
    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v6

    iget-object v7, p2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v6, v7}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 7
    iget-object v6, p2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v5, v6}, Lcom/jme3/math/Matrix4f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v6, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, p1, v6}, Lcom/jme3/math/Matrix4f;->multNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 9
    iget-object v4, p2, Lcom/jme3/util/TempVars;->vect4f1:Lcom/jme3/math/Vector4f;

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v0

    iget v8, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v8, v0

    .line 10
    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    neg-float p1, p1

    mul-float/2addr p1, v0

    .line 11
    invoke-virtual {v4, v6, v7, v8, p1}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    move-result-object p1

    .line 12
    iget-object v0, p2, Lcom/jme3/util/TempVars;->vect4f2:Lcom/jme3/math/Vector4f;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    move-result-object v0

    .line 13
    iget v4, p1, Lcom/jme3/math/Vector4f;->x:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v5, v3, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr v4, v5

    iget v5, v3, Lcom/jme3/math/Matrix4f;->m00:F

    div-float/2addr v4, v5

    iput v4, v0, Lcom/jme3/math/Vector4f;->x:F

    .line 14
    iget v4, p1, Lcom/jme3/math/Vector4f;->y:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v5, v3, Lcom/jme3/math/Matrix4f;->m12:F

    add-float/2addr v4, v5

    iget v5, v3, Lcom/jme3/math/Matrix4f;->m11:F

    div-float/2addr v4, v5

    iput v4, v0, Lcom/jme3/math/Vector4f;->y:F

    .line 15
    iput v1, v0, Lcom/jme3/math/Vector4f;->z:F

    .line 16
    iget v1, v3, Lcom/jme3/math/Matrix4f;->m22:F

    add-float/2addr v1, v2

    iget v2, v3, Lcom/jme3/math/Matrix4f;->m23:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector4f;->w:F

    .line 17
    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector4f;->dot(Lcom/jme3/math/Vector4f;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    .line 18
    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector4f;->multLocal(F)Lcom/jme3/math/Vector4f;

    move-result-object p1

    .line 19
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    iget v1, v3, Lcom/jme3/math/Matrix4f;->m30:F

    sub-float/2addr v0, v1

    iput v0, v3, Lcom/jme3/math/Matrix4f;->m20:F

    .line 20
    iget v0, p1, Lcom/jme3/math/Vector4f;->y:F

    iget v1, v3, Lcom/jme3/math/Matrix4f;->m31:F

    sub-float/2addr v0, v1

    iput v0, v3, Lcom/jme3/math/Matrix4f;->m21:F

    .line 21
    iget v0, p1, Lcom/jme3/math/Vector4f;->z:F

    iget v1, v3, Lcom/jme3/math/Matrix4f;->m32:F

    sub-float/2addr v0, v1

    iput v0, v3, Lcom/jme3/math/Matrix4f;->m22:F

    .line 22
    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    iget v0, v3, Lcom/jme3/math/Matrix4f;->m33:F

    sub-float/2addr p1, v0

    iput p1, v3, Lcom/jme3/math/Matrix4f;->m23:F

    .line 23
    invoke-virtual {p0, v3}, Lcom/jme3/renderer/Camera;->setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p2}, Lcom/jme3/util/TempVars;->release()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lcom/jme3/util/TempVars;->release()V

    .line 25
    throw p1
.end method

.method public setFov(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    if-nez v0, :cond_0

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->tan(F)F

    move-result p1

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getAspect()F

    move-result v0

    mul-float/2addr v0, p1

    neg-float v1, v0

    iput v1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    neg-float v0, p1

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set field of view on orthogonal camera"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Field of view must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFrame(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 5
    iget-object p1, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 6
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setFrame(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    .line 2
    iget-object p1, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, p2, p3, p4}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    .line 3
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setFrustum(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    iput p2, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    iput p3, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iput p4, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    iput p5, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iput p6, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumBottom(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumFar(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumLeft(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumNear(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumPerspective(FFFF)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->tan(F)F

    move-result p1

    mul-float/2addr p1, p3

    mul-float/2addr p2, p1

    neg-float v0, p2

    iput v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    iput p2, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    neg-float p2, p1

    iput p2, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    iput p3, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    iput p4, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/jme3/renderer/Camera;->logger:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p4, "Invalid aspect given to setFrustumPerspective: {0}"

    invoke-virtual {p1, p3, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFrustumRight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setFrustumTop(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setLocation(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    return-void
.end method

.method public setParallelProjection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    return-void
.end method

.method public setPlaneState(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->planeState:I

    return-void
.end method

.method public setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/renderer/Camera;->overrideProjection:Z

    iget-object p1, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    invoke-virtual {p1}, Lcom/jme3/math/Matrix4f;->loadIdentity()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/renderer/Camera;->overrideProjection:Z

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->updateViewProjection()V

    return-void
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrameChange()V

    return-void
.end method

.method public setViewPort(FFFF)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    iput p2, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    iput p3, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    iput p4, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortBottom(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortLeft(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortRight(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public setViewPortTop(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera[location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ndirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/renderer/Camera;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/renderer/Camera;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parallel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/renderer/Camera;->parallelProjection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nnear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", far="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onFrustumChange()V

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->onViewPortChange()V

    return-void
.end method

.method public updateViewProjection()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/renderer/Camera;->overrideProjection:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrixOverride:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/renderer/Camera;->viewProjectionMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->projectionMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/Camera;->viewMatrix:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    :goto_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->location:Lcom/jme3/math/Vector3f;

    const-string v1, "location"

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->rotation:Lcom/jme3/math/Quaternion;

    const-string v1, "rotation"

    sget-object v2, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumNear:F

    const-string v1, "frustumNear"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumFar:F

    const-string v1, "frustumFar"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumLeft:F

    const-string v1, "frustumLeft"

    const/high16 v3, -0x41000000    # -0.5f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumRight:F

    const-string v1, "frustumRight"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumTop:F

    const-string v1, "frustumTop"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->frustumBottom:F

    const-string v1, "frustumBottom"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffLeft:[F

    const/4 v1, 0x2

    new-array v3, v1, [F

    const-string v4, "coeffLeft"

    invoke-interface {p1, v0, v4, v3}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffRight:[F

    const-string v3, "coeffRight"

    new-array v4, v1, [F

    invoke-interface {p1, v0, v3, v4}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffBottom:[F

    const-string v3, "coeffBottom"

    new-array v4, v1, [F

    invoke-interface {p1, v0, v3, v4}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->coeffTop:[F

    const-string v3, "coeffTop"

    new-array v1, v1, [F

    invoke-interface {p1, v0, v3, v1}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortLeft:F

    const-string v1, "viewPortLeft"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortRight:F

    const-string v1, "viewPortRight"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortTop:F

    const-string v1, "viewPortTop"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->viewPortBottom:F

    const-string v1, "viewPortBottom"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->width:I

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/renderer/Camera;->height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/renderer/Camera;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
