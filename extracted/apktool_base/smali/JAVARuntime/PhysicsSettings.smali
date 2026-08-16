.class public final LJAVARuntime/PhysicsSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Physics",
        "World"
    }
.end annotation


# instance fields
.field public transient physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;-><init>()V

    iput-object v0, p0, LJAVARuntime/PhysicsSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "physicsSettings"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/PhysicsSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    return-void
.end method


# virtual methods
.method public getGravity()LJAVARuntime/Vector3;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the gravity of the world."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a gravidade do mundo."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PhysicsSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setGravity(FFF)V
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the gravity of the world with the specified x, y, and z values."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a gravidade do mundo com os valores x, y e z especificados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 3
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 4
    iget-object v0, p0, LJAVARuntime/PhysicsSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method public setGravity(LJAVARuntime/Vector3;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Sets the gravity of the world."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Define a gravidade do mundo."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "gravity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravity"
        }
    .end annotation

    .line 1
    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    .line 2
    iget-object v0, p0, LJAVARuntime/PhysicsSettings;->physicsSettings:Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    iget-object p1, p1, LJAVARuntime/Vector3;->instance:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method
