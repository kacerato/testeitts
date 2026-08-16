.class public Lcom/jme3/math/LineSegment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/jme3/export/Savable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private direction:Lcom/jme3/math/Vector3f;

.field private extent:F

.field private origin:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/LineSegment;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    .line 6
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    iput p1, p0, Lcom/jme3/math/LineSegment;->extent:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p2, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v3, v4

    mul-float/2addr v3, v2

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v5, p2, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v2

    invoke-direct {v0, v1, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    .line 14
    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    .line 15
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->length()F

    move-result p1

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/jme3/math/LineSegment;->extent:F

    .line 16
    iget-object p1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    .line 10
    iput-object p2, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    .line 11
    iput p3, p0, Lcom/jme3/math/LineSegment;->extent:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/math/LineSegment;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/LineSegment;

    .line 3
    iget-object v1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5
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
    invoke-virtual {p0}, Lcom/jme3/math/LineSegment;->clone()Lcom/jme3/math/LineSegment;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lcom/jme3/math/LineSegment;)F
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/math/LineSegment;->distanceSquared(Lcom/jme3/math/LineSegment;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public distance(Lcom/jme3/math/Ray;)F
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/math/LineSegment;->distanceSquared(Lcom/jme3/math/Ray;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public distance(Lcom/jme3/math/Vector3f;)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/math/LineSegment;->distanceSquared(Lcom/jme3/math/Vector3f;)F

    move-result p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    return p1
.end method

.method public distanceSquared(Lcom/jme3/math/LineSegment;)F
    .locals 12

    .line 12
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 13
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 14
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 15
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    neg-float v2, v2

    .line 16
    iget-object v3, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v3

    .line 17
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    neg-float v4, v4

    .line 18
    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v1

    .line 19
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    mul-float v0, v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v0

    .line 20
    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    const/high16 v6, 0x34000000

    cmpl-float v6, v0, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-ltz v6, :cond_1f

    mul-float v6, v2, v4

    sub-float/2addr v6, v3

    mul-float v8, v2, v3

    sub-float/2addr v8, v4

    .line 21
    iget v9, p0, Lcom/jme3/math/LineSegment;->extent:F

    mul-float/2addr v9, v0

    .line 22
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v10

    mul-float/2addr v10, v0

    neg-float v11, v9

    cmpl-float v11, v6, v11

    if-ltz v11, :cond_12

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_5

    neg-float v9, v10

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_3

    cmpg-float v9, v8, v10

    if-gtz v9, :cond_0

    div-float/2addr v5, v0

    mul-float/2addr v6, v5

    mul-float/2addr v8, v5

    mul-float p1, v2, v8

    add-float/2addr p1, v6

    mul-float/2addr v3, v7

    add-float/2addr p1, v3

    mul-float/2addr p1, v6

    mul-float/2addr v2, v6

    add-float/2addr v2, v8

    mul-float/2addr v4, v7

    add-float/2addr v2, v4

    mul-float/2addr v8, v2

    add-float/2addr p1, v8

    :goto_0
    add-float/2addr p1, v1

    goto/16 :goto_12

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    neg-float v0, v2

    .line 24
    iget v2, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    :goto_1
    neg-float v2, v2

    :cond_1
    mul-float/2addr v0, v7

    sub-float v0, v2, v0

    :goto_2
    mul-float/2addr v2, v0

    mul-float/2addr v4, v7

    add-float/2addr v4, p1

    mul-float/2addr p1, v4

    add-float/2addr v2, p1

    add-float p1, v2, v1

    goto/16 :goto_12

    :cond_2
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1

    :goto_3
    neg-float v2, v0

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    neg-float p1, p1

    mul-float/2addr v2, p1

    add-float/2addr v2, v3

    neg-float v0, v2

    .line 26
    iget v2, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v3, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    cmpg-float v3, v0, v2

    if-gtz v3, :cond_1

    goto :goto_3

    :cond_5
    neg-float v0, v10

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_d

    cmpg-float v0, v8, v10

    if-gtz v0, :cond_8

    .line 27
    iget v0, p0, Lcom/jme3/math/LineSegment;->extent:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    neg-float v2, v2

    .line 28
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    :goto_4
    neg-float p1, p1

    :goto_5
    mul-float/2addr v2, v7

    sub-float v2, p1, v2

    :goto_6
    mul-float/2addr p1, v2

    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    mul-float/2addr v0, v3

    :goto_7
    add-float/2addr p1, v0

    goto :goto_0

    .line 30
    :cond_6
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_7

    :goto_8
    neg-float p1, v2

    goto :goto_6

    .line 31
    :cond_7
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto :goto_5

    .line 32
    :cond_8
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v0

    mul-float v5, v2, v0

    add-float/2addr v5, v3

    neg-float v5, v5

    .line 33
    iget v6, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v8, v6

    cmpg-float v8, v5, v8

    if-gez v8, :cond_9

    :goto_9
    neg-float p1, v6

    mul-float/2addr v5, v7

    sub-float v2, p1, v5

    mul-float/2addr p1, v2

    :goto_a
    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    mul-float/2addr v0, v4

    goto :goto_7

    :cond_9
    cmpg-float v8, v5, v6

    if-gtz v8, :cond_a

    :goto_b
    neg-float p1, v5

    mul-float/2addr p1, v5

    goto :goto_a

    :cond_a
    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    neg-float v0, v2

    .line 34
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v2

    neg-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_b

    .line 35
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    :goto_c
    neg-float p1, p1

    :goto_d
    mul-float/2addr v0, v7

    sub-float v0, p1, v0

    :goto_e
    mul-float/2addr p1, v0

    mul-float/2addr v3, v7

    add-float/2addr v3, v6

    mul-float/2addr v6, v3

    add-float/2addr p1, v6

    goto/16 :goto_0

    .line 36
    :cond_b
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_c

    :goto_f
    neg-float p1, v0

    goto :goto_e

    .line 37
    :cond_c
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto :goto_d

    .line 38
    :cond_d
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v0

    neg-float v0, v0

    mul-float v5, v2, v0

    add-float/2addr v5, v3

    neg-float v5, v5

    .line 39
    iget v6, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v8, v6

    cmpg-float v8, v5, v8

    if-gez v8, :cond_e

    goto :goto_9

    :cond_e
    cmpg-float v8, v5, v6

    if-gtz v8, :cond_f

    goto :goto_b

    :cond_f
    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    neg-float v0, v2

    .line 40
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_10

    .line 41
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto :goto_d

    .line 42
    :cond_10
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v2

    neg-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_11

    goto :goto_f

    .line 43
    :cond_11
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto :goto_c

    :cond_12
    neg-float v0, v10

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_1a

    cmpg-float v0, v8, v10

    if-gtz v0, :cond_15

    .line 44
    iget v0, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v0, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    neg-float v2, v2

    .line 45
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_13

    .line 46
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto/16 :goto_4

    .line 47
    :cond_13
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_14

    goto/16 :goto_8

    .line 48
    :cond_14
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto/16 :goto_5

    .line 49
    :cond_15
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v0

    mul-float v5, v2, v0

    add-float/2addr v5, v3

    neg-float v5, v5

    .line 50
    iget v6, p0, Lcom/jme3/math/LineSegment;->extent:F

    cmpl-float v8, v5, v6

    if-lez v8, :cond_16

    :goto_10
    mul-float/2addr v5, v7

    sub-float p1, v6, v5

    mul-float/2addr v6, p1

    mul-float/2addr v4, v7

    add-float/2addr v4, v0

    mul-float/2addr v0, v4

    add-float/2addr v6, v0

    add-float p1, v6, v1

    goto/16 :goto_12

    :cond_16
    neg-float v8, v6

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_17

    goto/16 :goto_b

    :cond_17
    neg-float v0, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    neg-float v2, v2

    .line 51
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_18

    .line 52
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto/16 :goto_4

    .line 53
    :cond_18
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_19

    goto/16 :goto_8

    .line 54
    :cond_19
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto/16 :goto_5

    .line 55
    :cond_1a
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v0

    neg-float v0, v0

    mul-float v5, v2, v0

    add-float/2addr v5, v3

    neg-float v5, v5

    .line 56
    iget v6, p0, Lcom/jme3/math/LineSegment;->extent:F

    cmpl-float v8, v5, v6

    if-lez v8, :cond_1b

    goto :goto_10

    :cond_1b
    neg-float v8, v6

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_1c

    goto/16 :goto_b

    :cond_1c
    neg-float v0, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    neg-float v2, v2

    .line 57
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1d

    .line 58
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto/16 :goto_4

    .line 59
    :cond_1d
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_1e

    goto/16 :goto_8

    .line 60
    :cond_1e
    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    goto/16 :goto_5

    .line 61
    :cond_1f
    iget v0, p0, Lcom/jme3/math/LineSegment;->extent:F

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    add-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v2, p1

    if-lez p1, :cond_20

    const/high16 v5, -0x40800000    # -1.0f

    :cond_20
    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v3, p1

    neg-float p1, v3

    neg-float v2, v0

    cmpg-float v4, p1, v2

    if-gez v4, :cond_21

    move v0, v2

    goto :goto_11

    :cond_21
    cmpl-float v2, p1, v0

    if-lez v2, :cond_22

    goto :goto_11

    :cond_22
    move v0, p1

    :goto_11
    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    mul-float/2addr v0, v3

    add-float p1, v0, v1

    .line 62
    :goto_12
    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    return p1
.end method

.method public distanceSquared(Lcom/jme3/math/Ray;)F
    .locals 12

    .line 63
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v1

    neg-float v1, v1

    .line 65
    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p1

    .line 66
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    neg-float v2, v2

    .line 67
    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result v0

    mul-float v3, v1, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    .line 68
    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v3

    const/high16 v5, 0x34000000

    cmpl-float v5, v3, v5

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    if-ltz v5, :cond_d

    mul-float v5, v1, v2

    sub-float/2addr v5, p1

    mul-float v8, v1, p1

    sub-float/2addr v8, v2

    .line 69
    iget v9, p0, Lcom/jme3/math/LineSegment;->extent:F

    mul-float v10, v9, v3

    cmpl-float v11, v5, v6

    if-ltz v11, :cond_4

    neg-float v11, v10

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_2

    cmpg-float v10, v8, v10

    if-gtz v10, :cond_0

    div-float/2addr v4, v3

    mul-float/2addr v5, v4

    mul-float/2addr v8, v4

    mul-float v3, v1, v8

    add-float/2addr v3, v5

    mul-float/2addr p1, v7

    add-float/2addr v3, p1

    mul-float/2addr v3, v5

    mul-float/2addr v1, v5

    add-float/2addr v1, v8

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    mul-float/2addr v8, v1

    add-float/2addr v3, v8

    :goto_0
    add-float/2addr v3, v0

    goto/16 :goto_7

    :cond_0
    mul-float/2addr v1, v9

    add-float/2addr v1, p1

    neg-float p1, v1

    cmpl-float v1, p1, v6

    if-lez v1, :cond_1

    :goto_1
    neg-float v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v2, v7

    add-float/2addr v2, v9

    mul-float/2addr v9, v2

    add-float/2addr v1, v9

    :goto_2
    add-float v3, v1, v0

    goto/16 :goto_7

    :cond_1
    :goto_3
    mul-float/2addr v2, v7

    add-float/2addr v2, v9

    mul-float/2addr v9, v2

    add-float v3, v9, v0

    goto/16 :goto_7

    :cond_2
    neg-float v3, v9

    mul-float/2addr v1, v3

    add-float/2addr v1, p1

    neg-float p1, v1

    cmpl-float v1, p1, v6

    if-lez v1, :cond_3

    :goto_4
    neg-float v1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    goto :goto_2

    :cond_3
    mul-float/2addr v2, v7

    add-float/2addr v2, v3

    mul-float/2addr v3, v2

    goto :goto_0

    :cond_4
    neg-float v3, v10

    cmpg-float v3, v8, v3

    if-gtz v3, :cond_8

    neg-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, p1

    neg-float p1, v1

    cmpl-float v1, p1, v6

    if-lez v1, :cond_5

    neg-float v1, v9

    neg-float v3, p1

    mul-float/2addr v3, p1

    mul-float/2addr v2, v7

    add-float/2addr v2, v1

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    goto :goto_0

    :cond_5
    neg-float p1, v2

    neg-float v1, v9

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6

    :goto_5
    neg-float v9, v9

    goto :goto_3

    :cond_6
    cmpl-float v1, p1, v9

    if-lez v1, :cond_7

    goto :goto_3

    :cond_7
    move v9, p1

    goto :goto_3

    :cond_8
    cmpg-float v3, v8, v10

    if-gtz v3, :cond_a

    neg-float p1, v2

    neg-float v1, v9

    cmpg-float v1, p1, v1

    if-gez v1, :cond_9

    goto :goto_5

    :cond_9
    cmpl-float v1, p1, v9

    if-lez v1, :cond_7

    goto :goto_3

    :cond_a
    mul-float/2addr v1, v9

    add-float/2addr v1, p1

    neg-float p1, v1

    cmpl-float v1, p1, v6

    if-lez v1, :cond_b

    goto :goto_1

    :cond_b
    neg-float p1, v2

    neg-float v1, v9

    cmpg-float v1, p1, v1

    if-gez v1, :cond_c

    goto :goto_5

    :cond_c
    cmpl-float v1, p1, v9

    if-lez v1, :cond_7

    goto :goto_3

    :cond_d
    cmpl-float v3, v1, v6

    if-lez v3, :cond_e

    .line 70
    iget v3, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v3, v3

    goto :goto_6

    .line 71
    :cond_e
    iget v3, p0, Lcom/jme3/math/LineSegment;->extent:F

    :goto_6
    mul-float/2addr v1, v3

    add-float/2addr v1, p1

    neg-float p1, v1

    cmpl-float v1, p1, v6

    if-lez v1, :cond_3

    goto :goto_4

    .line 72
    :goto_7
    invoke-static {v3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    return p1
.end method

.method public distanceSquared(Lcom/jme3/math/Vector3f;)F
    .locals 5

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    .line 3
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v2, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 4
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v2

    .line 5
    iget v3, p0, Lcom/jme3/math/LineSegment;->extent:F

    neg-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    .line 6
    iget-object v3, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2, v1}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v3, v1}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v3, v1}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 9
    :goto_0
    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 10
    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->lengthSquared()F

    move-result p1

    .line 11
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return p1
.end method

.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getExtent()F
    .locals 1

    iget v0, p0, Lcom/jme3/math/LineSegment;->extent:F

    return v0
.end method

.method public getNegativeEnd(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/math/LineSegment;->extent:F

    invoke-virtual {v1, v2, p1}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getOrigin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getPositiveEnd(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    iget v2, p0, Lcom/jme3/math/LineSegment;->extent:F

    invoke-virtual {v1, v2, p1}, Lcom/jme3/math/Vector3f;->mult(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public isPointInsideBounds(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/math/LineSegment;->isPointInsideBounds(Lcom/jme3/math/Vector3f;F)Z

    move-result p1

    return p1
.end method

.method public isPointInsideBounds(Lcom/jme3/math/Vector3f;F)Z
    .locals 4

    .line 2
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/math/LineSegment;->extent:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    add-float/2addr v1, p2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector3f;->y:F

    iget-object v2, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v3, p0, Lcom/jme3/math/LineSegment;->extent:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    add-float/2addr v2, p2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    iget-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, p0, Lcom/jme3/math/LineSegment;->extent:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    add-float/2addr v0, p2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
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

    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "origin"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    const-string v1, "direction"

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    const-string v0, "extent"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/math/LineSegment;->extent:F

    return-void
.end method

.method public set(Lcom/jme3/math/LineSegment;)V
    .locals 2

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/LineSegment;->getExtent()F

    move-result p1

    iput p1, p0, Lcom/jme3/math/LineSegment;->extent:F

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setExtent(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/math/LineSegment;->extent:F

    return-void
.end method

.method public setOrigin(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

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

    const-string v1, " [Origin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Direction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  Extent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/math/LineSegment;->extent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/math/LineSegment;->origin:Lcom/jme3/math/Vector3f;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const-string v2, "origin"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/math/LineSegment;->direction:Lcom/jme3/math/Vector3f;

    const-string v2, "direction"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/math/LineSegment;->extent:F

    const-string v1, "extent"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
