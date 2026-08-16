.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;->set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Utils/Variable;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$variable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lt6/j;->J1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VoxelChunkSpawner - set render chunks"

    invoke-static {v0}, Lt6/j;->S1(Ljava/lang/String;)Lt6/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a;->b:Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->setRenderChunks(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a$a;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e$a;Ljava/lang/Exception;)V

    invoke-static {v2}, LN7/c;->j0(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    return-void

    :goto_2
    invoke-static {v0}, Lt6/j;->P1(Lt6/e;)V

    throw v1
.end method
