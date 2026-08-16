.class public interface abstract LJAVARuntime/VoxelGeneratorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LJAVARuntime/VoxelGeneratorListener$Direction;
    }
.end annotation


# virtual methods
.method public drawFace(IILJAVARuntime/VoxelGeneratorListener$Direction;LJAVARuntime/Point3;)Z
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "blockType",
            "sideBlockType",
            "sideFace",
            "internalCoords"
        }
    .end annotation

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

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getBlockType(IIII)I
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "y",
            "z",
            "groundHeight"
        }
    .end annotation

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
.end method

.method public abstract getGroundHeight(II)I
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "z"
        }
    .end annotation

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
.end method

.method public getTextureIndex(ILJAVARuntime/VoxelGeneratorListener$Direction;LJAVARuntime/VoxelGeneratorListener$Direction;)I
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "blockType",
            "direction",
            "face"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockType",
            "dir",
            "face"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public loadChunk(II)LJAVARuntime/OH3LevelIntArray;
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "x",
            "z"
        }
    .end annotation

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

    const/4 p1, 0x0

    return-object p1
.end method

.method public onChunkBuilt(LJAVARuntime/SpatialObject;LJAVARuntime/VoxelChunk;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "chunk"
        }
    .end annotation

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

    return-void
.end method

.method public onChunkCreated(LJAVARuntime/SpatialObject;LJAVARuntime/VoxelChunk;)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "object",
            "chunk"
        }
    .end annotation

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

    return-void
.end method

.method public storeChunk(LJAVARuntime/OH3LevelIntArray;II)V
    .locals 0
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "chunk",
            "x",
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
            "chunk",
            "x",
            "z"
        }
    .end annotation

    return-void
.end method
