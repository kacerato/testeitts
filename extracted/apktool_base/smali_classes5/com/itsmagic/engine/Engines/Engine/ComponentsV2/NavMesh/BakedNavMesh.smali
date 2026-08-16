.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final L:Ljava/lang/String; = "BakedNavMesh"

.field public static final M:Ljava/lang/Class;


# instance fields
.field public E:Ljava/lang/String;

.field public final F:Ljava/lang/Object;

.field public G:Ljn/v;

.field public H:Z

.field public final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public J:LJAVARuntime/GizmoObject;

.field public K:LJAVARuntime/Component;

.field private agentHeight:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x0
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private agentMaxClimb:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x2
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private agentMaxSlope:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x3
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private agentWidth:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x1
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private bakeFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private detailSampleDist:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x8
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private detailSampleMaxError:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x9
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private edgeMaxError:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x7
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private edgeMaxLen:F
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x6
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private maxPathFails:I
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0xb
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private maxTiles:I
    .annotation runtime LJAVARuntime/Order;
        idx = {
            -0x1
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private nms_maxPolys:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private nms_tileCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private regionMergeSize:I
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x5
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private regionMinSize:I
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0x4
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private tileSize:I
    .annotation runtime LJAVARuntime/Order;
        idx = {
            0xa
        }
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->M:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$k;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$k;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const-string v0, "BakedNavMesh"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    const v2, 0x3f19999a    # 0.6f

    .line 4
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 5
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    const/high16 v2, 0x42340000    # 45.0f

    .line 6
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    const/4 v2, 0x2

    .line 7
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    const/4 v2, 0x5

    .line 8
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 9
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    const v2, 0x3fa66666    # 1.3f

    .line 10
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 11
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    .line 12
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    const/16 v1, 0x20

    .line 13
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    .line 14
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    .line 16
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    .line 17
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->F:Ljava/lang/Object;

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->H:Z

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lfb/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentDictionary"
        }
    .end annotation

    .line 20
    const-string p1, "BakedNavMesh"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 21
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    const v1, 0x3f19999a    # 0.6f

    .line 23
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 24
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    const/high16 v1, 0x42340000    # 45.0f

    .line 25
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    const/4 v1, 0x2

    .line 26
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    const/4 v1, 0x5

    .line 27
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    const/high16 v1, 0x41400000    # 12.0f

    .line 28
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    const v1, 0x3fa66666    # 1.3f

    .line 29
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    const/high16 v1, 0x40c00000    # 6.0f

    .line 30
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    const/16 v0, 0x20

    .line 32
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    .line 33
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    .line 35
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->F:Ljava/lang/Object;

    .line 37
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->H:Z

    .line 38
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bakeFile"
        }
    .end annotation

    .line 39
    const-string v0, "BakedNavMesh"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 40
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    const v2, 0x3f19999a    # 0.6f

    .line 42
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 43
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    const/high16 v2, 0x42340000    # 45.0f

    .line 44
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    const/4 v2, 0x2

    .line 45
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    const/4 v2, 0x5

    .line 46
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    const/high16 v2, 0x41400000    # 12.0f

    .line 47
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    const v2, 0x3fa66666    # 1.3f

    .line 48
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    const/high16 v2, 0x40c00000    # 6.0f

    .line 49
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    .line 50
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    const/16 v1, 0x20

    .line 51
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    .line 52
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    .line 54
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->F:Ljava/lang/Object;

    .line 56
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->H:Z

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->runBake(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    return p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    return p1
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    return p1
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Ljn/v;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->saveNM(Ljn/v;II)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Ljn/v;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->createGizmo(Ljn/v;II)V

    return-void
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Ljn/v;)Ljn/v;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    return-object p1
.end method

.method public static synthetic access$1502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    return p1
.end method

.method public static synthetic access$1602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    return p1
.end method

.method public static synthetic access$1702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->E:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->F:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    return p0
.end method

.method public static synthetic access$2000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)LJAVARuntime/GizmoObject;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->J:LJAVARuntime/GizmoObject;

    return-object p0
.end method

.method public static synthetic access$2002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;LJAVARuntime/GizmoObject;)LJAVARuntime/GizmoObject;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->J:LJAVARuntime/GizmoObject;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    return p1
.end method

.method public static synthetic access$2100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    return p0
.end method

.method public static synthetic access$2102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    return p1
.end method

.method public static synthetic access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    return p0
.end method

.method public static synthetic access$2202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    return p1
.end method

.method public static synthetic access$2300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    return p0
.end method

.method public static synthetic access$2302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    return p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    return p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    return p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    return p0
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    return p1
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    return p0
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    return p0
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    return p1
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    return p0
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    return p1
.end method

.method private createGizmo(Ljn/v;II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "navMesh",
            "nms_tileCount",
            "maxPolys"
        }
    .end annotation

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p1, v0}, Ljn/v;->I(I)Ljn/s;

    move-result-object v2

    iget-object v2, v2, Ljn/s;->c:Ljn/q;

    if-eqz v2, :cond_0

    iget-object v3, v2, Ljn/q;->c:[Ljn/G;

    if-eqz v3, :cond_0

    move v3, p3

    :goto_1
    iget-object v4, v2, Ljn/q;->c:[Ljn/G;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    iget-object v4, v4, Ljn/G;->b:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_6

    new-instance v0, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    move v2, p3

    :goto_2
    if-ge v2, p2, :cond_4

    invoke-virtual {p1, v2}, Ljn/v;->I(I)Ljn/s;

    move-result-object v3

    iget-object v3, v3, Ljn/s;->c:Ljn/q;

    if-eqz v3, :cond_3

    iget-object v4, v3, Ljn/q;->c:[Ljn/G;

    if-eqz v4, :cond_3

    move v4, p3

    :goto_3
    iget-object v5, v3, Ljn/q;->c:[Ljn/G;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    aget-object v5, v5, v4

    iget-object v5, v5, Ljn/G;->b:[I

    array-length v6, v5

    move v7, p3

    :goto_4
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    iget-object v9, v3, Ljn/q;->b:[F

    mul-int/lit8 v8, v8, 0x3

    aget v9, v9, v8

    invoke-virtual {v0, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v9, v3, Ljn/q;->b:[F

    add-int/lit8 v10, v8, 0x1

    aget v9, v9, v10

    const v10, 0x3c75c28f    # 0.015f

    add-float/2addr v9, v10

    invoke-virtual {v0, v9}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    iget-object v9, v3, Ljn/q;->b:[F

    add-int/lit8 v8, v8, 0x2

    aget v8, v9, v8

    invoke-virtual {v0, v8}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->put(F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;

    div-int/lit8 v1, v1, 0x3

    invoke-direct {p1, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;-><init>(I)V

    move p2, p3

    :goto_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->capacity()I

    move-result v1

    if-ge p2, v1, :cond_5

    invoke-virtual {p1, p2, p2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->set(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {v0, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->position(I)V

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;->position(I)V

    new-instance p2, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    invoke-direct {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;-><init>()V

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->q2(Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;)V

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->i2(Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;)V

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->apply()V

    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$r;

    invoke-direct {p1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$r;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;)V

    invoke-static {p1}, LK8/a;->I(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.method private getPolyCenter(Ljn/v;J)[F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "navMesh",
            "polyRef"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Ljn/v;->J(J)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljn/U;

    iget-object p2, p2, Ljn/U;->a:Ljava/lang/Object;

    check-cast p2, Ljn/s;

    check-cast p1, Ljn/U;

    iget-object p1, p1, Ljn/U;->b:Ljava/lang/Object;

    check-cast p1, Ljn/G;

    iget-object p2, p2, Ljn/s;->c:Ljn/q;

    iget-object p2, p2, Ljn/q;->b:[F

    iget p3, p1, Ljn/G;->e:I

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge v3, p3, :cond_1

    iget-object v6, p1, Ljn/G;->b:[I

    aget v6, v6, v3

    aget v7, v1, v2

    mul-int/2addr v6, v0

    aget v8, p2, v6

    add-float/2addr v7, v8

    aput v7, v1, v2

    aget v7, v1, v5

    add-int/lit8 v8, v6, 0x1

    aget v8, p2, v8

    add-float/2addr v7, v8

    aput v7, v1, v5

    aget v5, v1, v4

    add-int/2addr v6, v4

    aget v6, p2, v6

    add-float/2addr v5, v6

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget p1, v1, v2

    int-to-float p2, p3

    div-float/2addr p1, p2

    aput p1, v1, v2

    aget p1, v1, v5

    div-float/2addr p1, p2

    aput p1, v1, v5

    aget p1, v1, v4

    div-float/2addr p1, p2

    aput p1, v1, v4

    return-object v1
.end method

.method private loadFile()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    invoke-static {v0}, LX7/a;->o(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Lpn/e;

    invoke-direct {v1}, Lpn/e;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lpn/e;->c(Ljava/io/InputStream;I)Ljn/v;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    if-nez v0, :cond_0

    invoke-virtual {v0}, Ljn/v;->C()Ljn/y;

    move-result-object v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    iput v1, v0, Ljn/y;->d:I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    iput v1, v0, Ljn/y;->e:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CARREGAMENTO DO DISCO FALHOU"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private runBake(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V

    invoke-static {v0}, LO9/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveNM(Ljn/v;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "navMesh",
            "maxTiles",
            "maxPolys"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Ljn/v;->C()Ljn/y;

    move-result-object v0

    iput p2, v0, Ljn/y;->d:I

    iput p3, v0, Ljn/y;->e:I

    new-instance p2, Lpn/g;

    invoke-direct {p2}, Lpn/g;-><init>()V

    sget-object p3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v0, 0x1

    invoke-virtual {p2, v1, p1, p3, v0}, Lpn/g;->h(Ljava/io/OutputStream;Ljn/v;Ljava/nio/ByteOrder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    return-void
.end method

.method public static vCopy([F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    aput v1, p0, v0

    const/4 v0, 0x2

    aget p1, p1, v0

    aput p1, p0, v0

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    .line 13
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    .line 14
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    .line 15
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    .line 16
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public countAsync()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public findDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljn/A;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    invoke-direct {v2, v0, v3}, Ljn/A;-><init>(Ljn/v;I)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$p;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toArray()[F

    move-result-object v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toArray()[F

    move-result-object v6

    invoke-virtual {v2, v3, v0, v7}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object p2

    invoke-virtual {v2, v6, v0, v7}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object v0

    invoke-virtual {p2}, Ljn/O;->j()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljn/O;->j()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast v3, Ljn/k;

    invoke-virtual {v3}, Ljn/k;->b()J

    move-result-wide v3

    iget-object v0, v0, Ljn/O;->a:Ljava/lang/Object;

    check-cast v0, Ljn/k;

    invoke-virtual {v0}, Ljn/k;->b()J

    move-result-wide v8

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    invoke-virtual {v0, v3, v4}, Ljn/v;->S(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    invoke-virtual {v0, v8, v9}, Ljn/v;->S(J)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/k;

    invoke-virtual {p2}, Ljn/k;->a()[F

    move-result-object v5

    invoke-virtual/range {v2 .. v7}, Ljn/A;->L(J[F[FLjn/L;)Ljn/O;

    move-result-object p2

    invoke-virtual {p2}, Ljn/O;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p2, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/t;

    invoke-virtual {p2}, Ljn/t;->a()[F

    move-result-object p2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>([F)V

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p2

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float p2, p2, v2

    if-lez p2, :cond_4

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalize()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v1

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public findEntirePath(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lfa/a;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljn/A;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    invoke-direct {v0, v2, v3}, Ljn/A;-><init>(Ljn/v;I)V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$q;

    invoke-direct {v9, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toArray()[F

    move-result-object v10

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toArray()[F

    move-result-object v11

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    return-object v1

    :cond_1
    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {v0, v10, p1, v9}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object p2

    invoke-virtual {v0, v11, p1, v9}, Ljn/A;->j([F[FLjn/L;)Ljn/O;

    move-result-object p1

    iget-object p2, p2, Ljn/O;->a:Ljava/lang/Object;

    check-cast p2, Ljn/k;

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljn/k;

    invoke-virtual {p2}, Ljn/k;->a()[F

    move-result-object v7

    invoke-virtual {p1}, Ljn/k;->a()[F

    move-result-object v8

    invoke-virtual {p2}, Ljn/k;->b()J

    move-result-wide v3

    invoke-virtual {p1}, Ljn/k;->b()J

    move-result-wide v5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    invoke-virtual {p1, v3, v4}, Ljn/v;->S(J)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    invoke-virtual {p1, v5, v6}, Ljn/v;->S(J)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Ljn/A;->k(JJ[F[FLjn/L;)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lfa/a;

    invoke-direct {p2}, Lfa/a;-><init>()V

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    invoke-virtual/range {v2 .. v7}, Ljn/A;->t([F[FLjava/util/List;II)Ljn/O;

    move-result-object p1

    invoke-virtual {p1}, Ljn/O;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Ljn/O;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn/S;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Ljn/S;->b()[F

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>([F)V

    invoke-virtual {p2, v2}, Lfa/a;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lfa/a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    return-object v1

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public generateBake()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->H:Z

    return-void
.end method

.method public getAgentHeight()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    return v0
.end method

.method public getAgentMaxClimb()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    return v0
.end method

.method public getAgentMaxSlope()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    return v0
.end method

.method public getAgentWidth()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    return v0
.end method

.method public getCellHeight()F
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getCellSize()F
    .locals 2
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getDependencyFiles(LIc/h;)LIc/k;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dependencyRequest"
        }
    .end annotation

    new-instance p1, LIc/k;

    invoke-direct {p1}, LIc/k;-><init>()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public getDetailSampleDist()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    return v0
.end method

.method public getDetailSampleMaxError()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    return v0
.end method

.method public getEdgeMaxError()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    return v0
.end method

.method public getEdgeMaxLen()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    return v0
.end method

.method public getGizmoObject()LJAVARuntime/GizmoObject;
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->F:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->J:LJAVARuntime/GizmoObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701b3

    return v0
.end method

.method public getInspectorColor(Landroid/content/Context;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const p1, 0x7f0500a0

    return p1
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 6
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

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$s;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v3, "Bake"

    sget-object v4, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {p1, v2, v3, v4}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$t;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$t;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    sget-object v3, LC5/b$a;->InputFile:LC5/b$a;

    const-string v4, ".nvmb"

    const-string v5, "Bake file"

    invoke-direct {p1, v2, v5, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$u;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$u;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    sget-object v3, LC5/b$a;->SLInt:LC5/b$a;

    const-string v4, "Max tiles"

    invoke-direct {p1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_1

    const-string v2, "maxTiles"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    const-string v5, "Agent height"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_2

    const-string v2, "agentHeight"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Agent width"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_3

    const-string v2, "agentWidth"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$c;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Agent max climb"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_4

    const-string v2, "agentMaxClimb"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$d;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Agent max slope"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_5

    const-string v2, "agentMaxSlope"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Region min size"

    invoke-direct {p1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_6

    const-string v2, "regionMinSize"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Region merge size"

    invoke-direct {p1, v2, v5, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_7

    const-string v2, "regionMergeSize"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Edge max length"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_8

    const-string v2, "edgeMaxLen"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Edge max error"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_9

    const-string v2, "edgeMaxError"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$i;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Detail sample dist"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_a

    const-string v2, "detailSampleDist"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$j;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v5, "Detail sample max error"

    invoke-direct {p1, v2, v5, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_b

    const-string v2, "detailSampleMaxError"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_b
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$m;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v4, "Tile size"

    invoke-direct {p1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_c

    const-string v2, "tileSize"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$n;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    const-string v4, "Max path fails"

    invoke-direct {p1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_d

    const-string v2, "maxPathFails"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {p1, v1, p0, v2, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_d
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxPathFails()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    return v0
.end method

.method public getMaxTiles()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    return v0
.end method

.method public getRegionMergeArea()F
    .locals 3
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->getCellSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->getCellSize()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRegionMergeSize()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    return v0
.end method

.method public getRegionMinArea()F
    .locals 3
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->getCellSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->getCellSize()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRegionMinSize()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

    return v0
.end method

.method public getTileSize()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "NavMesh"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->BakedNavMesh:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadAsync(LLb/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "),(NavMesh),(Loading),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, LLb/a;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->loadFile()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->E:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, LLb/a;->e()V

    return-void
.end method

.method public parallelUpdate()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->loadFile()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->E:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->H:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->H:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$l;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 1
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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->J:LJAVARuntime/GizmoObject;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->G:Ljn/v;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_tileCount:I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->nms_maxPolys:I

    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->createGizmo(Ljn/v;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->renderGizmo()V

    :cond_1
    return-void
.end method

.method public reloadFilesPaths(Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dictionary"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    const-string v1, "@@ASSET@@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BakedNavMesh: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " TO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->bakeFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public renderGizmo()V
    .locals 2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->getGizmoObject()LJAVARuntime/GizmoObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "nav mesh"

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoElement;->setUserPointer(Ljava/lang/Object;)V

    invoke-static {v0}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_0
    return-void
.end method

.method public setAgentHeight(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agentHeight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentHeight:F

    return-void
.end method

.method public setAgentMaxClimb(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agentMaxClimb"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxClimb:F

    return-void
.end method

.method public setAgentMaxSlope(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agentMaxSlope"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentMaxSlope:F

    return-void
.end method

.method public setAgentWidth(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "agentWidth"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->agentWidth:F

    return-void
.end method

.method public setDetailSampleDist(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailSampleDist"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleDist:F

    return-void
.end method

.method public setDetailSampleMaxError(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "detailSampleMaxError"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->detailSampleMaxError:F

    return-void
.end method

.method public setEdgeMaxError(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edgeMaxError"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxError:F

    return-void
.end method

.method public setEdgeMaxLen(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "edgeMaxLen"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->edgeMaxLen:F

    return-void
.end method

.method public setMaxPathFails(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxPathFails"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxPathFails:I

    return-void
.end method

.method public setMaxTiles(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxTiles"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->maxTiles:I

    return-void
.end method

.method public setRegionMergeSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regionMergeSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMergeSize:I

    return-void
.end method

.method public setRegionMinSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regionMinSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->regionMinSize:I

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->K:LJAVARuntime/Component;

    return-void
.end method

.method public setTileSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tileSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->tileSize:I

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->K:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/NavMesh;

    invoke-direct {v0, p0}, LJAVARuntime/NavMesh;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;->K:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
