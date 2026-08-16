.class public abstract Ljavax/vecmath/Tuple2f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x7d0e24d20c6ee2c4L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 15
    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 3
    iput p2, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2d;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 12
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple2f;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 9
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    const/4 v0, 0x1

    .line 6
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method


# virtual methods
.method public final absolute()V
    .locals 1

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final absolute(Ljavax/vecmath/Tuple2f;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple2f;Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final clamp(FF)V
    .locals 2

    .line 9
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    .line 10
    iput p2, p0, Ljavax/vecmath/Tuple2f;->x:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 12
    :cond_1
    :goto_0
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_2

    .line 13
    iput p2, p0, Ljavax/vecmath/Tuple2f;->y:F

    goto :goto_1

    :cond_2
    cmpg-float p2, v0, p1

    if-gez p2, :cond_3

    .line 14
    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    :cond_3
    :goto_1
    return-void
.end method

.method public final clamp(FFLjavax/vecmath/Tuple2f;)V
    .locals 2

    .line 1
    iget v0, p3, Ljavax/vecmath/Tuple2f;->x:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    .line 2
    iput p2, p0, Ljavax/vecmath/Tuple2f;->x:F

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    .line 3
    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 5
    :goto_0
    iget p3, p3, Ljavax/vecmath/Tuple2f;->y:F

    cmpl-float v0, p3, p2

    if-lez v0, :cond_2

    .line 6
    iput p2, p0, Ljavax/vecmath/Tuple2f;->y:F

    goto :goto_1

    :cond_2
    cmpg-float p2, p3, p1

    if-gez p2, :cond_3

    .line 7
    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    goto :goto_1

    .line 8
    :cond_3
    iput p3, p0, Ljavax/vecmath/Tuple2f;->y:F

    :goto_1
    return-void
.end method

.method public final clampMax(F)V
    .locals 1

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 8
    :cond_0
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    :cond_1
    return-void
.end method

.method public final clampMax(FLjavax/vecmath/Tuple2f;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple2f;->x:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    :goto_0
    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    .line 5
    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    goto :goto_1

    .line 6
    :cond_1
    iput p2, p0, Ljavax/vecmath/Tuple2f;->y:F

    :goto_1
    return-void
.end method

.method public final clampMin(F)V
    .locals 1

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 8
    :cond_0
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    :cond_1
    return-void
.end method

.method public final clampMin(FLjavax/vecmath/Tuple2f;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple2f;->x:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    :goto_0
    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    cmpg-float v0, p2, p1

    if-gez v0, :cond_1

    .line 5
    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    goto :goto_1

    .line 6
    :cond_1
    iput p2, p0, Ljavax/vecmath/Tuple2f;->y:F

    :goto_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public epsilonEquals(Ljavax/vecmath/Tuple2f;F)Z
    .locals 4

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    neg-float v0, v0

    :cond_1
    cmpl-float v0, v0, p2

    if-lez v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    cmpg-float p1, v0, v1

    if-gez p1, :cond_4

    neg-float v0, v0

    :cond_4
    cmpl-float p1, v0, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Tuple2f;

    .line 3
    iget v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v2, p1, Ljavax/vecmath/Tuple2f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public equals(Ljavax/vecmath/Tuple2f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v2, p1, Ljavax/vecmath/Tuple2f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get([F)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    aput v1, p1, v0

    return-void
.end method

.method public final getX()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    invoke-static {v0}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Tuple2f;->y:F

    invoke-static {v2}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final interpolate(Ljavax/vecmath/Tuple2f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 3
    iget v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v0, v1

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final interpolate(Ljavax/vecmath/Tuple2f;Ljavax/vecmath/Tuple2f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 1
    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v1, v0

    iget v2, p2, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v0, p1

    iget p1, p2, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final negate()V
    .locals 1

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final negate(Ljavax/vecmath/Tuple2f;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    neg-float p1, p1

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final scale(F)V
    .locals 1

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final scale(FLjavax/vecmath/Tuple2f;)V
    .locals 1

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final scaleAdd(FLjavax/vecmath/Tuple2f;)V
    .locals 2

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr p1, v0

    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final scaleAdd(FLjavax/vecmath/Tuple2f;Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple2f;->x:F

    mul-float/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple2f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    mul-float/2addr p1, p2

    iget p2, p3, Ljavax/vecmath/Tuple2f;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final set(FF)V
    .locals 0

    .line 1
    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iput p2, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple2d;)V
    .locals 2

    .line 7
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 8
    iget-wide v0, p1, Ljavax/vecmath/Tuple2d;->y:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple2f;)V
    .locals 1

    .line 5
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 6
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    const/4 v0, 0x1

    .line 4
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 3
    iget v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 4
    iget v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple2f;Ljavax/vecmath/Tuple2f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple2f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple2f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple2f;->x:F

    .line 2
    iget p1, p1, Ljavax/vecmath/Tuple2f;->y:F

    iget p2, p2, Ljavax/vecmath/Tuple2f;->y:F

    sub-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple2f;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Tuple2f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Tuple2f;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
