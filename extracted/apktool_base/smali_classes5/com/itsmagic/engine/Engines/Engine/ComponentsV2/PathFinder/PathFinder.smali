.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$l;
    }
.end annotation


# static fields
.field public static final b1:Ljava/lang/String; = "PathFinder"

.field public static final i1:Ljava/lang/Class;


# instance fields
.field public D0:LJAVARuntime/Component;

.field public E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public H:F

.field public I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

.field public K:I

.field public L:Lfa/a;

.field public M:Lfa/a;

.field public N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final O:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public P:Z

.field public final Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public T:Z

.field public U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

.field public final V:LJAVARuntime/GizmoPath;

.field public final W:LZc/a;

.field public final X:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final Y:F

.field public Z:Z

.field private bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public findTimeOutSeconds:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public ignoreY:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public lookToLerp:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public pointCaptureDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public q0:Z

.field public refreshDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public searchDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->i1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "PathFinder"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->pointCaptureDistance:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->ignoreY:Z

    .line 4
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 5
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const/high16 v0, 0x41200000    # 10.0f

    .line 6
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->lookToLerp:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->refreshDistance:F

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->searchDelay:F

    .line 9
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->findTimeOutSeconds:F

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->H:F

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    .line 13
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->M:Lfa/a;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 17
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 18
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    .line 19
    new-instance v0, LZc/a;

    invoke-direct {v0}, LZc/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->W:LZc/a;

    .line 20
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->X:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 21
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Y:F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Z:Z

    .line 23
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->q0:Z

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public constructor <init>(Lfb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentDictionary"
        }
    .end annotation

    .line 25
    const-string p1, "PathFinder"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 26
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->pointCaptureDistance:F

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->ignoreY:Z

    .line 28
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 29
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    const/high16 p1, 0x41200000    # 10.0f

    .line 30
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->lookToLerp:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->refreshDistance:F

    .line 32
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->searchDelay:F

    .line 33
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->findTimeOutSeconds:F

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->H:F

    .line 35
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    .line 37
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->M:Lfa/a;

    .line 38
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    .line 40
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 41
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 42
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    .line 43
    new-instance p1, LZc/a;

    invoke-direct {p1}, LZc/a;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->W:LZc/a;

    .line 44
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->X:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 45
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Y:F

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Z:Z

    .line 47
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->q0:Z

    .line 48
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;Lfa/a;)Lfa/a;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->M:Lfa/a;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object p1
.end method

.method private buildGizmoPath()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    new-instance v1, LJAVARuntime/Color;

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, LJAVARuntime/Color;-><init>(III)V

    invoke-virtual {v0, v1}, LJAVARuntime/GizmoPath;->setColor(LJAVARuntime/Color;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v0}, Lfa/a;->d()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    const-class v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v2

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v4, v3}, Lfa/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, LJAVARuntime/GizmoPath;->addLineUnsafe(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v0}, Lfa/a;->d()I

    move-result v0

    sub-int/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v0, v3}, Lfa/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    add-float/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Lfa/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    add-float/2addr v6, v2

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, LJAVARuntime/GizmoPath;->addLineUnsafe(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v0}, Lfa/a;->d()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lfa/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, LJAVARuntime/GizmoPath;->addLineUnsafe(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-virtual {v0}, LJAVARuntime/GizmoPath;->apply()V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Z:Z

    return-void
.end method

.method private calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "c"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private checkPoints()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v1}, Lfa/a;->d()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lfa/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->pointCaptureDistance:F

    mul-float/2addr v3, v3

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v1, v2}, Lfa/a;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSelectedAParent()Z
    .locals 2

    sget-object v0, LW7/b;->i:La8/a;

    iget-object v0, v0, La8/a;->a:La8/b;

    iget-object v0, v0, La8/b;->a:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->k:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->calculateParent(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->StandUp:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->lookToLerp:F

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, LNc/b;->E(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->ignoreY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->f0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v2, v1, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->Z(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->J:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->f2(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->I:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->E()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;->setRotationY(F)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->q0:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    throw p1
.end method

.method private precacheGlobalPositions()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->T:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->T:Z

    :goto_0
    return-void
.end method

.method private updatePath()V
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->T:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->M:Lfa/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->P:Z

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->M:Lfa/a;

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->pointCaptureDistance:F

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lfa/a;->b(F)V

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->H:F

    invoke-static {}, LK8/d;->e()F

    move-result v5

    add-float/2addr v2, v5

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->H:F

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->searchDelay:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->H:F

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->refreshDistance:F

    mul-float/2addr v5, v5

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->O:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;

    invoke-direct {v2, p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {v2}, Lg9/a;->b(Lg9/b;)V

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->getNextPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->pointCaptureDistance:F

    mul-float/2addr v4, v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_5

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->lookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;-><init>()V

    .line 3
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->searchDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->searchDelay:F

    .line 4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->ignoreY:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->ignoreY:Z

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PATH_FINDER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701d5

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

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    if-nez v1, :cond_1

    new-instance v1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NO_NAVMESH_BAKE_FOUND_CREATE_ONE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v4

    invoke-direct {v1, v2, v4}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    const-string v4, "Bake"

    sget-object v5, LC5/b$a;->Button:LC5/b$a;

    invoke-direct {v1, v2, v4, v5}, LC5/b;-><init>(LD5/b;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SEPARATOR_LINE_STRONG:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {v1, v2, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TARGET:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$g;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    invoke-virtual {v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$h;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;Landroid/content/Context;)V

    const-string p1, "Nav mesh"

    invoke-virtual {v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->d(Ljava/lang/String;LR8/e;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SEARCH_DELAY:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {p1, v1, v2, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    const-string v4, "searchDelay"

    invoke-virtual {p1, v1, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    const-string v4, "Point capture distance"

    invoke-direct {p1, v1, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "pointCaptureDistance"

    invoke-virtual {p1, v1, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$k;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOOK_LERP:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v1, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v4, "lookToLerp"

    invoke-virtual {p1, v1, p0, v4, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$a;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LOOK_IGNORE_Y:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {p1, v1, v4, v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$b;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->REFRESH_DISTANCE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v1, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "refreshDistance"

    invoke-virtual {p1, v1, p0, v3, v2}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->hasPath()Z

    move-result p1

    const/16 v1, 0xc

    if-nez p1, :cond_2

    new-instance p1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NO_CALCULATED_PATH_YET:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {p1, v2, v1, v3}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->hasTarget()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, LC5/b;

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NO_TARGET_YET:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v3

    invoke-direct {p1, v2, v1, v3}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method public getNextPoint()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->checkPoints()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    invoke-virtual {v0}, Lfa/a;->d()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfa/a;->c(I)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetDistance()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getTargetPathDistance()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getTargetPathSqrtDistance()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->G:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v0}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistanceIgnoreY(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "PathFinder"

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->PathFinder:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public hasPath()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->L:Lfa/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTarget()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method public parallelUpdate()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->startFrame()V

    :try_start_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->updatePath()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->endFrame()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->endFrame()V

    throw v0
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 2
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

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->bakeReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p2

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->BakedNavMesh:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->c0(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    goto :goto_2

    :cond_2
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->BakedNavMesh:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/World/a;->j(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->U:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/NavMesh/BakedNavMesh;

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->precacheGlobalPositions()V

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->q0:Z

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-virtual {p2}, LJAVARuntime/GizmoPath;->clear()V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->Q:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, LJAVARuntime/GizmoPath;->addLine(LJAVARuntime/Vector3;LJAVARuntime/Vector3;)LJAVARuntime/GizmoPath;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-virtual {p1}, LJAVARuntime/GizmoPath;->apply()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->V:LJAVARuntime/GizmoPath;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->q0:Z

    :cond_5
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->D0:LJAVARuntime/Component;

    return-void
.end method

.method public setTarget(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->F:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->reloadInspector()V

    :cond_0
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->D0:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/PathFinder;

    invoke-direct {v0, p0}, LJAVARuntime/PathFinder;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PathFinder/PathFinder;->D0:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
