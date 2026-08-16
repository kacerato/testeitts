.class public final LJAVARuntime/AreaTrigger;
.super LJAVARuntime/PhysicsComponent;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics"
    }
.end annotation


# instance fields
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/PhysicsComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    iput-object v0, p0, LJAVARuntime/AreaTrigger;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "physicsController"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsController"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/PhysicsComponent;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/AreaTrigger;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/AreaTrigger;

    return-void
.end method


# virtual methods
.method public getTriggerAt(I)LJAVARuntime/Collision;
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the Collision at the specified index."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a colis\u00e3o no \u00edndice especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "idx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    :try_start_0
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionCount()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionAt(I)Lj9/a;

    move-result-object p1

    invoke-virtual {p1}, Lj9/a;->h()LJAVARuntime/Collision;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index can\'t be >= getCollisionsCount()"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTriggerList()Ljava/util/List;
    .locals 3
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns a list of all current collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna uma lista de todas as colis\u00f5es atuais."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LJAVARuntime/Collision;",
            ">;"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionAt(I)Lj9/a;

    move-result-object v2

    invoke-virtual {v2}, Lj9/a;->h()LJAVARuntime/Collision;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTriggersCount()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number of current collisions."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de colis\u00f5es atuais."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    :try_start_0
    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->collisionCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isTriggering()Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this object is colliding with anything."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este objeto est\u00e1 colidindo com algo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->isColliding()Z

    move-result v0

    return v0
.end method

.method public triggerWithName(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Checks if this object is colliding with an object with the specified name."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Verifica se este objeto est\u00e1 colidindo com um objeto com o nome especificado."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "objectName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectName"
        }
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/Component;->component:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;->colliderWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
