.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;
.super Ljava/lang/Object;
.source "InteractionRaySensor.java"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;


# instance fields
.field private final collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

.field private maxConeAngleDeg:F

.field private maxDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxDistance:F

    .line 14
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxConeAngleDeg:F

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    .line 17
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxDistance:F

    .line 14
    const/high16 v0, 0x42340000    # 45.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxConeAngleDeg:F

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    .line 20
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxDistance:F

    .line 21
    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxConeAngleDeg:F

    .line 22
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

    .line 26
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxDistance:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxConeAngleDeg:F

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->collect(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFLjava/util/List;)V

    .line 27
    return-void
.end method

.method public getMaxConeAngle()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxConeAngleDeg:F

    return v0
.end method

.method public getMaxDistance()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxDistance:F

    return v0
.end method

.method public setMaxConeAngle(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxConeAngleDeg:F

    .line 41
    return-void
.end method

.method public setMaxDistance(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->maxDistance:F

    .line 32
    return-void
.end method
