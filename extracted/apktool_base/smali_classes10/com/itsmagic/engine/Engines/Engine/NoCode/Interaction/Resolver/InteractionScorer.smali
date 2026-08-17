.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;
.super Ljava/lang/Object;
.source "InteractionScorer.java"


# instance fields
.field public centerWeight:F

.field public distanceWeight:F

.field public priorityWeight:F

.field public stickyBonus:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->priorityWeight:F

    .line 12
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->centerWeight:F

    .line 13
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->distanceWeight:F

    .line 14
    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->stickyBonus:F

    return-void
.end method


# virtual methods
.method public calculateScore(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;FFZ)F
    .locals 3

    .line 17
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 19
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v0

    if-lez v2, :cond_1

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    div-float/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    .line 20
    :goto_0
    sub-float p2, v1, p2

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->distanceWeight:F

    mul-float p2, p2, v2

    .line 22
    cmpl-float v2, p3, v0

    if-lez v2, :cond_2

    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    div-float/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_1

    :cond_2
    const/high16 p3, 0x3f800000    # 1.0f

    .line 23
    :goto_1
    sub-float/2addr v1, p3

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->centerWeight:F

    mul-float v1, v1, p3

    .line 25
    iget p3, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    int-to-float p3, p3

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->priorityWeight:F

    mul-float p3, p3, v2

    .line 27
    if-eqz p4, :cond_3

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->stickyBonus:F

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    .line 29
    :goto_2
    add-float/2addr p3, v1

    add-float/2addr p3, p2

    add-float/2addr p3, p4

    .line 30
    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    .line 31
    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    return p1
.end method
