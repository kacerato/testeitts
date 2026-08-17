.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;
.super Ljava/lang/Object;
.source "InteractionSphereSensor.java"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;


# instance fields
.field private final collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

.field private maxRadius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->maxRadius:F

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    .line 16
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->maxRadius:F

    .line 14
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    .line 19
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->maxRadius:F

    .line 20
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

    .line 24
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->collector:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->maxRadius:F

    const/high16 v4, 0x43340000    # 180.0f

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionCandidateCollector;->collect(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFLjava/util/List;)V

    .line 25
    return-void
.end method

.method public getMaxDistance()F
    .locals 1

    .line 34
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->maxRadius:F

    return v0
.end method

.method public setMaxDistance(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->maxRadius:F

    .line 30
    return-void
.end method
