.class public abstract Ljavax/vecmath/Tuple4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = 0x62183735c5c58bc3L


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 23
    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 24
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 25
    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 3
    iput p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 4
    iput p3, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 5
    iput p4, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 18
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 19
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 20
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>(Ljavax/vecmath/Tuple4f;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 13
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 14
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 15
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    const/4 v0, 0x1

    .line 8
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    const/4 v0, 0x2

    .line 9
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    const/4 v0, 0x3

    .line 10
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method


# virtual methods
.method public final absolute()V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final absolute(Ljavax/vecmath/Tuple4f;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final add(Ljavax/vecmath/Tuple4f;Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iget p2, p2, Ljavax/vecmath/Tuple4f;->w:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final clamp(FF)V
    .locals 2

    .line 17
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    .line 18
    iput p2, p0, Ljavax/vecmath/Tuple4f;->x:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 19
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 20
    :cond_1
    :goto_0
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_2

    .line 21
    iput p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    goto :goto_1

    :cond_2
    cmpg-float v0, v0, p1

    if-gez v0, :cond_3

    .line 22
    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 23
    :cond_3
    :goto_1
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_4

    .line 24
    iput p2, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_2

    :cond_4
    cmpg-float v0, v0, p1

    if-gez v0, :cond_5

    .line 25
    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 26
    :cond_5
    :goto_2
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_6

    .line 27
    iput p2, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_3

    :cond_6
    cmpg-float p2, v0, p1

    if-gez p2, :cond_7

    .line 28
    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    :cond_7
    :goto_3
    return-void
.end method

.method public final clamp(FFLjavax/vecmath/Tuple4f;)V
    .locals 2

    .line 1
    iget v0, p3, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    .line 2
    iput p2, p0, Ljavax/vecmath/Tuple4f;->x:F

    goto :goto_0

    :cond_0
    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    .line 3
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 5
    :goto_0
    iget v0, p3, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_2

    .line 6
    iput p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    goto :goto_1

    :cond_2
    cmpg-float v1, v0, p1

    if-gez v1, :cond_3

    .line 7
    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    goto :goto_1

    .line 8
    :cond_3
    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 9
    :goto_1
    iget v0, p3, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v1, v0, p2

    if-lez v1, :cond_4

    .line 10
    iput p2, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_2

    :cond_4
    cmpg-float v1, v0, p1

    if-gez v1, :cond_5

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_2

    .line 12
    :cond_5
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 13
    :goto_2
    iget p3, p3, Ljavax/vecmath/Tuple4f;->w:F

    cmpl-float v0, p3, p2

    if-lez v0, :cond_6

    .line 14
    iput p2, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_3

    :cond_6
    cmpg-float p2, p3, p1

    if-gez p2, :cond_7

    .line 15
    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_3

    .line 16
    :cond_7
    iput p3, p0, Ljavax/vecmath/Tuple4f;->w:F

    :goto_3
    return-void
.end method

.method public final clampMax(F)V
    .locals 1

    .line 13
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    :cond_0
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 15
    :cond_1
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 16
    :cond_2
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    :cond_3
    return-void
.end method

.method public final clampMax(FLjavax/vecmath/Tuple4f;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 4
    :goto_0
    iget v0, p2, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    .line 5
    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    :goto_1
    iget v0, p2, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_2

    .line 8
    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_2

    .line 9
    :cond_2
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 10
    :goto_2
    iget v0, p2, Ljavax/vecmath/Tuple4f;->w:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_3

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_3

    .line 12
    :cond_3
    iget p1, p2, Ljavax/vecmath/Tuple4f;->z:F

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    :goto_3
    return-void
.end method

.method public final clampMin(F)V
    .locals 1

    .line 13
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    :cond_0
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 15
    :cond_1
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 16
    :cond_2
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_3

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    :cond_3
    return-void
.end method

.method public final clampMin(FLjavax/vecmath/Tuple4f;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    .line 2
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 4
    :goto_0
    iget v0, p2, Ljavax/vecmath/Tuple4f;->y:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_1

    .line 5
    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    goto :goto_1

    .line 6
    :cond_1
    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    :goto_1
    iget v0, p2, Ljavax/vecmath/Tuple4f;->z:F

    cmpg-float v1, v0, p1

    if-gez v1, :cond_2

    .line 8
    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    goto :goto_2

    .line 9
    :cond_2
    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 10
    :goto_2
    iget p2, p2, Ljavax/vecmath/Tuple4f;->w:F

    cmpg-float v0, p2, p1

    if-gez v0, :cond_3

    .line 11
    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    goto :goto_3

    .line 12
    :cond_3
    iput p2, p0, Ljavax/vecmath/Tuple4f;->w:F

    :goto_3
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

.method public epsilonEquals(Ljavax/vecmath/Tuple4f;F)Z
    .locals 4

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

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
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    cmpg-float v3, v0, v1

    if-gez v3, :cond_4

    neg-float v0, v0

    :cond_4
    cmpl-float v0, v0, p2

    if-lez v0, :cond_5

    return v2

    :cond_5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v3, p1, Ljavax/vecmath/Tuple4f;->z:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    cmpg-float v3, v0, v1

    if-gez v3, :cond_7

    neg-float v0, v0

    :cond_7
    cmpl-float v0, v0, p2

    if-lez v0, :cond_8

    return v2

    :cond_8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    cmpg-float p1, v0, v1

    if-gez p1, :cond_a

    neg-float v0, v0

    :cond_a
    cmpl-float p1, v0, p2

    if-lez p1, :cond_b

    return v2

    :cond_b
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 2
    :try_start_0
    check-cast p1, Ljavax/vecmath/Tuple4f;

    .line 3
    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F
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

.method public equals(Ljavax/vecmath/Tuple4f;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, v1, p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final get(Ljavax/vecmath/Tuple4f;)V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iput v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    iput v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    iput v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    iput v0, p1, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final get([F)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 3
    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 4
    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    aput v1, p1, v0

    return-void
.end method

.method public final getW()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return v0
.end method

.method public final getX()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    return v0
.end method

.method public final getZ()F
    .locals 1

    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    return v0
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    invoke-static {v0}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1f

    add-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Tuple4f;->y:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v4, p0, Ljavax/vecmath/Tuple4f;->z:F

    invoke-static {v4}, Ljavax/vecmath/VecMathUtil;->floatToIntBits(F)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    mul-long/2addr v0, v2

    iget v2, p0, Ljavax/vecmath/Tuple4f;->w:F

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

.method public interpolate(Ljavax/vecmath/Tuple4f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 5
    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v0

    iget v2, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v0

    iget v2, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v0, v1

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public interpolate(Ljavax/vecmath/Tuple4f;Ljavax/vecmath/Tuple4f;F)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    .line 1
    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v1, v0

    iget v2, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v1, v0

    iget v2, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v1, v0

    iget v2, p2, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    iput v1, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v0, p1

    iget p1, p2, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p3, p1

    add-float/2addr v0, p3

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final negate()V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final negate(Ljavax/vecmath/Tuple4f;)V
    .locals 1

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    neg-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    neg-float p1, p1

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final scale(F)V
    .locals 1

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final scale(FLjavax/vecmath/Tuple4f;)V
    .locals 1

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p2, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p2, p2, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final scaleAdd(FLjavax/vecmath/Tuple4f;)V
    .locals 2

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v0, p1

    iget v1, p2, Ljavax/vecmath/Tuple4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p1, v0

    iget p2, p2, Ljavax/vecmath/Tuple4f;->w:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final scaleAdd(FLjavax/vecmath/Tuple4f;Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 1
    iget v0, p2, Ljavax/vecmath/Tuple4f;->x:F

    mul-float/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple4f;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p2, Ljavax/vecmath/Tuple4f;->y:F

    mul-float/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple4f;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p2, Ljavax/vecmath/Tuple4f;->z:F

    mul-float/2addr v0, p1

    iget v1, p3, Ljavax/vecmath/Tuple4f;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p2, p2, Ljavax/vecmath/Tuple4f;->w:F

    mul-float/2addr p1, p2

    iget p2, p3, Ljavax/vecmath/Tuple4f;->w:F

    add-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final set(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iput p2, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iput p3, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iput p4, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4d;)V
    .locals 2

    .line 13
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->x:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 14
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->y:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 15
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->z:D

    double-to-float v0, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 16
    iget-wide v0, p1, Ljavax/vecmath/Tuple4d;->w:D

    double-to-float p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final set(Ljavax/vecmath/Tuple4f;)V
    .locals 1

    .line 9
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 10
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 11
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 12
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    const/4 v0, 0x1

    .line 6
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    const/4 v0, 0x2

    .line 7
    aget v0, p1, v0

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    const/4 v0, 0x3

    .line 8
    aget p1, p1, v0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final setW(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->x:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->y:F

    return-void
.end method

.method public final setZ(F)V
    .locals 0

    iput p1, p0, Ljavax/vecmath/Tuple4f;->z:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 5
    iget v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 6
    iget v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 7
    iget v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 8
    iget v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    sub-float/2addr v0, p1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public final sub(Ljavax/vecmath/Tuple4f;Ljavax/vecmath/Tuple4f;)V
    .locals 2

    .line 1
    iget v0, p1, Ljavax/vecmath/Tuple4f;->x:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->x:F

    .line 2
    iget v0, p1, Ljavax/vecmath/Tuple4f;->y:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->y:F

    .line 3
    iget v0, p1, Ljavax/vecmath/Tuple4f;->z:F

    iget v1, p2, Ljavax/vecmath/Tuple4f;->z:F

    sub-float/2addr v0, v1

    iput v0, p0, Ljavax/vecmath/Tuple4f;->z:F

    .line 4
    iget p1, p1, Ljavax/vecmath/Tuple4f;->w:F

    iget p2, p2, Ljavax/vecmath/Tuple4f;->w:F

    sub-float/2addr p1, p2

    iput p1, p0, Ljavax/vecmath/Tuple4f;->w:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Tuple4f;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Tuple4f;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljavax/vecmath/Tuple4f;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljavax/vecmath/Tuple4f;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
