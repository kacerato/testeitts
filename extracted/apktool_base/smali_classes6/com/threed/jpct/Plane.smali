.class Lcom/threed/jpct/Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private equation3:F

.field normal:Lcom/threed/jpct/SimpleVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 3
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 6
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/threed/jpct/Plane;->setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/threed/jpct/Plane;->equation3:F

    .line 10
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/threed/jpct/Plane;->setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method


# virtual methods
.method public distanceTo(Lcom/threed/jpct/SimpleVector;)F
    .locals 4

    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    iget p1, p0, Lcom/threed/jpct/Plane;->equation3:F

    add-float/2addr v1, p1

    return v1
.end method

.method public isFrontFacingTo(FFF)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, p1

    iget p1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    iget p1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr p1, p3

    add-float/2addr v1, p1

    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFrontFacingTo(Lcom/threed/jpct/SimpleVector;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v1, v2

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTo(FFFFFFFFF)V
    .locals 2

    sub-float/2addr p4, p1

    sub-float/2addr p5, p2

    sub-float/2addr p6, p3

    sub-float/2addr p7, p1

    sub-float/2addr p8, p2

    sub-float/2addr p9, p3

    mul-float v0, p5, p9

    mul-float v1, p6, p8

    sub-float/2addr v0, v1

    mul-float/2addr p6, p7

    mul-float/2addr p9, p4

    sub-float/2addr p6, p9

    mul-float/2addr p4, p8

    mul-float/2addr p5, p7

    sub-float/2addr p4, p5

    mul-float p5, v0, v0

    mul-float p7, p6, p6

    add-float/2addr p5, p7

    mul-float p7, p4, p4

    add-float/2addr p5, p7

    .line 4
    invoke-static {p5}, Landroid/util/FloatMath;->sqrt(F)F

    move-result p5

    const/4 p7, 0x0

    cmpl-float p8, p5, p7

    if-eqz p8, :cond_0

    const/high16 p7, 0x3f800000    # 1.0f

    div-float/2addr p7, p5

    .line 5
    iget-object p5, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    mul-float/2addr v0, p7

    mul-float/2addr p6, p7

    mul-float/2addr p4, p7

    invoke-virtual {p5, v0, p6, p4}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p4, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {p4, p7, p7, p7}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    .line 7
    :goto_0
    iget-object p4, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    iget p5, p4, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr p5, p1

    iget p1, p4, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr p1, p2

    add-float/2addr p5, p1

    iget p1, p4, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr p1, p3

    add-float/2addr p5, p1

    neg-float p1, p5

    iput p1, p0, Lcom/threed/jpct/Plane;->equation3:F

    return-void
.end method

.method public setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p2}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    .line 2
    iget v0, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    neg-float p1, v0

    iput p1, p0, Lcom/threed/jpct/Plane;->equation3:F

    return-void
.end method

.method public setTo(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 10

    .line 3
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    iget v7, p3, Lcom/threed/jpct/SimpleVector;->x:F

    iget v8, p3, Lcom/threed/jpct/SimpleVector;->y:F

    iget v9, p3, Lcom/threed/jpct/SimpleVector;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/threed/jpct/Plane;->setTo(FFFFFFFFF)V

    return-void
.end method
