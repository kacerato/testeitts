.class public final LJAVARuntime/VoxelGenerator;
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
.field public transient component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;
    .annotation runtime LH6/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;-><init>()V

    invoke-direct {p0, v0}, LJAVARuntime/VoxelGenerator;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;)V
    .locals 0
    .annotation runtime LH6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, LJAVARuntime/Component;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    .line 2
    iput-object p1, p0, LJAVARuntime/VoxelGenerator;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    .line 3
    invoke-virtual {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;->setRuntime(LJAVARuntime/Component;)V

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

    const-class v0, LJAVARuntime/VoxelGenerator;

    invoke-super {p0, p1, p2, v0}, LJAVARuntime/Component;->componentClassMatch(LJAVARuntime/Component;LJAVARuntime/Component;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LJAVARuntime/VoxelGenerator;->setListener(LJAVARuntime/Component;)V

    return-void
.end method

.method public setListener(LJAVARuntime/Component;)V
    .locals 3
    .annotation runtime LJAVARuntime/MethodArgs;
        value = {
            "listener"
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

    if-nez p1, :cond_0

    iget-object p1, p0, LJAVARuntime/VoxelGenerator;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;->setListener(LF9/c;)V

    return-void

    :cond_0
    iget-object v0, p1, LJAVARuntime/Component;->type:LJAVARuntime/Component$Type;

    sget-object v1, LJAVARuntime/Component$Type;->JavaComponent:LJAVARuntime/Component$Type;

    const-string v2, "Component doesn\'t explicit implement VoxelGeneratorListener"

    if-ne v0, v1, :cond_2

    instance-of v0, p1, LJAVARuntime/VoxelGeneratorListener;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LJAVARuntime/VoxelGeneratorListener;

    new-instance v1, LJAVARuntime/VoxelGenerator$1;

    invoke-direct {v1, p0, v0}, LJAVARuntime/VoxelGenerator$1;-><init>(LJAVARuntime/VoxelGenerator;LJAVARuntime/VoxelGeneratorListener;)V

    iget-object v0, p0, LJAVARuntime/VoxelGenerator;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;->setListener(LF9/c;)V

    new-instance v0, Lob/b;

    new-instance v2, LJAVARuntime/VoxelGenerator$2;

    invoke-direct {v2, p0, v1, p1}, LJAVARuntime/VoxelGenerator$2;-><init>(LJAVARuntime/VoxelGenerator;LF9/c;LJAVARuntime/Component;)V

    invoke-direct {v0, v2}, Lob/b;-><init>(Lob/b$a;)V

    invoke-static {v0}, LK8/a;->J(Lob/b;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
