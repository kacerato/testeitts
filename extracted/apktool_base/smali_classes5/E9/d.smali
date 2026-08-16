.class public LE9/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIILvc/h;)I
    .locals 0
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
            "blocks"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3, p0, p2, p1}, Lvc/h;->u(III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "chunk",
            "x",
            "y",
            "z",
            "blockType"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->setBlock(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, LD9/a;->l(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0, p1, p2, p3, p4}, LE9/d;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IIII)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->internalBlockIndexX(I)I

    move-result p4

    invoke-virtual {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->internalBlockIndexZ(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p4, v1, :cond_1

    add-int/lit8 p4, p1, 0x1

    invoke-static {p4, p2, p3}, LD9/a;->l(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    goto :goto_0

    :cond_1
    if-gtz p4, :cond_2

    add-int/lit8 p4, p1, -0x1

    invoke-static {p4, p2, p3}, LD9/a;->l(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-lt v0, p4, :cond_3

    add-int/lit8 p3, p3, 0x1

    invoke-static {p1, p2, p3}, LD9/a;->l(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    goto :goto_1

    :cond_3
    if-gtz v0, :cond_4

    add-int/lit8 p3, p3, -0x1

    invoke-static {p1, p2, p3}, LD9/a;->l(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    :cond_5
    :goto_2
    return-void
.end method
