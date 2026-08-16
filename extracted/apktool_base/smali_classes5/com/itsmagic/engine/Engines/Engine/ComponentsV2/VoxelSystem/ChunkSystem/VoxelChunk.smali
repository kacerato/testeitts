.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# static fields
.field public static final D2:Ljava/lang/String; = "@@ASSET@@Engine/Voxels/block_texture.png"

.field public static final q2:Ljava/lang/String; = "VoxelChunk"

.field public static final v2:Ljava/lang/Class;


# instance fields
.field public final D0:LR8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR8/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;",
            ">;"
        }
    .end annotation
.end field

.field public E:Lvc/h;

.field public F:Z

.field public F1:Z

.field public G:Z

.field public H:Z

.field public H1:Z

.field public I:Z

.field public J:Z

.field public K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

.field public L:Z

.field public volatile L1:Z

.field public M:Z

.field public volatile M1:Z

.field public N:Lub/p;

.field public final O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

.field public final P:LE9/a;

.field public final Q:LE9/c;

.field public R:I

.field public R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public S:I

.field public T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field public final U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final V:[F

.field public final V1:Lib/h;

.field public W:Z

.field public X:Z

.field public final Y:LR8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR8/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

.field public b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

.field public b2:LJAVARuntime/Component;

.field private blocksPerSideInTexture:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private height:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public i1:I

.field public i2:LF9/c;

.field public m1:Z

.field public m2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

.field private materialFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final q0:LR8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR8/a<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public final q1:Ljava/lang/Object;

.field private usePositionAsCoordinatesOffset:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

.field public v1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

.field private width:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public y1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LW8/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v2:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$j;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$j;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "VoxelChunk"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x10

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    const/16 v1, 0x60

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->blocksPerSideInTexture:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->J:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L:Z

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v4, LE9/a;

    invoke-direct {v4, p0}, LE9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->P:LE9/a;

    new-instance v4, LE9/c;

    invoke-direct {v4, p0}, LE9/c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Q:LE9/c;

    const v4, -0xf423f

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V:[F

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->W:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->X:Z

    new-instance v0, LR8/a;

    invoke-direct {v0}, LR8/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Y:LR8/a;

    new-instance v0, LR8/a;

    invoke-direct {v0}, LR8/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q0:LR8/a;

    new-instance v0, LR8/a;

    invoke-direct {v0}, LR8/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->D0:LR8/a;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m1:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$k;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V1:Lib/h;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshTransformSnapshot()V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    return p0
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->blocksPerSideInTexture:I

    return p0
.end method

.method public static synthetic access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->blocksPerSideInTexture:I

    return p1
.end method

.method public static synthetic access$1302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->G:Z

    return p1
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)LE9/a;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->P:LE9/a;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M1:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)Lvc/h;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Lvc/h;)Lvc/h;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->W:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->X:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    return p0
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    return p0
.end method

.method private addToController()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->J:Z

    if-nez v0, :cond_0

    invoke-static {p0}, LD9/a;->f(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->J:Z

    :cond_0
    return-void
.end method

.method private applyMaterialToRenderer()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setMaterial(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V

    :cond_0
    return-void
.end method

.method private applyPendingBuildIfReady()V
    .locals 8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F1:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F1:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M1:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F1:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M1:Z

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v5, :cond_3

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object v5, v2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :goto_1
    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    goto :goto_2

    :cond_3
    move-object v1, v4

    move-object v5, v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    new-instance v6, Ld9/a;

    invoke-direct {v6, v2}, Ld9/a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {v0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;->setModel(Ld9/a;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    int-to-float v6, v6

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    int-to-float v7, v7

    invoke-virtual {v0, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_4

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_4
    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    :cond_5
    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F:Z

    if-nez v1, :cond_7

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    move-object v5, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F:Z

    :cond_7
    :goto_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    invoke-virtual {v0, v2, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->setPreparedShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Ljava/util/List;)V

    :cond_8
    return-void

    :goto_4
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private buildPendingPayload()V
    .locals 7

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->createMatrix()V

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H:Z

    :cond_1
    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generateChunk(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->J()V

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;

    invoke-direct {v4, p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->v(LCb/a;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M1:Z

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    invoke-static {}, Lc8/b;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V:[F

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    invoke-static {v0, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->buildModelShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v4, v3

    :goto_0
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->releasePendingCollisionShapesLocked()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    if-eqz v0, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    iput-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F1:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-nez v0, :cond_5

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M1:Z

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    return-void

    :goto_4
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private calculatePositionX()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->c1()F

    move-result v0

    invoke-static {v0}, LJAVARuntime/Math;->floor(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    return v0
.end method

.method private calculatePositionZ()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->e1()F

    move-result v0

    invoke-static {v0}, LJAVARuntime/Math;->floor(F)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    return v0
.end method

.method private createMatrix()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lvc/h;->v()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {v0}, Lvc/h;->w()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {v0}, Lvc/h;->x()I

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lvc/h;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    invoke-direct {v0, v1, v1, v2}, Lvc/h;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    :cond_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method private ensureMaterialAtlasTexture()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "albedo"

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->l0(Ljava/lang/String;)Lub/p;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->N:Lub/p;

    return-void

    :cond_1
    const-string v0, "@@ASSET@@Engine/Voxels/atlas.png"

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->N:Lub/p;

    invoke-static {v0, v2}, LBb/c;->a(Ljava/lang/String;Lub/p;)Lub/p;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->N:Lub/p;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v2, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->m0(Ljava/lang/String;Lub/p;)V

    :cond_2
    return-void
.end method

.method private generateChunk(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetVertex"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getGeneratorListener()LF9/c;

    move-result-object v8

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v9

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v10

    new-instance v11, LE9/b;

    invoke-direct {v11}, LE9/b;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Q:LE9/c;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    move-object v4, v11

    move v5, v9

    move v6, v10

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, LE9/c;->b(IILvc/h;LE9/b;IILF9/c;)V

    iget v0, v11, LE9/b;->a:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->i1:I

    const/4 v0, 0x1

    new-array v7, v0, [LE9/e;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->P:LE9/a;

    if-eqz v0, :cond_3

    iget-object v12, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$i;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v8

    move-object v3, v7

    move-object v4, v11

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;LF9/c;[LE9/e;LE9/b;II)V

    invoke-static {v12, v13}, Ld8/m;->b(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lo8/d;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    aget-object v0, v7, v0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->blocksPerSideInTexture:I

    :goto_0
    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/DataSystem/NativeVoxelChunkBuilder;->a(LE9/e;I)Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    :cond_2
    move-object p1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed at chunk ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    :cond_4
    :goto_3
    return-object p1
.end method

.method private hasPendingBuildReady()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F1:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyChunkCreated()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$l;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method private refreshMaterialState()V
    .locals 4

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "@VoxelsMaterial@"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    invoke-static {v0}, Lda/h;->t(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M:Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2}, Lda/h;->i(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M:Z

    :goto_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->o0()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->e:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->g:Z

    const-string v1, "texture"

    const-string v2, "@@ASSET@@Engine/Voxels/atlas.png"

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->i0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-static {v0}, Lda/h;->d(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->K:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->ensureMaterialAtlasTexture()V

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->applyMaterialToRenderer()V

    return-void
.end method

.method private refreshRuntimeRefs(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceReloadInspector"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Y:LR8/a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ModelRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v3, v4}, LR8/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->D0:LR8/a;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->Collider:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2, v3, v4}, LR8/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v3, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-eq v1, v2, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->applyMaterialToRenderer()V

    :cond_2
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz v2, :cond_3

    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->W:Z

    if-ne v3, v6, :cond_4

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    :cond_4
    if-eqz v2, :cond_5

    move v0, v5

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->W:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v0, :cond_7

    move v2, v5

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->X:Z

    if-ne v2, v3, :cond_8

    if-eqz p1, :cond_a

    if-eqz v1, :cond_a

    :cond_8
    if-eqz v0, :cond_9

    move v4, v5

    :cond_9
    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->X:Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    :cond_b
    return-void
.end method

.method private refreshTransformSnapshot()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V:[F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r0([F)[F

    :cond_0
    return-void
.end method

.method private releasePendingCollisionShapesLocked()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LW8/b;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LW8/b;->e()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    return-void
.end method

.method private removeFromController()V
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->J:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, LD9/a;->n(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->J:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$n;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    .line 6
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->blocksPerSideInTexture:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->blocksPerSideInTexture:I

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public containsBlock(III)Z
    .locals 2
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, LJAVARuntime/Math;->floor(F)F

    move-result p1

    float-to-int p1, p1

    if-gez p1, :cond_1

    return v1

    :cond_1
    if-gez p2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-static {p3}, LJAVARuntime/Math;->floor(F)F

    move-result p3

    float-to-int p3, p3

    if-gez p3, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {v0}, Lvc/h;->v()I

    move-result v0

    if-lt p1, v0, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {p1}, Lvc/h;->w()I

    move-result p1

    if-lt p3, p1, :cond_5

    return v1

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {p1}, Lvc/h;->x()I

    move-result p1

    if-lt p2, p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public containsInternalBlock(III)Z
    .locals 2
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-gez p1, :cond_1

    return v1

    :cond_1
    if-gez p2, :cond_2

    return v1

    :cond_2
    if-gez p3, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lvc/h;->v()I

    move-result v0

    if-lt p1, v0, :cond_4

    return v1

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {p1}, Lvc/h;->w()I

    move-result p1

    if-lt p3, p1, :cond_5

    return v1

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {p1}, Lvc/h;->x()I

    move-result p1

    if-lt p2, p1, :cond_6

    return v1

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    return-void
.end method

.method public forceCalculatedPos(II)V
    .locals 0
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    return-void
.end method

.method public getBlock(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "worldX",
            "worldY",
            "worldZ"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, LJAVARuntime/Math;->floor(F)F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, p2

    invoke-static {v0}, LJAVARuntime/Math;->floor(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-static {p3}, LJAVARuntime/Math;->floor(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->containsInternalBlock(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {v0, p1, p3, p2}, Lvc/h;->u(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBlockInternal(III)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localX",
            "localY",
            "localZ"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->containsInternalBlock(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {v0, p1, p3, p2}, Lvc/h;->u(III)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBlocksCritical()Lvc/h;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VOXEL_CHUNK:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneratorListener()LF9/c;
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->updateGeneratorReference()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->i2:LF9/c;

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$h;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->i2:LF9/c;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->i2:LF9/c;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m2:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    sget-object v0, LF9/b;->a:LF9/c;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->W:Z

    const v3, 0x7f050165

    const/16 v4, 0xc

    if-nez v2, :cond_0

    new-instance v2, LC5/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MISSING_MODEL_RENDERER_COMPONENT:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v4, v3}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$o;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_NEW_MODEL_RENDERER:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v2, v5, v6, v7}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->X:Z

    if-nez v2, :cond_1

    new-instance v2, LC5/b;

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MISSING_COLLIDER_COMPONENT:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v4, v3}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$p;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ADD_NEW_COLLIDER:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$q;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->WIDTH:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLInt:LC5/b$a;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "width"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$r;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Landroid/content/Context;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->HEIGHT:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v7, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    const-string v4, "height"

    invoke-virtual {v2, v1, p0, v4, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$a;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->POSITION_AS_COORDINATES_OFFSET:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v2, v4, v7, v8}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OFFSET:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;-><init>(F)V

    invoke-static {v2, v4, v7}, LF5/c;->y(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)LC5/b;

    move-result-object v2

    const-string v4, "offset"

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->VEC2:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v4, v7}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GENERATOR:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$b;

    invoke-direct {v7, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Landroid/content/Context;)V

    invoke-virtual {v2, v4, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$c;

    invoke-direct {v4, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MATERIAL:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, LC5/b$a;->InputFile:LC5/b$a;

    const-string v9, ".mat"

    invoke-direct {v2, v4, v7, v8, v9}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$d;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;Landroid/content/Context;)V

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BLOCKS_PER_SIDE_IN_TEXTURE:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v4, p1, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    const-string p1, "blocksPerSideInTexture"

    invoke-virtual {v2, v1, p0, p1, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getMaterialFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxVerticesCount()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->i1:I

    return v0
.end method

.method public getOffset()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-object v0
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    return v0
.end method

.method public getPositionZ()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "VoxelChunk"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelChunk:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    return v0
.end method

.method public iconPriority()I
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->iconPriority()I

    move-result v0

    return v0
.end method

.method public internalBlockIndexX(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, LJAVARuntime/Math;->floor(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public internalBlockIndexY(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "y"
        }
    .end annotation

    int-to-float p1, p1

    invoke-static {p1}, LJAVARuntime/Math;->floor(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public internalBlockIndexZ(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, LJAVARuntime/Math;->floor(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public isBuilding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->G:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCustomGenerator()Z
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getGeneratorListener()LF9/c;

    move-result-object v0

    sget-object v1, LF9/b;->a:LF9/c;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsePositionAsCoordinatesOffset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    return v0
.end method

.method public onAttach()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->addToController()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->G:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V1:Lib/h;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshTransformSnapshot()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->calculatePositionX()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->calculatePositionZ()I

    move-result v1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshMaterialState()V

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshRuntimeRefs(Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->notifyChunkCreated()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V1:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->releasePendingCollisionShapesLocked()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L1:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->M1:Z

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R1:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->removeFromController()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshRuntimeRefs(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->addToController()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->removeFromController()V

    :goto_0
    return-void
.end method

.method public onParentChanged()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshRuntimeRefs(Z)V

    return-void
.end method

.method public parallelDisabledUpdate()V
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelDisabledUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public parallelLowTaskUpdate()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->updateGeneratorReference()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->calculatePositionX()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->calculatePositionZ()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    :cond_1
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    int-to-float v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->O(FF)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstructMatrix()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->R:I

    int-to-float v1, v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->S:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    :cond_2
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    invoke-static {}, Lc8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;->Model:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider$o;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->getCollisionVertex()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    if-eq v0, v3, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->T:Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->V:[F

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>([F)V

    invoke-static {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;->buildModelShapeCandidates(Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->y1:Ljava/util/List;

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->H1:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_5
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->wantsBuild()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->m1:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->G:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->buildPendingPayload()V

    :cond_7
    :goto_4
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 0
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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->Z:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ModelRenderer/ModelRenderer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Collider/Collider;

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshRuntimeRefs(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->applyPendingBuildIfReady()V

    return-void
.end method

.method public scheduleReconstruct()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$e;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleReconstructMatrix()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$f;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBlock(IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "worldX",
            "worldY",
            "worldZ",
            "blockType"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionX()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, LJAVARuntime/Math;->floor(F)F

    move-result p1

    float-to-int p1, p1

    int-to-float p2, p2

    invoke-static {p2}, LJAVARuntime/Math;->floor(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getPositionZ()I

    move-result v0

    sub-int/2addr p3, v0

    int-to-float p3, p3

    invoke-static {p3}, LJAVARuntime/Math;->floor(F)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->setInternalBlock(IIII)Z

    move-result p1

    return p1
.end method

.method public setBlocksCritical(Lvc/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blocks"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    return-void
.end method

.method public setHeight(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isBuilding()Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p1, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstructMatrix()V

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->height:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "height can\'t be <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Chunk is currently building, can\'t edit."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInternalBlock(IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "localX",
            "localY",
            "localZ",
            "blockType"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->containsInternalBlock(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->E:Lvc/h;

    invoke-virtual {v0, p1, p3, p2, p4}, Lvc/h;->y(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t modify a chunk that is not ready"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaterialFile(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "materialFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->materialFile:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->L:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->refreshMaterialState()V

    return-void
.end method

.method public setOffset(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->offset:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "offset can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b2:LJAVARuntime/Component;

    return-void
.end method

.method public setUsePositionAsCoordinatesOffset(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "usePositionAsCoordinatesOffset"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isBuilding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstructMatrix()V

    :cond_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->usePositionAsCoordinatesOffset:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Chunk is currently building, can\'t edit."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isBuilding()Z

    move-result v0

    if-nez v0, :cond_2

    if-lez p1, :cond_1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstruct()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->scheduleReconstructMatrix()V

    :cond_0
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->width:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "width can\'t be <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Chunk is currently building, can\'t edit."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b2:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/VoxelChunk;

    invoke-direct {v0, p0}, LJAVARuntime/VoxelChunk;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->b2:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateGeneratorReference()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->q0:LR8/a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelGenerator:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->generatorReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LR8/a;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/TerrainSystem/VoxelGenerator;

    :cond_1
    :goto_0
    return-void
.end method

.method public wantsBuild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->I:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->hasPendingBuildReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->F:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
