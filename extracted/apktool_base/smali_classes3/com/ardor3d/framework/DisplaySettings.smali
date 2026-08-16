.class public Lcom/ardor3d/framework/DisplaySettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final _alphaBits:I

.field private final _colorDepth:I

.field private final _depthBits:I

.field private final _frequency:I

.field private final _fullScreen:Z

.field private final _height:I

.field private final _samples:I

.field private final _shareContext:Lcom/ardor3d/framework/CanvasRenderer;

.field private final _stencilBits:I

.field private final _stereo:Z

.field private final _width:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    .line 3
    iput p2, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    .line 5
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    .line 6
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    .line 7
    iput p3, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    .line 8
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    .line 9
    iput p4, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    .line 10
    iput-boolean p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    .line 11
    iput-boolean p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_shareContext:Lcom/ardor3d/framework/CanvasRenderer;

    return-void
.end method

.method public constructor <init>(IIIIIIIIZZ)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    .line 27
    iput p2, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    .line 28
    iput p3, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    .line 29
    iput p4, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    .line 30
    iput p5, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    .line 31
    iput p6, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    .line 32
    iput p7, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    .line 33
    iput p8, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    .line 34
    iput-boolean p9, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    .line 35
    iput-boolean p10, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_shareContext:Lcom/ardor3d/framework/CanvasRenderer;

    return-void
.end method

.method public constructor <init>(IIIIIIIIZZLcom/ardor3d/framework/CanvasRenderer;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    .line 39
    iput p2, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    .line 40
    iput p3, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    .line 41
    iput p4, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    .line 42
    iput p5, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    .line 43
    iput p6, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    .line 44
    iput p7, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    .line 45
    iput p8, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    .line 46
    iput-boolean p9, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    .line 47
    iput-boolean p10, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    .line 48
    iput-object p11, p0, Lcom/ardor3d/framework/DisplaySettings;->_shareContext:Lcom/ardor3d/framework/CanvasRenderer;

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    .line 15
    iput p2, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    .line 16
    iput p3, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    .line 17
    iput p4, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    const/16 p2, 0x8

    .line 19
    iput p2, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    .line 20
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    .line 21
    iput p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    .line 22
    iput-boolean p5, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    .line 23
    iput-boolean p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/ardor3d/framework/DisplaySettings;->_shareContext:Lcom/ardor3d/framework/CanvasRenderer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/ardor3d/framework/DisplaySettings;

    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    iget-boolean v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    iget v3, p1, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget-boolean v2, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    iget-boolean p1, p1, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    if-eq v2, p1, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_0
    return v1
.end method

.method public getAlphaBits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    return v0
.end method

.method public getColorDepth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    return v0
.end method

.method public getDepthBits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    return v0
.end method

.method public getFrequency()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    return v0
.end method

.method public getSamples()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    return v0
.end method

.method public getShareContext()Lcom/ardor3d/framework/CanvasRenderer;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_shareContext:Lcom/ardor3d/framework/CanvasRenderer;

    return-object v0
.end method

.method public getStencilBits()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_colorDepth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_frequency:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_alphaBits:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_depthBits:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_stencilBits:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_samples:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_fullScreen:Z

    return v0
.end method

.method public isStereo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/framework/DisplaySettings;->_stereo:Z

    return v0
.end method
