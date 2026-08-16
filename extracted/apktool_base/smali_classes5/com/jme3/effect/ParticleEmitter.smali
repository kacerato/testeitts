.class public Lcom/jme3/effect/ParticleEmitter;
.super Lcom/jme3/scene/Geometry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;
    }
.end annotation


# static fields
.field private static final DEFAULT_INFLUENCER:Lcom/jme3/effect/influencers/ParticleInfluencer;

.field private static final DEFAULT_SHAPE:Lcom/jme3/effect/shapes/EmitterShape;


# instance fields
.field private control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

.field private enabled:Z

.field private endColor:Lcom/jme3/math/ColorRGBA;

.field private endSize:F

.field private faceNormal:Lcom/jme3/math/Vector3f;

.field private facingVelocity:Z

.field private firstUnUsed:I

.field private gravity:Lcom/jme3/math/Vector3f;

.field private highLife:F

.field private imagesX:I

.field private imagesY:I

.field private transient lastPos:Lcom/jme3/math/Vector3f;

.field private lastUsed:I

.field private lowLife:F

.field private meshType:Lcom/jme3/effect/ParticleMesh$Type;

.field private particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

.field private particleMesh:Lcom/jme3/effect/ParticleMesh;

.field private particles:[Lcom/jme3/effect/Particle;

.field private particlesPerSec:F

.field private randomAngle:Z

.field private rotateSpeed:F

.field private selectRandomImage:Z

.field private shape:Lcom/jme3/effect/shapes/EmitterShape;

.field private startColor:Lcom/jme3/math/ColorRGBA;

.field private startSize:F

.field private transient temp:Lcom/jme3/math/Vector3f;

.field private timeDifference:F

.field private worldSpace:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/jme3/effect/shapes/EmitterPointShape;

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1}, Lcom/jme3/effect/shapes/EmitterPointShape;-><init>(Lcom/jme3/math/Vector3f;)V

    sput-object v0, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_SHAPE:Lcom/jme3/effect/shapes/EmitterShape;

    new-instance v0, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;

    invoke-direct {v0}, Lcom/jme3/effect/influencers/DefaultParticleInfluencer;-><init>()V

    sput-object v0, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/jme3/effect/influencers/ParticleInfluencer;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 30
    invoke-direct {p0}, Lcom/jme3/scene/Geometry;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    .line 32
    sget-object v1, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_SHAPE:Lcom/jme3/effect/shapes/EmitterShape;

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    .line 33
    sget-object v1, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/jme3/effect/influencers/ParticleInfluencer;

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 34
    iput v1, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    const/4 v1, 0x0

    .line 35
    iput v1, p0, Lcom/jme3/effect/ParticleEmitter;->timeDifference:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 36
    iput v2, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    const/high16 v2, 0x40e00000    # 7.0f

    .line 37
    iput v2, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    .line 38
    new-instance v2, Lcom/jme3/math/Vector3f;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v1, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    .line 39
    new-instance v2, Lcom/jme3/math/Vector3f;

    sget-object v4, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-direct {v2, v4}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    .line 40
    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    .line 41
    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    .line 42
    new-instance v2, Lcom/jme3/math/ColorRGBA;

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v2, v4, v4, v4, v5}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    .line 43
    new-instance v2, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v2, v3, v3, v3, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    const v1, 0x3e4ccccd    # 0.2f

    .line 44
    iput v1, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 45
    iput v1, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    .line 46
    iput-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    .line 47
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    .line 48
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/effect/ParticleMesh$Type;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    .line 3
    sget-object v0, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_SHAPE:Lcom/jme3/effect/shapes/EmitterShape;

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    .line 4
    sget-object v0, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/jme3/effect/influencers/ParticleInfluencer;

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 5
    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->timeDifference:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 7
    iput v1, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    const/high16 v1, 0x40e00000    # 7.0f

    .line 8
    iput v1, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    .line 9
    new-instance v1, Lcom/jme3/math/Vector3f;

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v0, v2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    .line 10
    new-instance v1, Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v3}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    .line 11
    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    .line 12
    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    .line 13
    new-instance v1, Lcom/jme3/math/ColorRGBA;

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v1, v3, v3, v3, v4}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    .line 14
    new-instance v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    const v0, 0x3e4ccccd    # 0.2f

    .line 15
    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    .line 17
    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    .line 18
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    .line 19
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setIgnoreTransform(Z)V

    .line 21
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    .line 22
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 23
    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    .line 24
    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    invoke-interface {p1}, Lcom/jme3/effect/shapes/EmitterShape;->deepClone()Lcom/jme3/effect/shapes/EmitterShape;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    .line 25
    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {p1}, Lcom/jme3/effect/influencers/ParticleInfluencer;->clone()Lcom/jme3/effect/influencers/ParticleInfluencer;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    .line 26
    new-instance p1, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    invoke-direct {p1, p0}, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;-><init>(Lcom/jme3/effect/ParticleEmitter;)V

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    .line 27
    iget-object p2, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p2, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-direct {p0}, Lcom/jme3/effect/ParticleEmitter;->initParticleMesh()V

    .line 29
    invoke-virtual {p0, p3}, Lcom/jme3/effect/ParticleEmitter;->setNumParticles(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/effect/ParticleEmitter;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/effect/ParticleEmitter;->renderFromControl(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    return-void
.end method

.method private computeBoundingVolume(Lcom/jme3/effect/Particle;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p1, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->maxLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p3, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    iget-object v0, p1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    iget p1, p1, Lcom/jme3/effect/Particle;->size:F

    invoke-virtual {p3, p1, p1, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->minLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private emitParticle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/effect/Particle;
    .locals 6

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    aget-object v1, v2, v1

    iget-boolean v2, p0, Lcom/jme3/effect/ParticleEmitter;->selectRandomImage:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/jme3/math/FastMath;->nextRandomInt(II)I

    move-result v2

    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    mul-int/2addr v2, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/jme3/math/FastMath;->nextRandomInt(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/jme3/effect/Particle;->imageIndex:I

    :cond_1
    iget v2, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    iget v5, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/effect/Particle;->startlife:F

    iput v2, v1, Lcom/jme3/effect/Particle;->life:F

    iget-object v2, v1, Lcom/jme3/effect/Particle;->color:Lcom/jme3/math/ColorRGBA;

    iget-object v3, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2, v3}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    iget v2, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    iput v2, v1, Lcom/jme3/effect/Particle;->size:F

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    iget-object v3, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    invoke-interface {v2, v1, v3}, Lcom/jme3/effect/influencers/ParticleInfluencer;->influenceParticle(Lcom/jme3/effect/Particle;Lcom/jme3/effect/shapes/EmitterShape;)V

    iget-boolean v2, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    iget-object v3, v1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v3}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/scene/Spatial;->worldTransform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v2

    iget-object v3, v1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3, v3}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_2
    iget-boolean v2, p0, Lcom/jme3/effect/ParticleEmitter;->randomAngle:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v2

    const v3, 0x40c90fdb

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/effect/Particle;->angle:F

    :cond_3
    iget v2, p0, Lcom/jme3/effect/ParticleEmitter;->rotateSpeed:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/jme3/math/FastMath;->nextRandomFloat()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v4

    const v4, 0x3e4ccccd    # 0.2f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/jme3/effect/Particle;->rotateSpeed:F

    :cond_4
    invoke-direct {p0, v1, p1, p2}, Lcom/jme3/effect/ParticleEmitter;->computeBoundingVolume(Lcom/jme3/effect/Particle;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    return-object v1
.end method

.method private freeParticle(I)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput v1, v0, Lcom/jme3/effect/Particle;->life:F

    iput v1, v0, Lcom/jme3/effect/Particle;->size:F

    iget-object v2, v0, Lcom/jme3/effect/Particle;->color:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    const/4 v2, 0x0

    iput v2, v0, Lcom/jme3/effect/Particle;->imageIndex:I

    iput v1, v0, Lcom/jme3/effect/Particle;->angle:F

    iput v1, v0, Lcom/jme3/effect/Particle;->rotateSpeed:F

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    if-ne p1, v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jme3/effect/Particle;->life:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    if-ge p1, v0, :cond_1

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    :cond_1
    return-void
.end method

.method private initParticleMesh()V
    .locals 3

    sget-object v0, Lcom/jme3/effect/ParticleEmitter$1;->$SwitchMap$com$jme3$effect$ParticleMesh$Type:[I

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/effect/ParticleTriMesh;

    invoke-direct {v0}, Lcom/jme3/effect/ParticleTriMesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized particle type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/jme3/effect/ParticlePointMesh;

    invoke-direct {v0}, Lcom/jme3/effect/ParticlePointMesh;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    :goto_0
    return-void
.end method

.method private renderFromControl(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    sget-object v0, Lcom/jme3/effect/ParticleMesh$Type;->Point:Lcom/jme3/effect/ParticleMesh$Type;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p2

    iget p2, p2, Lcom/jme3/math/Matrix4f;->m00:F

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    const-string v1, "Quadratic"

    invoke-virtual {v0, v1, p2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    :cond_0
    iget-boolean p2, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    if-nez p2, :cond_1

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object p2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iget-object v1, p2, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Matrix3f;->invertLocal()Lcom/jme3/math/Matrix3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    invoke-virtual {v1, v2, p1, v0}, Lcom/jme3/effect/ParticleMesh;->updateParticleData([Lcom/jme3/effect/Particle;Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {p2}, Lcom/jme3/util/TempVars;->release()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    sget-object v1, Lcom/jme3/math/Matrix3f;->IDENTITY:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p2, v0, p1, v1}, Lcom/jme3/effect/ParticleMesh;->updateParticleData([Lcom/jme3/effect/Particle;Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix3f;)V

    :goto_0
    return-void
.end method

.method private swap(II)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    aget-object v1, v0, p1

    aget-object v2, v0, p2

    aput-object v2, v0, p1

    aput-object v1, v0, p2

    return-void
.end method

.method private updateParticleState(F)V
    .locals 12

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v5, v4

    const/4 v6, 0x0

    if-ge v3, v5, :cond_4

    aget-object v4, v4, v3

    iget v5, v4, Lcom/jme3/effect/Particle;->life:F

    cmpl-float v7, v5, v6

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    sub-float/2addr v5, p1

    iput v5, v4, Lcom/jme3/effect/Particle;->life:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    invoke-direct {p0, v3}, Lcom/jme3/effect/ParticleEmitter;->freeParticle(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4, p1, v1, v2}, Lcom/jme3/effect/ParticleEmitter;->updateParticle(Lcom/jme3/effect/Particle;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    if-ge v4, v3, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/jme3/effect/ParticleEmitter;->swap(II)V

    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    iput v4, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    :cond_2
    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/jme3/effect/ParticleEmitter;->isInWorldSpace()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v4}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    iget v7, p0, Lcom/jme3/effect/ParticleEmitter;->timeDifference:F

    add-float/2addr v7, p1

    :cond_6
    :goto_3
    cmpl-float v8, v7, v4

    if-lez v8, :cond_9

    sub-float/2addr v7, v4

    invoke-direct {p0, v1, v2}, Lcom/jme3/effect/ParticleEmitter;->emitParticle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/effect/Particle;

    move-result-object v8

    if-eqz v8, :cond_6

    iget v9, v8, Lcom/jme3/effect/Particle;->life:F

    sub-float/2addr v9, v7

    iput v9, v8, Lcom/jme3/effect/Particle;->life:F

    iget-object v9, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Lcom/jme3/effect/ParticleEmitter;->isInWorldSpace()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget-object v10, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v3, v10}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    iget-object v10, v8, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    div-float v11, v7, p1

    sub-float v11, v5, v11

    invoke-virtual {v10, v9, v11}, Lcom/jme3/math/Vector3f;->interpolateLocal(Lcom/jme3/math/Vector3f;F)Lcom/jme3/math/Vector3f;

    :cond_7
    iget v9, v8, Lcom/jme3/effect/Particle;->life:F

    cmpg-float v9, v9, v6

    if-gtz v9, :cond_8

    iget v8, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    invoke-direct {p0, v8}, Lcom/jme3/effect/ParticleEmitter;->freeParticle(I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v8, v7, v1, v2}, Lcom/jme3/effect/ParticleEmitter;->updateParticle(Lcom/jme3/effect/Particle;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_3

    :cond_9
    iput v7, p0, Lcom/jme3/effect/ParticleEmitter;->timeDifference:F

    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    if-nez p1, :cond_a

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    :cond_a
    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v1}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {v2}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p1, v1, v2}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    :cond_b
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/effect/ParticleEmitter;->clone()Lcom/jme3/effect/ParticleEmitter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/effect/ParticleEmitter;
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/jme3/effect/ParticleEmitter;->clone(Z)Lcom/jme3/effect/ParticleEmitter;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/effect/ParticleEmitter;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object p1

    check-cast p1, Lcom/jme3/effect/ParticleEmitter;

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Geometry;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/effect/ParticleEmitter;->clone()Lcom/jme3/effect/ParticleEmitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Geometry;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->clone(Z)Lcom/jme3/effect/ParticleEmitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/jme3/effect/ParticleEmitter;->clone()Lcom/jme3/effect/ParticleEmitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->clone(Z)Lcom/jme3/effect/ParticleEmitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/jme3/effect/ParticleEmitter;->clone()Lcom/jme3/effect/ParticleEmitter;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Geometry;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/effect/shapes/EmitterShape;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/ColorRGBA;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/ColorRGBA;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/effect/influencers/ParticleInfluencer;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-virtual {p0, p2}, Lcom/jme3/effect/ParticleEmitter;->setMeshType(Lcom/jme3/effect/ParticleMesh$Type;)V

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastPos:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public emitAllParticles()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lcom/jme3/effect/ParticleEmitter;->emitParticles(I)V

    return-void
.end method

.method public emitParticles(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTransform()Lcom/jme3/math/Transform;

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Mesh;->getBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    check-cast v1, Lcom/jme3/bounding/BoundingBox;

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-static {v2}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/jme3/math/Vector3f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    invoke-static {v3}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/jme3/math/Vector3f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_3

    invoke-direct {p0, v2, v3}, Lcom/jme3/effect/ParticleEmitter;->emitParticle(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/effect/Particle;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/jme3/bounding/BoundingBox;->setMinMax(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->setBoundRefresh()V

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public getEndColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getEndSize()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    return v0
.end method

.method public getFaceNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGravity()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getHighLife()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    return v0
.end method

.method public getImagesX()I
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    return v0
.end method

.method public getImagesY()I
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    return v0
.end method

.method public getInitialVelocity()Lcom/jme3/math/Vector3f;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {v0}, Lcom/jme3/effect/influencers/ParticleInfluencer;->getInitialVelocity()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLowLife()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    return v0
.end method

.method public getMaxNumParticles()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v0, v0

    return v0
.end method

.method public getMeshType()Lcom/jme3/effect/ParticleMesh$Type;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    return-object v0
.end method

.method public getNumVisibleParticles()I
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getParticleInfluencer()Lcom/jme3/effect/influencers/ParticleInfluencer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    return-object v0
.end method

.method public getParticles()[Lcom/jme3/effect/Particle;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    return-object v0
.end method

.method public getParticlesPerSec()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    return v0
.end method

.method public getRotateSpeed()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->rotateSpeed:F

    return v0
.end method

.method public getShape()Lcom/jme3/effect/shapes/EmitterShape;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    return-object v0
.end method

.method public getStartColor()Lcom/jme3/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    return-object v0
.end method

.method public getStartSize()F
    .locals 1

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    return v0
.end method

.method public getVelocityVariation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {v0}, Lcom/jme3/effect/influencers/ParticleInfluencer;->getVelocityVariation()F

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    return v0
.end method

.method public isFacingVelocity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->facingVelocity:Z

    return v0
.end method

.method public isInWorldSpace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    return v0
.end method

.method public isRandomAngle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->randomAngle:Z

    return v0
.end method

.method public isSelectRandomImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->selectRandomImage:Z

    return v0
.end method

.method public killAllParticles()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jme3/effect/Particle;->life:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/jme3/effect/ParticleEmitter;->freeParticle(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public killParticle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->freeParticle(I)V

    return-void
.end method

.method public oldClone(Z)Lcom/jme3/effect/ParticleEmitter;
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->clone(Z)Lcom/jme3/scene/Geometry;

    move-result-object p1

    check-cast p1, Lcom/jme3/effect/ParticleEmitter;

    .line 3
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    invoke-interface {v0}, Lcom/jme3/effect/shapes/EmitterShape;->deepClone()Lcom/jme3/effect/shapes/EmitterShape;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    .line 4
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/jme3/effect/ParticleEmitter;->setNumParticles(I)V

    .line 5
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    .line 6
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    .line 7
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0}, Lcom/jme3/math/ColorRGBA;->clone()Lcom/jme3/math/ColorRGBA;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    .line 8
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {v0}, Lcom/jme3/effect/influencers/ParticleInfluencer;->clone()Lcom/jme3/effect/influencers/ParticleInfluencer;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    .line 9
    iget-object v0, p1, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    new-instance v0, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    invoke-direct {v0, p1}, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;-><init>(Lcom/jme3/effect/ParticleEmitter;)V

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    .line 11
    iget-object v1, p1, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v0, Lcom/jme3/effect/ParticleEmitter$1;->$SwitchMap$com$jme3$effect$ParticleMesh$Type:[I

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 13
    new-instance v0, Lcom/jme3/effect/ParticleTriMesh;

    invoke-direct {v0}, Lcom/jme3/effect/ParticleTriMesh;-><init>()V

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    .line 14
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized particle type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance v0, Lcom/jme3/effect/ParticlePointMesh;

    invoke-direct {v0}, Lcom/jme3/effect/ParticlePointMesh;-><init>()V

    iput-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    .line 17
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    .line 18
    :goto_0
    iget-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget-object v1, p1, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/jme3/effect/ParticleMesh;->initParticleData(Lcom/jme3/effect/ParticleEmitter;I)V

    .line 19
    iget-object v0, p1, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget v1, p1, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    iget v2, p1, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    invoke-virtual {v0, v1, v2}, Lcom/jme3/effect/ParticleMesh;->setImagesXY(II)V

    return-object p1
.end method

.method public bridge synthetic oldClone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->oldClone(Z)Lcom/jme3/effect/ParticleEmitter;

    move-result-object p1

    return-object p1
.end method

.method public preload(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->updateParticleState(F)V

    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p2

    sget-object v1, Lcom/jme3/math/Matrix3f;->IDENTITY:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0, p2, v1}, Lcom/jme3/effect/ParticleMesh;->updateParticleData([Lcom/jme3/effect/Particle;Lcom/jme3/renderer/Camera;Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    sget-object v1, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_SHAPE:Lcom/jme3/effect/shapes/EmitterShape;

    const-string v2, "shape"

    invoke-interface {v0, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/jme3/effect/shapes/EmitterShape;

    iput-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    if-ne v2, v1, :cond_0

    invoke-interface {v2}, Lcom/jme3/effect/shapes/EmitterShape;->deepClone()Lcom/jme3/effect/shapes/EmitterShape;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    :cond_0
    const-class v1, Lcom/jme3/effect/ParticleMesh$Type;

    sget-object v2, Lcom/jme3/effect/ParticleMesh$Type;->Triangle:Lcom/jme3/effect/ParticleMesh$Type;

    const-string v3, "meshType"

    invoke-interface {v0, v3, v1, v2}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jme3/effect/ParticleMesh$Type;

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    const-string v1, "numParticles"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    const-string v3, "particlesPerSec"

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    const-string v3, "lowLife"

    invoke-interface {v0, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    const-string v3, "highLife"

    invoke-interface {v0, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    const-string v3, "gravity"

    const/4 v6, 0x0

    invoke-interface {v0, v3, v6}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v7

    check-cast v7, Lcom/jme3/math/Vector3f;

    iput-object v7, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    const-string v7, "imagesX"

    invoke-interface {v0, v7, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    const-string v7, "imagesY"

    invoke-interface {v0, v7, v4}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    const-string v4, "startColor"

    invoke-interface {v0, v4, v6}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/ColorRGBA;

    iput-object v4, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    const-string v4, "endColor"

    invoke-interface {v0, v4, v6}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/ColorRGBA;

    iput-object v4, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    const-string v4, "startSize"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    const-string v4, "endSize"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    const-string v4, "worldSpace"

    invoke-interface {v0, v4, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Geometry;->setIgnoreTransform(Z)V

    const-string v4, "facingVelocity"

    invoke-interface {v0, v4, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jme3/effect/ParticleEmitter;->facingVelocity:Z

    new-instance v4, Lcom/jme3/math/Vector3f;

    sget-object v6, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v6}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    const-string v6, "faceNormal"

    invoke-interface {v0, v6, v4}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector3f;

    iput-object v4, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    const-string v4, "selectRandomImage"

    invoke-interface {v0, v4, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jme3/effect/ParticleEmitter;->selectRandomImage:Z

    const-string v4, "randomAngle"

    invoke-interface {v0, v4, v2}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/jme3/effect/ParticleEmitter;->randomAngle:Z

    const-string v4, "rotateSpeed"

    invoke-interface {v0, v4, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, p0, Lcom/jme3/effect/ParticleEmitter;->rotateSpeed:F

    invoke-direct {p0}, Lcom/jme3/effect/ParticleEmitter;->initParticleMesh()V

    invoke-virtual {p0, v1}, Lcom/jme3/effect/ParticleEmitter;->setNumParticles(I)V

    sget-object v1, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/jme3/effect/influencers/ParticleInfluencer;

    const-string v4, "influencer"

    invoke-interface {v0, v4, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v4

    check-cast v4, Lcom/jme3/effect/influencers/ParticleInfluencer;

    iput-object v4, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    if-ne v4, v1, :cond_1

    invoke-interface {v4}, Lcom/jme3/effect/influencers/ParticleInfluencer;->clone()Lcom/jme3/effect/influencers/ParticleInfluencer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    :cond_1
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getFormatVersion()I

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, v2}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/jme3/effect/ParticleEmitter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, v2}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/scene/Spatial;->controls:Lcom/jme3/util/SafeArrayList;

    new-instance v1, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    invoke-direct {v1, p0}, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;-><init>(Lcom/jme3/effect/ParticleEmitter;)V

    invoke-virtual {p1, v1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    if-nez p1, :cond_5

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    invoke-interface {v0, v3, v5}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p1, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_2

    :cond_4
    const-class p1, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object p1

    check-cast p1, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->control:Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;

    iput-object p0, p1, Lcom/jme3/effect/ParticleEmitter$ParticleEmitterControl;->parentEmitter:Lcom/jme3/effect/ParticleEmitter;

    :cond_5
    :goto_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    return-void
.end method

.method public setEndColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public setEndSize(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    return-void
.end method

.method public setFaceNormal(Lcom/jme3/math/Vector3f;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_1
    return-void
.end method

.method public setFacingVelocity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->facingVelocity:Z

    return-void
.end method

.method public setGravity(FFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    iput p1, v0, Lcom/jme3/math/Vector3f;->x:F

    .line 3
    iput p2, v0, Lcom/jme3/math/Vector3f;->y:F

    .line 4
    iput p3, v0, Lcom/jme3/math/Vector3f;->z:F

    return-void
.end method

.method public setGravity(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setHighLife(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    return-void
.end method

.method public setImagesX(I)V
    .locals 2

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget v1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    invoke-virtual {v0, p1, v1}, Lcom/jme3/effect/ParticleMesh;->setImagesXY(II)V

    return-void
.end method

.method public setImagesY(I)V
    .locals 2

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget v1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    invoke-virtual {v0, v1, p1}, Lcom/jme3/effect/ParticleMesh;->setImagesXY(II)V

    return-void
.end method

.method public setInWorldSpace(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setIgnoreTransform(Z)V

    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    return-void
.end method

.method public setInitialVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {v0, p1}, Lcom/jme3/effect/influencers/ParticleInfluencer;->setInitialVelocity(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setLowLife(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    return-void
.end method

.method public setMeshType(Lcom/jme3/effect/ParticleMesh$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-direct {p0}, Lcom/jme3/effect/ParticleEmitter;->initParticleMesh()V

    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length p1, p1

    invoke-virtual {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->setNumParticles(I)V

    return-void
.end method

.method public final setNumParticles(I)V
    .locals 4

    new-array v0, p1, [Lcom/jme3/effect/Particle;

    iput-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    new-instance v3, Lcom/jme3/effect/Particle;

    invoke-direct {v3}, Lcom/jme3/effect/Particle;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v1, v1

    invoke-virtual {p1, p0, v1}, Lcom/jme3/effect/ParticleMesh;->initParticleData(Lcom/jme3/effect/ParticleEmitter;I)V

    iget-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particleMesh:Lcom/jme3/effect/ParticleMesh;

    iget v1, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    iget v2, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    invoke-virtual {p1, v1, v2}, Lcom/jme3/effect/ParticleMesh;->setImagesXY(II)V

    iput v0, p0, Lcom/jme3/effect/ParticleEmitter;->firstUnUsed:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->lastUsed:I

    return-void
.end method

.method public setParticleInfluencer(Lcom/jme3/effect/influencers/ParticleInfluencer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    return-void
.end method

.method public setParticlesPerSec(F)V
    .locals 2

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->timeDifference:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->timeDifference:F

    return-void
.end method

.method public setRandomAngle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->randomAngle:Z

    return-void
.end method

.method public setRotateSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->rotateSpeed:F

    return-void
.end method

.method public setSelectRandomImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/effect/ParticleEmitter;->selectRandomImage:Z

    return-void
.end method

.method public setShape(Lcom/jme3/effect/shapes/EmitterShape;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    return-void
.end method

.method public setStartColor(Lcom/jme3/math/ColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/jme3/math/ColorRGBA;->set(Lcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    return-void
.end method

.method public setStartSize(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    return-void
.end method

.method public setVelocityVariation(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {v0, p1}, Lcom/jme3/effect/influencers/ParticleInfluencer;->setVelocityVariation(F)V

    return-void
.end method

.method public updateFromControl(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jme3/effect/ParticleEmitter;->updateParticleState(F)V

    :cond_0
    return-void
.end method

.method public updateParticle(Lcom/jme3/effect/Particle;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 4

    iget-object v0, p1, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p1, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/effect/ParticleEmitter;->temp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/effect/Particle;->startlife:F

    iget v1, p1, Lcom/jme3/effect/Particle;->life:F

    sub-float v1, v0, v1

    div-float/2addr v1, v0

    iget-object v0, p1, Lcom/jme3/effect/Particle;->color:Lcom/jme3/math/ColorRGBA;

    iget-object v2, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    iget-object v3, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/math/ColorRGBA;->interpolateLocal(Lcom/jme3/math/ColorRGBA;Lcom/jme3/math/ColorRGBA;F)Lcom/jme3/math/ColorRGBA;

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    iget v2, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    invoke-static {v1, v0, v2}, Lcom/jme3/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p1, Lcom/jme3/effect/Particle;->size:F

    iget v0, p1, Lcom/jme3/effect/Particle;->angle:F

    iget v2, p1, Lcom/jme3/effect/Particle;->rotateSpeed:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iput v0, p1, Lcom/jme3/effect/Particle;->angle:F

    invoke-direct {p0, p1, p3, p4}, Lcom/jme3/effect/ParticleEmitter;->computeBoundingVolume(Lcom/jme3/effect/Particle;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    iget-boolean p2, p0, Lcom/jme3/effect/ParticleEmitter;->selectRandomImage:Z

    if-nez p2, :cond_0

    iget p2, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    iget p2, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    int-to-float p2, p2

    mul-float/2addr v1, p2

    float-to-int p2, v1

    iput p2, p1, Lcom/jme3/effect/Particle;->imageIndex:I

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->shape:Lcom/jme3/effect/shapes/EmitterShape;

    const-string v1, "shape"

    sget-object v2, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_SHAPE:Lcom/jme3/effect/shapes/EmitterShape;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->meshType:Lcom/jme3/effect/ParticleMesh$Type;

    const-string v1, "meshType"

    sget-object v2, Lcom/jme3/effect/ParticleMesh$Type;->Triangle:Lcom/jme3/effect/ParticleMesh$Type;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->enabled:Z

    const-string v1, "enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particles:[Lcom/jme3/effect/Particle;

    array-length v0, v0

    const-string v1, "numParticles"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->particlesPerSec:F

    const-string v1, "particlesPerSec"

    const/4 v4, 0x0

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->lowLife:F

    const-string v1, "lowLife"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->highLife:F

    const-string v1, "highLife"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->gravity:Lcom/jme3/math/Vector3f;

    const-string v1, "gravity"

    const/4 v5, 0x0

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->imagesX:I

    const-string v1, "imagesX"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->imagesY:I

    const-string v1, "imagesY"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->startColor:Lcom/jme3/math/ColorRGBA;

    const-string v1, "startColor"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->endColor:Lcom/jme3/math/ColorRGBA;

    const-string v1, "endColor"

    invoke-interface {p1, v0, v1, v5}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->startSize:F

    const-string v1, "startSize"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->endSize:F

    const-string v1, "endSize"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->worldSpace:Z

    const-string v1, "worldSpace"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->facingVelocity:Z

    const-string v1, "facingVelocity"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->faceNormal:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->NAN:Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2}, Lcom/jme3/math/Vector3f;-><init>(Lcom/jme3/math/Vector3f;)V

    const-string v2, "faceNormal"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->selectRandomImage:Z

    const-string v1, "selectRandomImage"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/effect/ParticleEmitter;->randomAngle:Z

    const-string v1, "randomAngle"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/effect/ParticleEmitter;->rotateSpeed:F

    const-string v1, "rotateSpeed"

    invoke-interface {p1, v0, v1, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/effect/ParticleEmitter;->particleInfluencer:Lcom/jme3/effect/influencers/ParticleInfluencer;

    const-string v1, "influencer"

    sget-object v2, Lcom/jme3/effect/ParticleEmitter;->DEFAULT_INFLUENCER:Lcom/jme3/effect/influencers/ParticleInfluencer;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
