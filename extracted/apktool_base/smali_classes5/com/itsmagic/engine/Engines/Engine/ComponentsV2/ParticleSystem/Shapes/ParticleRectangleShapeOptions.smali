.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LJAVARuntime/ParticleRectangleShapeOptions;

.field public height:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public length:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public randomizeRotation:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public spherizeRotation:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field

.field public width:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Leb/f;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->width:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->length:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->spherizeRotation:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->randomizeRotation:F

    return-void
.end method


# virtual methods
.method public a()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;-><init>()V

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->width:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->width:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->height:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->height:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->length:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->length:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->spherizeRotation:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->spherizeRotation:F

    iget v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->randomizeRotation:F

    iput v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->randomizeRotation:F

    return-object v0
.end method

.method public b()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->height:F

    return v0
.end method

.method public c()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->length:F

    return v0
.end method

.method public d()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->randomizeRotation:F

    return v0
.end method

.method public e()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->spherizeRotation:F

    return v0
.end method

.method public f()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->width:F

    return v0
.end method

.method public g(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->height:F

    return-void
.end method

.method public h(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "length"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->length:F

    return-void
.end method

.method public i(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "randomizeRotation"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->randomizeRotation:F

    return-void
.end method

.method public j(LJAVARuntime/ParticleRectangleShapeOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->a:LJAVARuntime/ParticleRectangleShapeOptions;

    return-void
.end method

.method public k(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spherizeRotation"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->spherizeRotation:F

    return-void
.end method

.method public l(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->width:F

    return-void
.end method

.method public m()LJAVARuntime/ParticleRectangleShapeOptions;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->a:LJAVARuntime/ParticleRectangleShapeOptions;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/ParticleRectangleShapeOptions;

    invoke-direct {v0, p0}, LJAVARuntime/ParticleRectangleShapeOptions;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->a:LJAVARuntime/ParticleRectangleShapeOptions;

    :cond_0
    return-object v0
.end method
