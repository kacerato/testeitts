.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;
.super Ljava/lang/Object;
.source "InteractionQueryService.java"


# static fields
.field private static final BUFFER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAY_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

.field private static final RESULT:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

.field private static final SPHERE_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RAY_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->SPHERE_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RESULT:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseBest(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 9

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    .line 51
    :goto_1
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const v2, -0x800001

    const/4 v3, 0x0

    move-object v4, v0

    :goto_2
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 52
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    .line 53
    if-eqz v5, :cond_7

    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v6}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    .line 54
    :cond_2
    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object v6

    .line 55
    if-eqz v6, :cond_7

    iget-boolean v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->enabled:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->isBusy:Z

    if-eqz v7, :cond_3

    goto :goto_3

    .line 56
    :cond_3
    if-eqz p0, :cond_4

    iget-object v7, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->capabilities:Ljava/util/Set;

    invoke-interface {v7, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_3

    .line 57
    :cond_4
    if-eqz p1, :cond_5

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->tags:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 59
    :cond_5
    if-eqz p2, :cond_6

    .line 60
    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    cmpg-float v6, v6, v1

    if-gez v6, :cond_7

    .line 61
    iget v1, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    .line 62
    move-object v4, v5

    goto :goto_3

    .line 65
    :cond_6
    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float v6, v6, v7

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    .line 66
    cmpl-float v7, v6, v2

    if-lez v7, :cond_7

    .line 67
    nop

    .line 68
    move-object v4, v5

    move v2, v6

    .line 51
    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 73
    :cond_8
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RESULT:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->reset()V

    .line 74
    if-eqz v4, :cond_9

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RESULT:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-static {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->copy(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    .line 75
    :cond_9
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->recycleBuffer()V

    .line 76
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RESULT:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RESULT:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    :cond_a
    return-object v0
.end method

.method private static copy(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 81
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    .line 82
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    .line 83
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->score:F

    .line 84
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->priority:I

    .line 85
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hasLineOfSight:Z

    .line 86
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 87
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 88
    return-void
.end method

.method public static declared-synchronized findBestInRay(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->recycleBuffer()V

    .line 25
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RAY_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->setMaxDistance(F)V

    .line 26
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RAY_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->setMaxConeAngle(F)V

    .line 27
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->RAY_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-virtual {p2, p0, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->collectCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V

    .line 28
    const/4 p0, 0x0

    invoke-static {p4, p5, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->chooseBest(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized findBestInSphere(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;

    monitor-enter v0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->recycleBuffer()V

    .line 33
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->SPHERE_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->setMaxDistance(F)V

    .line 34
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->SPHERE_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-virtual {p1, p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->collectCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V

    .line 35
    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->chooseBest(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized findNearest(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FLcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;

    monitor-enter v0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->recycleBuffer()V

    .line 40
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->SPHERE_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->setMaxDistance(F)V

    .line 41
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->SPHERE_SENSOR:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-virtual {p1, p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSphereSensor;->collectCandidates(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Ljava/util/List;)V

    .line 42
    const/4 p0, 0x1

    invoke-static {p2, p3, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->chooseBest(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 38
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static recycleBuffer()V
    .locals 2

    .line 91
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->recycle(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionQueryService;->BUFFER:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    return-void
.end method
