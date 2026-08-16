.class public LJAVARuntime/EnemyAI;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "AI",
        "Components"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/EnemyAI;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V

    return-void
.end method

.method public constructor <init>(LK8/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .annotation runtime Lo8/c;
    .end annotation

    .line 4
    invoke-direct {p0}, LJAVARuntime/Component;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setRuntime(LJAVARuntime/Component;)V

    return-void
.end method


# virtual methods
.method public componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;)Z
    .locals 1
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    const-class v0, LJAVARuntime/EnemyAI;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getTarget()LJAVARuntime/SpatialObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWalkSpeed()F
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->getWalkSpeed()F

    move-result v0

    return v0
.end method

.method public setTarget(LJAVARuntime/SpatialObject;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method

.method public setWalkSpeed(F)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/EnemyAI;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setWalkSpeed(F)V

    return-void
.end method
