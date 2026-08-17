.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;
.super Ljava/lang/Object;
.source "InteractionRuntime.java"


# static fields
.field private static instance:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;


# instance fields
.field private cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

.field private final currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

.field private currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field private final holdSession:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

.field private interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field private lastFrameCount:J

.field private pressedAction:Ljava/lang/String;

.field private pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field private previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field private final resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->holdSession:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->lastFrameCount:J

    return-void
.end method

.method private autoDiscoverPlayerAndCamera()V
    .locals 3

    .line 124
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCamera()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v0

    .line 126
    :cond_0
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 128
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 130
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->findInteractorOwner(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    .line 133
    :cond_4
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 135
    :cond_5
    :goto_0
    return-void

    .line 126
    :cond_6
    :goto_1
    return-void
.end method

.method private cleanupInteractorSessions(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1

    .line 152
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->drop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 154
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->stop(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 155
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/SeatService;->stand(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    .line 156
    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/LadderService;->exit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    .line 157
    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/VehicleService;->exit(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionResult;

    .line 158
    return-void
.end method

.method private clearFocusedTarget()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setFocused(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 178
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->removeHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setFocused(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 182
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->removeHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 184
    :cond_1
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->hidePrompt()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 186
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 187
    return-void
.end method

.method private fillContextFromCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 162
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 163
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 164
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    .line 165
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, p1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 167
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 168
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 169
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->distance:F

    .line 170
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->angle:F

    .line 171
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 173
    :cond_0
    return-void
.end method

.method private findInteractorOwner(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 5

    .line 138
    nop

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 140
    :goto_0
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_2

    .line 141
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->N()I

    move-result v1

    .line 142
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 143
    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v4

    .line 144
    instance-of v4, v4, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;

    if-eqz v4, :cond_0

    return-object p1

    .line 142
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 146
    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 147
    move v1, v2

    goto :goto_0

    .line 148
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    monitor-enter v0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionInteractor;->ensureRegistered()V

    .line 35
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->instance:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;-><init>()V

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->instance:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;

    .line 36
    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->instance:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearPlayer(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1

    .line 61
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->clearFocusedTarget()V

    .line 63
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->holdSession:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->cancel()V

    .line 64
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cleanupInteractorSessions(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 65
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->reset()V

    .line 66
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 67
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedAction:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 69
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 70
    return-void

    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public configureSensor(FF)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->getSensor()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 55
    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 56
    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionSensor;->setMaxDistance(F)V

    .line 57
    instance-of p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Detection/InteractionRaySensor;->setMaxConeAngle(F)V

    .line 58
    :cond_1
    return-void
.end method

.method public getCameraTransform()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    return-object v0
.end method

.method public getCurrentContext()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    return-object v0
.end method

.method public getCurrentTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getHoldSession()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->holdSession:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

    return-object v0
.end method

.method public getInteractor()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getResolver()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    return-object v0
.end method

.method public handleActionPressed(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 3

    .line 190
    invoke-static {p2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 191
    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 194
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "interact"

    .line 195
    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 196
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedAction:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interaction_count_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->getAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 200
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 201
    :goto_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v1, "last_interaction_action"

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_interaction_timestamp"

    invoke-static {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setAttribute(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 206
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 208
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 209
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    .line 210
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Pressed:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    iput-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 212
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->getCurrentResolvedCandidate()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object p2

    .line 213
    if-eqz p2, :cond_5

    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne p3, v0, :cond_5

    .line 214
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 215
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 216
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 217
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->distance:F

    iput v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->distance:F

    .line 218
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->angle:F

    iput v0, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->angle:F

    .line 219
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p3, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 222
    :cond_5
    const-string p2, "interaction_started"

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p2, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchInteract(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 224
    return-void
.end method

.method public handleActionReleased(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 2

    .line 227
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedAction:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedAction:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "interact"

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 229
    :goto_1
    invoke-static {p2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 231
    :goto_2
    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 233
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p1, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object p2, v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 235
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iput-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 236
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    .line 237
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->Released:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    iput-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 238
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchInteractReleased(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 239
    const-string p2, "interaction_released"

    invoke-static {p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchCustomEvent(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;)V

    .line 242
    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->holdSession:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->cancel()V

    .line 243
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 244
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedAction:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setPlayer(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;)V
    .locals 1

    .line 40
    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cleanupInteractorSessions(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 42
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->clearFocusedTarget()V

    .line 43
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->reset()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 45
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->pressedAction:Ljava/lang/String;

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 48
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    .line 49
    return-void
.end method

.method public update(Lcom/itsmagic/engine/Engines/Engine/World/World;JF)V
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->lastFrameCount:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    iput-wide p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->lastFrameCount:J

    .line 75
    const/4 p1, 0x0

    cmpl-float p2, p4, p1

    if-lez p2, :cond_1

    const p2, 0x3dcccccd    # 0.1f

    cmpg-float p2, p4, p2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    const p4, 0x3c87fcb9    # 0.0166f

    .line 77
    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->autoDiscoverPlayerAndCamera()V

    .line 79
    :cond_3
    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/GrabService;->update(F)V

    .line 80
    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InspectService;->update(F)V

    .line 81
    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;->update(F)V

    .line 82
    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ElevatorService;->update(F)V

    .line 83
    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/ButtonService;->update(F)V

    .line 84
    invoke-static {p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/PowerService;->update(F)V

    .line 85
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->holdSession:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;

    invoke-virtual {p2, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionHoldSession;->update(F)V

    .line 87
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    .line 89
    :cond_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->resolveTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCapability;Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 90
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->resolver:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Resolver/InteractionTargetResolver;->getCurrentResolvedCandidate()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;

    move-result-object p2

    .line 92
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq p3, p4, :cond_a

    .line 93
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 94
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p4, 0x0

    invoke-static {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setFocused(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 95
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 96
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 97
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 98
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->cameraTransform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iput-object p4, p3, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    .line 99
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchFocusExit(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 100
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->hidePrompt()V

    .line 101
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p3}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->removeHighlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    .line 104
    :cond_5
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p3}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 105
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 p4, 0x1

    invoke-static {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->setFocused(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    .line 106
    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->fillContextFromCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    .line 107
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchFocusEnter(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 108
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry;->get(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;

    move-result-object p2

    .line 109
    if-eqz p2, :cond_9

    .line 110
    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->promptText:Ljava/lang/String;

    if-eqz p3, :cond_6

    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->promptText:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object p3, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->attributes:Ljava/util/Map;

    const-string p4, "prompt_text"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 111
    :goto_1
    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->promptIcon:Ljava/lang/String;

    if-eqz p4, :cond_7

    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->promptIcon:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->attributes:Ljava/util/Map;

    const-string v0, "prompt_icon"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 112
    :goto_2
    if-eqz p3, :cond_8

    const-string v0, "interact"

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionRegistry$InteractableData;->priority:I

    invoke-static {p3, p4, v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionPromptController;->showPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FI)V

    .line 113
    :cond_8
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;->MaterialTint:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;

    const/high16 p3, 0x3f800000    # 1.0f

    const p4, 0xffffff

    invoke-static {p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController;->highlight(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Feedback/InteractionHighlightController$HighlightMode;FI)V

    .line 116
    :cond_9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->previousTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_3

    .line 117
    :cond_a
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 118
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentTarget:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->fillContextFromCandidate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionCandidate;)V

    .line 119
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionRuntime;->currentContext:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/InteractionDispatcher;->dispatchFocusStay(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V

    .line 121
    :cond_b
    :goto_3
    return-void
.end method
