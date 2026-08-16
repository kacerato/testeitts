.class public final Lcom/jme3/math/Quaternion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTION_Z:Lcom/jme3/math/Quaternion;

.field public static final IDENTITY:Lcom/jme3/math/Quaternion;

.field public static final ZERO:Lcom/jme3/math/Quaternion;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected w:F

.field protected x:F

.field protected y:F

.field protected z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Quaternion;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/math/Quaternion;->IDENTITY:Lcom/jme3/math/Quaternion;

    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    sput-object v0, Lcom/jme3/math/Quaternion;->DIRECTION_Z:Lcom/jme3/math/Quaternion;

    new-instance v1, Lcom/jme3/math/Quaternion;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    sput-object v1, Lcom/jme3/math/Quaternion;->ZERO:Lcom/jme3/math/Quaternion;

    sget-object v1, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 3
    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 4
    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 8
    iput p2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 9
    iput p3, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 10
    iput p4, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Quaternion;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lcom/jme3/math/Quaternion;->x:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 17
    iget v0, p1, Lcom/jme3/math/Quaternion;->y:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 18
    iget v0, p1, Lcom/jme3/math/Quaternion;->z:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 19
    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    iput p1, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/jme3/math/Quaternion;->slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/math/Quaternion;->fromAngles([F)Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public static isValidQuaternion(Lcom/jme3/math/Quaternion;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_2

    iget p0, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 5

    new-instance v0, Lcom/jme3/math/Quaternion;

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    add-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public addLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public apply(Lcom/jme3/math/Matrix3f;)V
    .locals 10

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v3, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-virtual {p0, p1}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    iget p1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v6, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v7, v0, v6

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    mul-float v8, v2, v4

    sub-float/2addr v7, v8

    mul-float v8, v3, p1

    add-float/2addr v7, v8

    iput v7, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v7, v0

    mul-float v8, v7, v5

    mul-float v9, v1, v6

    add-float/2addr v8, v9

    mul-float v9, v2, p1

    add-float/2addr v8, v9

    mul-float v9, v3, v4

    add-float/2addr v8, v9

    iput v8, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v4

    mul-float v8, v1, p1

    sub-float/2addr v0, v8

    mul-float v8, v2, v6

    add-float/2addr v0, v8

    mul-float v8, v3, v5

    add-float/2addr v0, v8

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v7, p1

    mul-float/2addr v1, v4

    sub-float/2addr v7, v1

    mul-float/2addr v2, v5

    sub-float/2addr v7, v2

    mul-float/2addr v3, v6

    add-float/2addr v7, v3

    iput v7, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public clone()Lcom/jme3/math/Quaternion;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
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
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public dot(Lcom/jme3/math/Quaternion;)F
    .locals 3

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/jme3/math/Quaternion;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/math/Quaternion;

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->x:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 0

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/math/Quaternion;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    return-object p0
.end method

.method public fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 2

    iget v0, p2, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p2, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/jme3/math/Quaternion;->y:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    :goto_0
    return-object p0
.end method

.method public fromAngles(FFF)Lcom/jme3/math/Quaternion;
    .locals 5

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    .line 4
    invoke-static {p3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v1

    .line 5
    invoke-static {p3}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p3

    mul-float/2addr p2, v0

    .line 6
    invoke-static {p2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    .line 7
    invoke-static {p2}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p2

    mul-float/2addr p1, v0

    .line 8
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    .line 9
    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    mul-float v3, p2, p3

    mul-float v4, v2, v1

    mul-float/2addr p2, v1

    mul-float/2addr v2, p3

    mul-float p3, v3, p1

    mul-float v1, v4, v0

    sub-float/2addr p3, v1

    .line 10
    iput p3, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v3, v0

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    .line 11
    iput v3, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float p3, v2, p1

    mul-float v1, p2, v0

    add-float/2addr p3, v1

    .line 12
    iput p3, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr p2, p1

    mul-float/2addr v2, v0

    sub-float/2addr p2, v2

    .line 13
    iput p2, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 14
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    return-object p0
.end method

.method public fromAngles([F)Lcom/jme3/math/Quaternion;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/math/Quaternion;->fromAngles(FFF)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Angles array must have three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 10

    .line 4
    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v5, p2, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p3, Lcom/jme3/math/Vector3f;->y:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v8, p2, Lcom/jme3/math/Vector3f;->z:F

    iget v9, p3, Lcom/jme3/math/Vector3f;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public fromAxes([Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Axis array must have three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;
    .locals 4

    mul-float v0, p1, p1

    mul-float v1, p4, p4

    add-float/2addr v0, v1

    mul-float v1, p7, p7

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p1, v0

    mul-float/2addr p4, v0

    mul-float/2addr p7, v0

    :cond_0
    mul-float v0, p2, p2

    mul-float v2, p5, p5

    add-float/2addr v0, v2

    mul-float v2, p8, p8

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_1

    .line 3
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p2, v0

    mul-float/2addr p5, v0

    mul-float/2addr p8, v0

    :cond_1
    mul-float v0, p3, p3

    mul-float v2, p6, p6

    add-float/2addr v0, v2

    mul-float v2, p9, p9

    add-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_2

    .line 4
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float v0, v1, v0

    mul-float/2addr p3, v0

    mul-float/2addr p6, v0

    mul-float/2addr p9, v0

    :cond_2
    add-float v0, p1, p5

    add-float/2addr v0, p9

    cmpl-float v2, v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    if-ltz v2, :cond_3

    add-float/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 6
    iput p5, p0, Lcom/jme3/math/Quaternion;->w:F

    div-float/2addr v3, p1

    sub-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 7
    iput p8, p0, Lcom/jme3/math/Quaternion;->x:F

    sub-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 8
    iput p3, p0, Lcom/jme3/math/Quaternion;->y:F

    sub-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 9
    iput p4, p0, Lcom/jme3/math/Quaternion;->z:F

    goto :goto_0

    :cond_3
    cmpl-float v0, p1, p5

    if-lez v0, :cond_4

    cmpl-float v0, p1, p9

    if-lez v0, :cond_4

    add-float/2addr p1, v1

    sub-float/2addr p1, p5

    sub-float/2addr p1, p9

    .line 10
    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 11
    iput p5, p0, Lcom/jme3/math/Quaternion;->x:F

    div-float/2addr v3, p1

    add-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 12
    iput p4, p0, Lcom/jme3/math/Quaternion;->y:F

    add-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 13
    iput p3, p0, Lcom/jme3/math/Quaternion;->z:F

    sub-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 14
    iput p8, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0

    :cond_4
    cmpl-float v0, p5, p9

    if-lez v0, :cond_5

    add-float/2addr p5, v1

    sub-float/2addr p5, p1

    sub-float/2addr p5, p9

    .line 15
    invoke-static {p5}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 16
    iput p5, p0, Lcom/jme3/math/Quaternion;->y:F

    div-float/2addr v3, p1

    add-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 17
    iput p4, p0, Lcom/jme3/math/Quaternion;->x:F

    add-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 18
    iput p8, p0, Lcom/jme3/math/Quaternion;->z:F

    sub-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 19
    iput p3, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0

    :cond_5
    add-float/2addr p9, v1

    sub-float/2addr p9, p1

    sub-float/2addr p9, p5

    .line 20
    invoke-static {p9}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    mul-float p5, p1, v3

    .line 21
    iput p5, p0, Lcom/jme3/math/Quaternion;->z:F

    div-float/2addr v3, p1

    add-float/2addr p3, p7

    mul-float/2addr p3, v3

    .line 22
    iput p3, p0, Lcom/jme3/math/Quaternion;->x:F

    add-float/2addr p8, p6

    mul-float/2addr p8, v3

    .line 23
    iput p8, p0, Lcom/jme3/math/Quaternion;->y:F

    sub-float/2addr p4, p2

    mul-float/2addr p4, v3

    .line 24
    iput p4, p0, Lcom/jme3/math/Quaternion;->w:F

    :goto_0
    return-object p0
.end method

.method public fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;
    .locals 10

    .line 1
    iget v1, p1, Lcom/jme3/math/Matrix3f;->m00:F

    iget v2, p1, Lcom/jme3/math/Matrix3f;->m01:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m02:F

    iget v4, p1, Lcom/jme3/math/Matrix3f;->m10:F

    iget v5, p1, Lcom/jme3/math/Matrix3f;->m11:F

    iget v6, p1, Lcom/jme3/math/Matrix3f;->m12:F

    iget v7, p1, Lcom/jme3/math/Matrix3f;->m20:F

    iget v8, p1, Lcom/jme3/math/Matrix3f;->m21:F

    iget v9, p1, Lcom/jme3/math/Matrix3f;->m22:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(FFFFFFFFF)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public getRotationColumn(I)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Quaternion;->getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getRotationColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 12

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    div-float v0, v1, v0

    .line 4
    :cond_1
    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v3, v2, v2

    mul-float/2addr v3, v0

    .line 5
    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v5, v2, v4

    mul-float/2addr v5, v0

    .line 6
    iget v6, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v7, v2, v6

    mul-float/2addr v7, v0

    .line 7
    iget v8, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v8

    mul-float/2addr v2, v0

    mul-float v9, v4, v4

    mul-float/2addr v9, v0

    mul-float v10, v4, v6

    mul-float/2addr v10, v0

    mul-float/2addr v4, v8

    mul-float/2addr v4, v0

    mul-float v11, v6, v6

    mul-float/2addr v11, v0

    mul-float/2addr v6, v8

    mul-float/2addr v6, v0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_4

    const/4 v8, 0x1

    if-eq p1, v8, :cond_3

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    add-float/2addr v7, v4

    mul-float/2addr v7, v0

    .line 8
    iput v7, p2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v10, v2

    mul-float/2addr v10, v0

    .line 9
    iput v10, p2, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v3, v9

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    .line 10
    iput v1, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 11
    :cond_2
    sget-object p2, Lcom/jme3/math/Quaternion;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid column index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 13
    iput v5, p2, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v3, v11

    mul-float/2addr v3, v0

    sub-float/2addr v1, v3

    .line 14
    iput v1, p2, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v10, v2

    mul-float/2addr v10, v0

    .line 15
    iput v10, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_4
    add-float/2addr v9, v11

    mul-float/2addr v9, v0

    sub-float/2addr v1, v9

    .line 16
    iput v1, p2, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    .line 17
    iput v5, p2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v7, v4

    mul-float/2addr v7, v0

    .line 18
    iput v7, p2, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    return-object p2
.end method

.method public getW()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public inverse()Lcom/jme3/math/Quaternion;
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    new-instance v0, Lcom/jme3/math/Quaternion;

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v2, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    neg-float v3, v3

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/jme3/math/Quaternion;->z:F

    neg-float v4, v4

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public inverseLocal()Lcom/jme3/math/Quaternion;
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v2, v1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    :cond_0
    return-object p0
.end method

.method public isIdentity()Z
    .locals 2

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSimilar(Lcom/jme3/math/Quaternion;F)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget v1, p1, Lcom/jme3/math/Quaternion;->y:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_2

    return v0

    :cond_2
    iget v1, p1, Lcom/jme3/math/Quaternion;->z:F

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-lez v1, :cond_3

    return v0

    :cond_3
    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-lez p1, :cond_4

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public loadIdentity()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public lookAt(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;
    .locals 2

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object p2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object p2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object p2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1, p2, v1}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p0
.end method

.method public mult(F)Lcom/jme3/math/Quaternion;
    .locals 5

    .line 16
    new-instance v0, Lcom/jme3/math/Quaternion;

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public mult(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 9

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Quaternion;

    invoke-direct {p2}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 3
    :cond_0
    iget v0, p1, Lcom/jme3/math/Quaternion;->w:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->z:F

    .line 4
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v5, v4, p1

    add-float/2addr v3, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v6, v5, v2

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v7, v6, v1

    add-float/2addr v3, v7

    iput v3, p2, Lcom/jme3/math/Quaternion;->x:F

    .line 5
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v7, v3

    mul-float/2addr v7, p1

    mul-float/2addr v4, v0

    add-float/2addr v7, v4

    mul-float v4, v5, v1

    add-float/2addr v7, v4

    mul-float v4, v6, v2

    add-float/2addr v7, v4

    iput v7, p2, Lcom/jme3/math/Quaternion;->y:F

    mul-float v4, v3, v2

    .line 6
    iget v7, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v8, v7, v1

    sub-float/2addr v4, v8

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    mul-float v5, v6, p1

    add-float/2addr v4, v5

    iput v4, p2, Lcom/jme3/math/Quaternion;->z:F

    neg-float v3, v3

    mul-float/2addr v3, v1

    mul-float/2addr v7, v2

    sub-float/2addr v3, v7

    .line 7
    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p1

    sub-float/2addr v3, v1

    mul-float/2addr v6, v0

    add-float/2addr v3, v6

    iput v3, p2, Lcom/jme3/math/Quaternion;->w:F

    return-object p2
.end method

.method public mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 9

    if-nez p2, :cond_0

    .line 9
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 10
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_1

    .line 11
    invoke-virtual {p2, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 12
    :cond_1
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 13
    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v3, v2, v2

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, p1

    add-float/2addr v3, v6

    iget v6, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v7, v6, v5

    mul-float/2addr v7, v2

    mul-float/2addr v7, v1

    sub-float/2addr v3, v7

    iget v7, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v8, v7, v7

    mul-float/2addr v8, v0

    add-float/2addr v3, v8

    mul-float v8, v4, v5

    mul-float/2addr v8, v7

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    mul-float v8, v6, v5

    mul-float/2addr v8, v7

    mul-float/2addr v8, p1

    add-float/2addr v3, v8

    mul-float v8, v6, v6

    mul-float/2addr v8, v0

    sub-float/2addr v3, v8

    mul-float v8, v4, v4

    mul-float/2addr v8, v0

    sub-float/2addr v3, v8

    iput v3, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float v3, v7, v5

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    mul-float v8, v4, v4

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    mul-float v8, v6, v5

    mul-float/2addr v8, v4

    mul-float/2addr v8, p1

    add-float/2addr v3, v8

    mul-float v8, v2, v5

    mul-float/2addr v8, v6

    mul-float/2addr v8, v0

    add-float/2addr v3, v8

    mul-float v8, v6, v6

    mul-float/2addr v8, v1

    sub-float/2addr v3, v8

    mul-float v8, v2, v2

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    mul-float v8, v7, v5

    mul-float/2addr v8, v2

    mul-float/2addr v8, p1

    sub-float/2addr v3, v8

    mul-float v8, v7, v7

    mul-float/2addr v8, v1

    sub-float/2addr v3, v8

    .line 14
    iput v3, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float v3, v7, v5

    mul-float/2addr v3, v6

    mul-float/2addr v3, v0

    mul-float v8, v4, v5

    mul-float/2addr v8, v6

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    mul-float/2addr v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v3, v6

    mul-float v6, v2, v5

    mul-float/2addr v6, v4

    mul-float/2addr v6, v0

    sub-float/2addr v3, v6

    mul-float/2addr v4, v4

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    mul-float/2addr v5, v2

    mul-float/2addr v5, v7

    mul-float/2addr v5, v1

    add-float/2addr v3, v5

    mul-float/2addr v7, v7

    mul-float/2addr v7, p1

    sub-float/2addr v3, v7

    mul-float/2addr v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v3, v2

    .line 15
    iput v3, p2, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    return-object p2
.end method

.method public multLocal(F)Lcom/jme3/math/Quaternion;
    .locals 1

    .line 15
    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 16
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 17
    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 18
    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    return-object p0
.end method

.method public multLocal(FFFF)Lcom/jme3/math/Quaternion;
    .locals 8

    .line 10
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v1, v0, p4

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v3, v2, p3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v4, v3, p2

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v5, v4, p1

    add-float/2addr v1, v5

    neg-float v5, v0

    mul-float/2addr v5, p3

    mul-float v6, v2, p4

    add-float/2addr v5, v6

    mul-float v6, v3, p1

    add-float/2addr v5, v6

    mul-float v6, v4, p2

    add-float/2addr v5, v6

    mul-float v6, v0, p2

    mul-float v7, v2, p1

    sub-float/2addr v6, v7

    mul-float v7, v3, p4

    add-float/2addr v6, v7

    mul-float v7, v4, p3

    add-float/2addr v6, v7

    neg-float v0, v0

    mul-float/2addr v0, p1

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    mul-float/2addr v3, p3

    sub-float/2addr v0, v3

    mul-float/2addr v4, p4

    add-float/2addr v0, v4

    .line 11
    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 12
    iput v1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 13
    iput v5, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 14
    iput v6, p0, Lcom/jme3/math/Quaternion;->z:F

    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 11

    .line 5
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v6, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float v7, v5, v6

    sub-float/2addr v2, v7

    iget v7, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float v8, v7, p1

    add-float/2addr v2, v8

    neg-float v8, v0

    mul-float/2addr v8, v4

    mul-float v9, v3, v1

    add-float/2addr v8, v9

    mul-float v9, v5, p1

    add-float/2addr v8, v9

    mul-float v9, v7, v6

    add-float/2addr v8, v9

    mul-float v9, v0, v6

    mul-float v10, v3, p1

    sub-float/2addr v9, v10

    mul-float v10, v5, v1

    add-float/2addr v9, v10

    mul-float v10, v7, v4

    add-float/2addr v9, v10

    neg-float v0, v0

    mul-float/2addr v0, p1

    mul-float/2addr v3, v6

    sub-float/2addr v0, v3

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    mul-float/2addr v7, v1

    add-float/2addr v0, v7

    .line 6
    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    .line 7
    iput v2, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 8
    iput v8, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 9
    iput v9, p0, Lcom/jme3/math/Quaternion;->z:F

    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 12

    .line 1
    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v1, v0, v0

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/jme3/math/Quaternion;->y:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    mul-float/2addr v5, v0

    iget v6, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    iget v5, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v7, v5, v4

    mul-float/2addr v7, v0

    iget v8, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v7, v8

    sub-float/2addr v1, v7

    iget v7, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v9, v7, v7

    mul-float/2addr v9, v2

    add-float/2addr v1, v9

    mul-float v9, v3, v4

    mul-float/2addr v9, v7

    mul-float/2addr v9, v8

    add-float/2addr v1, v9

    mul-float v9, v5, v4

    mul-float/2addr v9, v7

    mul-float/2addr v9, v6

    add-float/2addr v1, v9

    mul-float v9, v5, v5

    mul-float/2addr v9, v2

    sub-float/2addr v1, v9

    mul-float v9, v3, v3

    mul-float/2addr v9, v2

    sub-float/2addr v1, v9

    mul-float v9, v7, v4

    mul-float/2addr v9, v3

    mul-float/2addr v9, v2

    mul-float v10, v3, v3

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    mul-float v10, v5, v4

    mul-float/2addr v10, v3

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    mul-float v10, v0, v4

    mul-float/2addr v10, v5

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    mul-float v10, v5, v5

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float v10, v0, v0

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    mul-float v10, v7, v4

    mul-float/2addr v10, v0

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v10, v7, v7

    mul-float/2addr v10, v8

    sub-float/2addr v9, v10

    mul-float v10, v7, v4

    mul-float/2addr v10, v5

    mul-float/2addr v10, v2

    mul-float v11, v3, v4

    mul-float/2addr v11, v5

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    mul-float/2addr v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v10, v5

    mul-float v5, v0, v4

    mul-float/2addr v5, v3

    mul-float/2addr v5, v2

    sub-float/2addr v10, v5

    mul-float/2addr v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v10, v3

    mul-float/2addr v4, v0

    mul-float/2addr v4, v7

    mul-float/2addr v4, v8

    add-float/2addr v10, v4

    mul-float/2addr v7, v7

    mul-float/2addr v7, v6

    sub-float/2addr v10, v7

    mul-float/2addr v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v10, v0

    .line 2
    iput v10, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 3
    iput v1, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iput v9, p1, Lcom/jme3/math/Vector3f;->y:F

    return-object p1
.end method

.method public negate()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->negateLocal()Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public negateLocal()Lcom/jme3/math/Quaternion;
    .locals 1

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    neg-float v0, v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public nlerp(Lcom/jme3/math/Quaternion;F)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jme3/math/Quaternion;->dot(Lcom/jme3/math/Quaternion;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, p2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    iput v1, p0, Lcom/jme3/math/Quaternion;->w:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v1

    iget v2, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p2, p1

    add-float/2addr v1, p2

    iput v1, p0, Lcom/jme3/math/Quaternion;->w:F

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->normalizeLocal()Lcom/jme3/math/Quaternion;

    return-void
.end method

.method public norm()F
    .locals 2

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public normalizeLocal()Lcom/jme3/math/Quaternion;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->invSqrt(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public opposite()Lcom/jme3/math/Quaternion;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Quaternion;->opposite(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public opposite(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    .line 3
    :cond_0
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/jme3/math/Quaternion;->toAngleAxis(Lcom/jme3/math/Vector3f;)F

    move-result v1

    const v2, 0x40490fdb    # (float)Math.PI

    add-float/2addr v1, v2

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    return-object p1
.end method

.method public oppositeLocal()Lcom/jme3/math/Quaternion;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/jme3/math/Quaternion;->opposite(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
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

    const-string v0, "x"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    const-string v0, "y"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    const-string v0, "z"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    const-string v0, "w"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public set(FFFF)Lcom/jme3/math/Quaternion;
    .locals 0

    .line 1
    iput p1, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 2
    iput p2, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 3
    iput p3, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 4
    iput p4, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    .line 5
    iget v0, p1, Lcom/jme3/math/Quaternion;->x:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 6
    iget v0, p1, Lcom/jme3/math/Quaternion;->y:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 7
    iget v0, p1, Lcom/jme3/math/Quaternion;->z:F

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 8
    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    iput p1, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public slerp(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;F)Lcom/jme3/math/Quaternion;
    .locals 6

    .line 1
    iget v0, p1, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p2, Lcom/jme3/math/Quaternion;->x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p2, Lcom/jme3/math/Quaternion;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p1, Lcom/jme3/math/Quaternion;->z:F

    iget v3, p2, Lcom/jme3/math/Quaternion;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p1, Lcom/jme3/math/Quaternion;->w:F

    iget v3, p2, Lcom/jme3/math/Quaternion;->w:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    return-object p0

    :cond_0
    mul-float/2addr v0, v1

    .line 3
    iget v2, p1, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p2, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p1, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p2, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p1, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p2, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    neg-float v1, v1

    .line 4
    iput v1, p2, Lcom/jme3/math/Quaternion;->x:F

    neg-float v1, v3

    .line 5
    iput v1, p2, Lcom/jme3/math/Quaternion;->y:F

    neg-float v1, v4

    .line 6
    iput v1, p2, Lcom/jme3/math/Quaternion;->z:F

    neg-float v1, v5

    .line 7
    iput v1, p2, Lcom/jme3/math/Quaternion;->w:F

    neg-float v0, v0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p3

    sub-float v3, v1, v0

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 8
    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    .line 9
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v3

    div-float/2addr v1, v3

    mul-float/2addr v2, v0

    .line 10
    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr p3, v0

    .line 11
    invoke-static {p3}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p3

    mul-float/2addr p3, v1

    .line 12
    :cond_2
    iget v0, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v2

    iget v1, p2, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 13
    iget v0, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v2

    iget v1, p2, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 14
    iget v0, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v2

    iget v1, p2, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 15
    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, p1

    iget p1, p2, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p3, p1

    add-float/2addr v2, p3

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public slerp(Lcom/jme3/math/Quaternion;F)V
    .locals 6

    .line 16
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->w:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    return-void

    :cond_0
    mul-float/2addr v0, v1

    .line 17
    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Quaternion;->w:F

    iget v5, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    neg-float v1, v1

    .line 18
    iput v1, p1, Lcom/jme3/math/Quaternion;->x:F

    neg-float v1, v3

    .line 19
    iput v1, p1, Lcom/jme3/math/Quaternion;->y:F

    neg-float v1, v4

    .line 20
    iput v1, p1, Lcom/jme3/math/Quaternion;->z:F

    neg-float v1, v5

    .line 21
    iput v1, p1, Lcom/jme3/math/Quaternion;->w:F

    neg-float v0, v0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p2

    sub-float v3, v1, v0

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 22
    invoke-static {v0}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v0

    .line 23
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v3

    div-float/2addr v1, v3

    mul-float/2addr v2, v0

    .line 24
    invoke-static {v2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v2, v1

    mul-float/2addr p2, v0

    .line 25
    invoke-static {p2}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p2

    mul-float/2addr p2, v1

    .line 26
    :cond_2
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    .line 27
    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    .line 28
    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v2

    iget v1, p1, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    .line 29
    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v0

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    iput v2, p0, Lcom/jme3/math/Quaternion;->w:F

    return-void
.end method

.method public subtract(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 5

    new-instance v0, Lcom/jme3/math/Quaternion;

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v2, p1, Lcom/jme3/math/Quaternion;->x:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v3, p1, Lcom/jme3/math/Quaternion;->y:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v4, p1, Lcom/jme3/math/Quaternion;->z:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    sub-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/jme3/math/Quaternion;-><init>(FFFF)V

    return-object v0
.end method

.method public subtractLocal(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 2

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v1, p1, Lcom/jme3/math/Quaternion;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Quaternion;->z:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    iget p1, p1, Lcom/jme3/math/Quaternion;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Quaternion;->w:F

    return-object p0
.end method

.method public toAngleAxis(Lcom/jme3/math/Vector3f;)F
    .locals 4

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    if-eqz p1, :cond_1

    iput v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v1, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v1, p1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->acos(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v3, v0

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float/2addr v0, v3

    iput v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float/2addr v0, v3

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v0, v3

    iput v0, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_1
    :goto_0
    return v1
.end method

.method public toAngles([F)[F
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    new-array v1, v2, [F

    goto :goto_0

    :cond_0
    array-length v3, v1

    if-ne v3, v2, :cond_3

    :goto_0
    iget v2, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float v3, v2, v2

    iget v4, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v5, v4, v4

    iget v6, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v7, v6, v6

    iget v8, v0, Lcom/jme3/math/Quaternion;->z:F

    mul-float v9, v8, v8

    add-float v10, v5, v7

    add-float/2addr v10, v9

    add-float/2addr v10, v3

    mul-float v11, v4, v6

    mul-float v12, v8, v2

    add-float/2addr v11, v12

    float-to-double v12, v11

    float-to-double v14, v10

    const-wide v16, 0x3fdfef9db22d0e56L    # 0.499

    mul-double v16, v16, v14

    cmpl-double v16, v12, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/high16 v21, 0x40000000    # 2.0f

    if-lez v16, :cond_1

    invoke-static {v4, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v2

    mul-float v2, v2, v21

    aput v2, v1, v20

    const v2, 0x3fc90fdb

    aput v2, v1, v19

    aput v17, v1, v18

    goto :goto_1

    :cond_1
    const-wide v22, -0x402010624dd2f1aaL    # -0.499

    mul-double v14, v14, v22

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    const/high16 v3, -0x40000000    # -2.0f

    invoke-static {v4, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v2

    mul-float/2addr v2, v3

    aput v2, v1, v20

    const v2, -0x4036f025

    aput v2, v1, v19

    aput v17, v1, v18

    goto :goto_1

    :cond_2
    mul-float v6, v6, v21

    mul-float/2addr v6, v2

    mul-float v4, v4, v21

    mul-float/2addr v4, v8

    sub-float/2addr v6, v4

    sub-float v2, v5, v7

    sub-float/2addr v2, v9

    add-float/2addr v2, v3

    invoke-static {v6, v2}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v2

    aput v2, v1, v20

    mul-float v11, v11, v21

    div-float/2addr v11, v10

    invoke-static {v11}, Lcom/jme3/math/FastMath;->asin(F)F

    move-result v2

    aput v2, v1, v19

    iget v2, v0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v2, v2, v21

    iget v4, v0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v4

    iget v4, v0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v4, v4, v21

    iget v6, v0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v4, v6

    sub-float/2addr v2, v4

    neg-float v4, v5

    add-float/2addr v4, v7

    sub-float/2addr v4, v9

    add-float/2addr v4, v3

    invoke-static {v2, v4}, Lcom/jme3/math/FastMath;->atan2(FF)F

    move-result v2

    aput v2, v1, v18

    :goto_1
    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Angles array must have three elements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toAxes([Lcom/jme3/math/Vector3f;)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->toRotationMatrix()Lcom/jme3/math/Matrix3f;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    aput-object v0, p1, v1

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Axes array must have three elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toRotationMatrix()Lcom/jme3/math/Matrix3f;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 11

    .line 3
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 4
    :goto_0
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v2, v0, v3

    .line 5
    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v5, v4, v3

    .line 6
    iget v6, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v6

    mul-float v7, v0, v2

    mul-float v8, v0, v5

    mul-float/2addr v0, v3

    .line 7
    iget v9, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v9

    mul-float v10, v4, v5

    mul-float/2addr v4, v3

    mul-float/2addr v5, v9

    mul-float/2addr v6, v3

    mul-float/2addr v9, v3

    add-float v3, v10, v6

    sub-float v3, v1, v3

    .line 8
    iput v3, p1, Lcom/jme3/math/Matrix3f;->m00:F

    sub-float v3, v8, v9

    .line 9
    iput v3, p1, Lcom/jme3/math/Matrix3f;->m01:F

    add-float v3, v0, v5

    .line 10
    iput v3, p1, Lcom/jme3/math/Matrix3f;->m02:F

    add-float/2addr v8, v9

    .line 11
    iput v8, p1, Lcom/jme3/math/Matrix3f;->m10:F

    add-float/2addr v6, v7

    sub-float v3, v1, v6

    .line 12
    iput v3, p1, Lcom/jme3/math/Matrix3f;->m11:F

    sub-float v3, v4, v2

    .line 13
    iput v3, p1, Lcom/jme3/math/Matrix3f;->m12:F

    sub-float/2addr v0, v5

    .line 14
    iput v0, p1, Lcom/jme3/math/Matrix3f;->m20:F

    add-float/2addr v4, v2

    .line 15
    iput v4, p1, Lcom/jme3/math/Matrix3f;->m21:F

    add-float/2addr v7, v10

    sub-float/2addr v1, v7

    .line 16
    iput v1, p1, Lcom/jme3/math/Matrix3f;->m22:F

    return-object p1
.end method

.method public toRotationMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 13

    .line 17
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 19
    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->toScaleVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {p1, v2, v2, v2}, Lcom/jme3/math/Matrix4f;->setScale(FFF)V

    .line 21
    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v3

    cmpl-float v4, v3, v2

    const/high16 v5, 0x40000000    # 2.0f

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v6, v3, v4

    if-lez v6, :cond_1

    div-float/2addr v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 22
    :goto_0
    iget v3, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v4, v3, v5

    .line 23
    iget v6, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v7, v6, v5

    .line 24
    iget v8, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v5, v8

    mul-float v9, v3, v4

    mul-float v10, v3, v7

    mul-float/2addr v3, v5

    .line 25
    iget v11, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v4, v11

    mul-float v12, v6, v7

    mul-float/2addr v6, v5

    mul-float/2addr v7, v11

    mul-float/2addr v8, v5

    mul-float/2addr v11, v5

    add-float v5, v12, v8

    sub-float v5, v2, v5

    .line 26
    iput v5, p1, Lcom/jme3/math/Matrix4f;->m00:F

    sub-float v5, v10, v11

    .line 27
    iput v5, p1, Lcom/jme3/math/Matrix4f;->m01:F

    add-float v5, v3, v7

    .line 28
    iput v5, p1, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr v10, v11

    .line 29
    iput v10, p1, Lcom/jme3/math/Matrix4f;->m10:F

    add-float/2addr v8, v9

    sub-float v5, v2, v8

    .line 30
    iput v5, p1, Lcom/jme3/math/Matrix4f;->m11:F

    sub-float v5, v6, v4

    .line 31
    iput v5, p1, Lcom/jme3/math/Matrix4f;->m12:F

    sub-float/2addr v3, v7

    .line 32
    iput v3, p1, Lcom/jme3/math/Matrix4f;->m20:F

    add-float/2addr v6, v4

    .line 33
    iput v6, p1, Lcom/jme3/math/Matrix4f;->m21:F

    add-float/2addr v9, v12

    sub-float/2addr v2, v9

    .line 34
    iput v2, p1, Lcom/jme3/math/Matrix4f;->m22:F

    .line 35
    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix4f;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 36
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTransformMatrix(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/math/Quaternion;->norm()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    div-float/2addr v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    mul-float v2, v0, v3

    iget v4, p0, Lcom/jme3/math/Quaternion;->y:F

    mul-float v5, v4, v3

    iget v6, p0, Lcom/jme3/math/Quaternion;->z:F

    mul-float/2addr v3, v6

    mul-float v7, v0, v2

    mul-float v8, v0, v5

    mul-float/2addr v0, v3

    iget v9, p0, Lcom/jme3/math/Quaternion;->w:F

    mul-float/2addr v2, v9

    mul-float v10, v4, v5

    mul-float/2addr v4, v3

    mul-float/2addr v5, v9

    mul-float/2addr v6, v3

    mul-float/2addr v9, v3

    add-float v3, v10, v6

    sub-float v3, v1, v3

    iput v3, p1, Lcom/jme3/math/Matrix4f;->m00:F

    sub-float v3, v8, v9

    iput v3, p1, Lcom/jme3/math/Matrix4f;->m01:F

    add-float v3, v0, v5

    iput v3, p1, Lcom/jme3/math/Matrix4f;->m02:F

    add-float/2addr v8, v9

    iput v8, p1, Lcom/jme3/math/Matrix4f;->m10:F

    add-float/2addr v6, v7

    sub-float v3, v1, v6

    iput v3, p1, Lcom/jme3/math/Matrix4f;->m11:F

    sub-float v3, v4, v2

    iput v3, p1, Lcom/jme3/math/Matrix4f;->m12:F

    sub-float/2addr v0, v5

    iput v0, p1, Lcom/jme3/math/Matrix4f;->m20:F

    add-float/2addr v4, v2

    iput v4, p1, Lcom/jme3/math/Matrix4f;->m21:F

    add-float/2addr v7, v10

    sub-float/2addr v1, v7

    iput v1, p1, Lcom/jme3/math/Matrix4f;->m22:F

    return-object p1
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

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    const-string v1, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    const-string v1, "z"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    const-string v1, "w"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/jme3/math/Quaternion;->x:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, Lcom/jme3/math/Quaternion;->y:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, Lcom/jme3/math/Quaternion;->z:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    iget v0, p0, Lcom/jme3/math/Quaternion;->w:F

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeFloat(F)V

    return-void
.end method
