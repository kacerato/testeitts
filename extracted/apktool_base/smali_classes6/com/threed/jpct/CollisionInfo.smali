.class final Lcom/threed/jpct/CollisionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field addRotMat:Lcom/threed/jpct/Matrix;

.field addTransMat:Lcom/threed/jpct/Matrix;

.field collision:Z

.field collisionObject:Lcom/threed/jpct/Object3D;

.field eRadius:Lcom/threed/jpct/SimpleVector;

.field eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

.field eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

.field foundCollision:Z

.field intersectionPoint:Lcom/threed/jpct/SimpleVector;

.field invERadius:Lcom/threed/jpct/SimpleVector;

.field invERadiusOrg:Lcom/threed/jpct/SimpleVector;

.field isPartOfCollision:Z

.field nearestDistance:F

.field r3Dest:Lcom/threed/jpct/SimpleVector;

.field r3Pos:Lcom/threed/jpct/SimpleVector;

.field r3Velocity:Lcom/threed/jpct/SimpleVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->collisionObject:Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    iput-boolean v1, p0, Lcom/threed/jpct/CollisionInfo;->collision:Z

    iput-boolean v1, p0, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    return-void
.end method


# virtual methods
.method public calculateInverseAndDest()V
    .locals 4

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    div-float v3, v2, v3

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    div-float/2addr v2, v0

    invoke-static {v1, v3, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrg:Lcom/threed/jpct/SimpleVector;

    invoke-static {v0}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadius:Lcom/threed/jpct/SimpleVector;

    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/CollisionInfo;->recalcDest()V

    return-void
.end method

.method public getMaxRadius()F
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->y:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->eRadius:Lcom/threed/jpct/SimpleVector;

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public recalcDest()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/threed/jpct/SimpleVector;->create(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->r3Dest:Lcom/threed/jpct/SimpleVector;

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    :cond_0
    return-void
.end method

.method public setIntersectionPoint(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iput-object v0, p0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->intersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadius:Lcom/threed/jpct/SimpleVector;

    iget-object v1, p0, Lcom/threed/jpct/CollisionInfo;->invERadiusOrg:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget-object v0, p0, Lcom/threed/jpct/CollisionInfo;->invERadius:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-void
.end method
