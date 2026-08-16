.class public Lcom/jme3/effect/Particle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public angle:F

.field public final color:Lcom/jme3/math/ColorRGBA;

.field public imageIndex:I

.field public life:F

.field public final position:Lcom/jme3/math/Vector3f;

.field public rotateSpeed:F

.field public size:F

.field public startlife:F

.field public final velocity:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/Particle;->velocity:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/effect/Particle;->position:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/ColorRGBA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/jme3/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/jme3/effect/Particle;->color:Lcom/jme3/math/ColorRGBA;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/effect/Particle;->imageIndex:I

    return-void
.end method
