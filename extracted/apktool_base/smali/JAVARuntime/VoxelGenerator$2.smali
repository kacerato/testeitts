.class LJAVARuntime/VoxelGenerator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/b$a;


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

.field final synthetic val$ll:LF9/c;

.field final synthetic val$value:LJAVARuntime/Component;


# direct methods
.method public constructor <init>(LJAVARuntime/VoxelGenerator;LF9/c;LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$ll",
            "val$value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/VoxelGenerator$2;->this$0:LJAVARuntime/VoxelGenerator;

    iput-object p2, p0, LJAVARuntime/VoxelGenerator$2;->val$ll:LF9/c;

    iput-object p3, p0, LJAVARuntime/VoxelGenerator$2;->val$value:LJAVARuntime/Component;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 3

    iget-object v0, p0, LJAVARuntime/VoxelGenerator$2;->this$0:LJAVARuntime/VoxelGenerator;

    iget-object v0, v0, LJAVARuntime/VoxelGenerator;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;->getListener()LF9/c;

    move-result-object v0

    iget-object v1, p0, LJAVARuntime/VoxelGenerator$2;->val$ll:LF9/c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, LJAVARuntime/VoxelGenerator$2;->val$value:LJAVARuntime/Component;

    iget-object v0, v0, LJAVARuntime/Component;->javaComponent:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/JavaComponent/JavaComponent;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, LJAVARuntime/VoxelGenerator$2;->this$0:LJAVARuntime/VoxelGenerator;

    iget-object v0, v0, LJAVARuntime/VoxelGenerator;->component:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;->setListener(LF9/c;)V

    return v2
.end method
