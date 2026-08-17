.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;
.super Ljava/lang/Object;
.source "ElevatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;
    }
.end annotation


# static fields
.field private static final ACTIVE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->ACTIVE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentFloor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)I
    .locals 1

    .line 89
    const-string v0, "current_floor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getState(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "elevator_state"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Idle"

    :goto_0
    return-object p0
.end method

.method public static moveToFloor(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;IFF)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 6

    .line 32
    invoke-static {p0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 36
    :cond_0
    const-string v0, "current_floor"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    instance-of v1, v0, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    const/high16 v1, 0x40400000    # 3.0f

    const v3, 0x3c23d70a    # 0.01f

    cmpl-float v4, p3, v3

    if-lez v4, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p3, 0x40400000    # 3.0f

    .line 39
    :goto_1
    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    const/high16 p2, 0x40400000    # 3.0f

    .line 41
    :goto_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->ACTIVE:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;

    .line 42
    if-nez v1, :cond_5

    .line 43
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;-><init>()V

    .line 44
    iput-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 45
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    .line 46
    if-nez v3, :cond_4

    .line 47
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Transform invalido"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 49
    :cond_4
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseX:F

    .line 50
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v4, v5

    iput v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseY:F

    .line 51
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iput v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseZ:F

    .line 52
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->ACTIVE:Ljava/util/Map;

    invoke-interface {v3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_5
    iput v0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->currentFloor:I

    .line 56
    iput p1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->targetFloor:I

    .line 57
    iput p3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->floorHeight:F

    .line 58
    iput p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->speed:F

    .line 59
    if-eq v0, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    .line 61
    iget-boolean p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    if-eqz p2, :cond_8

    .line 62
    if-le p1, v0, :cond_7

    const-string p2, "MovingUp"

    goto :goto_3

    :cond_7
    const-string p2, "MovingDown"

    goto :goto_3

    .line 63
    :cond_8
    const-string p2, "Idle"

    .line 61
    :goto_3
    const-string p3, "elevator_state"

    invoke-static {p0, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    iget-boolean p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    invoke-static {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 66
    iget-boolean p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    if-nez p2, :cond_9

    .line 67
    const-string p2, "elevator_arrived"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    goto :goto_4

    .line 69
    :cond_9
    const-string p1, "elevator_departed"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 71
    :goto_4
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 33
    :cond_a
    :goto_5
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Elevador invalido"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method

.method public static stop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 3

    .line 75
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->ACTIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;

    .line 76
    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    .line 78
    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 79
    const-string v1, "elevator_state"

    const-string v2, "Idle"

    invoke-static {p0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->currentFloor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "elevator_stopped"

    invoke-static {v1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static update(F)V
    .locals 9

    .line 94
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->ACTIVE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3a83126f    # 0.001f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 97
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->ACTIVE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;

    .line 98
    iget-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    .line 100
    if-nez v2, :cond_3

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    .line 102
    if-nez v3, :cond_4

    goto :goto_0

    .line 104
    :cond_4
    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseY:F

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->targetFloor:I

    int-to-float v5, v5

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->floorHeight:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 105
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float v5, v4, v5

    .line 106
    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->speed:F

    mul-float v6, v6, p0

    .line 108
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3ba3d70a    # 0.005f

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    .line 109
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79337l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseX:F

    iget v6, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseZ:F

    invoke-direct {v3, v5, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 110
    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->targetFloor:I

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->currentFloor:I

    .line 111
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->moving:Z

    .line 112
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->currentFloor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_floor"

    invoke-static {v3, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "elevator_state"

    const-string v5, "Idle"

    invoke-static {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 115
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->elevator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->currentFloor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "elevator_arrived"

    invoke-static {v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 116
    goto/16 :goto_0

    .line 119
    :cond_5
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float v4, v4, v6

    add-float/2addr v3, v4

    .line 120
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79337l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v5, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseX:F

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService$ElevatorSession;->baseZ:F

    invoke-direct {v4, v5, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 121
    goto/16 :goto_0

    .line 122
    :cond_6
    return-void
.end method
