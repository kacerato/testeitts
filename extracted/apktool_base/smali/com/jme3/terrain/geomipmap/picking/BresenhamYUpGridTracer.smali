.class public Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;
    }
.end annotation


# static fields
.field protected static TOLERANCE:F = 1.0E-7f


# instance fields
.field private distBetweenXIntersections:F

.field private distBetweenZIntersections:F

.field private distToNextXIntersection:F

.field private distToNextZIntersection:F

.field protected gridLocation:Lcom/jme3/math/Vector2f;

.field protected gridOrigin:Lcom/jme3/math/Vector3f;

.field protected gridSpacing:Lcom/jme3/math/Vector3f;

.field protected rayLength:F

.field protected rayLocation:Lcom/jme3/math/Vector3f;

.field protected stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

.field private stepXDirection:I

.field private stepZDirection:I

.field protected walkRay:Lcom/jme3/math/Ray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridOrigin:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLocation:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Ray;

    invoke-direct {v0}, Lcom/jme3/math/Ray;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->walkRay:Lcom/jme3/math/Ray;

    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    return-void
.end method


# virtual methods
.method public getGridLocation()Lcom/jme3/math/Vector2f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    return-object v0
.end method

.method public getGridOrigin()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridOrigin:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getGridSpacing()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getLastStepDirection()Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    return-object v0
.end method

.method public isRayPerpendicularToGrid()Z
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepXDirection:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepZDirection:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()V
    .locals 7

    iget v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextXIntersection:F

    iget v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextZIntersection:F

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gez v2, :cond_3

    iput v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLength:F

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget v2, v1, Lcom/jme3/math/Vector2f;->x:F

    iget v5, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepXDirection:I

    int-to-float v6, v5

    add-float/2addr v2, v6

    iput v2, v1, Lcom/jme3/math/Vector2f;->x:F

    iget v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenXIntersections:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextXIntersection:F

    if-eq v5, v4, :cond_2

    if-eqz v5, :cond_1

    if-eq v5, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeX:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLength:F

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget v2, v0, Lcom/jme3/math/Vector2f;->y:F

    iget v5, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepZDirection:I

    int-to-float v6, v5

    add-float/2addr v2, v6

    iput v2, v0, Lcom/jme3/math/Vector2f;->y:F

    iget v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenZIntersections:F

    add-float/2addr v1, v0

    iput v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextZIntersection:F

    if-eq v5, v4, :cond_6

    if-eqz v5, :cond_5

    if-eq v5, v3, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->PositiveZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->NegativeZ:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    :goto_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLocation:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->walkRay:Lcom/jme3/math/Ray;

    iget-object v1, v1, Lcom/jme3/math/Ray;->direction:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLength:F

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->walkRay:Lcom/jme3/math/Ray;

    iget-object v1, v1, Lcom/jme3/math/Ray;->origin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setGridLocation(Lcom/jme3/math/Vector2f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    return-void
.end method

.method public setGridOrigin(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridOrigin:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setGridSpacing(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public startWalk(Lcom/jme3/math/Ray;)V
    .locals 12

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->walkRay:Lcom/jme3/math/Ray;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Ray;->set(Lcom/jme3/math/Ray;)V

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->walkRay:Lcom/jme3/math/Ray;

    invoke-virtual {p1}, Lcom/jme3/math/Ray;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->walkRay:Lcom/jme3/math/Ray;

    invoke-virtual {v0}, Lcom/jme3/math/Ray;->getOrigin()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridOrigin:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Lcom/jme3/math/Vector2f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Lcom/jme3/math/Vector2f;->y:F

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    div-float v4, v3, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    sget v4, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->TOLERANCE:F

    cmpl-float v5, v2, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    if-lez v5, :cond_0

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget v2, v2, Lcom/jme3/math/Vector2f;->x:F

    add-float/2addr v2, v3

    iget-object v5, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v5

    iget v10, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v10

    iget v10, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v10

    iput v2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextXIntersection:F

    mul-float/2addr v5, v10

    iput v5, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenXIntersections:F

    iput v8, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepXDirection:I

    goto :goto_0

    :cond_0
    neg-float v5, v4

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v10, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget v10, v10, Lcom/jme3/math/Vector2f;->x:F

    iget-object v11, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    iget v11, v11, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v10, v11

    sub-float/2addr v5, v10

    neg-float v2, v2

    mul-float/2addr v5, v2

    iput v5, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextXIntersection:F

    neg-float v2, v11

    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v5

    iput v2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenXIntersections:F

    iput v7, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepXDirection:I

    goto :goto_0

    :cond_1
    iput v9, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextXIntersection:F

    iput v9, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenXIntersections:F

    iput v6, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepXDirection:I

    :goto_0
    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, p1, v4

    if-lez v2, :cond_2

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    add-float/2addr p1, v3

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, v2

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, v3

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextZIntersection:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenZIntersections:F

    iput v8, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepZDirection:I

    goto :goto_1

    :cond_2
    neg-float v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridLocation:Lcom/jme3/math/Vector2f;

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    iget-object v4, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->gridSpacing:Lcom/jme3/math/Vector3f;

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    neg-float p1, p1

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextZIntersection:F

    neg-float p1, v4

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenZIntersections:F

    iput v7, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepZDirection:I

    goto :goto_1

    :cond_3
    iput v9, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distToNextZIntersection:F

    iput v9, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->distBetweenZIntersections:F

    iput v6, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepZDirection:I

    :goto_1
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->rayLength:F

    sget-object p1, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;->None:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer;->stepDirection:Lcom/jme3/terrain/geomipmap/picking/BresenhamYUpGridTracer$Direction;

    return-void
.end method
