.class public LG9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iput-object v0, p0, LG9/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iput p1, p0, LG9/a;->b:I

    return-void
.end method


# virtual methods
.method public a(III)I
    .locals 1
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

    invoke-virtual {p0, p1, p2, p3}, LG9/a;->c(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getBlock(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public b(LJAVARuntime/Vector3;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, LJAVARuntime/Vector3;->getZ()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, v1, p1}, LG9/a;->a(III)I

    move-result p1

    return p1
.end method

.method public c(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
    .locals 5
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

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, LG9/a;->b:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_3

    iget-object v2, p0, LG9/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v4}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->containsBlock(III)Z

    move-result v3

    if-eqz v3, :cond_2

    if-lez v1, :cond_0

    iget-object p1, p0, LG9/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    aget-object p2, p1, v0

    aput-object v2, p1, v0

    aput-object p2, p1, v1

    :cond_0
    return-object v2

    :cond_1
    iget-object v2, p0, LG9/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    aput-object v3, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p1, p2, p3}, LD9/a;->l(III)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p1

    if-eqz p1, :cond_5

    move p2, v0

    :goto_1
    iget p3, p0, LG9/a;->b:I

    add-int/lit8 p3, p3, -0x1

    if-ge p2, p3, :cond_4

    iget-object p3, p0, LG9/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    aget-object v1, p3, p2

    add-int/lit8 p2, p2, 0x1

    aput-object v1, p3, p2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    iget-object p2, p0, LG9/a;->a:[Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    aput-object p1, p2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object p1

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    return-object v3
.end method
