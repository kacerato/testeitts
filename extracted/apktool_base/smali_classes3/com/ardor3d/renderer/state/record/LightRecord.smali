.class public Lcom/ardor3d/renderer/state/record/LightRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public ambient:Lcom/ardor3d/math/ColorRGBA;

.field private attenuate:Z

.field private constant:F

.field public diffuse:Lcom/ardor3d/math/ColorRGBA;

.field private enabled:Z

.field private linear:F

.field public modelViewMatrix:Lcom/ardor3d/math/Matrix4;

.field public position:Lcom/ardor3d/math/Vector4;

.field private quadratic:F

.field public specular:Lcom/ardor3d/math/ColorRGBA;

.field private spotCutoff:F

.field private spotExponent:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->ambient:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->specular:Lcom/ardor3d/math/ColorRGBA;

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->constant:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->linear:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->quadratic:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotExponent:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotCutoff:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->enabled:Z

    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->position:Lcom/ardor3d/math/Vector4;

    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->modelViewMatrix:Lcom/ardor3d/math/Matrix4;

    return-void
.end method


# virtual methods
.method public getConstant()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->constant:F

    return v0
.end method

.method public getLinear()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->linear:F

    return v0
.end method

.method public getQuadratic()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->quadratic:F

    return v0
.end method

.method public getSpotCutoff()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotCutoff:F

    return v0
.end method

.method public getSpotExponent()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotExponent:F

    return v0
.end method

.method public invalidate()V
    .locals 10

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->ambient:Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->diffuse:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->specular:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->constant:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->linear:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->quadratic:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotExponent:F

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotCutoff:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->enabled:Z

    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->position:Lcom/ardor3d/math/Vector4;

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v1 .. v9}, Lcom/ardor3d/math/Vector4;->set(DDDD)Lcom/ardor3d/math/Vector4;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->modelViewMatrix:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix4;->setIdentity()Lcom/ardor3d/math/Matrix4;

    return-void
.end method

.method public isAttenuate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->attenuate:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->enabled:Z

    return v0
.end method

.method public setAttenuate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->attenuate:Z

    return-void
.end method

.method public setConstant(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->constant:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->enabled:Z

    return-void
.end method

.method public setLinear(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->linear:F

    return-void
.end method

.method public setQuadratic(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->quadratic:F

    return-void
.end method

.method public setSpotCutoff(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotCutoff:F

    return-void
.end method

.method public setSpotExponent(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/LightRecord;->spotExponent:F

    return-void
.end method
