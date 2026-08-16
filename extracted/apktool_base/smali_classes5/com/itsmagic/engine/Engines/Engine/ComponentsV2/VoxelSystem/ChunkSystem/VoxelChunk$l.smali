.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->notifyChunkCreated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getGeneratorListener()LF9/c;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-interface {v0, v2, v1}, LF9/c;->onChunkCreated(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    return-void
.end method
