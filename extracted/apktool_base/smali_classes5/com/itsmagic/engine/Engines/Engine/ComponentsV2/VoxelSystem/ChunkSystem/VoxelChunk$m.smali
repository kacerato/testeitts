.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->buildPendingPayload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$renderableVertex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->L1(LCb/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->a:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
