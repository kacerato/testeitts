.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$m;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$p;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;
    }
.end annotation


# static fields
.field public static final Q8:Ljava/lang/String; = "EnemyAI"

.field public static final R8:Ljava/lang/Class;

.field public static final S8:I = 0x10

.field public static final T8:F = 0.9f

.field public static final U8:F = 6.0f

.field public static final V8:F = 0.0f

.field public static final W8:F = 22.5f

.field public static final X8:F = 11.25f

.field public static final Y8:F = 28.0f

.field public static final Z8:F = 60.0f

.field public static final a9:F = 0.75f

.field public static final b9:F = 1.65f

.field public static final c9:F = 0.45f

.field public static final d9:F = 0.25f

.field public static final e9:F = 4.0f

.field public static final f9:F = 0.55f

.field public static final g9:F = 0.7f

.field public static final h9:F = 0.995f


# instance fields
.field public final D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public D2:F

.field public final D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

.field public final D5:[F

.field public final D6:[I

.field public E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

.field public final F:Laa/e;

.field public F1:Z

.field public F2:F

.field public F3:Z

.field public final F4:[F

.field public final F5:[F

.field public final F6:[I

.field public F7:I

.field public F8:Z

.field public final G:Laa/c;

.field public final H:Laa/c;

.field public H1:Z

.field public H2:F

.field public H3:F

.field public final H4:[F

.field public final H5:[F

.field public H6:I

.field public final I:Laa/c;

.field public final J:Laa/c;

.field public final K:Laa/c;

.field public K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

.field public final L:Laa/c;

.field public L1:Z

.field public L2:Z

.field public L8:LV8/a;

.field public final M:Laa/c;

.field public M1:Z

.field public M2:Z

.field public M3:F

.field public final M8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final N8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public P8:LJAVARuntime/Component;

.field public final Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public R1:Z

.field public R2:I

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public V1:F

.field public V2:Z

.field public final W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private abyssCheckEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private attackDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private attackDelayRandomness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private attackDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public b2:F

.field private chaseSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private eyeHeight:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fieldOfViewDegrees:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private frontProbeDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private groundProbeDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public i2:F

.field public i3:Z

.field public layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lookLerp:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private loseSightDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final m1:Ljava/lang/Object;

.field public m2:Z

.field public m3:F

.field public m4:F

.field private navigationRaycastBudget:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolDelayRandomness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolPauseDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolPauseDelayRandomness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolRestChance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolRestDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolRestDelayRandomness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private patrolTurnChance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public q1:Z

.field public q2:F

.field public q3:F

.field private rayOriginForwardOffset:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private searchDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private searchDelayRandomness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stateChangeDelay:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private stateChangeRandomness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public v1:Z

.field public v2:F

.field public v3:F

.field public v4:I

.field private verticalFieldOfViewDegrees:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private visionDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private walkSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public y1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R8:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$d;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$d;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v0, "EnemyAI"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chaseSpeed:F

    const/high16 v2, 0x41a00000    # 20.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    const/high16 v2, 0x42b40000    # 90.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->fieldOfViewDegrees:F

    const/high16 v2, 0x42340000    # 45.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDistance:F

    const/high16 v2, 0x41700000    # 15.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->loseSightDistance:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    const v2, 0x3e4ccccd    # 0.2f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    const v3, 0x3fe66666    # 1.8f

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->groundProbeDistance:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelay:F

    const/high16 v4, 0x3e800000    # 0.25f

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelayRandomness:F

    const v5, 0x3eb33333    # 0.35f

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeDelay:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeRandomness:F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelay:F

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelayRandomness:F

    const v1, 0x3e3851ec    # 0.18f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestChance:F

    const v1, 0x40333333    # 2.8f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelay:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelayRandomness:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelay:F

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelayRandomness:F

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolTurnChance:F

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->lookLerp:F

    const/4 v0, 0x5

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->navigationRaycastBudget:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    const-string v1, "applyDamage"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;-><init>(Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->IDLE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    new-instance v0, Laa/e;

    invoke-direct {v0}, Laa/e;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F:Laa/e;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->G:Laa/c;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H:Laa/c;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->I:Laa/c;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->J:Laa/c;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K:Laa/c;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L:Laa/c;

    new-instance v1, Laa/c;

    invoke-direct {v1}, Laa/c;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M:Laa/c;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M1:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V1:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m2:Z

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q2:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v2:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F2:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H2:F

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L2:Z

    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M2:Z

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i3:Z

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v3:F

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    const/16 v2, 0x10

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F4:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H4:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D5:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D6:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F6:[I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F7:I

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->WALK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L8:LV8/a;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v3, 0xff

    invoke-direct {v2, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Laa/e;->n(Z)V

    invoke-virtual {v0, v1}, Laa/e;->o(Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    return p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$p;)LC5/b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->intEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$p;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    return p1
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    return p0
.end method

.method public static synthetic access$1102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$m;)LC5/b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->booleanEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$m;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    return p0
.end method

.method public static synthetic access$1302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    return p1
.end method

.method public static synthetic access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chaseSpeed:F

    return p0
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chaseSpeed:F

    return p1
.end method

.method public static synthetic access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    return p0
.end method

.method public static synthetic access$1502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    return p1
.end method

.method public static synthetic access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    return p0
.end method

.method public static synthetic access$1602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    return p1
.end method

.method public static synthetic access$1700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->groundProbeDistance:F

    return p0
.end method

.method public static synthetic access$1702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->groundProbeDistance:F

    return p1
.end method

.method public static synthetic access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolTurnChance:F

    return p0
.end method

.method public static synthetic access$1802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolTurnChance:F

    return p1
.end method

.method public static synthetic access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    return p0
.end method

.method public static synthetic access$1902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->floatEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    return p0
.end method

.method public static synthetic access$2002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    return p1
.end method

.method public static synthetic access$2100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelay:F

    return p0
.end method

.method public static synthetic access$2102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelay:F

    return p1
.end method

.method public static synthetic access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelayRandomness:F

    return p0
.end method

.method public static synthetic access$2202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelayRandomness:F

    return p1
.end method

.method public static synthetic access$2300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestChance:F

    return p0
.end method

.method public static synthetic access$2302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestChance:F

    return p1
.end method

.method public static synthetic access$2400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelay:F

    return p0
.end method

.method public static synthetic access$2402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelay:F

    return p1
.end method

.method public static synthetic access$2500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelayRandomness:F

    return p0
.end method

.method public static synthetic access$2502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelayRandomness:F

    return p1
.end method

.method public static synthetic access$2600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->lookLerp:F

    return p0
.end method

.method public static synthetic access$2602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->lookLerp:F

    return p1
.end method

.method public static synthetic access$2700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelay:F

    return p0
.end method

.method public static synthetic access$2702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelay:F

    return p1
.end method

.method public static synthetic access$2800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelayRandomness:F

    return p0
.end method

.method public static synthetic access$2802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelayRandomness:F

    return p1
.end method

.method public static synthetic access$2900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->fieldOfViewDegrees:F

    return p0
.end method

.method public static synthetic access$3000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeDelay:F

    return p0
.end method

.method public static synthetic access$3002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeDelay:F

    return p1
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->fieldOfViewDegrees:F

    return p1
.end method

.method public static synthetic access$3100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeRandomness:F

    return p0
.end method

.method public static synthetic access$3102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeRandomness:F

    return p1
.end method

.method public static synthetic access$3200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelay:F

    return p0
.end method

.method public static synthetic access$3202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelay:F

    return p1
.end method

.method public static synthetic access$3300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelayRandomness:F

    return p0
.end method

.method public static synthetic access$3302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelayRandomness:F

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Ljava/lang/String;FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->float01Entry(Ljava/lang/String;FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    return p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDistance:F

    return p0
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDistance:F

    return p1
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->loseSightDistance:F

    return p0
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->loseSightDistance:F

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    return p0
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    return p1
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->navigationRaycastBudget:I

    return p0
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->navigationRaycastBudget:I

    return p1
.end method

.method private applyObstacleAvoidance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moveDirection"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez v3, :cond_1

    if-ge v1, v4, :cond_1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    const v5, 0x3ec51eb8    # 0.385f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->moveDirectionLooksBlocked(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    if-eqz v5, :cond_8

    const/4 v5, 0x2

    if-lt v1, v5, :cond_8

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    const v7, 0x3f0ccccd    # 0.55f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    :cond_3
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->selectAvoidanceDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v5, v2

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    iput-boolean v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_5

    move v0, v2

    :cond_5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M2:Z

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rememberAvoidDecision(Z)V

    const v0, 0x3ee66666    # 0.45f

    if-lt v1, v4, :cond_6

    const/high16 v2, 0x3f400000    # 0.75f

    goto :goto_2

    :cond_6
    move v2, v0

    :goto_2
    if-lt v1, v4, :cond_7

    goto :goto_3

    :cond_7
    const/high16 v0, 0x3e800000    # 0.25f

    :goto_3
    int-to-float v1, v1

    const v4, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    invoke-direct {p0, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    :cond_8
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidanceSideBias()F

    move-result v0

    invoke-direct {p0, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidTurnRightFromDesired(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Z

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->steerAroundObstacle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZF)V

    return-void
.end method

.method private applyRayLayer(Laa/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ray"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->e()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Laa/c;->k(Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/Layer;)V

    :cond_1
    return-void
.end method

.method private applyWallSeparationToDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float v3, v2, v2

    mul-float v4, v0, v0

    add-float/2addr v3, v4

    const v4, 0x3727c5ac    # 1.0E-5f

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    return-void

    :cond_2
    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    mul-float/2addr v0, v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v3, v1, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    const v8, 0x3e75c28f    # 0.24f

    const v9, 0x3d75c28f    # 0.06f

    mul-float/2addr v5, v9

    add-float/2addr v5, v8

    const v8, 0x3e4ccccd    # 0.2f

    cmpg-float v3, v3, v8

    if-gez v3, :cond_3

    const v3, 0x3da3d70a    # 0.08f

    add-float/2addr v5, v3

    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3e19999a    # 0.15f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    add-float/2addr v5, v9

    :cond_4
    mul-float/2addr v2, v5

    add-float/2addr v6, v2

    mul-float/2addr v0, v5

    add-float/2addr v7, v0

    invoke-virtual {p1, v6, v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_5
    :goto_1
    return-void
.end method

.method private booleanEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$m;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "title",
            "accessor"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$l;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$m;)V

    sget-object p2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method private buildNavigationDirectionFromSector(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sectorIndex",
            "out"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorAngleDegrees(I)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorSideFromAngle(F)F

    move-result p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    const/4 p1, 0x0

    invoke-virtual {p2, v1, p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private chooseAvoidTurnRight()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidTurnRightFromDesired(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Z

    move-result v0

    return v0
.end method

.method private chooseAvoidTurnRightFromDesired(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredDirection",
            "allowReverse"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseBestAvoidanceCandidate(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    move p2, v0

    :cond_0
    return p2

    :cond_1
    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result p1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v2

    if-eq p1, v2, :cond_3

    if-ge v2, p1, :cond_2

    move p2, v0

    :cond_2
    return p2

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpl-float p1, p1, v1

    const v2, 0x3da3d70a    # 0.08f

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_5

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    move p2, v0

    :cond_4
    return p2

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_7

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    move p2, v0

    :cond_6
    return p2

    :cond_7
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    if-eqz p1, :cond_9

    if-lez p1, :cond_8

    move p2, v0

    :cond_8
    return p2

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, LNc/d;->i(F)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_a

    move p2, v0

    :cond_a
    return p2
.end method

.method private chooseAvoidanceSideBias()F
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-lt v0, v1, :cond_0

    const v1, 0x40066666    # 2.1f

    goto :goto_0

    :cond_0
    if-lt v0, v2, :cond_1

    const v1, 0x3feccccd    # 1.85f

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const v1, 0x3faccccd    # 1.35f

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f400000    # 0.75f

    :goto_0
    if-lt v0, v2, :cond_3

    const v0, 0x3e19999a    # 0.15f

    const v2, 0x3f59999a    # 0.85f

    :goto_1
    invoke-static {v0, v2}, LNc/d;->h(FF)F

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :goto_2
    const v2, 0x40166666    # 2.35f

    add-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method private chooseBestAvoidanceCandidate(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredDirection",
            "allowReverse"
        }
    .end annotation

    move-object/from16 v10, p0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v10, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    move v13, v0

    move v14, v1

    goto :goto_0

    :cond_0
    move v13, v11

    move v14, v12

    :goto_0
    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v15

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int v2, v15, v9

    int-to-float v7, v2

    iget-object v2, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    cmpl-float v2, v2, v12

    if-lez v2, :cond_1

    iget-object v2, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_1
    iget-object v2, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v3

    cmpl-float v3, v3, v12

    if-lez v3, :cond_2

    move/from16 v16, v1

    goto :goto_2

    :cond_2
    move/from16 v16, v0

    :goto_2
    const/high16 v6, -0x800000    # Float.NEGATIVE_INFINITY

    iput v6, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    iput v12, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    iput v12, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    if-eqz v16, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float v2, v11, v2

    mul-float v5, v0, v2

    mul-float/2addr v1, v2

    neg-float v4, v1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move v3, v13

    move v11, v4

    move v4, v14

    move v12, v5

    move v5, v15

    move/from16 v17, v6

    move v6, v9

    move/from16 v18, v7

    move v7, v8

    move/from16 p1, v8

    move/from16 v8, v16

    move/from16 v19, v9

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    neg-float v1, v11

    neg-float v2, v12

    move/from16 v6, v19

    move/from16 v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 p1, v8

    move/from16 v19, v9

    move v0, v12

    :goto_3
    cmpl-float v1, v18, v0

    if-lez v1, :cond_4

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_4
    cmpg-float v1, v18, v0

    const/high16 v0, -0x40800000    # -1.0f

    if-gez v1, :cond_6

    :cond_5
    :goto_4
    move v11, v0

    goto :goto_6

    :cond_6
    iget v1, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    if-eqz v1, :cond_7

    if-lez v1, :cond_5

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    iget-boolean v1, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M2:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :goto_6
    const v1, 0x3f266666    # 0.65f

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v2, v11, v0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v19

    move/from16 v7, p1

    move/from16 v8, v16

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    const v0, 0x3faccccd    # 1.35f

    mul-float v2, v11, v0

    const v1, 0x3eb33333    # 0.35f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    const v0, 0x3fcccccd    # 1.6f

    mul-float v2, v11, v0

    const v1, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    if-nez v16, :cond_8

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v19

    move/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    :cond_8
    if-eqz p2, :cond_a

    iget-boolean v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez v0, :cond_9

    const/4 v0, 0x4

    move/from16 v12, p1

    if-lt v12, v0, :cond_a

    goto :goto_7

    :cond_9
    move/from16 v12, p1

    :goto_7
    const v0, 0x3f59999a    # 0.85f

    mul-float v2, v11, v0

    const v1, -0x41b33333    # -0.2f

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v19

    move v7, v12

    move/from16 v8, v16

    move/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    const v0, 0x3f866666    # 1.05f

    mul-float v2, v11, v0

    const v1, -0x414ccccd    # -0.35f

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->considerAvoidanceCandidate(FFFFIIIZZ)V

    :cond_a
    iget v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    cmpl-float v0, v0, v17

    if-nez v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    const/4 v0, 0x0

    iput v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    iput v0, v10, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    :cond_b
    return-void
.end method

.method private choosePatrolOrIdle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->PATROL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    return-object v0
.end method

.method private choosePatrolTurnRight()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidTurnRightFromDesired(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Z

    move-result v0

    return v0
.end method

.method private clampMemory(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method private clearLookDirection()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cloneAttackFunction()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;
    .locals 3

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;-><init>()V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->s(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->h()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->p(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;)V

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$c;->a:[I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->h()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall$g;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->u(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->q(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->t(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->r(F)V

    :goto_0
    return-object v0
.end method

.method private considerAvoidanceCandidate(FFFFIIIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forwardComponent",
            "sideComponent",
            "desiredForward",
            "desiredSide",
            "leftPressure",
            "rightPressure",
            "pressure",
            "hasWallNormal",
            "allowReverse"
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->evaluateAvoidanceCandidate(FFFFIIIZZ)F

    move-result p3

    iget p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    cmpl-float p4, p3, p4

    if-lez p4, :cond_0

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    :cond_0
    return-void
.end method

.method private copySectorNormalAtAngle(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "angleDegrees",
            "out"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorIndexForAngle(F)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aget p1, v1, p1

    mul-float v1, v0, v0

    mul-float v2, p1, p1

    add-float/2addr v1, v2

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpg-float v2, v1, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    invoke-virtual {p2, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_1
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    mul-float/2addr p1, v2

    invoke-virtual {p2, v0, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private decayNavigationMemory()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F4:[F

    aget v2, v1, v0

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clampMemory(F)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H4:[F

    aget v2, v1, v0

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clampMemory(F)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D5:[F

    aget v2, v1, v0

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clampMemory(F)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    aget v2, v1, v0

    const v3, 0x3f5c28f6    # 0.86f

    mul-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aget v4, v2, v0

    mul-float/2addr v4, v3

    aput v4, v2, v0

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    const/4 v3, 0x0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    aput v3, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aput v3, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private determineState()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;
    .locals 7

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q1:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->choosePatrolOrIdle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDistance:F

    mul-float/2addr v0, v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->CHASE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V1:F

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->loseSightDistance:F

    mul-float/2addr v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->choosePatrolOrIdle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v1:Z

    if-eqz v6, :cond_3

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v2:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m2:Z

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->ATTACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    return-object v0

    :cond_3
    return-object v2

    :cond_4
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v1:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V1:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v2:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m2:Z

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->ATTACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    return-object v0

    :cond_6
    return-object v2

    :cond_7
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->choosePatrolOrIdle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    move-result-object v0

    return-object v0
.end method

.method private distanceSq(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 3
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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    sub-float/2addr p1, p2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method private dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F
    .locals 1
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
            "vector3"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method private emitAttack()V
    .locals 2

    invoke-static {}, LK8/a;->G()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;->g(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    :cond_0
    return-void
.end method

.method private evaluateAvoidanceCandidate(FFFFIIIZZ)F
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forwardComponent",
            "sideComponent",
            "desiredForward",
            "desiredSide",
            "leftPressure",
            "rightPressure",
            "pressure",
            "hasWallNormal",
            "allowReverse"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p7

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float v3, v3, p1

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float v4, v4, p1

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    const v6, 0x3727c5ac    # 1.0E-5f

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_0

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    return v1

    :cond_0
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v5, v7

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v5, v7, v5

    mul-float/2addr v3, v5

    mul-float/2addr v4, v5

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    mul-float v5, v5, p3

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v8

    mul-float v8, v8, p4

    add-float/2addr v5, v8

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    mul-float v8, v8, p3

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float v9, v9, p4

    add-float/2addr v8, v9

    mul-float v9, v5, v5

    mul-float v10, v8, v8

    add-float/2addr v9, v10

    cmpl-float v10, v9, v6

    if-lez v10, :cond_1

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float v9, v7, v9

    mul-float/2addr v5, v9

    mul-float/2addr v8, v9

    goto :goto_0

    :cond_1
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    :goto_0
    mul-float/2addr v5, v3

    mul-float/2addr v8, v4

    add-float/2addr v5, v8

    const v8, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v8

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v9, p1, v8

    add-float/2addr v5, v9

    sub-int v9, p5, p6

    int-to-float v9, v9

    mul-float/2addr v9, v1

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v10

    add-float/2addr v5, v9

    iget-boolean v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    const v10, -0x42b33333    # -0.05f

    const v11, 0x3e19999a    # 0.15f

    if-eqz v9, :cond_4

    cmpl-float v9, p1, v11

    if-lez v9, :cond_2

    const v9, 0x3f99999a    # 1.2f

    mul-float v9, v9, p1

    const v12, 0x40266666    # 2.6f

    add-float/2addr v9, v12

    sub-float/2addr v5, v9

    :cond_2
    cmpg-float v9, p1, v10

    if-gez v9, :cond_4

    if-eqz p9, :cond_3

    move v9, v11

    goto :goto_1

    :cond_3
    const v9, 0x3f8ccccd    # 1.1f

    :goto_1
    sub-float/2addr v5, v9

    :cond_4
    iget-boolean v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    const/4 v12, 0x0

    if-eqz v9, :cond_5

    cmpl-float v9, p1, v12

    if-lez v9, :cond_5

    const v9, 0x3f666666    # 0.9f

    sub-float/2addr v5, v9

    :cond_5
    if-eqz p8, :cond_8

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_6

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_6
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float v14, v13, v13

    mul-float v15, v9, v9

    add-float/2addr v14, v15

    cmpl-float v15, v14, v6

    if-lez v15, :cond_8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    div-float v14, v7, v14

    mul-float/2addr v13, v14

    mul-float/2addr v9, v14

    mul-float v14, v3, v13

    mul-float v15, v4, v9

    add-float/2addr v14, v15

    cmpl-float v15, v14, v12

    if-lez v15, :cond_7

    const/high16 v15, 0x40500000    # 3.25f

    mul-float/2addr v14, v15

    sub-float/2addr v5, v14

    :cond_7
    neg-float v9, v9

    mul-float/2addr v9, v3

    mul-float/2addr v13, v4

    add-float/2addr v9, v13

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v13, 0x3f733333    # 0.95f

    mul-float/2addr v9, v13

    add-float/2addr v5, v9

    :cond_8
    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    if-eqz v9, :cond_a

    if-lez v9, :cond_9

    move v9, v1

    goto :goto_3

    :cond_9
    neg-float v9, v1

    :goto_3
    const v13, 0x3df5c28f    # 0.12f

    mul-float/2addr v9, v13

    add-float/2addr v5, v9

    :cond_a
    iget-boolean v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v13

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, v9, v12, v13, v14}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v9

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v14

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v13

    mul-float v9, v9, p1

    mul-float/2addr v1, v13

    add-float/2addr v9, v1

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v1

    add-float/2addr v5, v9

    :cond_b
    if-eqz p9, :cond_d

    cmpg-float v1, p1, v12

    if-gez v1, :cond_d

    const/4 v1, 0x4

    if-ge v2, v1, :cond_c

    const/high16 v11, 0x3f400000    # 0.75f

    :cond_c
    sub-float/2addr v5, v11

    :cond_d
    const v1, 0x3d4ccccd    # 0.05f

    if-eqz p8, :cond_10

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_e

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    :cond_e
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_4
    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v11

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    mul-float v13, v11, v11

    mul-float v14, v9, v9

    add-float/2addr v13, v14

    cmpl-float v6, v13, v6

    if-lez v6, :cond_10

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v6, v13

    div-float/2addr v7, v6

    mul-float/2addr v11, v7

    mul-float/2addr v9, v7

    mul-float/2addr v3, v11

    mul-float/2addr v4, v9

    add-float/2addr v3, v4

    cmpl-float v4, v3, v12

    if-lez v4, :cond_f

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const v4, 0x3f59999a    # 0.85f

    add-float/2addr v2, v4

    mul-float/2addr v3, v2

    :goto_5
    add-float/2addr v5, v3

    goto :goto_6

    :cond_f
    mul-float/2addr v3, v8

    goto :goto_5

    :cond_10
    :goto_6
    invoke-static {v10, v1}, LNc/d;->h(FF)F

    move-result v1

    add-float/2addr v5, v1

    return v5
.end method

.method private float01Entry(Ljava/lang/String;FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "title",
            "magnitude",
            "accessor"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$b;

    invoke-direct {v1, p0, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)V

    sget-object p2, LC5/b$a;->SLFloat01:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method private floatEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "title",
            "accessor"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$k;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$o;)V

    sget-object p2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method private getStateLookLerpMultiplier()F
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method private hasLineOfSightToTarget(F)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetDistanceSq"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    mul-float/2addr v0, v0

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    return v4

    :cond_2
    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    if-gtz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->isTargetInViewCone(F)Z

    move-result p1

    return p1

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->G:Laa/c;

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyRayLayer(Laa/c;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->G:Laa/c;

    invoke-virtual {p1}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->G:Laa/c;

    invoke-virtual {p1}, Laa/c;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->G:Laa/c;

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-virtual {p1, v0}, Laa/c;->setDistance(F)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F:Laa/e;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->G:Laa/c;

    invoke-virtual {p1, v0, v4}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p1

    if-nez p1, :cond_4

    return v4

    :cond_4
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->isHitPartOfTarget(Laa/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    :cond_5
    invoke-virtual {p1}, Laa/a;->getDistance()F

    move-result v0

    invoke-virtual {p1}, Laa/a;->getDistance()F

    move-result p1

    mul-float/2addr v0, p1

    cmpl-float p1, v0, v2

    if-ltz p1, :cond_6

    move v1, v4

    :cond_6
    return v1
.end method

.method private intEntry(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$p;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "title",
            "accessor"
        }
    .end annotation

    new-instance v0, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$a;

    invoke-direct {v1, p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$p;)V

    sget-object p2, LC5/b$a;->SLIntWrap:LC5/b$a;

    invoke-direct {v0, v1, p1, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    return-object v0
.end method

.method private isDirectionAligned(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "current",
            "desired"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-lez v4, :cond_2

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p2, v3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p2, v1

    div-float/2addr p1, p2

    const p2, 0x3f7eb852    # 0.995f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isHitPartOfTarget(Laa/a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hit"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v1, :cond_3

    invoke-static {v1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Laa/a;->getGameObject()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eq p1, v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->g1(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private isTargetInViewCone(F)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetDistanceSq"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const/4 v2, 0x1

    if-gtz p1, :cond_1

    return v2

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    return v2

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v4

    cmpg-float v5, p1, v0

    if-lez v5, :cond_7

    cmpg-float v5, v3, v0

    if-lez v5, :cond_7

    cmpg-float v5, v4, v0

    if-gtz v5, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v8

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v7

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float p1, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    cmpg-float v8, p1, v0

    if-lez v8, :cond_7

    cmpg-float v8, v3, v0

    if-lez v8, :cond_7

    cmpg-float v8, v4, v0

    if-gtz v8, :cond_4

    goto :goto_0

    :cond_4
    div-float/2addr v5, p1

    cmpg-float p1, v5, v0

    if-gtz p1, :cond_5

    return v1

    :cond_5
    div-float/2addr v6, v3

    div-float/2addr v7, v4

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->fieldOfViewDegrees:F

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->viewConeLimit(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->viewConeLimit(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr p1, v5

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr v5, v0

    cmpg-float p1, p1, v5

    if-gtz p1, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2
.end method

.method private move(FF)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forwardSpeed",
            "sideSpeed"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, LK8/a;->G()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1, p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    invoke-static {}, LK8/d;->b()F

    move-result p1

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    invoke-static {p2}, LIc/A;->b(F)F

    move-result p2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-static {v1}, LIc/A;->b(F)F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent;

    if-eqz v2, :cond_5

    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v3, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->toWorldSpaceDirection(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->mass:F

    cmpl-float v5, v3, v0

    if-lez v5, :cond_1

    move v4, v3

    :cond_1
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-direct {p0, v3, v5, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->velocityControllerForce(FFFF)F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-direct {p0, v1, p2, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->velocityControllerForce(FFFF)F

    move-result p1

    invoke-static {v3}, LIc/A;->b(F)F

    move-result p2

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v2, p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody;->addForce(FFF)V

    return-void

    :cond_2
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-direct {p0, v3, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->toWorldSpaceDirection(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->getVelocity()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->mass:F

    cmpl-float v5, v3, v0

    if-lez v5, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    invoke-direct {p0, v3, v5, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->velocityControllerForce(FFFF)F

    move-result v3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-direct {p0, v1, p2, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->velocityControllerForce(FFFF)F

    move-result p1

    invoke-static {v3}, LIc/A;->b(F)F

    move-result p2

    invoke-static {p1}, LIc/A;->b(F)F

    move-result p1

    invoke-virtual {v2, p2, v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/VehiclePhysics;->addForce(FFF)V

    return-void

    :cond_4
    instance-of v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    if-eqz v3, :cond_5

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setForwardSpeed(F)V

    invoke-virtual {v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Characterbody;->setSideSpeed(F)V

    return-void

    :cond_5
    mul-float/2addr p2, p1

    mul-float/2addr v1, p1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->o4(FFF)V

    return-void
.end method

.method private moveDirectionLooksBlocked(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v2, v4, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3e19999a    # 0.15f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "fallback"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    invoke-virtual {p1, v1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    :cond_1
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p2

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private obstaclePressure(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnRight"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H1:Z

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M1:Z

    if-eqz p1, :cond_4

    :goto_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F1:Z

    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L1:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F1:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H1:Z

    if-eqz p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L1:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M1:Z

    if-eqz p1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private pickNextNavigationSector(FFZ)I
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "desiredForward",
            "desiredSide",
            "allowReverse"
        }
    .end annotation

    const/4 v0, -0x1

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    const/16 v2, 0x10

    if-ge v8, v2, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D6:[I

    aget v2, v2, v8

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorAngleDegrees(I)F

    move-result v4

    move-object v2, p0

    move v3, v8

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->scoreNavigationMemory(IFFFZ)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_1

    move v1, v2

    move v0, v8

    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private planChaseMovement()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    const v2, 0x3ec51eb8    # 0.385f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->updateObstacleRays(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyObstacleAvoidance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chaseSpeed:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setPendingMovementFromDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void
.end method

.method private planMovement()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->PATROL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F2:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q1:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setLookDirectionToTarget()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q1:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v1:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setLookDirectionToTarget()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q1:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->planChaseMovement()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setLookDirectionToTarget()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->planPatrolMovement()V

    :cond_5
    :goto_0
    return-void
.end method

.method private planPatrolMovement()V
    .locals 6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->TURN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_d

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->PAUSE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->resolvePatrolDecision(Z)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->REST:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    if-ne v0, v1, :cond_4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->resolvePatrolDecision(Z)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->startPatrolPause()V

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    const v5, 0x3ec51eb8    # 0.385f

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    :goto_0
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->updateObstacleRays(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_8

    goto :goto_2

    :cond_8
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setPendingMovementFromDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->moveDirectionLooksBlocked(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    invoke-static {}, LK8/d;->b()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    goto :goto_3

    :cond_a
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    :goto_3
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    const v1, 0x3f0ccccd    # 0.55f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_b

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    :cond_b
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyObstacleAvoidance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setPendingMovementFromDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setLookDirectionFromMovement()V

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidanceSideBias()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidTurnRight()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-direct {p0, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->steerAroundObstacle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v2, -0x414ccccd    # -0.35f

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setPendingMovementFromDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void

    :cond_d
    :goto_4
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->setLookDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->isDirectionAligned(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->startPatrolWalk()V

    :cond_e
    return-void
.end method

.method private precache(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i3:Z

    if-eqz p1, :cond_4

    invoke-static {p1}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->e()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    :cond_2
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    add-float/2addr v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    add-float/2addr v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    invoke-virtual {p1, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    add-float/2addr v4, v2

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    iget v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    add-float/2addr v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    add-float/2addr v6, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    invoke-virtual {p1, v0, v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i3:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private projectDirectionAlongPlane(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "normal",
            "out"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {p3, v1, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private randomDelay(FF)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "base",
            "randomness"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_0

    return p1

    :cond_0
    invoke-static {v0, p2}, LNc/d;->h(FF)F

    move-result p2

    add-float/2addr p1, p2

    return p1
.end method

.method private recordNavigationObservation(IFLaa/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sectorIndex",
            "sectorAngleDegrees",
            "hit",
            "hitNormalOut"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->wrapSectorIndex(I)I

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F7:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F7:I

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F6:[I

    aget v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    aput v0, p2, p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D6:[I

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    aput v0, p2, p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Laa/a;->getDistance()F

    move-result p3

    const v1, 0x3a83126f    # 0.001f

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr p3, v1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    sub-float v1, p2, p3

    move v2, v1

    move v1, p3

    goto :goto_0

    :cond_0
    move p3, p2

    move v1, p3

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F4:[F

    aget v4, v3, p1

    const v5, 0x3f1eb852    # 0.62f

    mul-float/2addr v4, v5

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr p3, v6

    const v7, 0x3ec28f5c    # 0.38f

    mul-float/2addr p3, v7

    add-float/2addr v4, p3

    invoke-direct {p0, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clampMemory(F)F

    move-result p3

    aput p3, v3, p1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H4:[F

    aget v3, p3, p1

    mul-float/2addr v3, v5

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    add-float/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clampMemory(F)F

    move-result v2

    aput v2, p3, p1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D5:[F

    aget v2, p3, p1

    mul-float/2addr v2, v5

    mul-float/2addr v1, v6

    mul-float/2addr v1, v7

    add-float/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clampMemory(F)F

    move-result v1

    aput v1, p3, p1

    const p3, 0x3f3851ec    # 0.72f

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p4

    mul-float v1, v0, v0

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    const v2, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p3, v1

    div-float/2addr p2, p3

    mul-float/2addr v0, p2

    mul-float/2addr p4, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    aget p3, p2, p1

    const v1, 0x3f0a3d71    # 0.54f

    mul-float/2addr p3, v1

    const v2, 0x3eeb851f    # 0.46f

    mul-float/2addr v0, v2

    add-float/2addr p3, v0

    aput p3, p2, p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aget p3, p2, p1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v2

    add-float/2addr p3, p4

    aput p3, p2, p1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    aget p4, p2, p1

    mul-float/2addr p4, p3

    aput p4, p2, p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aget p4, p2, p1

    mul-float/2addr p4, p3

    aput p4, p2, p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F5:[F

    aget p4, p2, p1

    mul-float/2addr p4, p3

    aput p4, p2, p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H5:[F

    aget p4, p2, p1

    mul-float/2addr p4, p3

    aput p4, p2, p1

    :goto_1
    return-void
.end method

.method private rememberAvoidDecision(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnRight"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    const/4 p1, 0x6

    if-le v0, p1, :cond_1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x6

    if-ge v0, p1, :cond_2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    :cond_2
    :goto_1
    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v3:F

    return-void
.end method

.method private resetPatrolCycle()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->WALK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    return-void
.end method

.method private resolvePatrolDecision(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowRest"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    invoke-static {v0}, LNc/d;->i(F)F

    move-result p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestChance:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->startPatrolRest()V

    return-void

    :cond_1
    invoke-static {v0}, LNc/d;->i(F)F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolTurnChance:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->choosePatrolTurnRight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->startPatrolTurn(Z)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->startPatrolWalk()V

    return-void

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseAvoidTurnRight()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->startPatrolTurn(Z)V

    return-void
.end method

.method private rotateHorizontal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "turnRight",
            "out"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    neg-float p1, p1

    invoke-virtual {p3, p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_0
    neg-float p2, v0

    invoke-virtual {p3, p1, v1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    return-void
.end method

.method private rotateLocalCandidate(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "forwardComponent",
            "sideComponent",
            "angleDegrees",
            "out"
        }
    .end annotation

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p1, p3

    mul-float v2, p2, v0

    sub-float/2addr v1, v2

    mul-float/2addr p1, v0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    mul-float/2addr p2, v1

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p3

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p3

    mul-float/2addr p3, v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    mul-float/2addr v0, p1

    add-float/2addr p3, v0

    const/4 p1, 0x0

    invoke-virtual {p4, p2, p1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p4, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private scoreNavigationCandidate(IFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Laa/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFIIIZ)F
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sectorIndex",
            "sectorAngleDegrees",
            "candidateWorld",
            "hit",
            "hitNormal",
            "desiredWorldX",
            "desiredWorldZ",
            "leftPressure",
            "rightPressure",
            "pressure",
            "allowReverse"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v7, p10

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual/range {p3 .. p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    const v8, 0x3727c5ac    # 1.0E-5f

    cmpg-float v5, v4, v8

    if-gtz v5, :cond_0

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    return v0

    :cond_0
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v4, v9, v4

    mul-float v10, v2, v4

    mul-float v11, v3, v4

    mul-float v2, v10, v0

    mul-float v3, v11, v1

    add-float/2addr v2, v3

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v13, v2, v12

    iget-object v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v14, 0x0

    invoke-direct {v6, v0, v14, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    iget-object v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v0, v14, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->scoreNavigationMemory(IFFFZ)F

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    add-float/2addr v13, v0

    iget-object v0, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v10, v14, v11, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    iget-object v1, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v10, v14, v11, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v2, v0

    add-float/2addr v13, v2

    sub-int v2, p8, p9

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const v3, 0x3e8f5c29    # 0.28f

    mul-float/2addr v2, v3

    add-float/2addr v13, v2

    if-nez p4, :cond_1

    add-float/2addr v13, v12

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v4, 0x3eb33333    # 0.35f

    :goto_0
    mul-float/2addr v2, v4

    add-float/2addr v13, v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p4 .. p4}, Laa/a;->getDistance()F

    move-result v2

    const v4, 0x3a83126f    # 0.001f

    iget v5, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float/2addr v2, v4

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3d4ccccd    # 0.05f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v4, 0x4019999a    # 2.4f

    mul-float/2addr v2, v4

    add-float/2addr v13, v2

    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    cmpl-float v2, v2, v14

    if-lez v2, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float v5, v2, v2

    mul-float v12, v4, v4

    add-float/2addr v5, v12

    cmpl-float v12, v5, v8

    if-lez v12, :cond_3

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v5, v14

    div-float v5, v9, v5

    mul-float/2addr v2, v5

    mul-float/2addr v4, v5

    mul-float v5, v10, v2

    mul-float v12, v11, v4

    add-float/2addr v5, v12

    const/4 v12, 0x0

    cmpl-float v14, v5, v12

    if-lez v14, :cond_2

    const/high16 v12, 0x40600000    # 3.5f

    mul-float/2addr v5, v12

    sub-float/2addr v13, v5

    :cond_2
    neg-float v4, v4

    mul-float/2addr v4, v10

    mul-float/2addr v2, v11

    add-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3f8ccccd    # 1.1f

    goto :goto_0

    :cond_3
    :goto_1
    iget-boolean v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    const v4, 0x3e4ccccd    # 0.2f

    if-eqz v2, :cond_4

    cmpl-float v2, v0, v4

    if-lez v2, :cond_4

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    add-float/2addr v2, v5

    sub-float/2addr v13, v2

    :cond_4
    iget-boolean v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_6

    const v5, 0x3f333333    # 0.7f

    sub-float/2addr v13, v5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    const v5, 0x3e19999a    # 0.15f

    if-nez p11, :cond_7

    cmpg-float v12, v0, v2

    if-gez v12, :cond_7

    const v12, 0x3faccccd    # 1.35f

    sub-float/2addr v13, v12

    goto :goto_4

    :cond_7
    if-eqz p11, :cond_9

    cmpg-float v12, v0, v2

    if-gez v12, :cond_9

    const/4 v2, 0x4

    if-ge v7, v2, :cond_8

    const v2, 0x3f19999a    # 0.6f

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    sub-float/2addr v13, v2

    :cond_9
    :goto_4
    iget v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    if-eqz v2, :cond_b

    if-lez v2, :cond_a

    move v2, v1

    goto :goto_5

    :cond_a
    neg-float v2, v1

    :goto_5
    mul-float/2addr v2, v5

    add-float/2addr v13, v2

    :cond_b
    iget-boolean v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz v2, :cond_c

    iget-object v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iget-object v5, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v14, 0x0

    invoke-direct {v6, v2, v14, v5, v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    iget-object v5, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    iget-object v15, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6, v5, v14, v12, v15}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v5

    mul-float/2addr v0, v2

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float/2addr v13, v0

    goto :goto_6

    :cond_c
    const/4 v14, 0x0

    :goto_6
    if-eqz p5, :cond_e

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpl-float v0, v0, v14

    if-lez v0, :cond_e

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    cmpl-float v3, v2, v8

    if-lez v3, :cond_e

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v9, v2

    mul-float/2addr v0, v9

    mul-float/2addr v1, v9

    mul-float/2addr v10, v0

    mul-float/2addr v11, v1

    add-float/2addr v10, v11

    const/4 v0, 0x0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_d

    int-to-float v0, v7

    const v1, 0x3d23d70a    # 0.04f

    mul-float/2addr v0, v1

    const v1, 0x3f733333    # 0.95f

    add-float/2addr v0, v1

    mul-float/2addr v10, v0

    :goto_7
    add-float/2addr v13, v10

    goto :goto_8

    :cond_d
    mul-float/2addr v10, v4

    goto :goto_7

    :cond_e
    :goto_8
    const v0, -0x430a3d71    # -0.03f

    const v1, 0x3cf5c28f    # 0.03f

    invoke-static {v0, v1}, LNc/d;->h(FF)F

    move-result v0

    add-float/2addr v13, v0

    return v13
.end method

.method private scoreNavigationMemory(IFFFZ)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sectorIndex",
            "sectorAngleDegrees",
            "desiredForward",
            "desiredSide",
            "allowReverse"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->wrapSectorIndex(I)I

    move-result p1

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorSideFromAngle(F)F

    move-result p2

    mul-float/2addr p3, v0

    mul-float/2addr p2, p4

    add-float/2addr p3, p2

    const p2, 0x3ff33333    # 1.9f

    mul-float/2addr p3, p2

    const/4 p2, 0x0

    add-float/2addr p3, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F4:[F

    aget p2, p2, p1

    const p4, 0x3f147ae1    # 0.58f

    mul-float/2addr p2, p4

    add-float/2addr p3, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H4:[F

    aget p2, p2, p1

    const p4, 0x3f6b851f    # 0.92f

    mul-float/2addr p2, p4

    sub-float/2addr p3, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D5:[F

    aget p2, p2, p1

    const p4, 0x3e6147ae    # 0.22f

    mul-float/2addr p2, p4

    add-float/2addr p3, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F6:[I

    aget p2, p2, p1

    if-lez p2, :cond_0

    int-to-float p2, p2

    const p4, 0x3e3851ec    # 0.18f

    mul-float/2addr p2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p2, p4

    div-float/2addr p4, p2

    add-float/2addr p3, p4

    goto :goto_0

    :cond_0
    const p2, 0x3f0ccccd    # 0.55f

    add-float/2addr p3, p2

    :goto_0
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D6:[I

    aget p1, p4, p1

    sub-int/2addr p2, p1

    if-lez p2, :cond_1

    int-to-float p1, p2

    const p2, 0x3d75c28f    # 0.06f

    mul-float/2addr p1, p2

    const p2, 0x3fb33333    # 1.4f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    add-float/2addr p3, p1

    :cond_1
    if-nez p5, :cond_2

    const p1, -0x420a3d71    # -0.12f

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    neg-float p1, v0

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    const p2, 0x3f933333    # 1.15f

    add-float/2addr p1, p2

    sub-float/2addr p3, p1

    :cond_2
    const p1, -0x43333333    # -0.025f

    const p2, 0x3ccccccd    # 0.025f

    invoke-static {p1, p2}, LNc/d;->h(FF)F

    move-result p1

    add-float/2addr p3, p1

    return p3
.end method

.method private sectorAngleDegrees(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectorIndex"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->wrapSectorIndex(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41b40000    # 22.5f

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->wrapAngleDegrees(F)F

    move-result p1

    return p1
.end method

.method private sectorBlockedAtAngle(F)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleDegrees"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorIndexForAngle(F)I

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H4:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F4:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D5:[F

    aget v2, v2, p1

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    return v5

    :cond_0
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D6:[I

    aget p1, v6, p1

    sub-int/2addr v4, p1

    if-lez v4, :cond_1

    int-to-float p1, v4

    const v3, 0x3d23d70a    # 0.04f

    mul-float/2addr p1, v3

    const v3, 0x3eb33333    # 0.35f

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :cond_1
    add-float/2addr v0, v3

    const p1, 0x3e3851ec    # 0.18f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const p1, 0x3e19999a    # 0.15f

    add-float/2addr v1, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method private sectorIndexForAngle(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleDegrees"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->wrapAngleDegrees(F)F

    move-result p1

    const/high16 v0, 0x41b40000    # 22.5f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->wrapSectorIndex(I)I

    move-result p1

    return p1
.end method

.method private sectorSideFromAngle(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleDegrees"
        }
    .end annotation

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private selectAvoidanceDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "desiredDirection",
            "allowReverse",
            "out"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chooseBestAvoidanceCandidate(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v0

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyWallSeparationToDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p3, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private selectBudgetedAvoidanceDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "desiredDirection",
            "allowReverse",
            "out"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    iget-object v5, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v2, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    iget-object v6, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v3, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v3

    goto :goto_0

    :cond_1
    move v2, v1

    move v3, v14

    :goto_0
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpg-float v6, v4, v5

    if-gtz v6, :cond_2

    move v15, v1

    move v12, v14

    goto :goto_1

    :cond_2
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    div-float v4, v1, v4

    mul-float/2addr v2, v4

    mul-float/2addr v3, v4

    move v15, v2

    move v12, v3

    :goto_1
    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    mul-float/2addr v2, v15

    iget-object v3, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    iget-object v3, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    mul-float/2addr v3, v15

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    mul-float v6, v3, v3

    add-float/2addr v4, v6

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    iget-object v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    move v11, v1

    move v10, v2

    goto :goto_2

    :cond_3
    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v1, v4

    mul-float/2addr v2, v1

    mul-float/2addr v1, v3

    move v10, v1

    move v11, v2

    :goto_2
    const/high16 v9, -0x800000    # Float.NEGATIVE_INFINITY

    iput v9, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    iput v15, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    iput v12, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F

    iget-object v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v14, v14, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    const-class v2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :try_start_0
    iget-boolean v6, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    const/4 v5, 0x0

    const/4 v4, 0x1

    :goto_3
    iget v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    if-le v1, v6, :cond_4

    move/from16 v3, p2

    invoke-direct {v13, v15, v12, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->pickNextNavigationSector(FFZ)I

    move-result v2

    if-gez v2, :cond_5

    :cond_4
    move/from16 v18, v4

    move v15, v5

    move-object v3, v7

    move-object v1, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move v14, v11

    goto/16 :goto_5

    :cond_5
    invoke-direct {v13, v2, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->buildNavigationDirectionFromSector(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-direct {v13, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorAngleDegrees(I)F

    move-result v1

    invoke-direct {v13, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v9

    invoke-direct {v13, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v16

    invoke-direct {v13, v2, v1, v8, v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->traceNavigationProbe(IFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Laa/a;

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v3, v18

    move/from16 v18, v4

    move-object v4, v8

    move/from16 v19, v15

    move v15, v5

    move-object/from16 v5, v17

    move/from16 v20, v6

    move-object v6, v7

    move-object/from16 v21, v7

    move v7, v11

    move-object/from16 v22, v8

    move v8, v10

    const/high16 v23, -0x800000    # Float.NEGATIVE_INFINITY

    move/from16 v24, v10

    move v10, v14

    move v14, v11

    move/from16 v11, v16

    move/from16 v16, v12

    move/from16 v12, p2

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->scoreNavigationCandidate(IFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Laa/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFIIIZ)F

    move-result v1

    iget v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    iput v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    invoke-virtual/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    iput v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M3:F

    invoke-virtual/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual/range {v22 .. v22}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v1, v2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    iput v1, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m4:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v1, v22

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v17, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v3, v21

    :try_start_3
    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v3, v21

    goto/16 :goto_7

    :cond_6
    move-object/from16 v3, v21

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v3, v21

    move-object/from16 v1, v22

    goto/16 :goto_7

    :cond_7
    move-object/from16 v3, v21

    move-object/from16 v1, v22

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->updateDirectionalObstacleFlags()V

    move-object v8, v1

    move-object v7, v3

    move v11, v14

    move v5, v15

    move/from16 v12, v16

    move/from16 v4, v18

    move/from16 v15, v19

    move/from16 v6, v20

    move/from16 v9, v23

    move/from16 v10, v24

    const/4 v14, 0x0

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v7

    move-object v1, v8

    goto/16 :goto_7

    :goto_5
    iget-boolean v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    if-eqz v2, :cond_9

    iget v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    if-lez v2, :cond_9

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M:Laa/c;

    invoke-direct {v13, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyRayLayer(Laa/c;)V

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M:Laa/c;

    invoke-virtual {v2}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M:Laa/c;

    invoke-virtual {v2}, Laa/c;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    neg-float v4, v4

    iget-object v5, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    neg-float v5, v5

    iget-object v6, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M:Laa/c;

    iget v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->groundProbeDistance:F

    invoke-virtual {v2, v4}, Laa/c;->setDistance(F)V

    iget v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F:Laa/e;

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M:Laa/c;

    invoke-virtual {v2, v4, v15}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object v2

    if-nez v2, :cond_8

    move/from16 v5, v18

    goto :goto_6

    :cond_8
    move v5, v15

    :goto_6
    iput-boolean v5, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    :cond_9
    iget v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    cmpl-float v2, v2, v23

    if-nez v2, :cond_a

    move/from16 v4, v24

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H3:F

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    return-void

    :cond_a
    :try_start_4
    invoke-direct {v13, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyWallSeparationToDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v13, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    iget-object v0, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    return-void

    :goto_7
    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    iget-object v2, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->release(Ljava/lang/Object;)V

    throw v0
.end method

.method private setLookDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setLookDirectionFromMovement()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLookDirectionToTarget()V
    .locals 5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setPendingMovementFromDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "speed"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    return-void
.end method

.method private smoothLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "lerp"
        }
    .end annotation

    invoke-static {}, LK8/a;->G()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->i0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-static {v2}, Lgb/e;->J(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Prototyping/StandUp;->lerpLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->t0()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-static {}, LK8/d;->b()F

    move-result v1

    mul-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->lerpLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    return-void
.end method

.method private startPatrolPause()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->PAUSE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelay:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelayRandomness:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    return-void
.end method

.method private startPatrolRest()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->REST:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelay:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelayRandomness:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    return-void
.end method

.method private startPatrolTurn(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "turnRight"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->TURN:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L2:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rotateHorizontal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O8:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private startPatrolWalk()V
    .locals 2

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;->WALK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clearLookDirection()V

    return-void
.end method

.method private steerAroundObstacle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "direction",
            "turnRight"
        }
    .end annotation

    const/high16 v0, 0x3f400000    # 0.75f

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->steerAroundObstacle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZF)V

    return-void
.end method

.method private steerAroundObstacle(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZF)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "direction",
            "turnRight",
            "sideBias"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 3
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    if-eqz p2, :cond_1

    move v2, p3

    goto :goto_0

    :cond_1
    neg-float v2, p3

    :goto_0
    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 4
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    neg-float p3, p3

    :goto_1
    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 6
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->O:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->normalizeHorizontalOrFallback(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private toWorldSpaceDirection(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "owner",
            "desiredVX",
            "desiredVY",
            "desiredVZ"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    mul-float/2addr v3, p2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v4

    mul-float/2addr v4, p2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v5

    mul-float/2addr v5, p2

    invoke-virtual {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_0
    cmpl-float p2, p3, v2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p2

    mul-float/2addr p2, p3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    mul-float/2addr v3, p3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    mul-float/2addr v4, p3

    invoke-virtual {v0, p2, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    cmpl-float p2, p4, v2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->J0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->a0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    mul-float/2addr p1, p4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p2

    mul-float/2addr p2, p4

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p3

    mul-float/2addr p3, p4

    invoke-virtual {v0, p1, p2, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_2
    return-object v0
.end method

.method private traceNavigationProbe(IFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Laa/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sectorIndex",
            "sectorAngleDegrees",
            "direction",
            "hitNormalOut"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    if-gtz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H:Laa/c;

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->applyRayLayer(Laa/c;)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H:Laa/c;

    invoke-virtual {v1}, Laa/c;->h()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H:Laa/c;

    invoke-virtual {v1}, Laa/c;->e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H:Laa/c;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    invoke-virtual {p3, v1}, Laa/c;->setDistance(F)V

    iget p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F:Laa/e;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H:Laa/c;

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Laa/e;->z(Laa/c;Z)Laa/a;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->isHitPartOfTarget(Laa/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p3

    :goto_0
    if-eqz p4, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Laa/a;->f()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    invoke-virtual {p4, p3, p3, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->recordNavigationObservation(IFLaa/a;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method private updateDirectionalObstacleFlags()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorBlockedAtAngle(F)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    const/high16 v1, -0x3e200000    # -28.0f

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorBlockedAtAngle(F)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F1:Z

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorBlockedAtAngle(F)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H1:Z

    const/high16 v1, -0x3d900000    # -60.0f

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorBlockedAtAngle(F)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L1:Z

    const/high16 v1, 0x42700000    # 60.0f

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->sectorBlockedAtAngle(F)Z

    move-result v1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M1:Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->copySectorNormalAtAngle(FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    return-void
.end method

.method private updateFrustumModel()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L8:LV8/a;

    if-nez v0, :cond_0

    new-instance v0, LV8/a;

    invoke-direct {v0}, LV8/a;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L8:LV8/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M8:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, v1}, LV8/a;->p(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->Y0()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->viewConeFov(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L8:LV8/a;

    invoke-virtual {v3, v0, v2, v1}, LV8/a;->e(FFF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L8:LV8/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    invoke-virtual {v0, v1, v2}, LV8/a;->o(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateObstacleRays(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "desiredDirection",
            "allowReverse"
        }
    .end annotation

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->updateDirectionalObstacleFlags()V

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    const v1, 0x3da3d70a    # 0.08f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x3ee66666    # 0.45f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->selectBudgetedAvoidanceDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    iget-object v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v7, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M2:Z

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rememberAvoidDecision(Z)V

    invoke-direct {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v0

    invoke-direct {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v9, v0, v4

    if-ltz v9, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move v10, v5

    :goto_2
    if-ltz v9, :cond_3

    move v9, v5

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    mul-float/2addr v0, v1

    add-float/2addr v10, v0

    invoke-direct {p0, v10, v9}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    goto :goto_4

    :cond_4
    iput-boolean v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->updateDirectionalObstacleFlags()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F1:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H1:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->L1:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M1:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-eqz v0, :cond_b

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->selectAvoidanceDirection(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;ZLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthSquared()F

    move-result p1

    cmpl-float p1, p1, v7

    if-lez p1, :cond_7

    move p1, v6

    goto :goto_5

    :cond_7
    move p1, v8

    :goto_5
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D3:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p1, v7, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->dot(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p1

    cmpl-float p1, p1, v7

    if-ltz p1, :cond_8

    move p1, v6

    goto :goto_6

    :cond_8
    move p1, v8

    :goto_6
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->M2:Z

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rememberAvoidDecision(Z)V

    invoke-direct {p0, v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result p1

    invoke-direct {p0, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->obstaclePressure(Z)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p2, p1, v4

    if-ltz p2, :cond_9

    goto :goto_7

    :cond_9
    move v3, v5

    :goto_7
    if-ltz p2, :cond_a

    move v2, v5

    :cond_a
    mul-float/2addr p1, v1

    add-float/2addr v3, p1

    invoke-direct {p0, v3, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    :cond_b
    return-void
.end method

.method private velocityControllerForce(FFFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentVelocity",
            "targetVelocity",
            "mass",
            "dt"
        }
    .end annotation

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->isFinite(F)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr p2, p3

    div-float/2addr p2, p4

    return p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private static viewConeFov(F)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    const/high16 v0, 0x43330000    # 179.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static viewConeLimit(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "degrees"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->viewConeFov(F)F

    move-result p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private wrapAngleDegrees(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angleDegrees"
        }
    .end annotation

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    add-float/2addr p1, v0

    :cond_0
    return p1
.end method

.method private wrapSectorIndex(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectorIndex"
        }
    .end annotation

    rem-int/lit8 p1, p1, 0x10

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x10

    :cond_0
    return p1
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    .line 4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;->b()Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->layerReference:Lcom/itsmagic/engine/Engines/Engine/Settings/Physics/ExposableLayerReference;

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chaseSpeed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->chaseSpeed:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->visionDistance:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->fieldOfViewDegrees:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->fieldOfViewDegrees:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->verticalFieldOfViewDegrees:F

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDistance:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->loseSightDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->loseSightDistance:F

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->eyeHeight:F

    .line 13
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->frontProbeDistance:F

    .line 14
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->rayOriginForwardOffset:F

    .line 15
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->groundProbeDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->groundProbeDistance:F

    .line 16
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->abyssCheckEnabled:Z

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelay:F

    .line 18
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelayRandomness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelayRandomness:F

    .line 19
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeDelay:F

    .line 20
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeRandomness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeRandomness:F

    .line 21
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelay:F

    .line 22
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolDelayRandomness:F

    .line 23
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelay:F

    .line 24
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelayRandomness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolPauseDelayRandomness:F

    .line 25
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestChance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestChance:F

    .line 26
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelay:F

    .line 27
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelayRandomness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolRestDelayRandomness:F

    .line 28
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelay:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelay:F

    .line 29
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelayRandomness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelayRandomness:F

    .line 30
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolTurnChance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->patrolTurnChance:F

    .line 31
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->lookLerp:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->lookLerp:F

    .line 32
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->navigationRaycastBudget:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->navigationRaycastBudget:I

    .line 33
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    .line 34
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->cloneAttackFunction()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackFunction:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/AIFunctionCall;

    .line 35
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->K8:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$q;

    .line 36
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F8:Z

    .line 37
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "EnemyAI"

    return-object v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    new-instance v1, LC5/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V

    const-string v3, "Target"

    invoke-static {v1, v3, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Landroid/content/Context;)V

    const-string v3, "Vision & Laser"

    invoke-static {v1, v3, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V

    const-string v3, "Movement"

    invoke-static {v1, v3, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V

    const-string v3, "Rotation"

    invoke-static {v1, v3, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;Landroid/content/Context;)V

    const-string p1, "Combat"

    invoke-static {v1, p1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$j;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V

    const-string v2, "State timings"

    invoke-static {p1, v2, v1}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTarget()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "EnemyAI"

    return-object v0
.end method

.method public getWalkSpeed()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    return v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
    .locals 4
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

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i3:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc8/b;->k()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->startFrame()V

    :try_start_0
    invoke-static {}, LK8/d;->b()F

    move-result p1

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->navigationRaycastBudget:I

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v4:I

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    const/4 v1, 0x1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H6:I

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F7:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->decayNavigationMemory()V

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q2:F

    sub-float/2addr p2, p1

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q2:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v2:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v2:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D2:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F2:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F2:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H2:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H2:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q3:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v3:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v3:F

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p2, :cond_2

    invoke-static {p2}, Lgb/e;->G(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_2
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q1:Z

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V1:F

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->distanceSq(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p2

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V1:F

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->isTargetInViewCone(F)Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V1:F

    invoke-direct {p0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->hasLineOfSightToTarget(F)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v1:Z

    if-eqz p2, :cond_4

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H2:F

    goto :goto_2

    :cond_4
    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H2:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->H2:F

    goto :goto_2

    :cond_5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v1:Z

    :goto_2
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->y1:Z

    if-nez p1, :cond_8

    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez p2, :cond_8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v3:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_8

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    if-lez p2, :cond_6

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    goto :goto_3

    :cond_6
    if-gez p2, :cond_7

    add-int/2addr p2, v1

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R2:I

    :cond_7
    :goto_3
    const p2, 0x3eb33333    # 0.35f

    iput p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v3:F

    :cond_8
    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->R1:Z

    if-nez p1, :cond_9

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m3:F

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_9

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F3:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_9
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->determineState()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    if-eq p1, p2, :cond_c

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q2:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_c

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeDelay:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->stateChangeRandomness:F

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->q2:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->state:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->PATROL:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    if-ne p1, p2, :cond_a

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->resetPatrolCycle()V

    goto :goto_4

    :cond_a
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->CHASE:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    if-ne p1, p2, :cond_b

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelay:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->searchDelayRandomness:F

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->F2:F

    goto :goto_4

    :cond_b
    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;->ATTACK:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI$n;

    if-ne p1, p2, :cond_c

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelay:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->attackDelayRandomness:F

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->randomDelay(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->v2:F

    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->planMovement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->endFrame()V

    return-void

    :goto_5
    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->D4:Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/MiniJP;->endFrame()V

    throw p1
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

    invoke-static {}, Lc8/b;->k()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->precache(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m2:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->emitAttack()V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m2:Z

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    if-eqz p2, :cond_1

    const-class p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    const/4 p2, 0x0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->getStateLookLerpMultiplier()F

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->lookLerp:F

    mul-float/2addr p1, v0

    invoke-direct {p0, p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->smoothLookTo(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    throw p1

    :cond_2
    :goto_1
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iget p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    invoke-direct {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->move(FF)V

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    return-void

    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m2:Z

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->b2:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->i2:F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->m1:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->V2:Z

    monitor-exit p1

    return-void

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p2
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P8:LJAVARuntime/Component;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->E:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->targetReference:Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentUtils/ObjectReference;->h(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    return-void
.end method

.method public setWalkSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "walkSpeed"
        }
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->walkSpeed:F

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P8:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/EnemyAI;

    invoke-direct {v0, p0}, LJAVARuntime/EnemyAI;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->P8:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method

.method public updateOnSelectedHierarchy()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->updateOnSelectedHierarchy()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/AIs/EnemyAI;->updateFrustumModel()V

    return-void
.end method
