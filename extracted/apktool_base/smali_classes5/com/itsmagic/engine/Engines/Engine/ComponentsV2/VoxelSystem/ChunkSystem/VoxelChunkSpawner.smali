.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;
    }
.end annotation


# static fields
.field public static final N:Ljava/lang/String; = "VoxelChunkSpawner"

.field public static final O:Ljava/lang/Class;


# instance fields
.field public E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public F:Z

.field public G:LF9/c;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

.field public final I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;",
            ">;"
        }
    .end annotation
.end field

.field public final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;",
            ">;"
        }
    .end annotation
.end field

.field public M:LJAVARuntime/Component;

.field private blueprintEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private renderChunks:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private wantedChunksContentGUID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->O:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$a;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$a;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "VoxelChunkSpawner"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->blueprintEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->F:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->K:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->L:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->L:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    return p0
.end method

.method private checkAliveChunks()V
    .locals 11

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v4, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->C(I)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v4

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelChunk:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v8

    div-int/2addr v7, v8

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v8

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v9

    div-int/2addr v8, v9

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    sub-int v10, v1, v9

    if-lt v7, v10, :cond_1

    add-int v10, v1, v9

    if-gt v7, v10, :cond_1

    sub-int v7, v0, v9

    if-lt v8, v7, :cond_1

    add-int/2addr v9, v0

    if-gt v8, v9, :cond_1

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$c;

    invoke-direct {v4, p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;)V

    invoke-static {v4}, LK8/a;->I(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->destroy()V

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;)D
    .locals 2

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->lambda$searchNewChunks$0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;)D

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic lambda$searchNewChunks$0(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;)D
    .locals 2

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;->c:F

    float-to-double v0, p0

    return-wide v0
.end method

.method private searchNewChunks()V
    .locals 13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->updateGeneratorReference()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_8

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v3, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    neg-int v0, v0

    :goto_1
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    const/4 v4, 0x0

    if-gt v0, v3, :cond_7

    neg-int v3, v3

    :goto_2
    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    if-gt v3, v5, :cond_6

    add-int v5, v1, v0

    add-int v6, v2, v3

    invoke-static {}, LD9/a;->h()I

    move-result v7

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_2

    :try_start_1
    invoke-static {v8}, LD9/a;->g(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v10

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v11

    div-int/2addr v10, v11

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v11

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v9

    div-int/2addr v11, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v10, v5, :cond_1

    if-ne v11, v6, :cond_1

    move v7, v4

    goto :goto_4

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->L:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v4

    :goto_5
    if-ge v9, v8, :cond_4

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->L:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v11

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v12

    div-int/2addr v11, v12

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v12

    invoke-virtual {v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v10

    div-int/2addr v12, v10

    if-ne v11, v5, :cond_3

    if-ne v12, v6, :cond_3

    move v7, v4

    goto :goto_6

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    :goto_6
    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->K:Ljava/util/List;

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->squaredDistance(IIII)F

    move-result v9

    invoke-direct {v8, v5, v6, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;-><init>(IIF)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->K:Ljava/util/List;

    new-instance v1, LC9/a;

    invoke-direct {v1}, LC9/a;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_7
    if-ge v4, v0, :cond_8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->K:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;->a:I

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$g;->b:I

    invoke-direct {p0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->spawnChunkCandidate(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :goto_8
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v2, v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    throw v1

    :cond_8
    return-void
.end method

.method private shouldConstructChunks()Z
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isCustomGenerator()Z

    move-result v0

    invoke-static {}, Lc8/b;->j()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private spawnChunkCandidate(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "px",
            "pz"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;II)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private squaredDistance(IIII)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "originX",
            "originZ",
            "targetX",
            "targetZ"
        }
    .end annotation

    sub-int/2addr p3, p1

    int-to-float p1, p3

    sub-int/2addr p4, p2

    int-to-float p2, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->wantedChunksContentGUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->wantedChunksContentGUID:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getCamera()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChunkBlueprint()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VOXEL_CHUNK_SPAWNER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DISTANCE_CHUNKS:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    const-string v3, "renderChunks"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)V

    const-string v3, "Camera"

    invoke-virtual {v1, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->blueprintEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->blueprintEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    :cond_0
    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CHUNK_SETTINGS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->blueprintEditor:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v2, v3, v4, v5}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getInspectorEntries(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getRenderChunks()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "VoxelChunkSpawner"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ChunkSpawner:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->iconPriority()I

    move-result v0

    return v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->startFrame()V

    :try_start_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->checkAliveChunks()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->shouldConstructChunks()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->searchNewChunks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_0
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {}, LD9/a;->h()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_5

    :try_start_2
    invoke-static {v4}, LD9/a;->g(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->wantsBuild()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v6}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v6

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v7

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getWidth()I

    move-result v8

    div-int/2addr v7, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v6, p2, :cond_2

    if-ne v7, p1, :cond_2

    move-object v2, v5

    goto :goto_4

    :cond_2
    sub-int/2addr v6, p2

    int-to-float v6, v6

    sub-int/2addr v7, p1

    int-to-float v7, v7

    mul-float/2addr v6, v6

    mul-float/2addr v7, v7

    add-float/2addr v6, v7

    cmpl-float v7, v3, v6

    if-gez v7, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v5

    move v3, v6

    goto :goto_3

    :catch_1
    move-exception v5

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m1:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    move p1, v1

    :goto_5
    if-ge p1, v0, :cond_8

    :try_start_4
    invoke-static {p1}, LD9/a;->g(I)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-result-object p2

    if-eqz p2, :cond_7

    if-eq p2, v2, :cond_7

    iput-boolean v1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m1:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catch_2
    move-exception p2

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :goto_7
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->endFrame()V

    return-void

    :goto_8
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->H:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->endFrame()V

    throw p1
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameObject",
            "isEditor"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-nez p2, :cond_0

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;-><init>()V

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->F:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$b;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)V

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->setCustomInspectorListener(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$d;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->F:Z

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getGeneratorListener()LF9/c;

    move-result-object p2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->G:LF9/c;

    if-eq v1, p2, :cond_2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->G:LF9/c;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->shouldConstructChunks()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->D()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->destroy()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_3
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {p2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_4
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v0, " - "

    const-string v1, "Chunks of "

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->wantedChunksContentGUID:Ljava/lang/String;

    if-eqz p2, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->wantedChunksContentGUID:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_1

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/World/World;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez p2, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/IgnoreSave/IgnoreSave;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/IgnoreSave/IgnoreSave;-><init>()V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Q1()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getGuid()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GUID;->l()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->wantedChunksContentGUID:Ljava/lang/String;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    :cond_9
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_b

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->IgnoreSave:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->L0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/IgnoreSave/IgnoreSave;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/IgnoreSave/IgnoreSave;-><init>()V

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->r(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;)V

    :cond_a
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;->STATIC:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->N3(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform$G;)V

    :cond_b
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_c
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->J:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public setCamera(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .annotation runtime Ls8/c;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->cameraReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public setChunkBlueprint(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chunkBlueprint"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->chunkBlueprint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    return-void
.end method

.method public setRenderChunks(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderChunks"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->renderChunks:I

    return-void
.end method

.method public setRuntime(LJAVARuntime/Component;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->M:LJAVARuntime/Component;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->M:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/VoxelChunkSpawner;

    invoke-direct {v0, p0}, LJAVARuntime/VoxelChunkSpawner;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunkSpawner;->M:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
