.class public interface abstract Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;
.super Ljava/lang/Object;
.source "InteractionSensor.java"


# virtual methods
.method public abstract collectCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V
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
.end method

.method public abstract getMaxDistance()F
.end method

.method public abstract setMaxDistance(F)V
.end method
