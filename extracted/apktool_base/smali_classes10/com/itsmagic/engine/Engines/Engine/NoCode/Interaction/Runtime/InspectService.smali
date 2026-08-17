.class public final Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;
.super Ljava/lang/Object;
.source "InspectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;
    }
.end annotation


# static fields
.field private static final SESSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInspectedObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 88
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    .line 89
    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isInspecting(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1

    .line 93
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    .line 94
    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static rotate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FF)V
    .locals 1

    .line 72
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    .line 73
    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79321B:Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79321B:Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    .line 75
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)V

    .line 76
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)V

    .line 77
    return-void

    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public static start(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 1

    .line 31
    invoke-static {p0}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->isInspecting(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Busy:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->stop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 39
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;-><init>()V

    .line 40
    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 41
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 42
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    :goto_0
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 43
    const p2, 0x3d4ccccd    # 0.05f

    cmpl-float p2, p3, p2

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p3, 0x3fc00000    # 1.5f

    :goto_1
    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    .line 44
    iput-boolean p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->returnOnStop:Z

    .line 46
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    .line 47
    if-eqz p2, :cond_4

    iget-object p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->originPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 48
    :cond_4
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79321B:Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    if-eqz p2, :cond_5

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->originRotation:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p3

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79321B:Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 50
    :cond_5
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 52
    const-string p2, "inspecting_by"

    invoke-static {p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string p2, "inspect_started"

    invoke-static {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 54
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 32
    :cond_6
    :goto_2
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method

.method public static stop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4

    .line 58
    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    .line 60
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->returnOnStop:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79337l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->originPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 64
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79321B:Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79321B:Lcom/itsmagic/engine/Engines/Engine/Vector/i;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->originRotation:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/i;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 66
    :cond_2
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 67
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v2, "inspecting_by"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v1, "inspect_stopped"

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 69
    return-void

    .line 60
    :cond_3
    :goto_0
    return-void
.end method

.method public static update(F)V
    .locals 10

    .line 98
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3a83126f    # 0.001f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 100
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    .line 101
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/C13317e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v2, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    .line 103
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->camera:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    .line 104
    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    .line 105
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_3

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 108
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    .line 109
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    mul-float v3, v3, v7

    add-float/2addr v2, v3

    .line 110
    iget v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->followSpeed:F

    mul-float v3, v3, p0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 111
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->object:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f79337l:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 112
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    sub-float/2addr v5, v9

    mul-float v5, v5, v3

    add-float/2addr v8, v5

    .line 113
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v9

    sub-float/2addr v6, v9

    mul-float v6, v6, v3

    add-float/2addr v5, v6

    .line 114
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    sub-float/2addr v2, v4

    mul-float v2, v2, v3

    add-float/2addr v6, v2

    invoke-direct {v7, v8, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    .line 111
    invoke-virtual {v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 116
    goto/16 :goto_0

    .line 117
    :cond_4
    return-void
.end method

.method public static zoom(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)V
    .locals 1

    .line 80
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->SESSIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;

    .line 81
    if-nez p0, :cond_0

    return-void

    .line 82
    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 83
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 84
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    add-float/2addr v0, p1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService$InspectSession;->distance:F

    .line 85
    return-void
.end method
