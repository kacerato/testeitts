.class LJAVARuntime/VoxelGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/VoxelGenerator;->setListener(LJAVARuntime/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/VoxelGenerator;

.field final synthetic val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;


# direct methods
.method public constructor <init>(LJAVARuntime/VoxelGenerator;LJAVARuntime/VoxelGeneratorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalVoxelGeneratorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/VoxelGenerator$1;->this$0:LJAVARuntime/VoxelGenerator;

    iput-object p2, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeChunkBuild(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "voxelChunk"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p2

    check-cast p2, LJAVARuntime/VoxelChunk;

    invoke-interface {v0, p1, p2}, LJAVARuntime/VoxelGeneratorListener;->onChunkBuilt(LJAVARuntime/SpatialObject;LJAVARuntime/VoxelChunk;)V

    return-void
.end method

.method public drawFace(IIILJAVARuntime/Point3;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "sideBlockType",
            "sideFace",
            "internalCoords"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-static {p3}, LG9/b;->a(I)LJAVARuntime/VoxelGeneratorListener$Direction;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, LJAVARuntime/VoxelGeneratorListener;->drawFace(IILJAVARuntime/VoxelGeneratorListener$Direction;LJAVARuntime/Point3;)Z

    move-result p1

    return p1
.end method

.method public getBlockType(IIII)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "groundHeight"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-interface {v0, p1, p2, p3, p4}, LJAVARuntime/VoxelGeneratorListener;->getBlockType(IIII)I

    move-result p1

    return p1
.end method

.method public getGroundHeight(II)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-interface {v0, p1, p2}, LJAVARuntime/VoxelGeneratorListener;->getGroundHeight(II)I

    move-result p1

    return p1
.end method

.method public getTextureIndex(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "blockType",
            "face"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-static {p2}, LG9/b;->a(I)LJAVARuntime/VoxelGeneratorListener$Direction;

    move-result-object v1

    invoke-static {p2}, LG9/b;->a(I)LJAVARuntime/VoxelGeneratorListener$Direction;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, LJAVARuntime/VoxelGeneratorListener;->getTextureIndex(ILJAVARuntime/VoxelGeneratorListener$Direction;LJAVARuntime/VoxelGeneratorListener$Direction;)I

    move-result p1

    return p1
.end method

.method public loadChunk(II)Lvc/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-interface {v0, p1, p2}, LJAVARuntime/VoxelGeneratorListener;->loadChunk(II)LJAVARuntime/OH3LevelIntArray;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, LJAVARuntime/OH3LevelIntArray;->buffer:Lvc/h;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onChunkBuilt(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "chunk"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p2

    check-cast p2, LJAVARuntime/VoxelChunk;

    invoke-interface {v0, p1, p2}, LJAVARuntime/VoxelGeneratorListener;->onChunkBuilt(LJAVARuntime/SpatialObject;LJAVARuntime/VoxelChunk;)V

    return-void
.end method

.method public onChunkCreated(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "object",
            "chunk"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->W1()LJAVARuntime/SpatialObject;

    move-result-object p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->toJAVARuntime()LJAVARuntime/Component;

    move-result-object p2

    check-cast p2, LJAVARuntime/VoxelChunk;

    invoke-interface {v0, p1, p2}, LJAVARuntime/VoxelGeneratorListener;->onChunkCreated(LJAVARuntime/SpatialObject;LJAVARuntime/VoxelChunk;)V

    return-void
.end method

.method public storeChunk(Lvc/h;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "chunk",
            "x",
            "z"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$1;->val$finalVoxelGeneratorListener:LJAVARuntime/VoxelGeneratorListener;

    invoke-virtual {p1}, Lvc/h;->A()LJAVARuntime/OH3LevelIntArray;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, LJAVARuntime/VoxelGeneratorListener;->storeChunk(LJAVARuntime/OH3LevelIntArray;II)V

    return-void
.end method
