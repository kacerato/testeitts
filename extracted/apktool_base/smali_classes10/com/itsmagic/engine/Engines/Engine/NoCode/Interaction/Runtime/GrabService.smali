.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;
.super Ljava/lang/Object;
.source "GrabService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;
    }
.end annotation


# static fields
.field private static final ACTIVE_GRABS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4

    .line 82
    if-nez p0, :cond_0

    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;

    .line 84
    if-nez v0, :cond_1

    return-void

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->restorePhysics(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;)V

    .line 87
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setHeld(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 89
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 90
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Dropped:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setState(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;)V

    .line 91
    const-string v1, "dropped"

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 93
    :cond_2
    return-void
.end method

.method public static getHeldObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 2

    .line 230
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_1
    return-object v0
.end method

.method public static grab(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;FFZ)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;
    .locals 5

    .line 36
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->InvalidTarget:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Alvo invalido"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isLocked(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Locked:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Objeto trancado"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->isHeld(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_6

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    .line 43
    const-string v3, "origin_rot"

    if-eqz v2, :cond_3

    invoke-static {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 44
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    const-string v2, "origin_pos"

    invoke-static {p1, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    :cond_3
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->K0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    invoke-static {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 48
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {p1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;-><init>()V

    .line 53
    iput-object p0, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 54
    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 55
    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    goto :goto_0

    :cond_6
    move-object p2, v1

    :goto_0
    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 56
    const/4 p2, 0x0

    cmpl-float v1, p3, p2

    if-lez v1, :cond_7

    goto :goto_1

    :cond_7
    const/high16 p3, 0x40000000    # 2.0f

    :goto_1
    iput p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->holdDistance:F

    .line 57
    cmpl-float p2, p4, p2

    if-lez p2, :cond_8

    goto :goto_2

    :cond_8
    const/high16 p4, 0x41700000    # 15.0f

    :goto_2
    iput p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->followSpeed:F

    .line 58
    iput-boolean p5, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->usePhysics:Z

    .line 60
    if-eqz p5, :cond_a

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Ljava/util/List;

    if-eqz p2, :cond_a

    .line 61
    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_3
    iget-object p4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_a

    .line 62
    iget-object p4, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .line 63
    instance-of p5, p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    if-eqz p5, :cond_9

    .line 64
    check-cast p4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput-object p4, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    .line 65
    iget-object p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-boolean p3, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    iput-boolean p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->originalUseGravity:Z

    .line 66
    iget-object p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iput-boolean p2, p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    .line 67
    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    .line 68
    if-eqz p2, :cond_a

    iget-object p3, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    .line 61
    :cond_9
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 74
    :cond_a
    :goto_4
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    if-eqz p0, :cond_b

    move-object p3, p0

    goto :goto_5

    :cond_b
    move-object p3, p1

    :goto_5
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 p2, 0x1

    invoke-static {p1, p2, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setHeld(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 76
    invoke-static {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 77
    const-string p2, "grabbed"

    invoke-static {p2, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 78
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->success(Ljava/lang/Object;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0

    .line 38
    :cond_c
    :goto_6
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;->Busy:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;

    const-string p1, "Objeto ja esta sendo segurado"

    invoke-static {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;->failure(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult$FailureReason;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    move-result-object p0

    return-object p0
.end method

.method public static isHolding(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 1

    .line 229
    if-eqz p0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

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

.method private static normalize(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 6

    .line 221
    if-nez p0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    .line 223
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    .line 224
    const v4, 0x358637bd    # 1.0E-6f

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    .line 225
    :cond_1
    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v5, v3

    .line 226
    mul-float v0, v0, v5

    mul-float v1, v1, v5

    mul-float v2, v2, v5

    invoke-virtual {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 227
    return-void
.end method

.method private static restorePhysics(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;)V
    .locals 1

    .line 217
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->originalUseGravity:Z

    iput-boolean p0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->useGravity:Z

    .line 218
    :cond_0
    return-void
.end method

.method public static returnToOrigin(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4

    .line 145
    invoke-static {p0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    const-string v0, "origin_pos"

    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    const-string v1, "origin_rot"

    invoke-static {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_2

    .line 150
    instance-of v3, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 151
    :cond_1
    instance-of v0, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v0, :cond_2

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setRotation(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 153
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setHeld(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 154
    invoke-static {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 155
    const-string v0, "returned_to_origin"

    invoke-static {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public static throwObject(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 8

    .line 96
    if-nez p0, :cond_0

    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;

    .line 98
    if-eqz p0, :cond_b

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 101
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setHeld(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 102
    invoke-static {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setBusy(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 103
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;->Dropped:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setState(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionState;)V

    .line 105
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    .line 106
    const-string v2, "thrown"

    if-nez v1, :cond_2

    .line 107
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->restorePhysics(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;)V

    .line 108
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 109
    return-void

    .line 112
    :cond_2
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    .line 113
    if-eqz p1, :cond_3

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 115
    :cond_4
    :goto_0
    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->normalize(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 117
    cmpl-float p1, p2, v5

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    const/high16 p2, 0x41400000    # 12.0f

    .line 118
    :goto_1
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->restorePhysics(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;)V

    .line 120
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    if-eqz p1, :cond_9

    .line 121
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    .line 122
    const v1, 0x3e99999a    # 0.3f

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float v4, v4, v1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    .line 123
    :goto_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    mul-float v6, v6, v1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 124
    :goto_3
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float v5, p1, v1

    .line 125
    :cond_8
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 126
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v4, v1

    .line 127
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v6, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v6, v1

    .line 128
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float v1, v1, p2

    add-float/2addr v5, v1

    .line 125
    invoke-virtual {p1, v4, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 130
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->setVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 131
    goto :goto_4

    .line 132
    :cond_9
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    .line 133
    if-eqz p0, :cond_a

    .line 134
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 135
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    const v6, 0x3dcccccd    # 0.1f

    mul-float v6, v6, p2

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    .line 136
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    mul-float v7, v7, v6

    add-float/2addr v5, v7

    const v7, 0x3e4ccccd    # 0.2f

    add-float/2addr v5, v7

    .line 137
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float v3, v3, v6

    add-float/2addr p0, v3

    invoke-direct {p1, v4, v5, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    .line 134
    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 141
    :cond_a
    :goto_4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 142
    return-void

    .line 98
    :cond_b
    :goto_5
    return-void
.end method

.method public static update(F)V
    .locals 9

    .line 159
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 160
    :cond_0
    const v0, 0x3d4ccccd    # 0.05f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3a83126f    # 0.001f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 162
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->ACTIVE_GRABS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;

    .line 163
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->heldObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    .line 165
    iget-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 166
    if-eqz v2, :cond_1

    if-nez v3, :cond_3

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    .line 169
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->forward()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    .line 170
    if-eqz v4, :cond_1

    if-nez v3, :cond_4

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->holdDistance:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 173
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->holdDistance:F

    mul-float v7, v7, v8

    add-float/2addr v6, v7

    .line 174
    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->holdDistance:F

    mul-float v3, v3, v7

    add-float/2addr v4, v3

    .line 175
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->J0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    .line 176
    if-nez v3, :cond_5

    goto :goto_0

    .line 178
    :cond_5
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    sub-float/2addr v5, v7

    .line 179
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    .line 180
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    sub-float/2addr v4, v7

    .line 181
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 182
    iget v8, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->maxGrabDistance:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 183
    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->drop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 184
    goto/16 :goto_0

    .line 187
    :cond_6
    iget-boolean v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->usePhysics:Z

    if-eqz v7, :cond_b

    iget-object v7, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    if-eqz v7, :cond_b

    .line 188
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    .line 189
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    goto :goto_1

    :cond_7
    const/4 v7, 0x0

    .line 190
    :goto_1
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    .line 191
    :goto_2
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    .line 192
    :cond_9
    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->springStrength:F

    mul-float v5, v5, v2

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->damping:F

    mul-float v2, v2, v7

    sub-float/2addr v5, v2

    .line 193
    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->springStrength:F

    mul-float v6, v6, v2

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->damping:F

    mul-float v2, v2, v8

    sub-float/2addr v6, v2

    .line 194
    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->springStrength:F

    mul-float v4, v4, v2

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->damping:F

    mul-float v2, v2, v3

    sub-float/2addr v4, v2

    .line 195
    mul-float v5, v5, p0

    add-float/2addr v7, v5

    .line 196
    mul-float v6, v6, p0

    add-float/2addr v8, v6

    .line 197
    mul-float v4, v4, p0

    add-float/2addr v3, v4

    .line 198
    mul-float v2, v7, v7

    mul-float v4, v8, v8

    add-float/2addr v2, v4

    mul-float v4, v3, v3

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 199
    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->maxVelocity:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_a

    .line 200
    iget v4, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->maxVelocity:F

    div-float/2addr v4, v2

    .line 201
    mul-float v7, v7, v4

    mul-float v8, v8, v4

    mul-float v3, v3, v4

    .line 203
    :cond_a
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v7, v8, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 204
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->rigidbody:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->commandVelocity:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->setVelocity(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 205
    goto :goto_3

    .line 206
    :cond_b
    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService$GrabSession;->followSpeed:F

    mul-float v1, v1, p0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 207
    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 208
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    mul-float v5, v5, v1

    add-float/2addr v8, v5

    .line 209
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    mul-float v6, v6, v1

    add-float/2addr v5, v6

    .line 210
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float v4, v4, v1

    add-float/2addr v3, v4

    invoke-direct {v7, v8, v5, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    .line 207
    invoke-virtual {v2, v7}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p3(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 213
    :goto_3
    goto/16 :goto_0

    .line 214
    :cond_c
    return-void
.end method
