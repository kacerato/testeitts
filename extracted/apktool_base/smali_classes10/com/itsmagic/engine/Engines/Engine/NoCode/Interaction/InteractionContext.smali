.class public Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;
.super Ljava/lang/Object;
.source "InteractionContext.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static final POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:Ljava/lang/String;

.field public angle:F

.field public camera:Ljava/lang/Object;

.field public distance:F

.field public heldDuration:F

.field public final hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public hitObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

.field public final interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public payload:Ljava/lang/Object;

.field public source:Ljava/lang/Object;

.field public target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->POOL:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 32
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 35
    const-string v0, "interact"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 39
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 43
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 44
    return-void
.end method

.method public static declared-synchronized obtain()Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;
    .locals 2

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    monitor-enter v0

    .line 84
    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    .line 85
    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;-><init>()V

    .line 88
    :cond_0
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized recycle(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 3

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;

    monitor-enter v0

    .line 93
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->POOL:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->reset()V

    .line 95
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->POOL:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 97
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;)V
    .locals 2

    .line 65
    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 67
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 68
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->source:Ljava/lang/Object;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->source:Ljava/lang/Object;

    .line 69
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    .line 70
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 71
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 72
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 73
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->distance:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->distance:F

    .line 74
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->angle:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->angle:F

    .line 75
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    .line 76
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 77
    iget-wide v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->timestamp:J

    iput-wide v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->timestamp:J

    .line 78
    iget v0, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->heldDuration:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->heldDuration:F

    .line 79
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    .line 80
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->payload:Ljava/lang/Object;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->payload:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public reset()V
    .locals 5

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 48
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->target:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 49
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->source:Ljava/lang/Object;

    .line 50
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->camera:Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitObject:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    .line 52
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitPosition:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)V

    .line 53
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->hitNormal:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)V

    .line 54
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->distance:F

    .line 55
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->angle:F

    .line 56
    const-string v1, "interact"

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->action:Ljava/lang/String;

    .line 57
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;->None:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->inputState:Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext$InputState;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->timestamp:J

    .line 59
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->heldDuration:F

    .line 60
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->interactionPoint:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)V

    .line 61
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/InteractionContext;->payload:Ljava/lang/Object;

    .line 62
    return-void
.end method
