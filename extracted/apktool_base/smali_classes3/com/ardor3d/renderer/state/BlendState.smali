.class public Lcom/ardor3d/renderer/state/BlendState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/renderer/state/BlendState$BlendEquation;,
        Lcom/ardor3d/renderer/state/BlendState$TestFunction;,
        Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;,
        Lcom/ardor3d/renderer/state/BlendState$SourceFunction;
    }
.end annotation


# instance fields
.field private _blendEnabled:Z

.field private _blendEquationAlpha:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

.field private _blendEquationRGB:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

.field private _constantColor:Lcom/ardor3d/math/ColorRGBA;

.field private _destinationFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field private _destinationFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

.field private _reference:F

.field private _sampleAlphaToCoverageEnabled:Z

.field private _sampleAlphaToOneEnabled:Z

.field private _sampleCoverage:F

.field private _sampleCoverageEnabled:Z

.field private _sampleCoverageInverted:Z

.field private _sourceFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field private _sourceFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

.field private _testEnabled:Z

.field private _testFunction:Lcom/ardor3d/renderer/state/BlendState$TestFunction;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEnabled:Z

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/BlendState;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    sget-object v1, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    sget-object v3, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    sget-object v4, Lcom/ardor3d/renderer/state/BlendState$BlendEquation;->Add:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    iput-object v4, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationRGB:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    iput-object v3, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    iput-object v4, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationAlpha:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testEnabled:Z

    sget-object v1, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/BlendState;->_testFunction:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    iput v2, p0, Lcom/ardor3d/renderer/state/BlendState;->_reference:F

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToCoverageEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToOneEnabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageEnabled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverage:F

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageInverted:Z

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/BlendStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/BlendStateRecord;-><init>()V

    return-object v0
.end method

.method public getBlendEquationAlpha()Lcom/ardor3d/renderer/state/BlendState$BlendEquation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationAlpha:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    return-object v0
.end method

.method public getBlendEquationRGB()Lcom/ardor3d/renderer/state/BlendState$BlendEquation;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationRGB:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    return-object v0
.end method

.method public getConstantColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getDestinationFunctionAlpha()Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    return-object v0
.end method

.method public getDestinationFunctionRGB()Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    return-object v0
.end method

.method public getReference()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_reference:F

    return v0
.end method

.method public getSampleCoverage()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverage:F

    return v0
.end method

.method public getSourceFunctionAlpha()Lcom/ardor3d/renderer/state/BlendState$SourceFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    return-object v0
.end method

.method public getSourceFunctionRGB()Lcom/ardor3d/renderer/state/BlendState$SourceFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    return-object v0
.end method

.method public getTestFunction()Lcom/ardor3d/renderer/state/BlendState$TestFunction;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testFunction:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    return-object v0
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Blend:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public isBlendEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEnabled:Z

    return v0
.end method

.method public isSampleAlphaToCoverageEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToCoverageEnabled:Z

    return v0
.end method

.method public isSampleAlphaToOneEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToOneEnabled:Z

    return v0
.end method

.method public isSampleCoverageEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageEnabled:Z

    return v0
.end method

.method public isSampleCoverageInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageInverted:Z

    return v0
.end method

.method public isTestEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testEnabled:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const-string v0, "blendEnabled"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEnabled:Z

    sget-object v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v2, "sourceFunctionRGB"

    const-class v3, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    invoke-interface {p1, v2, v3, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    sget-object v2, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v4, "destinationFunctionRGB"

    const-class v5, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    invoke-interface {p1, v4, v5, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    iput-object v4, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    sget-object v4, Lcom/ardor3d/renderer/state/BlendState$BlendEquation;->Add:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    const-string v6, "blendEquationRGB"

    const-class v7, Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    invoke-interface {p1, v6, v7, v4}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    iput-object v6, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationRGB:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    const-string v6, "sourceFunctionAlpha"

    invoke-interface {p1, v6, v3, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v0, "destinationFunctionAlpha"

    invoke-interface {p1, v0, v5, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v0, "blendEquationAlpha"

    invoke-interface {p1, v0, v7, v4}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationAlpha:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    const-string v0, "testEnabled"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testEnabled:Z

    const-class v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    sget-object v1, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v2, "test"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    iput-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testFunction:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v0, "reference"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_reference:F

    const-string v0, "constantColor"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/math/ColorRGBA;

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setBlendEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEnabled:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setBlendEquation(Lcom/ardor3d/renderer/state/BlendState$BlendEquation;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEquationRGB(Lcom/ardor3d/renderer/state/BlendState$BlendEquation;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/BlendState;->setBlendEquationAlpha(Lcom/ardor3d/renderer/state/BlendState$BlendEquation;)V

    return-void
.end method

.method public setBlendEquationAlpha(Lcom/ardor3d/renderer/state/BlendState$BlendEquation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationAlpha:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "blendEquation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBlendEquationRGB(Lcom/ardor3d/renderer/state/BlendState$BlendEquation;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationRGB:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "blendEquation can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConstantColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setDestinationFunction(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunctionRGB(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/BlendState;->setDestinationFunctionAlpha(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V

    return-void
.end method

.method public setDestinationFunctionAlpha(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDestinationFunctionRGB(Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReference(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_reference:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setSampleAlphaToCoverageEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToCoverageEnabled:Z

    return-void
.end method

.method public setSampleAlphaToOneEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToOneEnabled:Z

    return-void
.end method

.method public setSampleCoverage(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverage:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "value must be in range [0f, 1f]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSampleCoverageEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageEnabled:Z

    return-void
.end method

.method public setSampleCoverageInverted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageInverted:Z

    return-void
.end method

.method public setSourceFunction(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunctionRGB(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/BlendState;->setSourceFunctionAlpha(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V

    return-void
.end method

.method public setSourceFunctionAlpha(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSourceFunctionRGB(Lcom/ardor3d/renderer/state/BlendState$SourceFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTestEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_testEnabled:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public setTestFunction(Lcom/ardor3d/renderer/state/BlendState$TestFunction;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/BlendState;->_testFunction:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "function can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEnabled:Z

    const-string v1, "blendEnabled"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    sget-object v1, Lcom/ardor3d/renderer/state/BlendState$SourceFunction;->SourceAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v3, "sourceFunctionRGB"

    invoke-interface {p1, v0, v3, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionRGB:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    sget-object v3, Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;->OneMinusSourceAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v4, "destinationFunctionRGB"

    invoke-interface {p1, v0, v4, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationRGB:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    sget-object v4, Lcom/ardor3d/renderer/state/BlendState$BlendEquation;->Add:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    const-string v5, "blendEquationRGB"

    invoke-interface {p1, v0, v5, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sourceFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$SourceFunction;

    const-string v5, "sourceFunctionAlpha"

    invoke-interface {p1, v0, v5, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_destinationFunctionAlpha:Lcom/ardor3d/renderer/state/BlendState$DestinationFunction;

    const-string v1, "destinationFunctionAlpha"

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_blendEquationAlpha:Lcom/ardor3d/renderer/state/BlendState$BlendEquation;

    const-string v1, "blendEquationAlpha"

    invoke-interface {p1, v0, v1, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testEnabled:Z

    const-string v1, "testEnabled"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_testFunction:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    const-string v1, "test"

    sget-object v3, Lcom/ardor3d/renderer/state/BlendState$TestFunction;->GreaterThan:Lcom/ardor3d/renderer/state/BlendState$TestFunction;

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_reference:F

    const-string v1, "reference"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    const-string v1, "constantColor"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToCoverageEnabled:Z

    const-string v1, "sampleAlphaToCoverageEnabled"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleAlphaToOneEnabled:Z

    const-string v1, "sampleAlphaToOneEnabled"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageEnabled:Z

    const-string v1, "sampleCoverageEnabled"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverageInverted:Z

    const-string v1, "sampleCoverageInverted"

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/ardor3d/renderer/state/BlendState;->_sampleCoverage:F

    const-string v1, "sampleCoverage"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
