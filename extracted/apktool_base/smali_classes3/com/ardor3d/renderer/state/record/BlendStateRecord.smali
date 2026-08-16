.class public Lcom/ardor3d/renderer/state/record/BlendStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public alphaFunc:I

.field public alphaRef:F

.field public blendColor:Lcom/ardor3d/math/ColorRGBA;

.field public blendEnabled:Z

.field public blendEqAlpha:I

.field public blendEqRGB:I

.field public dstFactorAlpha:I

.field public dstFactorRGB:I

.field public sampleAlphaToCoverageEnabled:Z

.field public sampleAlphaToOneEnabled:Z

.field public sampleCoverage:F

.field public sampleCoverageEnabled:Z

.field public sampleCoverageInverted:Z

.field public srcFactorAlpha:I

.field public srcFactorRGB:I

.field public testEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->testEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->srcFactorRGB:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->dstFactorRGB:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendEqRGB:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->srcFactorAlpha:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->dstFactorAlpha:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendEqAlpha:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->alphaFunc:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->alphaRef:F

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendColor:Lcom/ardor3d/math/ColorRGBA;

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleAlphaToCoverageEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleAlphaToOneEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleCoverageEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleCoverageInverted:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleCoverage:F

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->testEnabled:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->srcFactorRGB:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->dstFactorRGB:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendEqRGB:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->srcFactorAlpha:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->dstFactorAlpha:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendEqAlpha:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->alphaFunc:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->alphaRef:F

    iget-object v2, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->blendColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v2, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleAlphaToCoverageEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleAlphaToOneEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleCoverageEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleCoverageInverted:Z

    iput v1, p0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;->sampleCoverage:F

    return-void
.end method
