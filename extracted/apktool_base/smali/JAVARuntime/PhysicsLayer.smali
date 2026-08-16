.class public LJAVARuntime/PhysicsLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 6
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    new-instance v1, LAc/b;

    invoke-direct {v1, p1}, LAc/b;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;-><init>(LAc/b;Z)V

    iput-object v0, p0, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    return-void
.end method


# virtual methods
.method public addIgnoreLayer(LJAVARuntime/PhysicsLayer;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Adds the specified PhysicsLayer to the ignore list of this layer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Adiciona a PhysicsLayer especificada \u00e0 lista de ignorados desta layer."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object p1, p1, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->f(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    return-void
.end method

.method public getIgnoreAt(I)LJAVARuntime/PhysicsLayer;
    .locals 2
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the PhysicsLayer at the specified index in the ignore list."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a PhysicsLayer no \u00edndice especificado da lista de ignorados."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "index"
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

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LK8/a;->m(Landroid/content/Context;)Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/GameSettings;->g()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->i(I)LAc/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/PhysicsSettings;->b(LAc/b;)Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->u()LJAVARuntime/PhysicsLayer;

    move-result-object p1

    return-object p1
.end method

.method public ignoreCount()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the number of PhysicsLayers in the ignore list."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna o n\u00famero de PhysicsLayers na lista de ignorados."
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->l()I

    move-result v0

    return v0
.end method

.method public removeIgnoreLayer(LJAVARuntime/PhysicsLayer;)V
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Removes the specified PhysicsLayer from the ignore list of this layer."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Remove a PhysicsLayer especificada da lista de ignorados desta layer."
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "layer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    iget-object p1, p1, LJAVARuntime/PhysicsLayer;->layer:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;->r(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    return-void
.end method
