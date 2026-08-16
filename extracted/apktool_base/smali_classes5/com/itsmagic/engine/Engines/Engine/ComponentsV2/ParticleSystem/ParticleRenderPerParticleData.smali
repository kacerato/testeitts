.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;
.super LIc/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;
    }
.end annotation


# static fields
.field public static final O:I = 0x1000

.field public static final P:I = 0x4

.field public static final Q:I = 0x6

.field public static final R:I = 0x4

.field public static final S:I = 0x15

.field public static final T:I = 0x54

.field public static final U:[F

.field public static final V:[F

.field public static final W:F = 1.0E-4f

.field public static final X:I = 0x2

.field public static final Y:F = 4.0E-4f

.field public static final Z:F = 0.9995f


# instance fields
.field public A:Z

.field public final B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public F:Z

.field public G:I

.field public H:Z

.field public I:[F

.field public J:[F

.field public K:[F

.field public L:[F

.field public M:[F

.field public N:[I

.field public b:I

.field public c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

.field public d:Z

.field public e:Z

.field public g:Z

.field public final i:Lcom/google/android/filament/Box;

.field private indexBuffer:LRb/d;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public volatile j:I

.field public final k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field public final s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

.field private shader:Lec/e;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public final t:[F

.field public u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->U:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->V:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    invoke-direct {p0}, LIc/m;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->d:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->e:Z

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->g:Z

    new-instance v0, Lcom/google/android/filament/Box;

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/filament/Box;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->i:Lcom/google/android/filament/Box;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->j:I

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->t:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    return-void
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;
    .locals 0

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    return-object p0
.end method

.method private f()Lec/i;
    .locals 9

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$a;->TRANSPARENT:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$b;->a:[I

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$a;->ADD:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$a;->FADE:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$a;->MULTIPLY:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    goto :goto_0

    :goto_1
    new-instance v0, Lec/i;

    sget-object v4, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lec/i;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$a;FLcom/google/android/filament/filamat/MaterialBuilder$c;ZLcom/google/android/filament/filamat/MaterialBuilder$k;ZZ)V

    return-object v0
.end method

.method private h()Lec/h;
    .locals 8

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$g;->LOW:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v3, "transparencyBased"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v3, "fullWhite"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    const-string v3, "premultiplyAlpha"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/f;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$r;->FLOAT4:Lcom/google/android/filament/filamat/MaterialBuilder$r;

    const-string v3, "particleColor"

    invoke-direct {v0, v1, v2, v3}, Lec/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lec/g;

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$m;->SAMPLER_2D:Lcom/google/android/filament/filamat/MaterialBuilder$m;

    sget-object v2, Lcom/google/android/filament/filamat/MaterialBuilder$l;->FLOAT:Lcom/google/android/filament/filamat/MaterialBuilder$l;

    sget-object v3, Lcom/google/android/filament/filamat/MaterialBuilder$g;->HIGH:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    const-string v6, "sprite"

    invoke-direct {v0, v1, v2, v3, v6}, Lec/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v1, Lgc/a;

    const-string v2, "isLit"

    invoke-direct {v1, v2}, Lgc/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lgc/e;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v6, "fragment.glsl"

    invoke-static {v6}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v3, v6}, Lgc/e;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveLight()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Lgc/e;->o(Ljava/lang/String;Z)V

    new-instance v7, Lec/h;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveLight()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lit_vertex_per_particle.glsl"

    goto :goto_0

    :cond_0
    const-string v0, "unlit_vertex_per_particle.glsl"

    :goto_0
    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->loadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$a;

    invoke-direct {v3, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;)V

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lec/h;-><init>(Lgc/e;Ljava/lang/String;Lec/c;Ljava/util/List;Ljava/util/List;Z)V

    return-object v7
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->indexBuffer:LRb/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LRb/d;->destroyImmediate()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->indexBuffer:LRb/d;

    :cond_1
    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->shader:Lec/e;

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    if-eqz v1, :cond_1

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x3

    if-eq v1, v2, :cond_2

    :cond_1
    mul-int/lit8 v1, v0, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->J:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->K:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->L:[F

    mul-int/lit8 v1, v0, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->M:[F

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->N:[I

    :cond_2
    return-void
.end method

.method private l()I
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveLight()Z

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

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

    const-string v1, "Shaders/Particles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmc/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private m()Z
    .locals 2

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->j:I

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private p()V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->j()V

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->b:I

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->indexBuffer:LRb/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    new-instance v1, LRb/d;

    new-instance v4, Lcom/google/android/filament/IndexBuffer$a;

    invoke-direct {v4}, Lcom/google/android/filament/IndexBuffer$a;-><init>()V

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/google/android/filament/IndexBuffer$a;->c(I)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v4

    sget-object v5, Lcom/google/android/filament/IndexBuffer$a$b;->USHORT:Lcom/google/android/filament/IndexBuffer$a$b;

    invoke-virtual {v4, v5}, Lcom/google/android/filament/IndexBuffer$a;->a(Lcom/google/android/filament/IndexBuffer$a$b;)Lcom/google/android/filament/IndexBuffer$a;

    move-result-object v4

    invoke-direct {v1, v4}, LRb/d;-><init>(Lcom/google/android/filament/IndexBuffer$a;)V

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->indexBuffer:LRb/d;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->indexBuffer:LRb/d;

    invoke-virtual {v4, v1}, LRb/d;->r(Ljava/nio/ByteBuffer;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->h()Lec/h;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->f()Lec/i;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Particles-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LTc/b;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lec/h;->r(Lec/i;Ljava/lang/String;)Lec/e;

    move-result-object v1

    iput-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->shader:Lec/e;

    move v1, v3

    :goto_0
    iget v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->b:I

    if-ge v1, v4, :cond_3

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$a;)V

    const/16 v5, 0x150

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    new-instance v5, Lcom/google/android/filament/VertexBuffer$b;

    invoke-direct {v5}, Lcom/google/android/filament/VertexBuffer$b;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/google/android/filament/VertexBuffer$b;->h(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/filament/VertexBuffer$b;->c(I)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v7

    sget-object v8, Lcom/google/android/filament/VertexBuffer$c;->POSITION:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v10, Lcom/google/android/filament/VertexBuffer$a;->FLOAT3:Lcom/google/android/filament/VertexBuffer$a;

    const/4 v11, 0x0

    const/16 v12, 0x54

    const/4 v9, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v13

    sget-object v14, Lcom/google/android/filament/VertexBuffer$c;->UV0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v16, Lcom/google/android/filament/VertexBuffer$a;->FLOAT2:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v17, 0xc

    const/16 v18, 0x54

    const/4 v15, 0x0

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v7

    sget-object v8, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM0:Lcom/google/android/filament/VertexBuffer$c;

    sget-object v5, Lcom/google/android/filament/VertexBuffer$a;->FLOAT4:Lcom/google/android/filament/VertexBuffer$a;

    const/16 v11, 0x14

    move-object v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v9

    sget-object v10, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM1:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v13, 0x24

    const/16 v14, 0x54

    const/4 v11, 0x0

    move-object v12, v5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v9

    sget-object v10, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM2:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v13, 0x34

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v9

    sget-object v10, Lcom/google/android/filament/VertexBuffer$c;->CUSTOM3:Lcom/google/android/filament/VertexBuffer$c;

    const/16 v13, 0x44

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/filament/VertexBuffer$b;->b(Lcom/google/android/filament/VertexBuffer$c;ILcom/google/android/filament/VertexBuffer$a;II)Lcom/google/android/filament/VertexBuffer$b;

    move-result-object v5

    new-instance v7, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    invoke-direct {v7, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;-><init>(Lcom/google/android/filament/VertexBuffer$b;)V

    iput-object v7, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v5, v3

    :goto_1
    const/high16 v7, 0x3f800000    # 1.0f

    if-ge v5, v6, :cond_2

    sget-object v8, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->U:[F

    mul-int/lit8 v9, v5, 0x2

    aget v10, v8, v9

    add-int/lit8 v11, v9, 0x1

    aget v8, v8, v11

    sget-object v12, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->V:[F

    aget v9, v12, v9

    aget v11, v12, v11

    iget-object v12, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v10, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget-object v8, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    new-instance v5, LRb/c;

    invoke-direct {v5}, LRb/c;-><init>()V

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->shader:Lec/e;

    invoke-virtual {v5}, Lec/e;->h()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    move-result-object v5

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    new-instance v5, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    new-instance v6, Lcom/google/android/filament/RenderableManager$a;

    invoke-direct {v6, v2}, Lcom/google/android/filament/RenderableManager$a;-><init>(I)V

    invoke-virtual {v6, v3}, Lcom/google/android/filament/RenderableManager$a;->f(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v6

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveShadows()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/filament/RenderableManager$a;->y(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v6

    iget-object v8, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isCastShadows()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/filament/RenderableManager$a;->d(Z)Lcom/google/android/filament/RenderableManager$a;

    move-result-object v9

    iget-object v10, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v11, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    iget-object v12, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v13, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->indexBuffer:LRb/d;

    sget-object v14, Lcom/google/android/filament/RenderableManager$b;->TRIANGLES:Lcom/google/android/filament/RenderableManager$b;

    iget-object v15, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->i:Lcom/google/android/filament/Box;

    move-object v8, v5

    invoke-direct/range {v8 .. v15}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;-><init>(Lcom/google/android/filament/RenderableManager$a;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;LRb/c;Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;LRb/d;Lcom/google/android/filament/RenderableManager$b;Lcom/google/android/filament/Box;)V

    iput-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v5, v3, v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setGlobalBlendOrderEnabledAt(IZ)V

    iget-object v5, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    const/16 v6, 0x1000

    invoke-virtual {v5, v3, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    new-instance v5, Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;-><init>()V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    new-instance v8, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    new-instance v9, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v9, v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(F)V

    invoke-virtual {v5, v6, v8, v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->Z0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v6

    iget-object v7, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    invoke-virtual {v7}, LRb/c;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/filament/TransformManager;->b(I)I

    iget-object v7, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    invoke-virtual {v7}, LRb/c;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v7

    const/16 v8, 0x10

    new-array v8, v8, [F

    invoke-virtual {v5, v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object v5

    iget-object v6, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->j(LRb/c;)V

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private q()I
    .locals 7

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getLayer()I

    move-result v0

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->H0()Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->z0()Ljava/util/List;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    if-ne v5, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v5, :cond_2

    const-class v6, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v5, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->d0(Ljava/lang/Class;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;

    move-result-object v5

    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-gez v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v0

    :goto_3
    const/4 v0, 0x7

    if-le v2, v0, :cond_5

    move v2, v0

    :cond_5
    return v2
.end method


# virtual methods
.method public destroy()V
    .locals 1

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->j()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->b:I

    return-void
.end method

.method public final i(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    const/4 v4, 0x0

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iput-object v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->getEffectiveScene()Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentScene;->s(LRb/c;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->destroyImmediate()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->destroyImmediate()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->destroyImmediate()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, LRb/c;->destroyImmediate()V

    :cond_5
    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->h()Lec/h;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->f()Lec/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lec/h;->C(Lec/i;)Z

    invoke-virtual {v0, v1}, Lec/h;->t(Lec/i;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l()I

    move-result v0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->j:I

    :cond_3
    return-void
.end method

.method public o()V
    .locals 7

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->b:I

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    if-ne v0, v2, :cond_0

    iget-object v0, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveLight()Z

    move-result v0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isCastShadows()Z

    move-result v0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveShadows()Z

    move-result v0

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->g:Z

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveLight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->d:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isCastShadows()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->e:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isReceiveShadows()Z

    move-result v0

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->g:Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->X:I

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->b:I

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->p()V

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->consumeRequestUpdateRender()Z

    move-result v0

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->mainCameraAllowEditor()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_6

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-boolean v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rotateBasedDirection:Z

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v2

    :goto_3
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q()I

    move-result v5

    if-ge v5, v2, :cond_7

    move v5, v2

    :cond_7
    if-eqz v4, :cond_d

    if-eqz v1, :cond_9

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->S2(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component;->n:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    iget-object v4, v4, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->transform:Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;->r4(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v4, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_8
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->A:Z

    if-eqz v0, :cond_a

    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->H:Z

    goto :goto_4

    :cond_9
    iput-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->A:Z

    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v4, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    invoke-virtual {p0, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    if-eqz v0, :cond_b

    iget v4, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->b:I

    add-int/lit16 v4, v4, 0x1000

    const/16 v6, 0x7fff

    if-le v4, v6, :cond_c

    move v4, v6

    :cond_c
    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v2, v3, v4}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setBlendOrderAt(II)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;->setPriority(I)V

    invoke-virtual {p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    if-eqz v1, :cond_f

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v2, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;->q(ILjava/nio/ByteBuffer;)V

    goto :goto_7

    :cond_11
    return-void
.end method

.method public parallelUpdate()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k()V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getAliveParticles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_1
    move v2, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getAliveParticles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    move v3, v15

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    invoke-virtual {v0, v5, v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;)V

    invoke-virtual {v0, v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    mul-int/lit8 v4, v3, 0x3

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    iget-object v7, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v7

    aput v7, v6, v4

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    add-int/lit8 v7, v4, 0x1

    iget-object v8, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    add-int/lit8 v8, v4, 0x2

    iget-object v9, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v9

    aput v9, v6, v8

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->J:[F

    iget-object v9, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v9}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v9

    aput v9, v6, v4

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->J:[F

    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    aput v6, v4, v7

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->J:[F

    iget-object v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    aput v6, v4, v8

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->K:[F

    iget v6, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->d:F

    aput v6, v4, v3

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->L:[F

    iget v5, v5, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->e:F

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    mul-int/lit8 v1, v3, 0x3

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    const/4 v5, 0x0

    aput v5, v4, v1

    add-int/lit8 v6, v1, 0x1

    aput v5, v4, v6

    add-int/lit8 v7, v1, 0x2

    aput v5, v4, v7

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->J:[F

    aput v5, v4, v1

    aput v5, v4, v6

    aput v5, v4, v7

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->K:[F

    aput v5, v1, v3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->L:[F

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->I:[F

    iget-object v5, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->J:[F

    iget-object v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->K:[F

    iget-object v7, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->L:[F

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-boolean v8, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->rotateBasedDirection:Z

    iget-boolean v9, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->A:Z

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v10

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v11

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->m:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v12

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v13

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v14

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->n:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    move v15, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v16

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v17

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v18

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->M:[F

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->H:Z

    move/from16 v21, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->N:[I

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v23

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v24

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v25

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v26

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v27

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v28

    const v19, 0x38d1b717    # 1.0E-4f

    invoke-static/range {v2 .. v28}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleNative;->updatePerParticle(II[F[F[F[FZZFFFFFFFFFF[FZ[IFFFFFF)V

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_2
    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_6

    iget-object v2, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->l:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->M:[F

    iget-object v4, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->q:[F

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-static {v3, v1, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v5

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->L:[F

    aget v3, v3, v15

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->e:F

    iget-boolean v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->H:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->N:[I

    aget v3, v3, v15

    iput v3, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->b:I

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    iget-boolean v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->H:Z

    if-eqz v1, :cond_7

    iput-boolean v6, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->H:Z

    :cond_7
    return-void
.end method

.method public r(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "matrix",
            "inverseMatrix",
            "enabled"
        }
    .end annotation

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u:Z

    if-eqz p1, :cond_0

    iget-object p3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    :goto_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->l(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->G()V

    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->F:Z

    return-void
.end method

.method public final s(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->G:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-boolean v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->F:Z

    if-nez v3, :cond_3

    iget-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_1
    iput-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->F:Z

    return v2

    :cond_3
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraPosition()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera;->getRenderCameraDirection()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p1

    iget-boolean v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v4, v3, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->P(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->g0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->D:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->E:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_4
    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    mul-float/2addr v6, v6

    add-float/2addr v4, v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v6}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v6

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    const v6, 0x39d1b717    # 4.0E-4f

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_6

    const v4, 0x3f7fdf3b    # 0.9995f

    cmpg-float v4, v5, v4

    if-gez v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v2

    :goto_3
    if-nez v0, :cond_8

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    return v1

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->B:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->C:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return v2
.end method

.method public final u(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    const-string v2, "sprite"

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->n:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->bindSpriteTexture(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;Ljava/lang/String;I)Z

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->transparencyBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$y;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "transparencyBased"

    invoke-virtual {v0, v2, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->isFullWhite()Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string v4, "fullWhite"

    invoke-virtual {v0, v4, v1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorMode:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    sget-object v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;->Multiply:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$s;

    if-ne v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    const-string v1, "premultiplyAlpha"

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->w(Ljava/lang/String;F)V

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;

    iget v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->f:F

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->g:F

    iget v7, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->h:F

    iget v8, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->i:F

    const-string v4, "particleColor"

    invoke-virtual/range {v3 .. v8}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;->E(Ljava/lang/String;FFFF)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final v(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, LQb/a;->i()Lcom/google/android/filament/TransformManager;

    move-result-object v0

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->entity:LRb/c;

    invoke-virtual {v1}, LRb/c;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/filament/TransformManager;->h(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->u:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->q:[F

    invoke-virtual {v2, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->x0([F)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    invoke-virtual {p1, v2, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->L(Lcom/itsmagic/engine/Engines/Engine/Vector/f;Lcom/itsmagic/engine/Engines/Engine/Vector/f;)Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->s:Lcom/itsmagic/engine/Engines/Engine/Vector/f;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->t:[F

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->o([F)[F

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->q:[F

    invoke-virtual {v0, v1, p1}, Lcom/google/android/filament/TransformManager;->u(I[F)V

    :goto_0
    return-void
.end method

.method public final w(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->o:Z

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->d:F

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->f:F

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->g:F

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->h:F

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->i:F

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->j:F

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->k:F

    iput v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->l:F

    iput v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->m:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->n:I

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->b:I

    return-void
.end method

.method public final x(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x54

    add-int/lit8 v2, v1, 0x44

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->j:F

    invoke-virtual {v3, v2, v4}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x48

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->k:F

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, 0x4c

    iget v4, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->l:F

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x50

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->m:F

    invoke-virtual {v2, v1, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final y(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "p"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->o:Z

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->d:F

    iget v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->e:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->f:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->g:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->h:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->i:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->j:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->k:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->l:F

    iget-object v0, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->m:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0, p2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->resolveSpriteIndex(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;)I

    move-result v0

    iput v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->n:I

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->subLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public final z(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->hasSpriteTexture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;->k:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getTextureInstance()Lub/p;

    move-result-object v0

    instance-of v2, v0, Lub/g;

    if-eqz v2, :cond_1

    check-cast v0, Lub/g;

    invoke-virtual {v0}, Lub/g;->u0()Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->v()Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Sprite/SpriteData;->C()I

    move-result v2

    if-lez v2, :cond_1

    iget v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->n:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v3, v2}, LNc/b;->F(III)I

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

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v3, v2

    move v0, v4

    :goto_0
    const/4 v5, 0x4

    if-ge v1, v5, :cond_2

    mul-int/lit8 v5, v1, 0x54

    add-int/lit8 v6, v5, 0x34

    iget-object v7, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v6, v2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v5, 0x38

    invoke-virtual {v6, v7, v3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v5, 0x3c

    invoke-virtual {v6, v7, v4}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->a:Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x40

    invoke-virtual {v6, v5, v0}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
