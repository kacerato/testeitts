.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;
.super Ljava/lang/Object;
.source "InteractionTargetResolver.java"


# instance fields
.field private final candidatesBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private final currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

.field private final filter:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;

.field private final hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

.field private final scorer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

.field private sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->scorer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->filter:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 28
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x42340000    # 45.0f

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;-><init>(FF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->scorer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->filter:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 32
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x42340000    # 45.0f

    invoke-direct {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;-><init>(FF)V

    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    .line 33
    return-void
.end method

.method private copyCandidate(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V
    .locals 2

    .line 142
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 143
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    iput v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    .line 144
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    iput v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    .line 145
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    iput v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    .line 146
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    iput v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    .line 147
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    iput-boolean v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    .line 148
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    iput-boolean v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->isSticky:Z

    .line 149
    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 150
    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 151
    return-void
.end method

.method private findCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 4

    .line 126
    invoke-static {p1}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 127
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 128
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 129
    iget-object v3, v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v3, p1, :cond_1

    return-object v2

    .line 127
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_2
    return-object v1
.end method

.method private getSensorMaxAngle()F
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    instance-of v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->getMaxConeAngle()F

    move-result v0

    return v0

    .line 138
    :cond_0
    const/high16 v0, 0x43340000    # 180.0f

    return v0
.end method

.method private recycleCandidates()V
    .locals 2

    .line 154
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->recycle(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    return-void
.end method


# virtual methods
.method public getCurrentResolvedCandidate()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    return-object v0
.end method

.method public getCurrentTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->getCurrentTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0
.end method

.method public getHysteresis()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    return-object v0
.end method

.method public getScorer()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->scorer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

    return-object v0
.end method

.method public getSensor()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->reset()V

    .line 189
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->reset()V

    .line 190
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->recycleCandidates()V

    .line 191
    return-void
.end method

.method public resolveTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->resolveTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    return-object p1
.end method

.method public resolveTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 10

    .line 41
    invoke-static {p1}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->reset()V

    .line 43
    return-object v1

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->recycleCandidates()V

    .line 47
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v0, p1, p2, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;->collectCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V

    .line 48
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->reset()V

    .line 50
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->reset()V

    .line 51
    return-object v1

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->getCurrentTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    .line 55
    nop

    .line 56
    nop

    .line 57
    nop

    .line 58
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->getSensorMaxAngle()F

    move-result p2

    .line 61
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v4

    :goto_0
    if-ltz v0, :cond_7

    .line 62
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 63
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->filter:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;

    iget-object v8, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v7, v8, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionFilter;->isValidCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 64
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->candidatesBuffer:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->recycle(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    .line 66
    goto :goto_2

    .line 69
    :cond_2
    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v7, p1, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 70
    :goto_1
    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->scorer:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    .line 72
    invoke-interface {v9}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;->getMaxDistance()F

    move-result v9

    .line 70
    invoke-virtual {v8, v6, v9, p2, v7}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionScorer;->calculateScore(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;FFZ)F

    move-result v8

    .line 77
    if-eqz v7, :cond_4

    .line 78
    nop

    .line 79
    move-object v5, v6

    move v3, v8

    .line 82
    :cond_4
    if-eqz v4, :cond_5

    iget v7, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    cmpl-float v7, v8, v7

    if-lez v7, :cond_6

    .line 83
    :cond_5
    move-object v4, v6

    .line 61
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 87
    :cond_7
    if-nez v4, :cond_8

    .line 88
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->reset()V

    .line 89
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->reset()V

    .line 90
    return-object v1

    .line 94
    :cond_8
    invoke-static {p1}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-nez v5, :cond_9

    .line 95
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    iget-object p2, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->setCurrentTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_3

    .line 96
    :cond_9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {p1, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->shouldSwitchTarget(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;F)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 97
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    iget-object p2, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->setCurrentTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 100
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->getCurrentTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    .line 102
    iget-object p2, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p1, p2, :cond_b

    .line 103
    move-object v5, v4

    goto :goto_4

    .line 104
    :cond_b
    if-eqz v5, :cond_c

    iget-object p2, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p1, p2, :cond_c

    .line 105
    goto :goto_4

    .line 107
    :cond_c
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->findCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object v5

    .line 110
    :goto_4
    if-nez v5, :cond_d

    .line 112
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->hysteresis:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;

    iget-object p2, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionHysteresis;->setCurrentTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 113
    iget-object p1, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 114
    goto :goto_5

    .line 110
    :cond_d
    move-object v4, v5

    .line 117
    :goto_5
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->currentResolvedCandidate:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-direct {p0, v4, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->copyCandidate(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    .line 118
    return-object p1
.end method

.method public setSensor(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;)V
    .locals 0

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->sensor:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    .line 171
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->reset()V

    .line 173
    :cond_0
    return-void
.end method
