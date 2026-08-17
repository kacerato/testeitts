.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;
.super Ljava/lang/Object;
.source "InteractionTriggerSensor.java"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;


# instance fields
.field private final collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

.field private maxDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->maxDistance:F

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    .line 13
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->maxDistance:F

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    .line 14
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->maxDistance:F

    return-void
.end method


# virtual methods
.method public collectCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    :cond_0
    move-object v2, p2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->maxDistance:F

    const/high16 v4, 0x43340000    # 180.0f

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->collect(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFLjava/util/List;)V

    .line 20
    return-void
.end method

.method public getMaxDistance()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->maxDistance:F

    return v0
.end method

.method public setMaxDistance(F)V
    .locals 1

    .line 23
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionTriggerSensor;->maxDistance:F

    return-void
.end method
