.class public LG9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)LJAVARuntime/VoxelGeneratorListener$Direction;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    sget-object p0, LJAVARuntime/VoxelGeneratorListener$Direction;->BACK:LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid face:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object p0, LJAVARuntime/VoxelGeneratorListener$Direction;->FRONT:LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0

    :cond_2
    sget-object p0, LJAVARuntime/VoxelGeneratorListener$Direction;->DOWN:LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0

    :cond_3
    sget-object p0, LJAVARuntime/VoxelGeneratorListener$Direction;->UP:LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0

    :cond_4
    sget-object p0, LJAVARuntime/VoxelGeneratorListener$Direction;->RIGHT:LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0

    :cond_5
    sget-object p0, LJAVARuntime/VoxelGeneratorListener$Direction;->LEFT:LJAVARuntime/VoxelGeneratorListener$Direction;

    return-object p0
.end method
