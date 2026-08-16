.class public final Lcom/jme3/math/Matrix3f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final IDENTITY:Lcom/jme3/math/Matrix3f;

.field public static final ZERO:Lcom/jme3/math/Matrix3f;

.field private static final logger:Ljava/util/logging/Logger;

.field static final serialVersionUID:J = 0x1L


# instance fields
.field protected m00:F

.field protected m01:F

.field protected m02:F

.field protected m10:F

.field protected m11:F

.field protected m12:F

.field protected m20:F

.field protected m21:F

.field protected m22:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/jme3/math/Matrix3f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/jme3/math/Matrix3f;-><init>(FFFFFFFFF)V

    sput-object v0, Lcom/jme3/math/Matrix3f;->ZERO:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    sput-object v0, Lcom/jme3/math/Matrix3f;->IDENTITY:Lcom/jme3/math/Matrix3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 5
    iput p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 6
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 7
    iput p4, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 8
    iput p5, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 9
    iput p6, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 10
    iput p7, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 11
    iput p8, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 12
    iput p9, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Matrix3f;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/jme3/math/Matrix3f;->set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    return-void
.end method

.method public static equalIdentity(Lcom/jme3/math/Matrix3f;)Z
    .locals 8

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v4

    const/4 v2, 0x0

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v6, v4

    if-lez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    return v2

    :cond_4
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_6

    return v2

    :cond_6
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_7

    return v2

    :cond_7
    iget p0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    cmpl-double p0, v0, v4

    if-lez p0, :cond_8

    return v2

    :cond_8
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public absoluteLocal()V
    .locals 1

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public adjoint()Lcom/jme3/math/Matrix3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix3f;->adjoint(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public adjoint(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 8

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    .line 3
    :cond_0
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m00:F

    .line 4
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float v5, v2, v4

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    iput v5, p1, Lcom/jme3/math/Matrix3f;->m01:F

    .line 5
    iget v5, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float v6, v5, v3

    mul-float/2addr v2, v0

    sub-float/2addr v6, v2

    iput v6, p1, Lcom/jme3/math/Matrix3f;->m02:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float v2, v3, v0

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v6, v1

    sub-float/2addr v2, v6

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m10:F

    .line 7
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v1, v2

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float v7, v6, v0

    sub-float/2addr v1, v7

    iput v1, p1, Lcom/jme3/math/Matrix3f;->m11:F

    .line 8
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v6, v1

    mul-float/2addr v3, v2

    sub-float/2addr v6, v3

    iput v6, p1, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float v3, v1, v4

    .line 9
    iget v6, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v0, v6

    sub-float/2addr v3, v0

    iput v3, p1, Lcom/jme3/math/Matrix3f;->m20:F

    .line 10
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v0, v5

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v2, v6

    mul-float/2addr v5, v1

    sub-float/2addr v2, v5

    .line 11
    iput v2, p1, Lcom/jme3/math/Matrix3f;->m22:F

    return-object p1
.end method

.method public clone()Lcom/jme3/math/Matrix3f;
    .locals 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;
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
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public determinant()F
    .locals 7

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v3, v5

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v1, v6

    sub-float/2addr v3, v1

    mul-float/2addr v6, v4

    mul-float/2addr v0, v5

    sub-float/2addr v6, v0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/math/Matrix3f;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/jme3/math/Matrix3f;

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v0

    :cond_3
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_5

    return v0

    :cond_5
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_6

    return v0

    :cond_6
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_7

    return v0

    :cond_7
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_8

    return v0

    :cond_8
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget v3, p1, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_9

    return v0

    :cond_9
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iget p1, p1, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v2, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    :goto_0
    return v0
.end method

.method public fillFloatArray([FZ)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput p2, p1, v8

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput p2, p1, v7

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput p2, p1, v6

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput p2, p1, v5

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput p2, p1, v4

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput p2, p1, v3

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput p2, p1, v2

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput p2, p1, v1

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput p2, p1, v0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput p2, p1, v8

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput p2, p1, v7

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput p2, p1, v6

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput p2, p1, v5

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput p2, p1, v4

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput p2, p1, v3

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput p2, p1, v2

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput p2, p1, v1

    iget p2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput p2, p1, v0

    :goto_0
    return-void
.end method

.method public fillFloatBuffer(Ljava/nio/FloatBuffer;Z)Ljava/nio/FloatBuffer;
    .locals 3

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    invoke-virtual {p0, v1, p2}, Lcom/jme3/math/Matrix3f;->fillFloatArray([FZ)V

    iget-object p2, v0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {p1, p2, v1, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object p1
.end method

.method public fromAngleAxis(FLcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/math/Matrix3f;->fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public fromAngleNormalAxis(FLcom/jme3/math/Vector3f;)V
    .locals 10

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float v3, v2, v2

    iget v4, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float v5, v4, v4

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    mul-float v6, p2, p2

    mul-float v7, v2, v4

    mul-float/2addr v7, v1

    mul-float v8, v2, p2

    mul-float/2addr v8, v1

    mul-float v9, v4, p2

    mul-float/2addr v9, v1

    mul-float/2addr v2, p1

    mul-float/2addr v4, p1

    mul-float/2addr p2, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    iput v3, p0, Lcom/jme3/math/Matrix3f;->m00:F

    sub-float p1, v7, p2

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    add-float p1, v8, v4

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    add-float/2addr v7, p2

    iput v7, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v5, v1

    add-float/2addr v5, v0

    iput v5, p0, Lcom/jme3/math/Matrix3f;->m11:F

    sub-float p1, v9, v2

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    sub-float/2addr v8, v4

    iput v8, p0, Lcom/jme3/math/Matrix3f;->m20:F

    add-float/2addr v9, v2

    iput v9, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v6, v1

    add-float/2addr v6, v0

    iput v6, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget p1, p3, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget p1, p3, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget p1, p3, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public fromStartEndVectors(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 13

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, p2, v0}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    neg-float v3, v1

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const v4, 0x3f7ff972    # 0.9999f

    cmpl-float v3, v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-lez v3, :cond_8

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    goto :goto_1

    :cond_1
    neg-float v6, v6

    :goto_1
    iput v6, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v7, p1, Lcom/jme3/math/Vector3f;->y:F

    float-to-double v11, v7

    cmpl-double v8, v11, v9

    if-lez v8, :cond_2

    goto :goto_2

    :cond_2
    neg-float v7, v7

    :goto_2
    iput v7, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v8, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-double v11, v8

    cmpl-double v9, v11, v9

    if-lez v9, :cond_3

    goto :goto_3

    :cond_3
    neg-float v8, v8

    :goto_3
    iput v8, v3, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v9, v6, v7

    if-gez v9, :cond_5

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    iput v4, v3, Lcom/jme3/math/Vector3f;->x:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->z:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_4

    :cond_4
    iput v4, v3, Lcom/jme3/math/Vector3f;->z:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->y:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_4

    :cond_5
    cmpg-float v6, v7, v8

    if-gez v6, :cond_6

    iput v4, v3, Lcom/jme3/math/Vector3f;->y:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->z:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->x:F

    goto :goto_4

    :cond_6
    iput v4, v3, Lcom/jme3/math/Vector3f;->z:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->y:F

    iput v2, v3, Lcom/jme3/math/Vector3f;->x:F

    :goto_4
    iget v2, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v6, p1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v6

    iput v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v6, p1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v6

    iput v2, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v2, v3, Lcom/jme3/math/Vector3f;->z:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v2, p1

    iput v2, v1, Lcom/jme3/math/Vector3f;->z:F

    iget p1, v3, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr p1, v2

    iput p1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget p1, v3, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr p1, v2

    iput p1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget p1, v3, Lcom/jme3/math/Vector3f;->z:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, p2

    iput p1, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float p1, p2, p1

    invoke-virtual {v0, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    div-float/2addr p2, v2

    mul-float v2, p1, p2

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    mul-float/2addr v2, v3

    move v3, v5

    :goto_5
    const/4 v6, 0x3

    if-ge v3, v6, :cond_9

    move v7, v5

    :goto_6
    if-ge v7, v6, :cond_7

    neg-float v8, p1

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v1, v7}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v9

    mul-float/2addr v9, p2

    invoke-virtual {v0, v7}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v10

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v9

    mul-float/2addr v9, v2

    invoke-virtual {v1, v7}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p0, v3, v7, v8}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {p0, v3, v3}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v6

    add-float/2addr v6, v4

    invoke-virtual {p0, v3, v3, v6}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-float p1, v1, v4

    div-float/2addr v4, p1

    iget p1, v0, Lcom/jme3/math/Vector3f;->x:F

    mul-float p2, v4, p1

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float v3, v4, v2

    iget v6, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float v7, p2, v6

    mul-float/2addr v2, p2

    mul-float/2addr v6, v3

    mul-float/2addr p2, p1

    add-float/2addr p2, v1

    invoke-virtual {p0, v5, v5, p2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float p1, v7, p1

    const/4 p2, 0x1

    invoke-virtual {p0, v5, p2, p1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr p1, v2

    const/4 v8, 0x2

    invoke-virtual {p0, v5, v8, p1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v7, p1

    invoke-virtual {p0, p2, v5, v7}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v4, p1

    mul-float/2addr v4, p1

    add-float/2addr v4, v1

    invoke-virtual {p0, p2, p2, v4}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float p1, v6, p1

    invoke-virtual {p0, p2, v8, p1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v8, v5, v2}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v6, p1

    invoke-virtual {p0, v8, p2, v6}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    iget p1, v0, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    invoke-virtual {p0, v8, v8, v1}, Lcom/jme3/math/Matrix3f;->set(IIF)Lcom/jme3/math/Matrix3f;

    :cond_9
    return-void
.end method

.method public get(II)F
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_8

    :cond_1
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    .line 1
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return p1

    .line 2
    :cond_2
    sget-object p1, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Invalid matrix index."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_3
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    return p1

    .line 5
    :cond_4
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    return p1

    .line 6
    :cond_5
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    return p1

    .line 7
    :cond_6
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    return p1

    .line 8
    :cond_7
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    return p1

    .line 9
    :cond_8
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    return p1

    .line 10
    :cond_9
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    return p1

    .line 11
    :cond_a
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    return p1
.end method

.method public get([FZ)V
    .locals 10

    .line 12
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x9

    if-ne v0, v8, :cond_1

    const/4 v0, 0x7

    const/4 v8, 0x3

    if-eqz p2, :cond_0

    .line 13
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput p2, p1, v7

    .line 14
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput p2, p1, v6

    .line 15
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput p2, p1, v5

    .line 16
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput p2, p1, v8

    .line 17
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput p2, p1, v4

    .line 18
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput p2, p1, v3

    .line 19
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput p2, p1, v2

    .line 20
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput p2, p1, v0

    .line 21
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput p2, p1, v1

    goto/16 :goto_0

    .line 22
    :cond_0
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput p2, p1, v7

    .line 23
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput p2, p1, v6

    .line 24
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput p2, p1, v5

    .line 25
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput p2, p1, v8

    .line 26
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput p2, p1, v4

    .line 27
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput p2, p1, v3

    .line 28
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput p2, p1, v2

    .line 29
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput p2, p1, v0

    .line 30
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput p2, p1, v1

    goto :goto_0

    .line 31
    :cond_1
    array-length v0, p1

    const/16 v9, 0x10

    if-ne v0, v9, :cond_3

    const/16 v0, 0xa

    if-eqz p2, :cond_2

    .line 32
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput p2, p1, v7

    .line 33
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput p2, p1, v6

    .line 34
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput p2, p1, v5

    .line 35
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput p2, p1, v4

    .line 36
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput p2, p1, v3

    .line 37
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput p2, p1, v2

    .line 38
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput p2, p1, v1

    .line 39
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput p2, p1, v8

    .line 40
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput p2, p1, v0

    goto :goto_0

    .line 41
    :cond_2
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    aput p2, p1, v7

    .line 42
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    aput p2, p1, v6

    .line 43
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    aput p2, p1, v5

    .line 44
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    aput p2, p1, v4

    .line 45
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    aput p2, p1, v3

    .line 46
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    aput p2, p1, v2

    .line 47
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    aput p2, p1, v1

    .line 48
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    aput p2, p1, v8

    .line 49
    iget p2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    aput p2, p1, v0

    :goto_0
    return-void

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Array size must be 9 or 16 in Matrix3f.get()."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getColumn(I)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix3f;->getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 5
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 6
    :cond_1
    sget-object p2, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid column index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 7
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

    .line 8
    :cond_2
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 9
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 10
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 11
    :cond_3
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 12
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 13
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    return-object p2
.end method

.method public getRow(I)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix3f;->getRow(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getRow(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 4
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 5
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 6
    :cond_1
    sget-object p2, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid row index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid row index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8
    :cond_2
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 9
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 10
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    .line 11
    :cond_3
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 12
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 13
    iget p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput p1, p2, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    return-object p2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x559

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public invert()Lcom/jme3/math/Matrix3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/math/Matrix3f;->invert(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public invert(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 9

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->determinant()F

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    const/high16 v2, 0x34000000

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iput v3, p1, Lcom/jme3/math/Matrix3f;->m00:F

    .line 7
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float v6, v3, v5

    iget v7, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v7, v2

    sub-float/2addr v6, v7

    iput v6, p1, Lcom/jme3/math/Matrix3f;->m01:F

    .line 8
    iget v6, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float v7, v6, v4

    mul-float/2addr v3, v1

    sub-float/2addr v7, v3

    iput v7, p1, Lcom/jme3/math/Matrix3f;->m02:F

    .line 9
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float v3, v4, v1

    iget v7, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v7, v2

    sub-float/2addr v3, v7

    iput v3, p1, Lcom/jme3/math/Matrix3f;->m10:F

    .line 10
    iget v3, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v2, v3

    iget v7, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float v8, v7, v1

    sub-float/2addr v2, v8

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m11:F

    .line 11
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v7, v2

    mul-float/2addr v4, v3

    sub-float/2addr v7, v4

    iput v7, p1, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float v4, v2, v5

    .line 12
    iget v7, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v1, v7

    sub-float/2addr v4, v1

    iput v4, p1, Lcom/jme3/math/Matrix3f;->m20:F

    .line 13
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v1, v6

    mul-float/2addr v5, v3

    sub-float/2addr v1, v5

    iput v1, p1, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v3, v7

    mul-float/2addr v6, v2

    sub-float/2addr v3, v6

    .line 14
    iput v3, p1, Lcom/jme3/math/Matrix3f;->m22:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 15
    invoke-virtual {p1, v1}, Lcom/jme3/math/Matrix3f;->multLocal(F)Lcom/jme3/math/Matrix3f;

    return-object p1
.end method

.method public invertLocal()Lcom/jme3/math/Matrix3f;
    .locals 15

    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->determinant()F

    move-result v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->zero()Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float v3, v1, v2

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float v7, v6, v5

    iget v8, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float v9, v8, v2

    sub-float/2addr v7, v9

    mul-float v9, v8, v4

    mul-float v10, v6, v1

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float v11, v4, v10

    iget v12, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float v13, v12, v2

    sub-float/2addr v11, v13

    iget v13, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v2, v13

    mul-float v14, v6, v10

    sub-float/2addr v2, v14

    mul-float/2addr v6, v12

    mul-float/2addr v4, v13

    sub-float/2addr v6, v4

    mul-float v4, v12, v5

    mul-float v14, v1, v10

    sub-float/2addr v4, v14

    mul-float/2addr v10, v8

    mul-float/2addr v5, v13

    sub-float/2addr v10, v5

    mul-float/2addr v13, v1

    mul-float/2addr v8, v12

    sub-float/2addr v13, v8

    iput v3, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iput v7, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iput v9, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput v11, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput v6, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput v4, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v10, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v13, p0, Lcom/jme3/math/Matrix3f;->m22:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/jme3/math/Matrix3f;->multLocal(F)Lcom/jme3/math/Matrix3f;

    return-object p0
.end method

.method public isIdentity()Z
    .locals 3

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadIdentity()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    return-void
.end method

.method public mult(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_0

    .line 2
    new-instance v2, Lcom/jme3/math/Matrix3f;

    invoke-direct {v2}, Lcom/jme3/math/Matrix3f;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 3
    :goto_0
    iget v3, v0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v4, v1, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float v5, v3, v4

    iget v6, v0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v7, v1, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float v8, v6, v7

    add-float/2addr v5, v8

    iget v8, v0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v9, v1, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float v10, v8, v9

    add-float/2addr v5, v10

    .line 4
    iget v10, v1, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float v11, v3, v10

    iget v12, v1, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float v13, v6, v12

    add-float/2addr v11, v13

    iget v13, v1, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float v14, v8, v13

    add-float/2addr v11, v14

    .line 5
    iget v14, v1, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v3, v14

    iget v15, v1, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v6, v15

    add-float/2addr v3, v6

    iget v1, v1, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    .line 6
    iget v6, v0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float v8, v6, v4

    move/from16 p1, v3

    iget v3, v0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float v16, v3, v7

    add-float v8, v8, v16

    move/from16 p2, v11

    iget v11, v0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float v16, v11, v9

    add-float v8, v8, v16

    mul-float v16, v6, v10

    mul-float v17, v3, v12

    add-float v16, v16, v17

    mul-float v17, v11, v13

    move/from16 v18, v8

    add-float v8, v16, v17

    mul-float/2addr v6, v14

    mul-float/2addr v3, v15

    add-float/2addr v6, v3

    mul-float/2addr v11, v1

    add-float/2addr v6, v11

    .line 7
    iget v3, v0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v4, v3

    iget v11, v0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v7, v11

    add-float/2addr v4, v7

    iget v7, v0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v9, v7

    add-float/2addr v4, v9

    mul-float/2addr v10, v3

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    mul-float/2addr v13, v7

    add-float/2addr v10, v13

    mul-float/2addr v3, v14

    mul-float/2addr v11, v15

    add-float/2addr v3, v11

    mul-float/2addr v7, v1

    add-float/2addr v3, v7

    .line 8
    iput v5, v2, Lcom/jme3/math/Matrix3f;->m00:F

    move/from16 v11, p2

    .line 9
    iput v11, v2, Lcom/jme3/math/Matrix3f;->m01:F

    move/from16 v1, p1

    .line 10
    iput v1, v2, Lcom/jme3/math/Matrix3f;->m02:F

    move/from16 v1, v18

    .line 11
    iput v1, v2, Lcom/jme3/math/Matrix3f;->m10:F

    .line 12
    iput v8, v2, Lcom/jme3/math/Matrix3f;->m11:F

    .line 13
    iput v6, v2, Lcom/jme3/math/Matrix3f;->m12:F

    .line 14
    iput v4, v2, Lcom/jme3/math/Matrix3f;->m20:F

    .line 15
    iput v10, v2, Lcom/jme3/math/Matrix3f;->m21:F

    .line 16
    iput v3, v2, Lcom/jme3/math/Matrix3f;->m22:F

    return-object v2
.end method

.method public mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p2, :cond_0

    .line 18
    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 19
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 20
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 21
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    .line 22
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->x:F

    .line 23
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p2, Lcom/jme3/math/Vector3f;->y:F

    .line 24
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    iput v2, p2, Lcom/jme3/math/Vector3f;->z:F

    return-object p2
.end method

.method public multLocal(F)Lcom/jme3/math/Matrix3f;
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 2
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 3
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 4
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 5
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 6
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 7
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 8
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 9
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-object p0
.end method

.method public multLocal(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p0}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    return-object p1
.end method

.method public multLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 11
    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 12
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/jme3/math/Vector3f;->x:F

    .line 13
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p1, Lcom/jme3/math/Vector3f;->y:F

    .line 14
    iget v2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v0, v4

    add-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Vector3f;->z:F

    return-object p1
.end method

.method public normalize(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m10:F

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v0, v0

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    mul-float/2addr v0, v1

    iput v0, p1, Lcom/jme3/math/Matrix3f;->m01:F

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v2, v1

    iput v2, p1, Lcom/jme3/math/Matrix3f;->m11:F

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v3, v1

    iput v3, p1, Lcom/jme3/math/Matrix3f;->m21:F

    iget v1, p1, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float v4, v1, v3

    iget v5, p1, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float v6, v2, v5

    sub-float/2addr v4, v6

    iput v4, p1, Lcom/jme3/math/Matrix3f;->m02:F

    mul-float/2addr v5, v0

    iget v4, p1, Lcom/jme3/math/Matrix3f;->m00:F

    mul-float/2addr v3, v4

    sub-float/2addr v5, v3

    iput v5, p1, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v4, v2

    mul-float/2addr v0, v1

    sub-float/2addr v4, v0

    iput v4, p1, Lcom/jme3/math/Matrix3f;->m22:F

    return-object p1
.end method

.method public normalizeLocal()Lcom/jme3/math/Matrix3f;
    .locals 1

    invoke-virtual {p0, p0}, Lcom/jme3/math/Matrix3f;->normalize(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "m00"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    const-string v0, "m01"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    const-string v0, "m02"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    const-string v0, "m10"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    const-string v0, "m11"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    const-string v0, "m12"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    const-string v0, "m20"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    const-string v0, "m21"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    const-string v0, "m22"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public scale(Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-void
.end method

.method public set(IIF)Lcom/jme3/math/Matrix3f;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_a

    if-eq p2, v1, :cond_9

    if-eq p2, v0, :cond_8

    :cond_1
    if-eqz p2, :cond_7

    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    :goto_0
    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_3

    if-ne p2, v0, :cond_2

    .line 11
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-object p0

    .line 12
    :cond_2
    sget-object p1, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Invalid matrix index."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid indices into matrix."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m21:F

    return-object p0

    .line 15
    :cond_4
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m20:F

    return-object p0

    .line 16
    :cond_5
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m12:F

    return-object p0

    .line 17
    :cond_6
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m11:F

    return-object p0

    .line 18
    :cond_7
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m10:F

    return-object p0

    .line 19
    :cond_8
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    return-object p0

    .line 20
    :cond_9
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m01:F

    return-object p0

    .line 21
    :cond_a
    iput p3, p0, Lcom/jme3/math/Matrix3f;->m00:F

    return-object p0
.end method

.method public set(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->loadIdentity()V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m00:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 3
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 4
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 5
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 6
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 7
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 8
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 9
    iget v0, p1, Lcom/jme3/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 10
    iget p1, p1, Lcom/jme3/math/Matrix3f;->m22:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    :goto_0
    return-object p0
.end method

.method public set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Matrix3f;
    .locals 0

    .line 54
    invoke-virtual {p1, p0}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    return-object p1
.end method

.method public set([F)Lcom/jme3/math/Matrix3f;
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/Matrix3f;->set([FZ)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    return-object p1
.end method

.method public set([FZ)Lcom/jme3/math/Matrix3f;
    .locals 9

    .line 34
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    .line 35
    aget p2, p1, v8

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 36
    aget p2, p1, v7

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 37
    aget p2, p1, v6

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 38
    aget p2, p1, v5

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 39
    aget p2, p1, v4

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 40
    aget p2, p1, v3

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 41
    aget p2, p1, v2

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 42
    aget p2, p1, v1

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 43
    aget p1, p1, v0

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    goto :goto_0

    .line 44
    :cond_0
    aget p2, p1, v8

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    .line 45
    aget p2, p1, v5

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    .line 46
    aget p2, p1, v2

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 47
    aget p2, p1, v7

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 48
    aget p2, p1, v4

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 49
    aget p2, p1, v1

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 50
    aget p2, p1, v6

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 51
    aget p2, p1, v3

    iput p2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 52
    aget p1, p1, v0

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    :goto_0
    return-object p0

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array must be of size 9."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set([[F)Lcom/jme3/math/Matrix3f;
    .locals 5

    .line 22
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v3, v2

    if-ne v3, v1, :cond_0

    .line 23
    aget v1, v2, v0

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    const/4 v1, 0x1

    .line 24
    aget v3, v2, v1

    iput v3, p0, Lcom/jme3/math/Matrix3f;->m01:F

    const/4 v3, 0x2

    .line 25
    aget v2, v2, v3

    iput v2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    .line 26
    aget-object v2, p1, v1

    aget v4, v2, v0

    iput v4, p0, Lcom/jme3/math/Matrix3f;->m10:F

    .line 27
    aget v4, v2, v1

    iput v4, p0, Lcom/jme3/math/Matrix3f;->m11:F

    .line 28
    aget v2, v2, v3

    iput v2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    .line 29
    aget-object p1, p1, v3

    aget v0, p1, v0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    .line 30
    aget v0, p1, v1

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    .line 31
    aget p1, p1, v3

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    return-object p0

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array must be of size 9."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColumn(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    if-nez p2, :cond_0

    sget-object p1, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Column is null. Ignoring."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid column index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

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

    :cond_2
    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    goto :goto_0

    :cond_3
    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    :goto_0
    return-object p0
.end method

.method public setRow(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    if-nez p2, :cond_0

    sget-object p1, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string p2, "Row is null. Ignoring."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/math/Matrix3f;->logger:Ljava/util/logging/Logger;

    const-string v0, "Invalid row index."

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid row index. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    goto :goto_0

    :cond_3
    iget p1, p2, Lcom/jme3/math/Vector3f;->x:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget p1, p2, Lcom/jme3/math/Vector3f;->z:F

    iput p1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    :goto_0
    return-object p0
.end method

.method public toFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 3

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Matrix3f\n[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m00:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m01:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m02:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " \n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m10:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m11:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m12:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m22:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " \n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lcom/jme3/math/Matrix3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/math/Matrix3f;->transposeLocal()Lcom/jme3/math/Matrix3f;

    move-result-object v0

    return-object v0
.end method

.method public transposeLocal()Lcom/jme3/math/Matrix3f;
    .locals 2

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v1, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    return-object p0
.end method

.method public transposeNew()Lcom/jme3/math/Matrix3f;
    .locals 11

    new-instance v10, Lcom/jme3/math/Matrix3f;

    iget v1, p0, Lcom/jme3/math/Matrix3f;->m00:F

    iget v2, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iget v3, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iget v4, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iget v5, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iget v6, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iget v7, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iget v8, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iget v9, p0, Lcom/jme3/math/Matrix3f;->m22:F

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/jme3/math/Matrix3f;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    const-string v1, "m00"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    const-string v1, "m01"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    const-string v1, "m02"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    const-string v1, "m10"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    const-string v1, "m11"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    const-string v1, "m12"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    const-string v1, "m20"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    const-string v1, "m21"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    const-string v1, "m22"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method

.method public zero()Lcom/jme3/math/Matrix3f;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m22:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m21:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m20:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m12:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m11:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m10:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m02:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m01:F

    iput v0, p0, Lcom/jme3/math/Matrix3f;->m00:F

    return-object p0
.end method
