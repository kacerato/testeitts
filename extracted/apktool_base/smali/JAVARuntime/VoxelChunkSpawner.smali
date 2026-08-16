.class public final LJAVARuntime/VoxelChunkSpawner;
.super LJAVARuntime/Component;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Voxels",
        "Components"
    }
.end annotation


# instance fields
.field public transient instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/VoxelChunkSpawner;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)V

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

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)V
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
    iput-object p1, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/VoxelChunkSpawner;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public getCamera()LJAVARuntime/SpatialObject;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->getCamera()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChunkBlueprint()LJAVARuntime/VoxelChunk;
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->getChunkBlueprint()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object v0

    check-cast v0, LJAVARuntime/VoxelChunk;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderChunks()I
    .locals 1
    .annotation runtime LJAVARuntime/HideGetSet;
    .end annotation

    invoke-static {}, LJAVARuntime/Thread;->requestEngineThread()V

    iget-object v0, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->getRenderChunks()I

    move-result v0

    return v0
.end method

.method public setCamera(LJAVARuntime/SpatialObject;)V
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    iget-object p1, p1, LJAVARuntime/SpatialObject;->instance:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->setCamera(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->setCamera(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :goto_0
    return-void
.end method

.method public setChunkBlueprint(LJAVARuntime/VoxelChunk;)V
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

    if-eqz p1, :cond_0

    iget-object v0, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    iget-object p1, p1, LJAVARuntime/VoxelChunk;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->setChunkBlueprint(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "value can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRenderChunks(I)V
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

    iget-object v0, p0, LJAVARuntime/VoxelChunkSpawner;->instance:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->setRenderChunks(I)V

    return-void
.end method
