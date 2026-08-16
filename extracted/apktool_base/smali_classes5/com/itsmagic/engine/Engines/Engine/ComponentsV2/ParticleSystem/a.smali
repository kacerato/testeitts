.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

.field public final g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public i:F

.field public j:F

.field public k:F

.field public l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

.field public m:F

.field public n:F

.field public final o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public final s:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

.field public final t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

.field public u:LJAVARuntime/Particle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->s:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->s:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->p:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->copyCachedSpawnTransform(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->f:[I

    iget-object v3, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->o:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->b:[I

    iget-object v5, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    iput v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    :goto_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->g:[I

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissionShape:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$t;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const/high16 v6, 0x43b40000    # 360.0f

    if-eq v2, v4, :cond_5

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v2, v3, :cond_4

    if-eq v2, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->f()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->b()F

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->c()F

    move-result v7

    invoke-static {v3, v5, v7, v2}, LNc/d;->e(FFFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->e()F

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4, v0}, LNc/d;->h(FF)F

    move-result v3

    invoke-static {v4, v0}, LNc/d;->h(FF)F

    move-result v5

    invoke-static {v4, v0}, LNc/d;->h(FF)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->d()F

    move-result v4

    invoke-virtual {v2, v3, v5, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getRectangleShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleRectangleShapeOptions;->d()F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v1, v2}, LNc/d;->h(FF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->t:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getSphereShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;->e()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getSphereShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;->b()F

    move-result v5

    mul-float/2addr v3, v5

    sub-float v3, v5, v3

    invoke-static {v5, v3, v2}, LNc/d;->r(FFLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getSphereShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;->d()F

    move-result v5

    invoke-virtual {v3, v2, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-static {v4, v0}, LNc/d;->h(FF)F

    move-result v3

    invoke-static {v4, v0}, LNc/d;->h(FF)F

    move-result v5

    invoke-static {v4, v0}, LNc/d;->h(FF)F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getSphereShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;->c()F

    move-result v4

    invoke-virtual {v2, v3, v5, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getSphereShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleSphereShapeOptions;->c()F

    move-result v2

    mul-float/2addr v2, v6

    invoke-static {v1, v2}, LNc/d;->h(FF)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v2

    iget v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->maxAngle:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->minAngle:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->getConeShapeOptions()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;

    move-result-object v4

    iget v4, v4, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/Shapes/ParticleConeShapeOptions;->radius:F

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float v2, v5, v2

    sub-float/2addr v5, v3

    invoke-static {v2, v5}, LNc/d;->h(FF)F

    move-result v2

    invoke-static {v1, v6}, LNc/d;->h(FF)F

    move-result v3

    invoke-static {v3}, LNc/b;->d0(F)F

    move-result v5

    invoke-static {v3}, LNc/b;->m1(F)F

    move-result v3

    invoke-static {v2}, LNc/b;->m1(F)F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v6, v5, v0

    mul-float/2addr v0, v3

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v7, v6, v0, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;->Global:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->s:Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->q0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->r:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v5, v4

    invoke-virtual {v0, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->q:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    mul-float/2addr v5, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v5, v3, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_2
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_3
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->normalizeLocal()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V

    return-void
.end method

.method public b()Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    return-object v0
.end method

.method public c()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    return v0
.end method

.method public d()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public e()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-object v0
.end method

.method public f()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    return v0
.end method

.method public g()F
    .locals 1
    .annotation runtime Ls8/a;
    .end annotation

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    return v0
.end method

.method public h(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
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

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    return-void
.end method

.method public i(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liteTime"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    return-void
.end method

.method public j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "movement"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void
.end method

.method public l(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->j:F

    return-void
.end method

.method public m(LJAVARuntime/Particle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->u:LJAVARuntime/Particle;

    return-void
.end method

.method public n(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .annotation runtime Ls8/a;
    .end annotation

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    return-void
.end method

.method public o(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "emitter"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->b:[I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iget v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    mul-float/2addr v1, v6

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    :goto_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->c:[I

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    cmpl-float v6, v1, v5

    if-lez v6, :cond_6

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    div-float v1, v0, v1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iget-object v7, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v6, v1, v7}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v6}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_6
    :goto_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->d:[I

    iget-object v6, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    cmpl-float v2, v1, v5

    if-lez v2, :cond_a

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    div-float v1, v0, v1

    invoke-static {v1}, LNc/b;->I(F)F

    move-result v1

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v2, v1, v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_2

    :cond_8
    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v5, v2}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_a
    :goto_2
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->e:[I

    iget-object v2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_c

    if-eq v1, v3, :cond_b

    goto :goto_3

    :cond_b
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    :goto_3
    return-void
.end method

.method public p()LJAVARuntime/Particle;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->u:LJAVARuntime/Particle;

    if-nez v0, :cond_0

    new-instance v0, LJAVARuntime/Particle;

    invoke-direct {v0, p0}, LJAVARuntime/Particle;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->u:LJAVARuntime/Particle;

    :cond_0
    return-object v0
.end method

.method public q(FLcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltaTime",
            "emitter"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->l:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->k:F

    iget v1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxLifeSeconds:F

    div-float/2addr v0, v1

    invoke-static {v0}, LNc/b;->I(F)F

    move-result v0

    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->a:[I

    iget-object v2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$w;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->speedOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->h:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSpeed:F

    mul-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->mulLocal(F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->g:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    mul-float/2addr v4, p1

    invoke-virtual {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object v3, Lcom/itsmagic/engine/Engines/Engine/World/a;->c:Lcom/itsmagic/engine/Engines/Engine/World/World;

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/World/World;->r()Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itsmagic/engine/Engines/Engine/World/Settings/PhysicsSettings;->b()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object v3

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->gravityMultiplier:F

    mul-float/2addr v4, p1

    invoke-virtual {v1, v3, v4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    invoke-static {v3, v4}, LNc/b;->J(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    invoke-static {v3, v4}, LNc/b;->J(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v3

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    invoke-static {v3, v4}, LNc/b;->J(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    iget-object v1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->lengthF()F

    move-result v1

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->d:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {v3, v4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->addLocal(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->b:[I

    iget-object v3, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$v;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget p1, p1, v3

    const/4 v3, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    mul-float/2addr p1, v1

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    goto :goto_1

    :cond_3
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->sizeOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->startSize:F

    mul-float/2addr p1, v4

    iput p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->i:F

    :goto_1
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->c:[I

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$r;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    const/4 v4, 0x3

    if-eq p1, v2, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget v5, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    div-float v5, v1, v5

    iget-object v6, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v5, v6}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_2

    :cond_5
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->colorGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v0, v5}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v5, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->color:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v5}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_2
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->d:[I

    iget-object v5, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$u;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-eq p1, v2, :cond_9

    if-eq p1, v3, :cond_8

    if-eq p1, v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->maxSpeed:F

    div-float v4, v1, v4

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v4, v5}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_8
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissiveGradient:Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    iget-object v4, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v0, v4}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->l(FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->f:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->emissive:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :goto_3
    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->e:[I

    iget-object v4, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaBased:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$q;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v2, :cond_b

    if-eq p1, v3, :cond_a

    goto :goto_4

    :cond_a
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v0

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    goto :goto_4

    :cond_b
    iget-object p1, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->alphaOverLifeTimeCurve:Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Curve/Curve;->p(F)F

    move-result p1

    invoke-static {p1}, LNc/b;->I(F)F

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->e:Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->r()F

    move-result v1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->N(F)V

    :goto_4
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->a:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    sget-object p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a$a;->f:[I

    iget-object p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter;->worldSpace:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/ParticleEmitter$z;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_d

    if-eq p1, v3, :cond_c

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    goto :goto_5

    :cond_d
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->b:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    iget-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/ParticleSystem/a;->c:Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :goto_5
    return-void
.end method
