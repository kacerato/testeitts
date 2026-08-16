.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;
.super Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;
    }
.end annotation


# static fields
.field public static final D2:F = 0.5f

.field public static final F2:I = 0xa

.field public static final H2:I = 0x4

.field public static final L2:Ljava/lang/String; = "ParticleEmitter"

.field public static final M2:Ljava/lang/Class;

.field public static final v2:F = 0.2f


# instance fields
.field public D0:Z

.field public E:Z

.field public F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

.field public transient F1:[F

.field public G:Z

.field public transient H:Z

.field public transient H1:[F

.field public I:Z

.field public final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;",
            ">;"
        }
    .end annotation
.end field

.field public final K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;",
            ">;"
        }
    .end annotation
.end field

.field public final L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;",
            ">;"
        }
    .end annotation
.end field

.field public transient L1:I

.field public final M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public transient M1:F

.field public final N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final O:Ljava/lang/Object;

.field public final P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public R1:Le9/b;

.field public final S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final U:Lib/h;

.field public V:I

.field public V1:Z

.field public W:F

.field public X:I

.field public Y:F

.field public Z:F

.field private allowMergeV2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b1:Lub/p;

.field public b2:Z

.field private castShadows:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private emissionPeriod:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private emissionsPerSecond:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private emitDelaySeconds:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
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

.field gravityMultiplier:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

.field public i2:Z

.field layer:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public final m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

.field public final m2:LJAVARuntime/GizmoObject;

.field maxLifeSeconds:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field maxSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private playOnStart:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

.field public final q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public q2:LJAVARuntime/Component;

.field private receiveLight:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private receiveShadows:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public rotateBasedDirection:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field speedBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field spriteIndex:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field startSize:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field startSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private textureFile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public final v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

.field public transient v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

.field worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public transient y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M2:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$h;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$h;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const-string v0, "ParticleEmitter"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    .line 4
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;->SizeOverLifetime:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    .line 6
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;->Cone:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    .line 7
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    .line 8
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    .line 9
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;-><init>()V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    const/high16 v3, 0x40000000    # 2.0f

    .line 10
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    .line 11
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    const v3, 0x3c23d70a    # 0.01f

    .line 12
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    .line 13
    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Global:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    const/high16 v3, 0x41200000    # 10.0f

    .line 14
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    const v4, 0x3dcccccd    # 0.1f

    .line 15
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitDelaySeconds:F

    const/high16 v5, 0x40a00000    # 5.0f

    .line 16
    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    .line 17
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    const/4 v3, 0x0

    .line 18
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->layer:I

    .line 19
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    .line 20
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    .line 21
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    .line 22
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    .line 23
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    .line 24
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    .line 25
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    .line 26
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;->Normal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    .line 27
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 28
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 29
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    .line 30
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    .line 31
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v5, v3, v3, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 32
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 33
    sget-object v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    .line 34
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rotateBasedDirection:Z

    .line 35
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->playOnStart:Z

    .line 36
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    const/4 v5, 0x0

    .line 37
    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    .line 38
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    .line 39
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    .line 40
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    .line 41
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    .line 42
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    .line 43
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 44
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 45
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->O:Ljava/lang/Object;

    .line 46
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 47
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 48
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v1, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 49
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v1, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 50
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v5, v2, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 51
    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$i;

    invoke-direct {v5, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->U:Lib/h;

    .line 52
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V:I

    .line 53
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->W:F

    .line 54
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    .line 55
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Y:F

    .line 56
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    .line 57
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    .line 58
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    .line 59
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    .line 60
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    .line 61
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 62
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    const v0, 0x3e4ccccd    # 0.2f

    .line 63
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    .line 64
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i2:Z

    .line 65
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$j;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    .line 66
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 67
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 68
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 69
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 70
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v6, 0x3f400000    # 0.75f

    invoke-virtual {v3, v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 71
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 72
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    .line 73
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 74
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 75
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 76
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 77
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 78
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 79
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    .line 80
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 81
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 82
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 83
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 84
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v6, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 85
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 86
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    .line 87
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 88
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 89
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 90
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 91
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v6, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 92
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 93
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    .line 94
    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 95
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    .line 96
    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v3, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 97
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1, v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 98
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v6, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 99
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    .line 100
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    .line 101
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    .line 102
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromInit"
        }
    .end annotation

    .line 103
    const-string p1, "ParticleEmitter"

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    .line 106
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;->SizeOverLifetime:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 107
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    .line 108
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;->Cone:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    .line 109
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    .line 110
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    .line 111
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;-><init>()V

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    const/high16 v2, 0x40000000    # 2.0f

    .line 112
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    .line 113
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    const v2, 0x3c23d70a    # 0.01f

    .line 114
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    .line 115
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Global:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    const/high16 v2, 0x41200000    # 10.0f

    .line 116
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    const v3, 0x3dcccccd    # 0.1f

    .line 117
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitDelaySeconds:F

    const/high16 v4, 0x40a00000    # 5.0f

    .line 118
    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    .line 119
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    const/4 v2, 0x0

    .line 120
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->layer:I

    .line 121
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    .line 122
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    .line 123
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;->Alpha:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    .line 124
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    .line 125
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    .line 126
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    .line 127
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    .line 128
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;->Normal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    .line 129
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 130
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 131
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    .line 132
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;->None:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    .line 133
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v4, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 134
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 135
    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    .line 136
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rotateBasedDirection:Z

    .line 137
    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->playOnStart:Z

    .line 138
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    const/4 v4, 0x0

    .line 139
    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    .line 140
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    .line 141
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    .line 142
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    .line 143
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    .line 144
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    .line 145
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 146
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    .line 147
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->O:Ljava/lang/Object;

    .line 148
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 149
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    .line 150
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v0, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 151
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v0, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 152
    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v4, v1, v0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    iput-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 153
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$i;

    invoke-direct {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->U:Lib/h;

    .line 154
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V:I

    .line 155
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->W:F

    .line 156
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    .line 157
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Y:F

    .line 158
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    .line 159
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    .line 160
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    .line 161
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    .line 162
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    .line 163
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    .line 164
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 165
    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    .line 166
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i2:Z

    .line 167
    new-instance p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$j;

    invoke-direct {p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    return-void
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    return p0
.end method

.method public static synthetic access$1402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    return p1
.end method

.method public static synthetic access$1500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    return p0
.end method

.method public static synthetic access$1502(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    return p1
.end method

.method public static synthetic access$1600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    return p0
.end method

.method public static synthetic access$1602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    return p0
.end method

.method public static synthetic access$1702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateCachedSpawnTransform(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateRenderEmitterTransform()V

    return-void
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->playOnStart:Z

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->playOnStart:Z

    return p1
.end method

.method public static synthetic access$500(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    return p0
.end method

.method public static synthetic access$602(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    return p1
.end method

.method public static synthetic access$702(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return p1
.end method

.method public static synthetic access$800(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    return p0
.end method

.method public static synthetic access$902(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    return p1
.end method

.method private static applyParticleBoundingResult([FLcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "values",
            "target"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    const/4 v0, 0x1

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    const/4 v0, 0x2

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    const/4 v0, 0x3

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    const/4 v0, 0x4

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    const/4 v0, 0x5

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    const/4 v0, 0x6

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    const/4 v0, 0x7

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    const/16 v0, 0x8

    aget v0, p0, v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    const/16 v0, 0x9

    aget p0, p0, v0

    iput p0, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    :cond_1
    :goto_0
    return-void
.end method

.method private destroyParticleBoundingBuffers()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->resetParticleBoundingBoxes()V

    return-void
.end method

.method private detachFromRenderer()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;->destroy()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->destroy()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->destroyParticleBoundingBuffers()V

    return-void
.end method

.method private emitParticle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-object v0

    :cond_2
    return-object v1
.end method

.method private ensureParticleBoundingBuffers()V
    .locals 3

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    mul-int/lit8 v0, v0, 0x4

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->destroyParticleBoundingBuffers()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->capacity()I

    move-result v1

    if-ge v1, v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->destroyImmediate()V

    :cond_2
    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    const/16 v2, 0xa

    if-nez v1, :cond_4

    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    :cond_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    if-eqz v1, :cond_5

    array-length v1, v1

    if-ge v1, v0, :cond_6

    :cond_5
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    if-eqz v0, :cond_7

    array-length v0, v0

    if-ge v0, v2, :cond_8

    :cond_7
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    :cond_8
    return-void
.end method

.method private fillParticleBoundingPositionsBuffer(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localizeGlobalParticles"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    sget-object v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Global:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5, v4, v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q1:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_1
    mul-int/lit8 v5, v2, 0x4

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    aput v7, v6, v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    add-int/lit8 v7, v5, 0x2

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v4

    aput v4, v6, v7

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    add-int/lit8 v5, v5, 0x3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    if-lez v2, :cond_3

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->set(I[FII)V

    :cond_3
    return-void
.end method

.method private static resetAabb(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->x:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->y:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->z:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->xn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->yn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->zn:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cx:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cy:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->cz:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->radius:F

    return-void
.end method

.method private resetParticleBoundingBoxes()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->resetAabb(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->resetAabb(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    return-void
.end method

.method private updateAliveParticles(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    invoke-virtual {v1, p1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->q(FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateCachedSpawnTransform(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->O:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->D1(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->r1(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v8, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v12, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v6, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->o0(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Z)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateParticleBoundingBuffers(F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->ensureParticleBoundingBuffers()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->F1:[F

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    cmpg-float p1, v0, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fillParticleBoundingPositionsBuffer(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleNative;->buildBoundingBox(JIJF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->applyParticleBoundingResult([FLcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Global:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fillParticleBoundingPositionsBuffer(Z)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v0

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->getCriticalDirectCppPointer()J

    move-result-wide v3

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleNative;->buildBoundingBox(JIJF)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->y1:Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeFloatBuffer;->get([F)V

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H1:[F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->applyParticleBoundingResult([FLcom/itsmagic/engine/Engines/Engine/Vector/AABB;)V

    return-void

    :cond_4
    :goto_0
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->resetParticleBoundingBoxes()V

    return-void

    :cond_5
    :goto_1
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L1:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M1:F

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->resetParticleBoundingBoxes()V

    return-void
.end method

.method private updateRenderEmitterTransform()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Local:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;->s(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v1, v2, v3, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->r(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V

    return-void
.end method


# virtual methods
.method public bindSpriteTexture(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "material",
            "name",
            "spriteIndex"
        }
    .end annotation

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    invoke-static {v6}, Lub/p;->L(Lub/p;)Z

    move-result v0

    const/4 v7, 0x0

    const-string v1, "Sprite"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->hasSpriteTexture()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-static {v7, p3, v2}, LNc/b;->F(III)I

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->B(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->d()F

    move-result v2

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->e()F

    move-result v3

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->c()F

    move-result v4

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/Rect;->b()F

    move-result v0

    move v5, v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v6, p1, p2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_2
    return v8

    :cond_3
    if-eqz p1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_4
    sget-object v0, Lyb/b;->g:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_5
    return v7
.end method

.method public bindTexture(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "material",
            "name"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Sprite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_0
    sget-object v0, Lyb/b;->g:Lub/p;

    invoke-virtual {v0, p1, p2}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 2

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    .line 5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->f()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 10
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    .line 11
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    .line 12
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->f()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    .line 13
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->j()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 14
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    .line 15
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    .line 18
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 19
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->layer:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->layer:I

    .line 20
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    .line 21
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    .line 22
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    .line 23
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    .line 24
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitDelaySeconds:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitDelaySeconds:F

    .line 25
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    .line 26
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    .line 27
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    .line 28
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    .line 29
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    .line 30
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    .line 31
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    .line 32
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;->a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    .line 33
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    .line 34
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    .line 35
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 36
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    .line 37
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    .line 38
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    .line 39
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 40
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->j()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    .line 41
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rotateBasedDirection:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rotateBasedDirection:Z

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public consumeRequestUpdateRender()Z
    .locals 2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return v0
.end method

.method public copyCachedSpawnTransform(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
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
            "position",
            "rotation",
            "forward",
            "up",
            "right"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->O:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->P:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Q:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->S:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->T:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p5, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->detachFromRenderer()V

    return-void
.end method

.method public emit(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pos",
            "movement"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitParticle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c()F

    move-result v5

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    :goto_1
    move-object v3, v4

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    move-object v0, v3

    :cond_5
    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-object v0
.end method

.method public getAliveParticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    return-object v0
.end method

.method public getAlphaBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    return-object v0
.end method

.method public getAlphaOverLifeTimeCurve()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getBounding()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-object v0
.end method

.method public getColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getColorBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    return-object v0
.end method

.method public getColorGradient()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object v0
.end method

.method public getColorMode()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    return-object v0
.end method

.method public getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->coneShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

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

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PARTICLE_EMITTER:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmissionPeriod()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    return v0
.end method

.method public getEmissionShape()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    return-object v0
.end method

.method public getEmissionsOverPeriod()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getEmissionsPerSecond()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    return v0
.end method

.method public getEmissive()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getEmissiveBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    return-object v0
.end method

.method public getEmissiveGradient()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-object v0
.end method

.method public getGravityMultiplier()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    return v0
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

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$k;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    const-class v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    invoke-static {v1, v4, v2, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$l;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$l;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->MAX_LIFE_SECONDS:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "maxLifeSeconds"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v2, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$m;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$m;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->PLAY_ON_START:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXTURE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$n;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$n;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;

    invoke-direct {v2, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$o;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    const-string v3, "Sprite"

    invoke-static {v1, v3, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$p;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$p;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->NOCODE_SLOT_EMISSIVE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$a;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SIZE:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$b;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->EMISSION:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$c;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SPEED:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$d;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->ROTATION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$e;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->LIGHT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object p1

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->OPTIONS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    invoke-static {p1, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayer()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->layer:I

    return v0
.end method

.method public getMaxLifeSeconds()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    return v0
.end method

.method public getMaxParticles()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    return v0
.end method

.method public getMaxSpeed()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    return v0
.end method

.method public getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rectangleShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    return-object v0
.end method

.method public getRenderBounding()F
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRenderBoundingBox()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->getRadius()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRenderBoundingBox()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    return-object v0
.end method

.method public getRenderCenter()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRenderBoundingBox()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->m()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSizeBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    return-object v0
.end method

.method public getSizeOverLifeTimeCurve()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getSphereShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sphereShapeOptions:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    return-object v0
.end method

.method public getSpriteBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    return-object v0
.end method

.method public getSpriteCurve()Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-object v0
.end method

.method public getSpriteIndex()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    return v0
.end method

.method public getStartSize()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    return v0
.end method

.method public getStartSpeed()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    return v0
.end method

.method public getTextureFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureInstance()Lub/p;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "ParticleEmitter"

    return-object v0
.end method

.method public getTransparencyBased()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    return-object v0
.end method

.method public getType()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;
    .locals 1

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;->ParticleEmitter:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component$e;

    return-object v0
.end method

.method public getWorldSpace()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    return-object v0
.end method

.method public hasRenderBounding()Z
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSpriteTexture()Z
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    instance-of v1, v0, Lub/g;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->type:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;->Sprite:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$f;

    if-ne v1, v3, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public intercept(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "particleEmitter"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getBounding()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getBounding()Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getWorldSpace()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    move-result-object v0

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Local:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v1

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getWorldSpace()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    move-result-object v0

    if-ne v0, v3, :cond_4

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->x1()[F

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->d([F)Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    move-result-object v2

    :cond_4
    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->J(Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public isAllowEmission()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    return v0
.end method

.method public isCastShadows()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

    return v0
.end method

.method public isEnableEmission()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

    return v0
.end method

.method public isFullWhite()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    return v0
.end method

.method public isReceiveLight()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

    return v0
.end method

.method public isReceiveShadows()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

    return v0
.end method

.method public lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->lowTaskUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->D0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;->o()V

    :goto_0
    return-void
.end method

.method public onAttach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onAttach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->U:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u(Lib/h;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateCachedSpawnTransform(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateRenderEmitterTransform()V

    :cond_0
    return-void
.end method

.method public onDeserialized()V
    .locals 4

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDeserialized()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    if-nez v0, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;->Normal:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-nez v0, :cond_1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    if-nez v0, :cond_2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->n()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    if-nez v0, :cond_3

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    if-nez v0, :cond_4

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_5

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->f(FF)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->apply()V

    :cond_5
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitDelaySeconds:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_6

    div-float/2addr v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitDelaySeconds:F

    :cond_6
    return-void
.end method

.method public onDetach()V
    .locals 2

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->onDetach()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->U:Lib/h;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->O2(Lib/h;)V

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->detachFromRenderer()V

    return-void
.end method

.method public parallelUpdate()V
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->parallelUpdate()V

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i1:Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/AABB;->E()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_0
    invoke-static {}, Lc8/b;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->playOnStart:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    :cond_1
    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->H:Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    invoke-static {}, Lc8/b;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lc8/b;->i()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->b1()Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    goto :goto_0

    :cond_4
    move v2, v0

    :goto_1
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->E:Z

    if-eqz v3, :cond_5

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->I:Z

    move v2, v1

    :cond_5
    if-eqz v2, :cond_10

    invoke-static {}, LK8/d;->b()F

    move-result v2

    iget v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V:I

    if-eq v4, v3, :cond_9

    sub-int v4, v3, v4

    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V:I

    if-lez v4, :cond_6

    :goto_2
    if-ge v0, v4, :cond_9

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_3
    invoke-static {v4}, LNc/b;->l(I)I

    move-result v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v4, :cond_c

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Y:F

    add-float/2addr v4, v2

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Y:F

    cmpl-float v6, v4, v0

    if-ltz v6, :cond_a

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Y:F

    :cond_a
    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Y:F

    div-float/2addr v4, v0

    invoke-static {v4}, LNc/b;->I(F)F

    move-result v0

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v4, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v0

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    mul-float/2addr v4, v0

    cmpl-float v0, v4, v3

    if-lez v0, :cond_b

    div-float/2addr v5, v4

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->W:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    :goto_5
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_d

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitParticle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->W:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    goto :goto_5

    :cond_b
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    goto :goto_7

    :cond_c
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    div-float/2addr v5, v0

    iput v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->W:F

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    :goto_6
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_d

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emitParticle()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    iget v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->W:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->Z:F

    goto :goto_6

    :cond_d
    :goto_7
    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateAliveParticles(F)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->J:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->K:Ljava/util/List;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_e
    invoke-direct {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateParticleBoundingBuffers(F)V

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->D0:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->parallelUpdate()V

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;->parallelUpdate()V

    :cond_10
    :goto_8
    return-void
.end method

.method public preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b2:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b2:Z

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    invoke-static {p1, v0}, LBb/c;->a(Ljava/lang/String;Lub/p;)Lub/p;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    :cond_0
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->allowMergeV2:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-static {p1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    if-eqz v2, :cond_2

    if-eq v2, p0, :cond_2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->intercept(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z

    move-result v2

    if-eqz v2, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_2
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->D0:Z

    if-eq v1, p1, :cond_5

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->D0:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;->destroy()V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->destroy()V

    :goto_3
    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    :cond_5
    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    mul-float/2addr p1, v1

    invoke-static {p1}, LNc/b;->D(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->D0:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->v0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o()V

    goto :goto_4

    :cond_6
    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q0:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderBatchData;->p()V

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    :cond_7
    :goto_4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i2:Z

    :try_start_0
    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-static {p1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    invoke-virtual {v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->isVisible(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->i2:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_7
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->f1()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_10

    if-eq p1, p2, :cond_d

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    goto :goto_8

    :cond_a
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    instance-of p2, p1, Le9/c;

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    invoke-virtual {p1, p0}, Le9/b;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_b
    new-instance p1, Le9/c;

    invoke-direct {p1}, Le9/c;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    invoke-virtual {p1, p0}, Le9/b;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_c
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p0, p2}, Le9/b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;LJAVARuntime/GizmoObject;)V

    goto :goto_8

    :cond_d
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    instance-of p2, p1, Le9/a;

    if-nez p2, :cond_f

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Le9/b;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_e
    new-instance p1, Le9/a;

    invoke-direct {p1}, Le9/a;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    invoke-virtual {p1, p0}, Le9/b;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_f
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p0, p2}, Le9/b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;LJAVARuntime/GizmoObject;)V

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    instance-of p2, p1, Le9/d;

    if-nez p2, :cond_12

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Le9/b;->a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_11
    new-instance p1, Le9/d;

    invoke-direct {p1}, Le9/d;-><init>()V

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    invoke-virtual {p1, p0}, Le9/b;->c(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    :cond_12
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    invoke-virtual {p1, p0, p2}, Le9/b;->d(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;LJAVARuntime/GizmoObject;)V

    :goto_8
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->R1:Le9/b;

    if-eqz p1, :cond_13

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Le9/b;->b()Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vertex/Vertex;->x2()LJAVARuntime/Vertex;

    move-result-object p1

    invoke-virtual {p2, p1}, LJAVARuntime/GizmoObject;->setVertex(LJAVARuntime/Vertex;)V

    const-class p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->acquire(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    invoke-virtual {p2, p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->u0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->toJAVARuntime()LJAVARuntime/Vector3;

    move-result-object v0

    invoke-virtual {p2, v0}, LJAVARuntime/GizmoTransform;->setPosition(LJAVARuntime/Vector3;)V

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/JavaPool/JP;->release(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->m2:LJAVARuntime/GizmoObject;

    invoke-static {p1}, LUb/a;->a(LJAVARuntime/GizmoElement;)V

    :cond_13
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDictionary;->f(Ljava/lang/String;)Lcom/itsmagic/engine/Core/Components/PackageBuilder/BuilderUtils/BuildDicFile;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParticleEmitter: REPLACING "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public resolveSpriteIndex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "particle"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->hasSpriteTexture()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    div-float/2addr p1, v1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v3

    :cond_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v3

    :cond_3
    invoke-static {v3}, LNc/b;->I(F)F

    move-result p1

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, LNc/b;->j1(F)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c()F

    move-result p1

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    div-float/2addr p1, v1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result v3

    :cond_5
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v3

    :cond_6
    invoke-static {v3}, LNc/b;->I(F)F

    move-result p1

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, LNc/b;->j1(F)F

    move-result p1

    goto :goto_0

    :goto_1
    sub-int/2addr v0, v4

    invoke-static {v2, p1, v0}, LNc/b;->F(III)I

    move-result p1

    return p1
.end method

.method public setAllowEmission(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowEmission"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->G:Z

    return-void
.end method

.method public setAlphaBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    return-void
.end method

.method public setAlphaOverLifeTimeCurve(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 1
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

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "curve can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->castShadows:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Color can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Gradient can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorMode(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    return-void
.end method

.method public setEmissionPeriod(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissionPeriod"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionPeriod:F

    return-void
.end method

.method public setEmissionShape(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissionShape"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    return-void
.end method

.method public setEmissionsOverPeriod(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissionsOverPeriod"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsOverPeriod:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void
.end method

.method public setEmissionsPerSecond(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissionsPerSecond"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionsPerSecond:F

    return-void
.end method

.method public setEmissive(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissive"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Emissive can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEmissiveBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissiveBased"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    return-void
.end method

.method public setEmissiveGradient(Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emissiveGradient"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Gradient can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->enableEmission:Z

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

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->fullWhite:Z

    return-void
.end method

.method public setGravityMultiplier(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gravityMultiplier"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layer"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->layer:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-void
.end method

.method public setMaxLifeSeconds(F)V
    .locals 0
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    return-void
.end method

.method public setMaxSpeed(F)V
    .locals 0
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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

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

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveLight:Z

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

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->receiveShadows:Z

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q2:LJAVARuntime/Component;

    return-void
.end method

.method public setSizeBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    return-void
.end method

.method public setSizeOverLifeTimeCurve(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 1
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

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "curve can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpriteBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteBased"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;->Constant:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    :cond_0
    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$x;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-void
.end method

.method public setSpriteCurve(Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteCurve"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "curve can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSpriteIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spriteIndex"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->spriteIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

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

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    return-void
.end method

.method public setStartSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startSpeed"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    invoke-static {p1, v0}, LBb/c;->a(Ljava/lang/String;Lub/p;)Lub/p;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-void
.end method

.method public setTextureInstance(Lub/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "texture"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    .annotation runtime Ls8/c;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->b1:Lub/p;

    instance-of v0, p1, Lub/g;

    if-eqz v0, :cond_0

    check-cast p1, Lub/g;

    invoke-virtual {p1}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->textureFile:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->V1:Z

    return-void
.end method

.method public setTransparencyBased(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    return-void
.end method

.method public setWorldSpace(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;)V
    .locals 1
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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->p0(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->M:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->N:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->E()Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->updateRenderEmitterTransform()V

    :cond_0
    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q2:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ParticleEmitter;

    invoke-direct {v0, p0}, LJAVARuntime/ParticleEmitter;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->q2:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
