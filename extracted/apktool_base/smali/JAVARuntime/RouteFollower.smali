.class public final LJAVARuntime/RouteFollower;
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
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/RouteFollower;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    .line 4
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/RouteFollower;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public findNearestPoint()LJAVARuntime/Vector3;
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNearestPointIndex()I
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestIndex()I

    move-result v0

    return v0
.end method

.method public getFindNearestPoint()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFindNearestPointIndex()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestIndex()I

    move-result v0

    return v0
.end method

.method public getNearestPoint()LJAVARuntime/Vector3;
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNearestPointIndex()I
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->findNearestIndex()I

    move-result v0

    return v0
.end method

.method public getRoute()LJAVARuntime/Route;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->getRoute()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->getRoute()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    check-cast v0, LJAVARuntime/Route;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPath()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->isShouldWalk()Z

    move-result v0

    return v0
.end method

.method public isPathFinished()Z
    .locals 1

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->isPathFinished()Z

    move-result v0

    return v0
.end method

.method public setRoute(LJAVARuntime/Route;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "route"
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

    iget-object v0, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    iget-object p1, p1, LJAVARuntime/Route;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/Route;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/RouteFollower;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Route/RouteFollower;->setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method
