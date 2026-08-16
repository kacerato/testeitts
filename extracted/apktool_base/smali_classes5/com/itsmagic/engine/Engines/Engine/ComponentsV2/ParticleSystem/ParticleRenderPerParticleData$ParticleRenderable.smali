.class Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParticleRenderable"
.end annotation


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:I

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public d:F

.field public e:F

.field entity:LRb/c;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field material:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterial;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field public n:I

.field public o:Z

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final q:[F

.field renderable:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentRenderable;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field vertexBuffer:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentVertexBuffer;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->b:I

    .line 3
    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->d:F

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->e:F

    .line 6
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->f:F

    .line 7
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->g:F

    .line 8
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->h:F

    .line 9
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->i:F

    .line 10
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->j:F

    .line 11
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->k:F

    .line 12
    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->l:F

    .line 13
    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->m:F

    .line 14
    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->n:I

    .line 15
    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->o:Z

    .line 16
    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/16 v0, 0x10

    .line 17
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;->q:[F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$a;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleRenderPerParticleData$ParticleRenderable;-><init>()V

    return-void
.end method
