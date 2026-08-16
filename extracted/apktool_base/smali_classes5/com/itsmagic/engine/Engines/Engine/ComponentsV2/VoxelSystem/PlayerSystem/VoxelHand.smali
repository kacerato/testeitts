.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;
    }
.end annotation


# static fields
.field public static final V1:Ljava/lang/String; = "VoxelHand"

.field public static final b2:Ljava/lang/Class;


# instance fields
.field public final D0:Lib/h;

.field public final E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public F1:Lcom/itsmagic/engine/Engines/Input/Key;

.field public final G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public H1:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:I

.field public L1:Lcom/itsmagic/engine/Engines/Input/Key;

.field public M:I

.field public M1:Z

.field public N:I

.field public O:I

.field public final P:Ljava/lang/Object;

.field public Q:Z

.field public R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

.field public R1:LJAVARuntime/Component;

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public X:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

.field public Y:I

.field public Z:I

.field public b1:F

.field private breakKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private crossHairSize:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private crossHairTexture:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private distance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private gizmoUpdateDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public i1:Lub/p;

.field public m1:I

.field private putKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public q0:I

.field public q1:Z

.field private selectedBlockId:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private showCrosshair:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:I

.field public v1:Z

.field public y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b2:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$f;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v0, "VoxelHand"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40600000    # 3.5f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    .line 3
    const-string v0, "breakBlock"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    .line 4
    const-string v0, "putBlock"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const v0, 0x3e4ccccd    # 0.2f

    .line 6
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    const/16 v1, 0x19

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    .line 9
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    const/4 v2, 0x3

    .line 11
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->selectedBlockId:I

    .line 12
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 13
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 14
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 15
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 16
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->I:Z

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->J:Z

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->P:Ljava/lang/Object;

    .line 19
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->D0:Lib/h;

    .line 20
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b1:F

    .line 21
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    .line 22
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H1:Z

    .line 23
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M1:Z

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoReference"
        }
    .end annotation

    .line 24
    const-string v0, "VoxelHand"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40600000    # 3.5f

    .line 25
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    .line 26
    const-string v0, "breakBlock"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    .line 27
    const-string v0, "putBlock"

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const v0, 0x3e4ccccd    # 0.2f

    .line 29
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    const/16 v1, 0x19

    .line 31
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    .line 32
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    const/4 v2, 0x3

    .line 34
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->selectedBlockId:I

    .line 35
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 36
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 37
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 38
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 39
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->I:Z

    .line 40
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->J:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->P:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$g;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->D0:Lib/h;

    .line 43
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b1:F

    .line 44
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    .line 45
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H1:Z

    .line 46
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M1:Z

    .line 47
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    return-void
.end method

.method public static synthetic access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->I:Z

    return p1
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    return p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->q1:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->v1:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    return p0
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    return p0
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->selectedBlockId:I

    return p0
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    return-object p1
.end method

.method private applyPendingBlockActions()V
    .locals 13

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->P:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Q:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->S:I

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->T:I

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->U:I

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->V:I

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Q:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_4

    :cond_0
    move-object v1, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    iget-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->W:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->X:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Y:I

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Z:I

    iget v11, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->q0:I

    iget v12, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->v0:I

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->W:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->X:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    move-object v2, v8

    goto :goto_1

    :cond_1
    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_1
    invoke-static {v1, v5, v6, v7, v3}, LE9/d;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IIII)V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->q1:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$h;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    invoke-static {v1}, LK8/a;->B(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    if-eqz v1, :cond_2

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;->onBlockBroken(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {v2, v9, v10, v11, v12}, LE9/d;->b(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;IIII)V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->v1:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$i;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    invoke-static {v0}, LK8/a;->B(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    if-eqz v0, :cond_3

    invoke-interface {v0, v12, v9, v10, v11}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;->onBlockPlaced(IIII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private applyPendingGizmoState()V
    .locals 5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->J:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->J:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->K:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M:I

    int-to-float v2, v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->N:I

    int-to-float v3, v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->O:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->setPosition(FFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->m1:I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->K:Z

    if-eqz v3, :cond_3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->N:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->O:I

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;->onBlockSelected(IIII)V

    goto :goto_1

    :cond_3
    invoke-interface {v2, v0, v0, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;->onBlockSelected(IIII)V

    :cond_4
    :goto_1
    return-void
.end method

.method private bindTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->D0:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->D0:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    :cond_0
    return-void
.end method

.method private getBreak()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H1:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F1:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Input/Key;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F1:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F1:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->f()Z

    move-result v0

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F1:Lcom/itsmagic/engine/Engines/Input/Key;

    return v1
.end method

.method private getPut()Z
    .locals 3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M1:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L1:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Input/Key;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    invoke-static {v0}, Lrc/a;->j(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Input/Key;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L1:Lcom/itsmagic/engine/Engines/Input/Key;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L1:Lcom/itsmagic/engine/Engines/Input/Key;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Input/Key;->f()Z

    move-result v0

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L1:Lcom/itsmagic/engine/Engines/Input/Key;

    return v1
.end method

.method private handleBreakHit(Laa/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hit"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelChunk:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p1}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p1, v4

    sub-float/2addr v1, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    :try_start_0
    invoke-virtual {v0, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getBlock(III)I

    move-result v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->P:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->R:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->S:I

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->T:I

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->U:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->V:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Q:Z

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleGizmoHit(Laa/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hit"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    invoke-static {v1}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelChunk:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {p1}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M:I

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->N:I

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p1, v5

    sub-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->O:I

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M:I

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->N:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->getBlock(III)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->K:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->J:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->K:Z

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->L:I

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->J:Z

    return-void
.end method

.method private handlePutHit(Laa/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hit"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelChunk:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Laa/a;->i()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {p1}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v3, v5

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    mul-float/2addr p1, v4

    add-float/2addr v1, p1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->P:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->X:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/ChunkSystem/VoxelChunk;

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Y:I

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->Z:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->q0:I

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->selectedBlockId:I

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->v0:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->W:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshTraceCache()V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->I:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->F:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    :goto_0
    return-void
.end method

.method private unbindTransformListener()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->D0:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getBreakKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCrossHair()Lub/p;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->i1:Lub/p;

    return-object v0
.end method

.method public getCrossHairColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getCrossHairSize()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    return v0
.end method

.method public getCrossHairTexture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->VOXEL_HAND:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    return v0
.end method

.method public getGizmoUpdateDelay()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$j;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DISTANCE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_0

    const-string v3, "distance"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$k;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->BREAK_KEY_NAME:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v2, v3, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    new-instance v3, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$l;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Landroid/content/Context;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PUT_KEY_NAME:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v7, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    sget-object v6, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GIZMO_OBJECT:LAc/b;

    invoke-static {v6}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$m;

    invoke-direct {v7, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    invoke-virtual {v4, v6, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, LC5/b;

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$n;

    invoke-direct {v6, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Landroid/content/Context;)V

    sget-object v7, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GIZMO_UPDATE_DELAY:LAc/b;

    invoke-static {v7}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    const-string v4, "gizmoUpdateDelay"

    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v4, v5}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$a;

    invoke-direct {v4, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Landroid/content/Context;)V

    sget-object v5, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SELECTED_BLOCK_ID:LAc/b;

    invoke-static {v5}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v2, v4, v5, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    const-string v2, "selectedBlockId"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v3, v1, p0, v2, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$b;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SHOW_CROSSHAIR:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v2, v3, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    if-eqz v2, :cond_5

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$c;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CROSSHAIR:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v2, v3, v4, v5, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$d;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;Landroid/content/Context;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CROSSHAIR_SIZE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    if-eqz v1, :cond_3

    const-string v3, "crossHairSize"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->INT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, LC5/b;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CROSSHAIR_COLOR:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->Color:LC5/b$a;

    invoke-direct {v2, v3, v4, v5, p1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    if-eqz v1, :cond_4

    const-string p1, "crossHairColor"

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->COLOR:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v2, v1, p0, p1, v3}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public getLastHitBlockID()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->m1:I

    return v0
.end method

.method public getListener()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    return-object v0
.end method

.method public getPutKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedBlockID()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->selectedBlockId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "VoxelHand"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->VoxelHand:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->iconPriority()I

    move-result v0

    return v0
.end method

.method public isBlockBroken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->q1:Z

    return v0
.end method

.method public isBlockPlaced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->v1:Z

    return v0
.end method

.method public isShowCrosshair()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    return v0
.end method

.method public onAttach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->bindTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->refreshTraceCache()V

    return-void
.end method

.method public onHierarchyActiveChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onHierarchyActiveChanged(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->bindTransformListener()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->refreshTraceCache()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->unbindTransformListener()V

    :goto_0
    return-void
.end method

.method public onParentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onParentChanged()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->refreshTraceCache()V

    return-void
.end method

.method public parallelUpdate()V
    .locals 3

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->j()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->i1:Lub/p;

    invoke-static {v0, v1}, LBb/c;->a(Ljava/lang/String;Lub/p;)Lub/p;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->i1:Lub/p;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->i1:Lub/p;

    :goto_0
    invoke-static {}, Lc8/b;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b1:F

    invoke-static {}, LK8/d;->e()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b1:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b1:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    invoke-static {v0, v1, v2}, LF9/d;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Laa/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->handleGizmoHit(Laa/a;)V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->b1:F

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getBreak()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    invoke-static {v0, v1, v2}, LF9/d;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Laa/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->handleBreakHit(Laa/a;)V

    :cond_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->getPut()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->G:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    invoke-static {v0, v1, v2}, LF9/d;->a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Laa/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->handlePutHit(Laa/a;)V

    :cond_4
    :goto_1
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

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->I:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->refreshTraceCache()V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->applyPendingBlockActions()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->applyPendingGizmoState()V

    return-void
.end method

.method public requestBreak()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->H1:Z

    return-void
.end method

.method public requestPut()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->M1:Z

    return-void
.end method

.method public setBreakKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "breakKey"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->breakKey:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "breakKey can\'t be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCrossHairColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossHairColor"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public setCrossHairSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossHairSize"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairSize:I

    return-void
.end method

.method public setCrossHairTexture(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossHairTexture"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    return-void
.end method

.method public setCrossHairTexture(Lub/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crossHairTexture"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Lub/g;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lub/g;

    .line 4
    invoke-virtual {v0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->crossHairTexture:Ljava/lang/String;

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->i1:Lub/p;

    :cond_1
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distance"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->distance:F

    return-void
.end method

.method public setGizmoUpdateDelay(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gizmoUpdateDelay"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->gizmoUpdateDelay:F

    return-void
.end method

.method public setListener(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->y1:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand$o;

    return-void
.end method

.method public setPutKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "putKey"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->putKey:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "putKey can\'t be null or empty"

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->R1:LJAVARuntime/Component;

    return-void
.end method

.method public setSelectedBlockID(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedBlockId"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->selectedBlockId:I

    return-void
.end method

.method public setShowCrosshair(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCrosshair"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->showCrosshair:Z

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->R1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/VoxelHand;

    invoke-direct {v0, p0}, LJAVARuntime/VoxelHand;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/VoxelSystem/PlayerSystem/VoxelHand;->R1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
