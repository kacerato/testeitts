.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;
.super Ljava/lang/Object;
.source "InteractionCandidateCollector.java"


# static fields
.field private static final MAX_LOS_CHECKS_PER_COLLECT:I = 0x4


# instance fields
.field private final rayFrom:Lcom/jme3/math/Vector3f;

.field private final rayResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsRayTestResult;",
            ">;"
        }
    .end annotation
.end field

.field private final rayTo:Lcom/jme3/math/Vector3f;

.field private final tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private final tempHitNormal:Lcom/jme3/math/Vector3f;

.field private final tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private final tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 27
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 28
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayFrom:Lcom/jme3/math/Vector3f;

    .line 29
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayTo:Lcom/jme3/math/Vector3f;

    .line 30
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempHitNormal:Lcom/jme3/math/Vector3f;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayResults:Ljava/util/List;

    return-void
.end method

.method private fillLineOfSight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)Z
    .locals 7

    .line 134
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    .line 136
    if-nez v1, :cond_1

    return v0

    .line 137
    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 139
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->raycastFirstNonInteractorHit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    move-result-object p1

    .line 140
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->resolveGameObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    .line 143
    iget-object v3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->isSameHierarchyBranch(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 145
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitFraction()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 146
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 147
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 148
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    sub-float/2addr v4, v5

    .line 149
    mul-float v5, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v0

    iput v5, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    .line 150
    iget-object v5, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    mul-float v2, v2, v0

    add-float/2addr v6, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    invoke-virtual {v5, v6, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 152
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempHitNormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getHitNormalLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 153
    if-eqz p1, :cond_4

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, v0, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 154
    :cond_4
    return v1

    .line 134
    :cond_5
    :goto_0
    return v0
.end method

.method private isDescendantOrSelf(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 4

    .line 203
    nop

    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x40

    if-ge v1, v3, :cond_1

    .line 206
    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    .line 207
    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move v1, v2

    goto :goto_0

    .line 209
    :cond_1
    return v0
.end method

.method private isSameHierarchyBranch(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 2

    .line 198
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->isDescendantOrSelf(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->isDescendantOrSelf(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 198
    :cond_3
    :goto_0
    return v1
.end method

.method private normalizeForward()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    .line 159
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 160
    const v4, 0x358637bd    # 1.0E-6f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    .line 161
    :cond_0
    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v5, v3

    .line 162
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float v0, v0, v5

    mul-float v1, v1, v5

    mul-float v2, v2, v5

    invoke-virtual {v3, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 163
    return-void
.end method

.method private raycastFirstNonInteractorHit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/jme3/bullet/collision/PhysicsRayTestResult;
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayFrom:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 167
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayTo:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 168
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayResults:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 171
    const/4 p2, 0x0

    :try_start_0
    sget-object v0, LK8/a;->o:LCc/a;

    if-eqz v0, :cond_5

    sget-object v0, LK8/a;->o:LCc/a;

    iget-object v0, v0, LCc/a;->c:Lcom/jme3/bullet/PhysicsSpace;

    if-nez v0, :cond_0

    goto :goto_2

    .line 172
    :cond_0
    sget-object v0, LCc/c;->k:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, LK8/a;->o:LCc/a;

    iget-object v1, v1, LCc/a;->c:Lcom/jme3/bullet/PhysicsSpace;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayFrom:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayTo:Lcom/jme3/math/Vector3f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayResults:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/jme3/bullet/PhysicsSpace;->rayTest(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Ljava/util/List;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    nop

    .line 178
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/collision/PhysicsRayTestResult;

    .line 180
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-virtual {v1}, Lcom/jme3/bullet/collision/PhysicsRayTestResult;->getCollisionObject()Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->resolveGameObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    .line 182
    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->isSameHierarchyBranch(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    return-object v1

    .line 178
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_4
    return-object p2

    .line 172
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 171
    :cond_5
    :goto_2
    return-object p2

    .line 173
    :catch_0
    move-exception p1

    .line 174
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->rayResults:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 175
    return-object p2
.end method

.method private resolveGameObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getUserObject()Ljava/lang/Object;

    move-result-object p1

    .line 191
    instance-of v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->getGameObjectForPhysics()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    return-object p1

    .line 192
    :cond_1
    instance-of v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1

    .line 193
    :cond_2
    instance-of v1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1

    .line 194
    :cond_3
    return-object v0
.end method

.method private validateBestLineOfSightCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
            ">;)V"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 100
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    .line 101
    nop

    .line 102
    nop

    .line 104
    const/4 v2, 0x0

    const v4, -0x800001

    const/4 v5, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 105
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 106
    if-eqz v6, :cond_2

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v7}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-boolean v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    if-nez v7, :cond_2

    iget-boolean v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    if-eqz v7, :cond_0

    goto :goto_2

    .line 107
    :cond_0
    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object v7

    .line 108
    if-eqz v7, :cond_2

    iget-boolean v7, v7, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->requireLineOfSight:Z

    if-nez v7, :cond_1

    goto :goto_2

    .line 109
    :cond_1
    iget v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_2

    .line 110
    iget v2, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    .line 111
    move v4, v2

    move-object v2, v6

    .line 104
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    :cond_3
    if-nez v2, :cond_4

    goto :goto_3

    .line 116
    :cond_4
    iput-boolean v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    .line 117
    invoke-direct {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->fillLineOfSight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    goto :goto_0

    .line 121
    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_4
    if-ltz p1, :cond_8

    .line 122
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 123
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_7

    iget-boolean v2, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->requireLineOfSight:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    if-nez v2, :cond_7

    .line 125
    :cond_6
    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 126
    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->recycle(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    goto :goto_5

    .line 128
    :cond_7
    iput-boolean v0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    .line 121
    :goto_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 131
    :cond_8
    return-void
.end method


# virtual methods
.method public collect(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFLjava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            "FF",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
            ">;)V"
        }
    .end annotation

    .line 34
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-nez v3, :cond_0

    goto/16 :goto_8

    .line 36
    :cond_0
    if-eqz p2, :cond_1

    move-object/from16 v4, p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    .line 37
    :goto_0
    if-nez v4, :cond_2

    return-void

    .line 39
    :cond_2
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 40
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    .line 41
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 42
    :goto_1
    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->normalizeForward()V

    .line 44
    const v4, 0x4333fd71    # 179.99f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 45
    :goto_2
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getActiveInteractablesCount()I

    move-result v9

    .line 47
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_11

    .line 48
    invoke-static {v10}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getActiveInteractableAt(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v11

    .line 49
    invoke-static {v11}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v12

    if-eqz v12, :cond_10

    if-ne v11, v1, :cond_5

    move/from16 v18, v4

    const/16 p2, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    goto/16 :goto_7

    .line 51
    :cond_5
    invoke-static {v11}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object v12

    .line 52
    if-eqz v12, :cond_f

    iget-boolean v13, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->enabled:Z

    if-eqz v13, :cond_f

    iget-boolean v13, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isBusy:Z

    if-eqz v13, :cond_6

    move/from16 v18, v4

    const/16 p2, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    goto/16 :goto_7

    .line 54
    :cond_6
    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v13

    .line 55
    if-nez v13, :cond_7

    move/from16 v18, v4

    const/16 p2, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    goto/16 :goto_7

    .line 56
    :cond_7
    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13, v14}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 58
    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v14

    sub-float/2addr v13, v14

    .line 59
    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v14

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    .line 60
    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v15

    const/16 p2, 0x1

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    sub-float/2addr v15, v5

    .line 61
    mul-float v5, v13, v13

    mul-float v16, v14, v14

    add-float v5, v5, v16

    mul-float v16, v15, v15

    add-float v5, v5, v16

    .line 63
    const/16 v16, 0x0

    iget v6, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->maxInteractionDistance:F

    move/from16 v8, p3

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 64
    mul-float v17, v6, v6

    cmpl-float v17, v5, v17

    if-lez v17, :cond_8

    move/from16 v18, v4

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 66
    :cond_8
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 67
    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v5, v7

    if-gez v8, :cond_9

    const v5, 0x38d1b717    # 1.0E-4f

    .line 69
    :cond_9
    div-float/2addr v13, v5

    .line 70
    div-float/2addr v14, v5

    .line 71
    div-float/2addr v15, v5

    .line 72
    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    mul-float v7, v7, v13

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    mul-float v8, v8, v14

    add-float/2addr v7, v8

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempForward:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    mul-float v8, v8, v15

    add-float/2addr v7, v8

    .line 74
    if-nez v4, :cond_a

    cmpg-float v8, v7, v16

    if-gtz v8, :cond_a

    move/from16 v18, v4

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_7

    .line 75
    :cond_a
    const/high16 v8, -0x40800000    # -1.0f

    move/from16 v18, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 77
    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 78
    if-eqz v18, :cond_b

    const/high16 v7, 0x43340000    # 180.0f

    goto :goto_4

    :cond_b
    iget v7, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->maxInteractionAngle:F

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 79
    :goto_4
    cmpl-float v8, v4, v7

    if-lez v8, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_7

    .line 81
    :cond_c
    invoke-static {v11, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->obtain(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FF)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object v8

    .line 82
    iget v11, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->priority:I

    iput v11, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    .line 83
    iget-boolean v11, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->requireLineOfSight:Z

    xor-int/lit8 v11, v11, 0x1

    iput-boolean v11, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    .line 84
    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    .line 85
    iget-object v11, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->tempTargetPos:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 86
    iget-object v2, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    neg-float v11, v13

    neg-float v13, v14

    neg-float v14, v15

    invoke-virtual {v2, v11, v13, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 88
    cmpl-float v2, v6, v16

    if-lez v2, :cond_d

    div-float/2addr v5, v6

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_5

    :cond_d
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 89
    :goto_5
    cmpl-float v6, v7, v16

    if-lez v6, :cond_e

    div-float/2addr v4, v7

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_6

    :cond_e
    const/high16 v4, 0x3f800000    # 1.0f

    .line 90
    :goto_6
    iget v6, v12, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->priority:I

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    sub-float v7, v2, v4

    const/high16 v4, 0x42480000    # 50.0f

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    sub-float v7, v2, v5

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    iput v6, v8, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    .line 91
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 52
    :cond_f
    move/from16 v18, v4

    const/16 p2, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    goto :goto_7

    .line 49
    :cond_10
    move/from16 v18, v4

    const/16 p2, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    .line 47
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p4

    move/from16 v4, v18

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 94
    :cond_11
    invoke-direct {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->validateBestLineOfSightCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/util/List;)V

    .line 95
    return-void

    .line 34
    :cond_12
    :goto_8
    return-void
.end method
