.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;
    }
.end annotation


# static fields
.field public static final L1:Ljava/lang/String; = "TrailRenderer"

.field public static final M1:Ljava/lang/Class;


# instance fields
.field public final D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public E:Lub/p;

.field public F:Z

.field public final F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;",
            ">;"
        }
    .end annotation
.end field

.field public final H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

.field public H1:LJAVARuntime/Component;

.field public final I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

.field public J:F

.field public K:F

.field public L:F

.field public M:I

.field public final N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

.field public O:Z

.field public final P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field private castShadows:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private enableEmission:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fullWhite:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field private maxLength:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private maxLifeSeconds:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private maxSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private minPointDistance:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private pointsPerSecond:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field private receiveLight:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private receiveShadows:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rotateUV90:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private startSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private textureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final v1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field private worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final y1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->M1:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v0, "TrailRenderer"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;->SizeOverLifetime:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;->AlphaOverLifetime:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;->Normal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;->Billboard:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;->LengthBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;->Global:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->M:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const v3, 0x3f59999a    # 0.85f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-virtual {v0, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    return p1
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    return-object p0
.end method

.method public static synthetic access$1202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    return-object p1
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    return p0
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    return p1
.end method

.method public static synthetic access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    return-object p1
.end method

.method public static synthetic access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    return-object p0
.end method

.method public static synthetic access$1602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    return-object p1
.end method

.method public static synthetic access$1700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    return-object p0
.end method

.method public static synthetic access$1902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    return-object p1
.end method

.method public static synthetic access$2000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    return-object p1
.end method

.method public static synthetic access$2100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    return-object p0
.end method

.method public static synthetic access$2202(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    return-object p1
.end method

.method public static synthetic access$2300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    return p0
.end method

.method public static synthetic access$2302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    return p1
.end method

.method public static synthetic access$2400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    return p0
.end method

.method public static synthetic access$2402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    return p1
.end method

.method public static synthetic access$2500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    return p0
.end method

.method public static synthetic access$2502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    return p1
.end method

.method public static synthetic access$2600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    return p0
.end method

.method public static synthetic access$2602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->O:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    return p1
.end method

.method public static synthetic access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    return p0
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    return p0
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    return p1
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    return p0
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    return p1
.end method

.method private addPoint(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;->Local:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v0

    :goto_1
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$c;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->d:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v4, v1, :cond_4

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    goto :goto_2

    :cond_4
    iget-object v1, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->distance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v1

    :goto_2
    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->e:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_5

    div-float v2, v1, p1

    :cond_5
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->f:F

    goto :goto_3

    :cond_6
    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->e:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->f:F

    :goto_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildMesh()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->l()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->p()V

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ge v1, v2, :cond_2

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    if-eqz v1, :cond_1

    move v10, v3

    :goto_0
    move v11, v10

    goto :goto_1

    :cond_1
    move v10, v4

    goto :goto_0

    :goto_1
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move-object v7, v8

    invoke-virtual/range {v5 .. v13}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->j(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->K()V

    return-void

    :cond_2
    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_3
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v4, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    iget v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    cmpl-float v6, v5, v4

    if-lez v6, :cond_4

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->u()V

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v8, 0x0

    move/from16 v17, v3

    move v10, v4

    move v14, v10

    move v15, v14

    move/from16 v16, v15

    move/from16 v19, v16

    move v9, v8

    :goto_4
    if-ge v8, v1, :cond_1a

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    sget-object v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;->Local:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v11, v12, :cond_5

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v13, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_5

    :cond_5
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_5
    if-nez v8, :cond_7

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    add-int/lit8 v13, v8, 0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v13, v12, :cond_6

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v13, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v13, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto/16 :goto_6

    :cond_6
    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_6

    :cond_7
    add-int/lit8 v11, v1, -0x1

    if-ne v8, v11, :cond_9

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    add-int/lit8 v13, v8, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v13, v12, :cond_8

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_6

    :cond_8
    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_6

    :cond_9
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    add-int/lit8 v13, v8, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    add-int/lit8 v14, v8, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    if-ne v14, v12, :cond_a

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v11, v14}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v12, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_6

    :cond_a
    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v12, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_6
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->X:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->W:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v11

    const v12, 0x38d1b717    # 1.0E-4f

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_b

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v4, v4, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_7

    :cond_b
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_7
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;->Billboard:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    if-ne v11, v13, :cond_d

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Y:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v9

    cmpg-float v9, v9, v12

    if-gtz v9, :cond_c

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Z:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_8

    :cond_c
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_8
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto/16 :goto_b

    :cond_d
    if-nez v8, :cond_f

    iget-object v11, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v11

    cmpl-float v11, v11, v12

    if-lez v11, :cond_e

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_9

    :cond_e
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_9

    :cond_f
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    add-int/lit8 v13, v8, -0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v13, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v13

    cmpl-float v13, v13, v12

    if-lez v13, :cond_10

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v11, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_9

    :cond_10
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_9
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->dot(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result v11

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13, v14, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v11

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_11

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_11
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz v9, :cond_13

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_13

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_13

    iget v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    cmpl-float v11, v9, v4

    if-lez v11, :cond_12

    iget v11, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->f:F

    div-float/2addr v11, v9

    invoke-static {v11}, LNc/b;->I(F)F

    move-result v9

    goto :goto_a

    :cond_12
    move v9, v4

    :goto_a
    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->D0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v13

    invoke-virtual {v11, v13, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->blendLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)V

    :cond_13
    iget-object v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->cross(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_b
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v9

    cmpg-float v9, v9, v12

    if-gtz v9, :cond_14

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v3, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_c

    :cond_14
    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_c
    iget v9, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->g:F

    cmpl-float v11, v9, v19

    if-lez v11, :cond_15

    move/from16 v19, v9

    :cond_15
    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v9, v11

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9, v11, v12}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->add(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v9

    iget-object v11, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->U:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->Q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v11, v12, v13}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sub(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v11

    if-lez v8, :cond_16

    iget v12, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->e:F

    add-float/2addr v10, v12

    :cond_16
    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    sget-object v13, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;->PointBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    const/4 v14, 0x1

    if-ne v12, v13, :cond_18

    if-le v1, v14, :cond_17

    int-to-float v12, v8

    add-int/lit8 v13, v1, -0x1

    int-to-float v13, v13

    div-float/2addr v12, v13

    goto :goto_d

    :cond_17
    move v12, v4

    goto :goto_d

    :cond_18
    div-float v12, v10, v5

    :goto_d
    iget-boolean v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    if-eqz v13, :cond_19

    sub-float v12, v3, v12

    move v13, v3

    move v3, v12

    move v15, v3

    move v12, v4

    goto :goto_e

    :cond_19
    move v15, v4

    move v13, v12

    :goto_e
    iget-object v14, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    iget-object v2, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v14, v9, v12, v15, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    iget-object v14, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2, v11, v13, v3, v14}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-virtual {v2, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-virtual {v2, v11}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->y(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    add-int/lit8 v8, v8, 0x1

    move/from16 v17, v3

    move v14, v12

    move/from16 v16, v13

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_1a
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    iget-object v10, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    const/4 v2, 0x2

    mul-int/lit8 v11, v1, 0x2

    iget-object v12, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->b1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->m1:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-object/from16 v18, v1

    invoke-virtual/range {v10 .. v18}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->j(ILcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFFFLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/d;->d()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->I:Lcom/itsmagic/engine/Engines/Engine/Vector/d;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/d;)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    sub-float v2, v2, v19

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    sub-float v2, v2, v19

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    sub-float v2, v2, v19

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    sub-float v2, v2, v19

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    sub-float v2, v2, v19

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    sub-float v2, v2, v19

    iput v2, v1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    return-void
.end method

.method private cacheTransformData(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameObject"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->s0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->V:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q0:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result p1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->v1:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->y1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method private detachFromRenderer()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->destroy()V

    return-void
.end method

.method private ensureMaxPoints()V
    .locals 4

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    mul-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->D(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const v2, 0x3a83126f    # 0.001f

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    invoke-static {v2, v3}, LNc/b;->M(FF)F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    div-float/2addr v3, v2

    invoke-static {v3}, LNc/b;->D(F)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v2, v1

    const/4 v3, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v2, 0x7fff

    if-le v0, v2, :cond_0

    move v0, v2

    :cond_0
    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->M:I

    if-eq v2, v0, :cond_1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->M:I

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->O:Z

    :cond_1
    return-void
.end method

.method private removeFirstPoint()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    iget v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->e:F

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    iput v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->e:F

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    :goto_0
    return-void
.end method

.method private updatePointProperties()V
    .locals 11

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->e:F

    add-float/2addr v4, v6

    :goto_1
    iget v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    cmpl-float v7, v6, v1

    if-lez v7, :cond_1

    iget v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->d:F

    div-float/2addr v7, v6

    goto :goto_2

    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_2
    invoke-static {v7}, LNc/b;->I(F)F

    move-result v6

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    cmpl-float v8, v7, v1

    if-lez v8, :cond_2

    iget v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    cmpl-float v9, v8, v1

    if-lez v9, :cond_2

    sub-float/2addr v8, v4

    div-float/2addr v8, v7

    invoke-static {v8}, LNc/b;->I(F)F

    move-result v7

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_4

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    iput v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->g:F

    goto :goto_4

    :cond_3
    iget v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    iget v9, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->f:F

    mul-float/2addr v7, v9

    iput v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->g:F

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v7

    invoke-static {v7}, LNc/b;->I(F)F

    move-result v7

    iget v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    mul-float/2addr v7, v9

    iput v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->g:F

    :goto_4
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_7

    if-eq v7, v2, :cond_6

    if-eq v7, v8, :cond_5

    goto :goto_5

    :cond_5
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget v9, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->f:F

    iget v10, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    div-float/2addr v9, v10

    iget-object v10, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v7, v9, v10}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v9, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v7, v6, v9}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_5

    :cond_7
    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v9, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_5
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eq v7, v2, :cond_9

    if-eq v7, v8, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->f:F

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    mul-float/2addr v5, v7

    invoke-virtual {v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v7, v6}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v6

    invoke-static {v6}, LNc/b;->I(F)F

    move-result v6

    iget-object v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->b:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v7

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private updateTrail(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->L:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->L:F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->d:F

    add-float/2addr v3, p1

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->d:F

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;

    iget v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$q;->d:F

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->removeFirstPoint()V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, LNc/b;->M(FF)F

    move-result v1

    div-float/2addr v2, v1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->K:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->K:F

    :goto_2
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->K:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->L:F

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->addPoint(F)V

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->K:F

    add-float/2addr p1, v2

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->K:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->L:F

    goto :goto_2

    :cond_3
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->K:F

    :cond_4
    const p1, 0x3a83126f    # 0.001f

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    invoke-static {p1, v0}, LNc/b;->M(FF)F

    move-result p1

    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->J:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->removeFirstPoint()V

    goto :goto_3

    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->G:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->M:I

    if-le p1, v0, :cond_6

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->removeFirstPoint()V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->updatePointProperties()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    .line 6
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    .line 7
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    .line 8
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    .line 9
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    .line 10
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    .line 11
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 12
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    .line 13
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 14
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    .line 15
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    .line 16
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 17
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 18
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    .line 19
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    .line 20
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    .line 21
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    .line 22
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    .line 23
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    .line 24
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    .line 25
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    .line 26
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    .line 27
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->disabledPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->detachFromRenderer()V

    return-void
.end method

.method public getAlignment()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    return-object v0
.end method

.method public getAlphaBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    return-object v0
.end method

.method public getAlphaOverLifeTimeCurve()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getBounding()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-object v0
.end method

.method public getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getColorBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    return-object v0
.end method

.method public getColorGradient()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object v0
.end method

.method public getColorMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    return-object v0
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

    iget-object v0, p1, LIc/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f0701cf

    return v0
.end method

.method public getInspectorEntries(Landroid/content/Context;)Ljava/util/List;
    .locals 5
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
    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SPACE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$d;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ALIGNMENT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->UV_MODE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$f;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Rotate UV"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    const-string v4, "Enable Emission"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EMISSION:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$i;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SIZE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$j;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXTURE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$a;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LIGHT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMaxLength()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    return v0
.end method

.method public getMaxLifeSeconds()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    return v0
.end method

.method public getMaxPoints()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->M:I

    return v0
.end method

.method public getMaxSpeed()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    return v0
.end method

.method public getMinPointDistance()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    return v0
.end method

.method public getPointsPerSecond()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    return v0
.end method

.method public getSizeBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    return-object v0
.end method

.method public getSizeOverLifeTimeCurve()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getStartSize()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    return v0
.end method

.method public getTextureFile()Ljava/lang/String;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureInstance()Lub/p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->E:Lub/p;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "TrailRenderer"

    return-object v0
.end method

.method public getTransparencyBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->TrailRenderer:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getUvMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    return-object v0
.end method

.method public getWorldSpace()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    return-object v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCastShadows()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    return v0
.end method

.method public isEnableEmission()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    return v0
.end method

.method public isFullWhite()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    return v0
.end method

.method public isReceiveLight()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    return v0
.end method

.method public isReceiveShadows()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    return v0
.end method

.method public isRotateUV90()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

    return v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->detachFromRenderer()V

    return-void
.end method

.method public parallelUpdate()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    :try_start_0
    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {v0}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Lc8/b;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-static {}, LK8/d;->b()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->updateTrail(F)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->buildMesh()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->O:Z

    :cond_3
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

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->cacheTransformData(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->ensureMaxPoints()V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->F:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->E:Lub/p;

    invoke-static {p1, p2}, LBb/c;->a(Ljava/lang/String;Lub/p;)Lub/p;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->E:Lub/p;

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->O:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->N:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderData;->m()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->O:Z

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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrailRenderer: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAlignment(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alignment"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alignment:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$l;

    return-void
.end method

.method public setAlphaBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphaBased"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$m;

    return-void
.end method

.method public setAlphaOverLifeTimeCurve(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alphaOverLifeTimeCurve"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method

.method public setCastShadows(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "castShadows"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->castShadows:Z

    return-void
.end method

.method public setColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorBased"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$n;

    return-void
.end method

.method public setColorGradient(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorGradient"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "colorGradient can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorMode"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$o;

    return-void
.end method

.method public setEnableEmission(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableEmission"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->enableEmission:Z

    return-void
.end method

.method public setFullWhite(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullWhite"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->fullWhite:Z

    return-void
.end method

.method public setMaxLength(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxLength"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLength:F

    return-void
.end method

.method public setMaxLifeSeconds(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxLifeSeconds"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxLifeSeconds:F

    return-void
.end method

.method public setMaxSpeed(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSpeed"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const v0, 0x3c23d70a    # 0.01f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->maxSpeed:F

    return-void
.end method

.method public setMinPointDistance(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minPointDistance"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const v0, 0x3a83126f    # 0.001f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->minPointDistance:F

    return-void
.end method

.method public setPointsPerSecond(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointsPerSecond"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, LNc/b;->M(FF)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->pointsPerSecond:F

    return-void
.end method

.method public setReceiveLight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveLight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveLight:Z

    return-void
.end method

.method public setReceiveShadows(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveShadows"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->receiveShadows:Z

    return-void
.end method

.method public setRotateUV90(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotateUV90"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->rotateUV90:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H1:LJAVARuntime/Component;

    return-void
.end method

.method public setSizeBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeBased"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$p;

    return-void
.end method

.method public setSizeOverLifeTimeCurve(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sizeOverLifeTimeCurve"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method

.method public setStartSize(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startSize"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->startSize:F

    return-void
.end method

.method public setTextureFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureFile"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->textureFile:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->E:Lub/p;

    invoke-static {p1, v0}, LBb/c;->a(Ljava/lang/String;Lub/p;)Lub/p;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->E:Lub/p;

    return-void
.end method

.method public setTextureInstance(Lub/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textureInstance"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->E:Lub/p;

    return-void
.end method

.method public setTransparencyBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transparencyBased"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$r;

    return-void
.end method

.method public setUvMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uvMode"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->uvMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$s;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "uvMode can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWorldSpace(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "worldSpace"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer$t;

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H1:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/TrailRenderer;

    invoke-direct {v0, p0}, LJAVARuntime/TrailRenderer;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/TrailSystem/TrailRenderer;->H1:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
