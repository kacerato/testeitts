.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;
.super Ljava/lang/Object;
.source "VehicleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;
    }
.end annotation


# static fields
.field private static final SESSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enter(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 5

    .line 26
    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 31
    :cond_0
    const-string v0, "occupied_by"

    invoke-static {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    instance-of v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v1, p0, :cond_1

    .line 33
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Occupied:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Assento ocupado"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Locked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Veiculo trancado"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 40
    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->exit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    .line 42
    :cond_3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;-><init>()V

    .line 43
    iput-object p0, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 44
    iput-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 45
    iput-object p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 46
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->entryOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 49
    :cond_4
    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 51
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p2, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "current_vehicle"

    invoke-static {p0, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "current_vehicle_seat"

    invoke-static {p0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "vehicle_occupant"

    invoke-static {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v0, "vehicle_entered"

    invoke-static {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 58
    const-string v0, "vehicle_seat_entered"

    invoke-static {v0, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 59
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 28
    :cond_5
    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Veiculo ou assento invalido"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method

.method public static exit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 4

    .line 88
    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;

    .line 90
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 92
    :cond_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "occupied_by"

    invoke-static {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    :cond_2
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "vehicle_occupant"

    invoke-static {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 96
    nop

    .line 97
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_4
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->entryOrigin:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 102
    :cond_6
    :goto_1
    const-string p1, "current_vehicle"

    invoke-static {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    const-string p1, "current_vehicle_seat"

    invoke-static {p0, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string p1, "vehicle_seat_exited"

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 105
    const-string p1, "vehicle_exited"

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 106
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method

.method public static getSeat(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 124
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getVehicle(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 123
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isInside(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1

    .line 122
    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setEngine(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 2

    .line 110
    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Locked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Veiculo trancado"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 114
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "engine_requires_power"

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isPowered(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Disabled:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Veiculo sem energia"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 117
    :cond_2
    const-string v0, "engine_running"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    if-eqz p1, :cond_3

    const-string p1, "vehicle_engine_started"

    goto :goto_0

    :cond_3
    const-string p1, "vehicle_engine_stopped"

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 119
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method

.method public static switchSeat(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 5

    .line 63
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;

    .line 64
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const-string v1, "occupied_by"

    invoke-static {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 70
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, p0, :cond_1

    .line 71
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Occupied:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Assento ocupado"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 74
    :cond_1
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 75
    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :cond_2
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->seat:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 78
    invoke-static {p1, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v1, "current_vehicle_seat"

    invoke-static {p0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 81
    const-string v1, "vehicle_seat_exited"

    invoke-static {v1, v2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 82
    const-string v1, "vehicle_seat_switched"

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService$VehicleSession;->vehicle:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 83
    const-string v0, "vehicle_seat_entered"

    invoke-static {v0, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 84
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 66
    :cond_3
    :goto_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Assento invalido ou interactor fora do veiculo"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method
