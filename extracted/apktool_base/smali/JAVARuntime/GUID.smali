.class public final LJAVARuntime/GUID;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;
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
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;-><init>()V

    iput-object v0, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    return-void
.end method


# virtual methods
.method public getDuplicableGUID()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaID()Ljava/lang/String;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    iget-object v0, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueGUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDuplicableGUID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "guid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->n(Ljava/lang/String;)V

    return-void
.end method

.method public setMetaID(Ljava/lang/String;)V
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "guid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "guid"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/GUID;->guid:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->n(Ljava/lang/String;)V

    return-void
.end method
