.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;
.super Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;,
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing<",
        "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final D0:I = 0x7

.field public static final T:Ljava/lang/String; = "AtmosphericScattering"

.field public static final U:Ljava/lang/Class;

.field public static final V:I = 0x0

.field public static final W:I = 0x1

.field public static final X:I = 0x2

.field public static final Y:I = 0x3

.field public static final Z:I = 0x4

.field public static final b1:I = 0x8

.field public static final i1:I = 0x9

.field public static final m1:I = 0xa

.field public static final q0:I = 0x5

.field public static final q1:I = 0xb

.field public static final v0:I = 0x6

.field public static final v1:I = 0xc

.field public static y1:[I


# instance fields
.field public H:I

.field public I:I

.field public J:Lwb/h;

.field public K:Lwb/h;

.field public final L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public M:Lub/p;

.field public final N:[F

.field public O:F

.field public final P:F

.field public final Q:[F

.field public final R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public S:LJAVARuntime/Component;

.field public ambientLight:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private ambientLightReso:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public atmosphereDensity:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public atmosphereDensityFalloff:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public atmosphereExtent:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enableMoonball:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public enableSunball:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private lux:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field private maxReso:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public skyboxSimulationSpeed:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public wetness:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->U:Ljava/lang/Class;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$c;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$c;-><init>()V

    invoke-static {v0}, Lfb/a;->b(Lfb/b;)V

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    return-void

    :array_0
    .array-data 4
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "AtmosphericScattering"

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;->Simple:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;->Advanced:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x66

    const/16 v2, 0xff

    const/16 v3, 0x33

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->wetness:F

    const v1, 0x3d8f5c29    # 0.07f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensity:F

    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensityFalloff:F

    const/high16 v1, 0x42a00000    # 80.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereExtent:F

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableSunball:Z

    iput-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableMoonball:Z

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v2, 0x5b

    const/16 v3, 0x56

    const/16 v4, 0x63

    invoke-direct {v1, v4, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(III)V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/16 v1, 0x9

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->H:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->I:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->N:[F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    const/high16 v0, 0x44430000    # 780.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->P:F

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->Q:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const v1, -0x383cb080    # -99999.0f

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public static synthetic access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    return p1
.end method

.method public static synthetic access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V
    .locals 0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->requestRebuild()V

    return-void
.end method

.method public static synthetic access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)F
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    return p0
.end method

.method public static synthetic access$302(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    return p1
.end method

.method public static synthetic access$400(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)I
    .locals 0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    return p0
.end method

.method public static synthetic access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    return p1
.end method

.method private static addSamples(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "samples"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lec/f;",
            ">;",
            "Ljava/util/List<",
            "Lec/g;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "Rayleigh"

    invoke-direct {v0, v1, v3, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT3:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v3, "sunDir"

    invoke-direct {v0, v1, v3, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT2:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "advancedClouds"

    invoke-direct {v0, v3, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v4, "time"

    invoke-direct {v0, v3, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v4, "wetness"

    invoke-direct {v0, v3, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v4, "atmosphereDensity"

    invoke-direct {v0, v3, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v4, "atmosphereDensityFalloff"

    invoke-direct {v0, v3, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v4, "atmosphereExtent"

    invoke-direct {v0, v3, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v4, "groundColor"

    invoke-direct {v0, v1, v4, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v1, "enableClouds"

    invoke-direct {v0, v3, v1, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v1, "enableCumulusClouds"

    invoke-direct {v0, v3, v1, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v1, "enableCirrusClouds"

    invoke-direct {v0, v3, v1, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v1, "enableSunball"

    invoke-direct {v0, v3, v1, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v1, "enableMoonball"

    invoke-direct {v0, v3, v1, v2}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lec/g;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    const-string v3, "noiseTex"

    invoke-direct {p0, v0, v1, v2, v3}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private applySettingsTo(Lwb/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cubemap"
        }
    .end annotation

    invoke-virtual {p1}, Lwb/h;->l()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Rayleigh"

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->v(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->Q:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x2

    aget v0, v0, v5

    const-string v5, "sunDir"

    invoke-virtual {p1, v5, v2, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->B(Ljava/lang/String;FFF)V

    const-string v0, "time"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    const-string v0, "wetness"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->wetness:F

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    const-string v0, "atmosphereDensity"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensity:F

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    const-string v0, "atmosphereDensityFalloff"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensityFalloff:F

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    const-string v0, "atmosphereExtent"

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereExtent:F

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    const-string v0, "groundColor"

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->u(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    const-string v0, "enableClouds"

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->isCloudsEnabled()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;->Disabled:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v4, "enableCumulusClouds"

    invoke-virtual {p1, v4, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    if-eq v0, v2, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const-string v2, "enableCirrusClouds"

    invoke-virtual {p1, v2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    const-string v0, "enableSunball"

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableSunball:Z

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    const-string v0, "enableMoonball"

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableMoonball:Z

    invoke-virtual {p1, v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->r(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;->Advanced:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    if-ne v0, v2, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    if-ne v4, v2, :cond_4

    move v1, v3

    :cond_4
    const-string v2, "advancedClouds"

    invoke-virtual {p1, v2, v0, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->s(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->M:Lub/p;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lub/p;->J()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->M:Lub/p;

    const-string v1, "noiseTex"

    invoke-virtual {v0, p1, v1}, Lub/p;->f(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private destroyCacheIndirectLight(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->n()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;->destroyImmediate()V

    iput-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    iput-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->e:Lwb/b;

    :cond_2
    :goto_0
    return-void
.end method

.method private destroyCacheSkybox(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->p()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    :cond_1
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;->destroyImmediate()V

    iput-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    iput-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->b:Lwb/b;

    :cond_2
    :goto_0
    return-void
.end method

.method private destroyIndirectLightsUsing(Lwb/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cubemapInstance"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCaches()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->e:Lwb/b;

    if-ne v2, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheIndirectLight(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private destroyShaderCubemaps()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lwb/h;->h()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lwb/h;->h()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    :cond_1
    return-void
.end method

.method private destroySkyboxesUsing(Lwb/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cubemapInstance"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCaches()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->b:Lwb/b;

    if-ne v2, p1, :cond_1

    invoke-direct {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheSkybox(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private isCloudsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;->Disabled:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    if-eq v0, v1, :cond_0

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

.method public static loadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shaders/Atmos/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private requestRebuild()V
    .locals 1

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$d;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$d;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateReflectionsCubemapInstance()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    aget v3, v0, v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->I:I

    if-eq v0, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->requestRebuild()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyIndirectLightsUsing(Lwb/b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    invoke-virtual {v0}, Lwb/h;->h()V

    :cond_1
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->I:I

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v0, "fragment.glsl"

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->addSamples(Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Lwb/h;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lwb/h;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->M:Lub/p;

    if-nez v0, :cond_2

    const-string v0, "@@ASSET@@Engine/Graphics/Shaders/Atmos/noise.png"

    invoke-static {v0}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->M:Lub/p;

    :cond_2
    return-void
.end method

.method private updateSkyboxCubemapInstance()V
    .locals 8

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    aget v3, v0, v1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->H:I

    if-eq v0, v3, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->requestRebuild()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroySkyboxesUsing(Lwb/b;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    invoke-virtual {v0}, Lwb/h;->h()V

    :cond_1
    iput v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->H:I

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v0, "fragment.glsl"

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->addSamples(Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Lwb/h;

    const/4 v7, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lwb/h;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->M:Lub/p;

    if-nez v0, :cond_2

    const-string v0, "@@ASSET@@Engine/Graphics/Shaders/Atmos/noise.png"

    invoke-static {v0}, Lyb/b;->i(Ljava/lang/String;)Lub/g;

    move-result-object v0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->M:Lub/p;

    :cond_2
    return-void
.end method


# virtual methods
.method public applyBeforeRender(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->overrideAmbientLight()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p3

    if-nez p3, :cond_0

    iget-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p3

    iget-object p4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    :cond_0
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object p1

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-eq p1, p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    return-void
.end method

.method public applyInPreUpdate(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;LTb/a;LTb/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view",
            "frameBuffer",
            "cacheBuffer"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getBackgroundType()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    move-result-object p2

    sget-object p3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;->Skybox:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera$F;

    if-eq p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    const/4 p3, 0x0

    const/high16 p4, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->b:Lwb/b;

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    if-eq p2, p5, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheSkybox(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->b:Lwb/b;

    new-instance p2, Lcom/google/android/filament/Skybox$a;

    invoke-direct {p2}, Lcom/google/android/filament/Skybox$a;-><init>()V

    invoke-virtual {p2, p4, p4, p4, p4}, Lcom/google/android/filament/Skybox$a;->b(FFFF)Lcom/google/android/filament/Skybox$a;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/android/filament/Skybox$a;->e(F)Lcom/google/android/filament/Skybox$a;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/google/android/filament/Skybox$a;->g(Z)Lcom/google/android/filament/Skybox$a;

    new-instance p5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    invoke-direct {p5, p2, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;-><init>(Lcom/google/android/filament/Skybox$a;Lwb/b;)V

    iput-object p5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->getEffectiveLux()F

    move-result p2

    iget-boolean p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    if-eqz p5, :cond_4

    iget-object p5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-eqz p5, :cond_3

    iget p5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->d:F

    cmpl-float p5, p5, p2

    if-nez p5, :cond_3

    iget-object p5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->e:Lwb/b;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eq p5, v0, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheIndirectLight(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    iput p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->d:F

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    iput-object p5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->e:Lwb/b;

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->N:[F

    aput p4, p5, p3

    const/4 p3, 0x1

    aput p4, p5, p3

    const/4 v0, 0x2

    aput p4, p5, v0

    new-instance p4, Lcom/google/android/filament/IndirectLight$a;

    invoke-direct {p4}, Lcom/google/android/filament/IndirectLight$a;-><init>()V

    iget-object p5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->N:[F

    invoke-virtual {p4, p3, p5}, Lcom/google/android/filament/IndirectLight$a;->c(I[F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object p3

    const/high16 p4, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p4

    invoke-virtual {p3, p2}, Lcom/google/android/filament/IndirectLight$a;->b(F)Lcom/google/android/filament/IndirectLight$a;

    move-result-object p2

    new-instance p3, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    iget-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    invoke-direct {p3, p2, p4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;-><init>(Lcom/google/android/filament/IndirectLight$a;Lwb/b;)V

    iput-object p3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheIndirectLight(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;
    .locals 3

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    .line 4
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    .line 5
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    .line 6
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    .line 7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    .line 8
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->k(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v2

    :cond_1
    iput-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    .line 10
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->wetness:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->wetness:F

    .line 11
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensity:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensity:F

    .line 12
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensityFalloff:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensityFalloff:F

    .line 13
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereExtent:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereExtent:F

    .line 14
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    .line 15
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableSunball:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableSunball:Z

    .line 16
    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableMoonball:Z

    iput-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableMoonball:Z

    .line 17
    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

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
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->clone()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v0

    return-object v0
.end method

.method public createResolutionEntry(Ljava/lang/String;ILF5/c$s0;)LC5/b;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tittle",
            "value",
            "listener"
        }
    .end annotation

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v4, "x"

    if-ge v2, v1, :cond_0

    aget v5, v0, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, LC5/b;

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$j;

    invoke-direct {v1, p0, p3, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$j;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;LF5/c$s0;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    aget v0, v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, LC5/b$a;->SLDropdown:LC5/b$a;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    return-object v6
.end method

.method public destroyCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheSkybox(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCacheIndirectLight(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    return-void
.end method

.method public bridge synthetic destroyCache(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "cache"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;)V

    return-void
.end method

.method public disableFor(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentCamera;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "filamentCamera",
            "view"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->peekCache(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    if-eqz p1, :cond_1

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->p()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    move-result-object p2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    :cond_0
    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p2

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->n()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    move-result-object p2

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    :cond_1
    return-void
.end method

.method public getAmbientLightResolutionID()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    return v0
.end method

.method public getAtmosphereDensity()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensity:F

    return v0
.end method

.method public getAtmosphereDensityFalloff()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensityFalloff:F

    return v0
.end method

.method public getAtmosphereExtent()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereExtent:F

    return v0
.end method

.method public getAtmosphericDensitySettings(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DENSITY:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    invoke-static {v0, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getCirrusClouds()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    return-object v0
.end method

.method public getCloudsSettings(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->CLOUDS:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    invoke-static {v0, v1, v2}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getColorSettings(Landroid/content/Context;)Ljava/util/List;
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

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->COLOR:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$k;

    invoke-direct {v3, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$k;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getCumulusClouds()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    return-object v0
.end method

.method public getDisplayableTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AtmosphericScattering"

    return-object v0
.end method

.method public getEffectiveLux()F
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/Settings/GraphicsSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    return v0

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getGroundColor()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    const v0, 0x7f070261

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

    const p1, 0x7f05009d

    return p1
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

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->RESOLUTION:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$e;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$e;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->createResolutionEntry(Ljava/lang/String;ILF5/c$s0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$f;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$f;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    sget-object v3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->SIMULATION_SPEED:LAc/b;

    invoke-static {v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v1, v2, v3, v4}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    const-string v3, "skyboxSimulationSpeed"

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/Animation/c;->FLOAT:Lcom/itsmagic/engine/Engines/Engine/Animation/c;

    invoke-virtual {v1, v2, p0, v3, v4}, LC5/b;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Animation/c;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$g;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$g;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    const-string v4, "Enable sun ball"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, LC5/b;

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$h;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$h;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    const-string v4, "Enable moon ball"

    invoke-direct {v1, v2, v4, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getInspectorMemory()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;

    move-result-object v1

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->AMBIENT_LIGHT:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$i;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$i;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    invoke-static {v1, v2, v3}, LF5/c;->d(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/InspectorMemory;Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->getColorSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->getCloudsSettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->getAtmosphericDensitySettings(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getLux()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    return v0
.end method

.method public getMaxResolutionID()I
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    return v0
.end method

.method public getRayLeigh()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public getSkyboxSimulationSpeed()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "AtmosphericScattering"

    return-object v0
.end method

.method public getWetness()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->wetness:F

    return v0
.end method

.method public iconPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAmbientLight()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    return v0
.end method

.method public isEnableMoonball()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableMoonball:Z

    return v0
.end method

.method public isEnableSunball()Z
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableSunball:Z

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

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lwb/h;->n()V

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lwb/h;->n()V

    :cond_1
    return-void
.end method

.method public newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;
    .locals 1

    .line 2
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newCacheInstance()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->newCacheInstance()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 5

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->getCaches()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->p()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    move-result-object v2

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->a:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->v(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentSkybox;)V

    :cond_1
    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->n()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    move-result-object v2

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$m;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->u(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentIndirectLight;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->onDetach()V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->destroyShaderCubemaps()V

    return-void
.end method

.method public preRender()V
    .locals 7

    invoke-super {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->preRender()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->Q:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v1, v1, v6

    invoke-virtual {v0, v3, v5, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->isCloudsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->Q:[F

    aget v2, v1, v2

    aget v3, v1, v4

    aget v1, v1, v6

    invoke-virtual {v0, v2, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    invoke-static {}, LK8/d;->b()F

    move-result v1

    iget v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    const/high16 v1, 0x44430000    # 780.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    :cond_2
    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    const/high16 v2, -0x3bbd0000    # -780.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->O:F

    :cond_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    const v1, -0x383cb080    # -99999.0f

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lwb/h;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    invoke-virtual {v0}, Lwb/h;->o()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lwb/h;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    invoke-virtual {v0}, Lwb/h;->o()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->R:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
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

    invoke-super {p0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Core/BasePostProcessing;->preUpdate(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Z)V

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->updateSkyboxCubemapInstance()V

    iget-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->updateReflectionsCubemapInstance()V

    :cond_0
    :try_start_0
    const-class p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Light/SunLight;

    invoke-static {p1}, LR8/f;->h(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->Q:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, p2, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v2, 0x2

    aput v0, p2, v2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->isHierarchyActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->Q:[F

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->C([F)[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->J:Lwb/h;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->applySettingsTo(Lwb/h;)V

    :cond_3
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->K:Lwb/h;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->applySettingsTo(Lwb/h;)V

    :cond_4
    return-void
.end method

.method public setAmbientLight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambientLight"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLight:Z

    return-void
.end method

.method public setAmbientLightResolutionID(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ambientLightReso"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-ltz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->ambientLightReso:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolution ID out of bounds [0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAtmosphereDensity(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atmosphereDensity"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensity:F

    return-void
.end method

.method public setAtmosphereDensityFalloff(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atmosphereDensityFalloff"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereDensityFalloff:F

    return-void
.end method

.method public setAtmosphereExtent(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atmosphereExtent"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->atmosphereExtent:F

    return-void
.end method

.method public setCirrusClouds(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cirrusClouds"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cirrusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    return-void
.end method

.method public setCumulusClouds(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cumulusClouds"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->cumulusClouds:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering$l;

    return-void
.end method

.method public setEnableMoonball(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableMoonball"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableMoonball:Z

    return-void
.end method

.method public setEnableSunball(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableSunball"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->enableSunball:Z

    return-void
.end method

.method public setGroundColor(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groundColor"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->groundColor:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-void
.end method

.method public setLux(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lux"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->lux:F

    return-void
.end method

.method public setMaxResolutionID(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxReso"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    if-ltz p1, :cond_0

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->maxReso:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolution ID out of bounds [0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->y1:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRayLeigh(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rayLeigh"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->rayLeigh:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

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

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->S:LJAVARuntime/Component;

    return-void
.end method

.method public setSkyboxSimulationSpeed(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skyboxSimulationSpeed"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->skyboxSimulationSpeed:F

    return-void
.end method

.method public setWetness(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wetness"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->wetness:F

    return-void
.end method

.method public toJAVARuntime()LJAVARuntime/Component;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->S:LJAVARuntime/Component;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/AtmosphericScattering;

    invoke-direct {v0, p0}, LJAVARuntime/AtmosphericScattering;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/AtmosphericScattering;->S:LJAVARuntime/Component;

    :cond_0
    return-object v0
.end method
