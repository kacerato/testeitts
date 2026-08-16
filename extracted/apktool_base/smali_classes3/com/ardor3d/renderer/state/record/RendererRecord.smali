.class public Lcom/ardor3d/renderer/state/record/RendererRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field private _clippingTestEnabled:Z

.field private _clippingTestValid:Z

.field private final _clips:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/ardor3d/math/Rectangle2;",
            ">;"
        }
    .end annotation
.end field

.field private _currentElementVboId:I

.field private _currentTextureArraysUnit:I

.field private _currentVboId:I

.field private _drawBufferTarget:Lcom/ardor3d/renderer/DrawBufferTarget;

.field private _elementVboValid:Z

.field private _enabledTextures:I

.field private _matrixMode:I

.field private _matrixValid:Z

.field private _normalMode:I

.field private final transient _tempColor:Lcom/ardor3d/math/ColorRGBA;

.field private _texturesValid:Z

.field private _vboValid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentElementVboId:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentVboId:I

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v1}, Lcom/ardor3d/math/ColorRGBA;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_tempColor:Lcom/ardor3d/math/ColorRGBA;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_drawBufferTarget:Lcom/ardor3d/renderer/DrawBufferTarget;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clips:Ljava/util/Stack;

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_normalMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_enabledTextures:I

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_texturesValid:Z

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentTextureArraysUnit:I

    return-void
.end method


# virtual methods
.method public getCurrentElementVboId()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentElementVboId:I

    return v0
.end method

.method public getCurrentTextureArraysUnit()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentTextureArraysUnit:I

    return v0
.end method

.method public getCurrentVboId()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentVboId:I

    return v0
.end method

.method public getDrawBufferTarget()Lcom/ardor3d/renderer/DrawBufferTarget;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_drawBufferTarget:Lcom/ardor3d/renderer/DrawBufferTarget;

    return-object v0
.end method

.method public getEnabledTextures()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_enabledTextures:I

    return v0
.end method

.method public getMatrixMode()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixMode:I

    return v0
.end method

.method public getNormalMode()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_normalMode:I

    return v0
.end method

.method public getScissorClips()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/ardor3d/math/Rectangle2;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clips:Ljava/util/Stack;

    return-object v0
.end method

.method public getTempColor()Lcom/ardor3d/math/ColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_tempColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/record/RendererRecord;->invalidateMatrix()V

    invoke-virtual {p0}, Lcom/ardor3d/renderer/state/record/RendererRecord;->invalidateVBO()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_drawBufferTarget:Lcom/ardor3d/renderer/DrawBufferTarget;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clippingTestValid:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_texturesValid:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_normalMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentTextureArraysUnit:I

    return-void
.end method

.method public invalidateMatrix()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixValid:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixMode:I

    return-void
.end method

.method public invalidateVBO()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_vboValid:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_elementVboValid:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentVboId:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentElementVboId:I

    return-void
.end method

.method public isClippingTestEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clippingTestEnabled:Z

    return v0
.end method

.method public isClippingTestValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clippingTestValid:Z

    return v0
.end method

.method public isElementVboValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_elementVboValid:Z

    return v0
.end method

.method public isMatrixValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixValid:Z

    return v0
.end method

.method public isTexturesValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_texturesValid:Z

    return v0
.end method

.method public isVboValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_vboValid:Z

    return v0
.end method

.method public setClippingTestEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clippingTestEnabled:Z

    return-void
.end method

.method public setClippingTestValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_clippingTestValid:Z

    return-void
.end method

.method public setCurrentElementVboId(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentElementVboId:I

    return-void
.end method

.method public setCurrentTextureArraysUnit(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentTextureArraysUnit:I

    return-void
.end method

.method public setCurrentVboId(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_currentVboId:I

    return-void
.end method

.method public setDrawBufferTarget(Lcom/ardor3d/renderer/DrawBufferTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_drawBufferTarget:Lcom/ardor3d/renderer/DrawBufferTarget;

    return-void
.end method

.method public setElementVboValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_elementVboValid:Z

    return-void
.end method

.method public setEnabledTextures(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_enabledTextures:I

    return-void
.end method

.method public setMatrixMode(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixMode:I

    return-void
.end method

.method public setMatrixValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_matrixValid:Z

    return-void
.end method

.method public setNormalMode(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_normalMode:I

    return-void
.end method

.method public setTexturesValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_texturesValid:Z

    return-void
.end method

.method public setVboValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/renderer/state/record/RendererRecord;->_vboValid:Z

    return-void
.end method

.method public validate()V
    .locals 0

    return-void
.end method
