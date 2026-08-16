.class public Lcom/ardor3d/ui/text/BMText;
.super Lcom/ardor3d/scenegraph/Mesh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/ui/text/BMText$Align;,
        Lcom/ardor3d/ui/text/BMText$Justify;,
        Lcom/ardor3d/ui/text/BMText$AutoFade;,
        Lcom/ardor3d/ui/text/BMText$AutoScale;
    }
.end annotation


# instance fields
.field protected _align:Lcom/ardor3d/ui/text/BMText$Align;

.field protected final _alignOffset:Lcom/ardor3d/math/Vector2;

.field protected _autoFade:Lcom/ardor3d/ui/text/BMText$AutoFade;

.field protected _autoRotate:Z

.field protected _autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

.field protected final _distanceAlphaRange:Lcom/ardor3d/math/Vector2;

.field protected final _fixedOffset:Lcom/ardor3d/math/Vector2;

.field protected _fixedPixelAlphaThresh:I

.field protected _font:Lcom/ardor3d/ui/text/BMFont;

.field protected _fontScale:D

.field protected _indexBuffer:Ljava/nio/IntBuffer;

.field protected _justify:Lcom/ardor3d/ui/text/BMText$Justify;

.field protected final _left:Lcom/ardor3d/math/Vector3;

.field protected _lineWidths:[F

.field protected _lines:I

.field protected final _look:Lcom/ardor3d/math/Vector3;

.field protected final _rot:Lcom/ardor3d/math/Matrix3;

.field protected _screenSizeAlphaFalloff:F

.field protected final _size:Lcom/ardor3d/math/Vector2;

.field protected _spacing:I

.field private final _tabSize:I

.field protected _tempClr:Lcom/ardor3d/math/ColorRGBA;

.field protected _texCrdBuffer:Ljava/nio/FloatBuffer;

.field protected _textClr:Lcom/ardor3d/math/ColorRGBA;

.field protected _textString:Ljava/lang/String;

.field protected _useBlend:Z

.field protected _vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ardor3d/ui/text/BMText$Align;->SouthWest:Lcom/ardor3d/ui/text/BMText$Align;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ardor3d/ui/text/BMText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/ui/text/BMText$Align;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/ui/text/BMText$Align;)V
    .locals 6

    .line 2
    sget-object v5, Lcom/ardor3d/ui/text/BMText$Justify;->Left:Lcom/ardor3d/ui/text/BMText$Justify;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ardor3d/ui/text/BMText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/ui/text/BMText$Align;Lcom/ardor3d/ui/text/BMText$Justify;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/ui/text/BMText$Align;Lcom/ardor3d/ui/text/BMText$Justify;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/ardor3d/ui/text/BMText;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/ui/text/BMText$Align;Lcom/ardor3d/ui/text/BMText$Justify;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ardor3d/ui/text/BMFont;Lcom/ardor3d/ui/text/BMText$Align;Lcom/ardor3d/ui/text/BMText$Justify;Z)V
    .locals 5

    .line 4
    invoke-direct {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/ardor3d/ui/text/BMText;->_tabSize:I

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    iput-wide v0, p0, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/ardor3d/ui/text/BMText;->_autoRotate:Z

    .line 8
    iput p1, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    .line 9
    new-instance v0, Lcom/ardor3d/math/Vector2;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    const/16 v0, 0x40

    .line 10
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    .line 11
    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    .line 12
    new-instance v0, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    .line 13
    sget-object v0, Lcom/ardor3d/ui/text/BMText$AutoScale;->CapScreenSize:Lcom/ardor3d/ui/text/BMText$AutoScale;

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

    .line 14
    sget-object v0, Lcom/ardor3d/ui/text/BMText$AutoFade;->FixedPixelSize:Lcom/ardor3d/ui/text/BMText$AutoFade;

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_autoFade:Lcom/ardor3d/ui/text/BMText$AutoFade;

    const/16 v0, 0xe

    .line 15
    iput v0, p0, Lcom/ardor3d/ui/text/BMText;->_fixedPixelAlphaThresh:I

    const v0, 0x3f333333    # 0.7f

    .line 16
    iput v0, p0, Lcom/ardor3d/ui/text/BMText;->_screenSizeAlphaFalloff:F

    .line 17
    new-instance v0, Lcom/ardor3d/math/Vector2;

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    const-wide v3, 0x4052c00000000000L    # 75.0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ardor3d/math/Vector2;-><init>(DD)V

    iput-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_distanceAlphaRange:Lcom/ardor3d/math/Vector2;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/ardor3d/ui/text/BMText;->_spacing:I

    .line 19
    new-instance v1, Lcom/ardor3d/math/Vector2;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_alignOffset:Lcom/ardor3d/math/Vector2;

    .line 20
    new-instance v1, Lcom/ardor3d/math/Vector2;

    invoke-direct {v1}, Lcom/ardor3d/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_fixedOffset:Lcom/ardor3d/math/Vector2;

    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_vertexBuffer:Ljava/nio/FloatBuffer;

    .line 22
    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_texCrdBuffer:Ljava/nio/FloatBuffer;

    .line 23
    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_indexBuffer:Ljava/nio/IntBuffer;

    .line 24
    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    .line 25
    new-instance v2, Lcom/ardor3d/math/Vector3;

    invoke-direct {v2}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_left:Lcom/ardor3d/math/Vector3;

    .line 26
    new-instance v2, Lcom/ardor3d/math/Matrix3;

    invoke-direct {v2}, Lcom/ardor3d/math/Matrix3;-><init>()V

    iput-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_rot:Lcom/ardor3d/math/Matrix3;

    .line 27
    iput-object p3, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    .line 28
    iput-object p4, p0, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    .line 29
    iput-object p5, p0, Lcom/ardor3d/ui/text/BMText;->_justify:Lcom/ardor3d/ui/text/BMText$Justify;

    .line 30
    iput v0, p0, Lcom/ardor3d/ui/text/BMText;->_spacing:I

    .line 31
    iput-boolean p6, p0, Lcom/ardor3d/ui/text/BMText;->_useBlend:Z

    .line 32
    invoke-virtual {p3}, Lcom/ardor3d/ui/text/BMFont;->getOutlineWidth()I

    move-result p3

    if-le p3, p1, :cond_0

    .line 33
    iget-object p3, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {p3}, Lcom/ardor3d/ui/text/BMFont;->getOutlineWidth()I

    move-result p3

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/ardor3d/ui/text/BMText;->_spacing:I

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    sget-object p3, Lcom/ardor3d/renderer/IndexMode;->Triangles:Lcom/ardor3d/renderer/IndexMode;

    invoke-virtual {p1, p3}, Lcom/ardor3d/scenegraph/MeshData;->setIndexMode(Lcom/ardor3d/renderer/IndexMode;)V

    .line 35
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p3, Lcom/ardor3d/scenegraph/hint/LightCombineMode;->Off:Lcom/ardor3d/scenegraph/hint/LightCombineMode;

    invoke-virtual {p1, p3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setLightCombineMode(Lcom/ardor3d/scenegraph/hint/LightCombineMode;)V

    .line 36
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p3, Lcom/ardor3d/scenegraph/hint/TextureCombineMode;->Replace:Lcom/ardor3d/scenegraph/hint/TextureCombineMode;

    invoke-virtual {p1, p3}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setTextureCombineMode(Lcom/ardor3d/scenegraph/hint/TextureCombineMode;)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/ardor3d/ui/text/BMText;->setText(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v1}, Lcom/ardor3d/scenegraph/Mesh;->setModelBound(Lcom/ardor3d/bounding/BoundingVolume;)V

    .line 39
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    sget-object p2, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {p1, p2}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setCullHint(Lcom/ardor3d/scenegraph/hint/CullHint;)V

    .line 40
    invoke-virtual {p0}, Lcom/ardor3d/scenegraph/Spatial;->getSceneHints()Lcom/ardor3d/scenegraph/hint/SceneHints;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ardor3d/scenegraph/hint/SceneHints;->setAllPickingHints(Z)V

    .line 41
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {p1, p0, p6}, Lcom/ardor3d/ui/text/BMFont;->applyRenderStatesTo(Lcom/ardor3d/scenegraph/Spatial;Z)V

    return-void
.end method

.method private addEmptyCharacter(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public addToLineSizes(FI)V
    .locals 4

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    array-length v1, v0

    if-lt p2, v1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    aput p1, v0, p2

    return-void
.end method

.method public calculateAlignmentOffset()V
    .locals 5

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_alignOffset:Lcom/ardor3d/math/Vector2;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_alignOffset:Lcom/ardor3d/math/Vector2;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    iget v3, v3, Lcom/ardor3d/ui/text/BMText$Align;->horizontal:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector2;->setX(D)V

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_alignOffset:Lcom/ardor3d/math/Vector2;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v1

    iget-object v3, p0, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    iget v3, v3, Lcom/ardor3d/ui/text/BMText$Align;->vertical:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector2;->setY(D)V

    :cond_0
    return-void
.end method

.method public calculateSize(Ljava/lang/String;)V
    .locals 10

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {p1}, Lcom/ardor3d/ui/text/BMFont;->getLineHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v6, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1

    iget v5, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    invoke-virtual {p0, v4, v5}, Lcom/ardor3d/ui/text/BMText;->addToLineSizes(FI)V

    iget v5, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    float-to-double v4, v4

    iget-object v6, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v6}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v6

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v6, v4, v5}, Lcom/ardor3d/math/Vector2;->setX(D)V

    :cond_0
    iget v4, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    int-to-float v4, v4

    mul-float v5, v4, p1

    move v4, v2

    goto :goto_2

    :cond_1
    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v6}, Lcom/ardor3d/ui/text/BMFont;->getMaxCharAdvance()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    div-float/2addr v4, v6

    float-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v4, v7

    mul-float/2addr v4, v6

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v7, v6}, Lcom/ardor3d/ui/text/BMFont;->getChar(I)Lcom/ardor3d/ui/text/BMFont$Char;

    move-result-object v7

    add-int/lit8 v8, v1, -0x1

    if-ge v3, v8, :cond_3

    iget-object v8, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_1

    :cond_3
    move v8, v0

    :goto_1
    iget-object v9, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v9, v6, v8}, Lcom/ardor3d/ui/text/BMFont;->getKerning(II)I

    move-result v6

    iget v7, v7, Lcom/ardor3d/ui/text/BMFont$Char;->xadvance:I

    add-int/2addr v7, v6

    iget v6, p0, Lcom/ardor3d/ui/text/BMText;->_spacing:I

    add-int/2addr v7, v6

    int-to-float v6, v7

    add-float/2addr v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    invoke-virtual {p0, v4, v0}, Lcom/ardor3d/ui/text/BMText;->addToLineSizes(FI)V

    float-to-double v0, v4

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v2}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v2, v0, v1}, Lcom/ardor3d/math/Vector2;->setX(D)V

    :cond_5
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    add-float/2addr v5, p1

    float-to-double v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/ardor3d/math/Vector2;->setY(D)V

    iget p1, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    return-void
.end method

.method public checkBuffers(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 v0, p1, 0x6

    div-int/lit8 v1, v0, 0x14

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_indexBuffer:Ljava/nio/IntBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector3Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createVector2Buffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_texCrdBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v1}, Lcom/ardor3d/util/geom/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_indexBuffer:Ljava/nio/IntBuffer;

    :cond_1
    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v2, p1, 0x12

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_texCrdBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 p1, p1, 0xc

    invoke-virtual {v1, p1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_indexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public correctTransform(Lcom/ardor3d/renderer/Camera;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Spatial;->updateWorldTransform(Z)V

    iget-boolean v0, p0, Lcom/ardor3d/ui/text/BMText;->_autoRotate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_left:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLeft()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->negateLocal()Lcom/ardor3d/math/Vector3;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_rot:Lcom/ardor3d/math/Matrix3;

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_left:Lcom/ardor3d/math/Vector3;

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getUp()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/ardor3d/math/Matrix3;->fromAxes(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Matrix3;

    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_rot:Lcom/ardor3d/math/Matrix3;

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Transform;->setRotation(Lcom/ardor3d/math/type/ReadOnlyMatrix3;)V

    :cond_0
    iget-object p1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/Spatial;->_localTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v0}, Lcom/ardor3d/math/Transform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/math/Transform;->setScale(Lcom/ardor3d/math/type/ReadOnlyVector3;)V

    return-void
.end method

.method public distanceAlphaFade(Lcom/ardor3d/math/type/ReadOnlyVector2;D)V
    .locals 6

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v2

    sub-double/2addr p2, v2

    double-to-float p2, p2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getY()D

    move-result-wide v2

    invoke-interface {p1}, Lcom/ardor3d/math/type/ReadOnlyVector2;->getX()D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float p1, v2

    div-float/2addr p2, p1

    sub-float p1, v1, p2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    iget-object p3, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p2, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object p2, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    iget-object p3, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p3}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p3

    mul-float/2addr p3, p1

    invoke-virtual {p2, p3}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public declared-synchronized draw(Lcom/ardor3d/renderer/Renderer;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/ardor3d/renderer/Camera;->getCurrentCamera()Lcom/ardor3d/renderer/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

    sget-object v2, Lcom/ardor3d/ui/text/BMText$AutoScale;->Off:Lcom/ardor3d/ui/text/BMText$AutoScale;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_autoFade:Lcom/ardor3d/ui/text/BMText$AutoFade;

    sget-object v2, Lcom/ardor3d/ui/text/BMText$AutoFade;->Off:Lcom/ardor3d/ui/text/BMText$AutoFade;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/ardor3d/ui/text/BMText;->updateScaleAndAlpha(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/renderer/Renderer;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/ardor3d/ui/text/BMText;->correctTransform(Lcom/ardor3d/renderer/Camera;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ardor3d/scenegraph/Mesh;->updateWorldBound(Z)V

    invoke-super {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->draw(Lcom/ardor3d/renderer/Renderer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAlign()Lcom/ardor3d/ui/text/BMText$Align;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    return-object v0
.end method

.method public getAutoFade()Lcom/ardor3d/ui/text/BMText$AutoFade;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_autoFade:Lcom/ardor3d/ui/text/BMText$AutoFade;

    return-object v0
.end method

.method public getAutoFadeFixedPixelSize()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/ui/text/BMText;->_fixedPixelAlphaThresh:I

    return v0
.end method

.method public getAutoRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/ui/text/BMText;->_autoRotate:Z

    return v0
.end method

.method public getAutoScale()Lcom/ardor3d/ui/text/BMText$AutoScale;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

    return-object v0
.end method

.method public getFont()Lcom/ardor3d/ui/text/BMFont;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    return-object v0
.end method

.method public getFontScale()D
    .locals 2

    iget-wide v0, p0, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    return-wide v0
.end method

.method public getHeight()F
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector2;->getYf()F

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getYf()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public getJustificationXOffset(I)F
    .locals 3

    sget-object v0, Lcom/ardor3d/ui/text/BMText$1;->$SwitchMap$com$ardor3d$ui$text$BMText$Justify:[I

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_justify:Lcom/ardor3d/ui/text/BMText$Justify;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    aget p1, v1, p1

    sub-float v2, v0, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/ui/text/BMText;->_lineWidths:[F

    aget p1, v1, p1

    sub-float/2addr v0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float v2, v0, p1

    :cond_2
    :goto_0
    return v2
.end method

.method public getJustify()Lcom/ardor3d/ui/text/BMText$Justify;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_justify:Lcom/ardor3d/ui/text/BMText$Justify;

    return-object v0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Lcom/ardor3d/ui/text/BMText;->_lines:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    return-object v0
.end method

.method public getUseBlend()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/ui/text/BMText;->_useBlend:Z

    return v0
.end method

.method public getWidth()F
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v0

    iget-object v1, p0, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getScale()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-interface {v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->getXf()F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public screenSizeCapAlphaFade(DDF)V
    .locals 1

    cmpg-double v0, p1, p3

    if-gez v0, :cond_1

    sub-double/2addr p3, p1

    div-double/2addr p3, p1

    double-to-float p1, p3

    sub-float p1, p5, p1

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    div-float p2, p1, p5

    :goto_0
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1}, Lcom/ardor3d/math/ColorRGBA;->getAlpha()F

    move-result p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    iget-object p3, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p2, p3}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object p2, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p2, p1}, Lcom/ardor3d/math/ColorRGBA;->setAlpha(F)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_tempClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    :goto_1
    return-void
.end method

.method public setAlign(Lcom/ardor3d/ui/text/BMText$Align;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoFade(Lcom/ardor3d/ui/text/BMText$AutoFade;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_autoFade:Lcom/ardor3d/ui/text/BMText$AutoFade;

    return-void
.end method

.method public setAutoFadeDistanceRange(DD)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_distanceAlphaRange:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    return-void
.end method

.method public setAutoFadeFalloff(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/ui/text/BMText;->_screenSizeAlphaFalloff:F

    return-void
.end method

.method public setAutoFadeFixedPixelSize(I)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/ui/text/BMText;->_fixedPixelAlphaThresh:I

    return-void
.end method

.method public setAutoRotate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/ui/text/BMText;->_autoRotate:Z

    return-void
.end method

.method public setAutoScale(Lcom/ardor3d/ui/text/BMText$AutoScale;)V
    .locals 2

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

    iget-wide v0, p0, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/ui/text/BMText;->setFontScale(D)V

    return-void
.end method

.method public setFixedOffset(DD)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v0}, Lcom/ardor3d/ui/text/BMFont;->getSize()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v0}, Lcom/ardor3d/ui/text/BMFont;->getSize()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr p3, v0

    .line 3
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_fixedOffset:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    return-void
.end method

.method public setFixedOffset(Lcom/ardor3d/math/Vector2;)V
    .locals 6

    .line 4
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v0

    iget-object v2, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v2}, Lcom/ardor3d/ui/text/BMFont;->getSize()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    .line 5
    invoke-virtual {p1}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v2

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {p1}, Lcom/ardor3d/ui/text/BMFont;->getSize()I

    move-result p1

    int-to-double v4, p1

    mul-double/2addr v2, v4

    .line 6
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_fixedOffset:Lcom/ardor3d/math/Vector2;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ardor3d/math/Vector2;->set(DD)Lcom/ardor3d/math/Vector2;

    return-void
.end method

.method public setFont(Lcom/ardor3d/ui/text/BMFont;)V
    .locals 2

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    iget-boolean v0, p0, Lcom/ardor3d/ui/text/BMText;->_useBlend:Z

    invoke-virtual {p1, p0, v0}, Lcom/ardor3d/ui/text/BMFont;->applyRenderStatesTo(Lcom/ardor3d/scenegraph/Spatial;Z)V

    iget-wide v0, p0, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    invoke-virtual {p0, v0, v1}, Lcom/ardor3d/ui/text/BMText;->setFontScale(D)V

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setFontScale(D)V
    .locals 9

    iput-wide p1, p0, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

    sget-object p2, Lcom/ardor3d/ui/text/BMText$AutoScale;->Off:Lcom/ardor3d/ui/text/BMText$AutoScale;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {p1}, Lcom/ardor3d/ui/text/BMFont;->getSize()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    iget-wide p1, p0, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    mul-double v5, v0, p1

    neg-double v7, v5

    move-object v2, p0

    move-wide v3, v5

    invoke-virtual/range {v2 .. v8}, Lcom/ardor3d/scenegraph/Spatial;->setScale(DDD)V

    :cond_0
    return-void
.end method

.method public setJustify(Lcom/ardor3d/ui/text/BMText$Justify;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_justify:Lcom/ardor3d/ui/text/BMText$Justify;

    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ardor3d/ui/text/BMText;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, ""

    iput-object v0, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    iput-object v0, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    :goto_0
    iget-object v0, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ardor3d/ui/text/BMText;->checkBuffers(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ardor3d/ui/text/BMText;->calculateSize(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ardor3d/ui/text/BMText;->calculateAlignmentOffset()V

    iget-object v0, v1, Lcom/ardor3d/ui/text/BMText;->_vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, v1, Lcom/ardor3d/ui/text/BMText;->_texCrdBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, v1, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v3}, Lcom/ardor3d/ui/text/BMFont;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v1, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v4}, Lcom/ardor3d/ui/text/BMFont;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/ardor3d/ui/text/BMText;->getJustificationXOffset(I)F

    move-result v6

    iget-object v7, v1, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v7}, Lcom/ardor3d/ui/text/BMFont;->getLineHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, v1, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getXf()F

    move-result v8

    iget-object v9, v1, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    iget v9, v9, Lcom/ardor3d/ui/text/BMText$Align;->horizontal:F

    mul-float/2addr v8, v9

    iget-object v9, v1, Lcom/ardor3d/ui/text/BMText;->_size:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v9}, Lcom/ardor3d/math/Vector2;->getYf()F

    move-result v9

    iget-object v10, v1, Lcom/ardor3d/ui/text/BMText;->_align:Lcom/ardor3d/ui/text/BMText$Align;

    iget v10, v10, Lcom/ardor3d/ui/text/BMText$Align;->vertical:F

    mul-float/2addr v9, v10

    float-to-double v10, v8

    iget-object v8, v1, Lcom/ardor3d/ui/text/BMText;->_fixedOffset:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v8}, Lcom/ardor3d/math/Vector2;->getX()D

    move-result-wide v12

    add-double/2addr v10, v12

    double-to-float v8, v10

    float-to-double v9, v9

    iget-object v11, v1, Lcom/ardor3d/ui/text/BMText;->_fixedOffset:Lcom/ardor3d/math/Vector2;

    invoke-virtual {v11}, Lcom/ardor3d/math/Vector2;->getY()D

    move-result-wide v11

    add-double/2addr v9, v11

    double-to-float v9, v9

    iget-object v10, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v12, v5

    move v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v10, :cond_4

    iget-object v15, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0xa

    if-ne v15, v5, :cond_1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v1, v13}, Lcom/ardor3d/ui/text/BMText;->getJustificationXOffset(I)F

    move-result v5

    add-float/2addr v14, v7

    invoke-direct {v1, v0, v2}, Lcom/ardor3d/ui/text/BMText;->addEmptyCharacter(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    move v6, v5

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move v8, v12

    move/from16 v18, v13

    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_1
    const/16 v5, 0x9

    if-ne v15, v5, :cond_2

    iget-object v5, v1, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v5}, Lcom/ardor3d/ui/text/BMFont;->getMaxCharAdvance()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    div-float/2addr v6, v5

    move/from16 v16, v12

    float-to-double v11, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v6, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v6, v11

    mul-float/2addr v6, v5

    invoke-direct {v1, v0, v2}, Lcom/ardor3d/ui/text/BMText;->addEmptyCharacter(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v18, v13

    move/from16 v8, v16

    goto :goto_2

    :cond_2
    move/from16 v16, v12

    iget-object v5, v1, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v5, v15}, Lcom/ardor3d/ui/text/BMFont;->getChar(I)Lcom/ardor3d/ui/text/BMFont$Char;

    move-result-object v5

    add-float v11, v8, v6

    iget v12, v5, Lcom/ardor3d/ui/text/BMFont$Char;->xoffset:I

    move/from16 v17, v7

    int-to-float v7, v12

    add-float/2addr v7, v11

    add-float v18, v9, v14

    move/from16 v19, v8

    iget v8, v5, Lcom/ardor3d/ui/text/BMFont$Char;->yoffset:I

    move/from16 v20, v9

    int-to-float v9, v8

    add-float v9, v18, v9

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget v12, v5, Lcom/ardor3d/ui/text/BMFont$Char;->width:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    int-to-float v8, v8

    add-float v18, v18, v8

    iget v8, v5, Lcom/ardor3d/ui/text/BMFont$Char;->height:I

    int-to-float v8, v8

    add-float v8, v18, v8

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    move/from16 v18, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    iget v7, v5, Lcom/ardor3d/ui/text/BMFont$Char;->x:I

    int-to-float v8, v7

    div-float/2addr v8, v3

    iget v9, v5, Lcom/ardor3d/ui/text/BMFont$Char;->y:I

    int-to-float v11, v9

    div-float/2addr v11, v4

    iget v12, v5, Lcom/ardor3d/ui/text/BMFont$Char;->width:I

    add-int/2addr v7, v12

    int-to-float v7, v7

    div-float/2addr v7, v3

    iget v12, v5, Lcom/ardor3d/ui/text/BMFont$Char;->height:I

    add-int/2addr v9, v12

    int-to-float v9, v9

    div-float/2addr v9, v4

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v7, v10, -0x1

    move/from16 v8, v16

    if-ge v8, v7, :cond_3

    iget-object v7, v1, Lcom/ardor3d/ui/text/BMText;->_textString:Ljava/lang/String;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    iget-object v9, v1, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v9, v15, v7}, Lcom/ardor3d/ui/text/BMFont;->getKerning(II)I

    move-result v7

    iget v5, v5, Lcom/ardor3d/ui/text/BMFont$Char;->xadvance:I

    add-int/2addr v5, v7

    iget v7, v1, Lcom/ardor3d/ui/text/BMText;->_spacing:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    add-float/2addr v6, v5

    :goto_4
    add-int/lit8 v12, v8, 0x1

    move/from16 v7, v17

    move/from16 v13, v18

    move/from16 v8, v19

    move/from16 v9, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_4
    iget-object v3, v1, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    invoke-virtual {v3, v0}, Lcom/ardor3d/scenegraph/MeshData;->setVertexBuffer(Ljava/nio/FloatBuffer;)V

    iget-object v0, v1, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ardor3d/scenegraph/MeshData;->setTextureBuffer(Ljava/nio/FloatBuffer;I)V

    iget-object v0, v1, Lcom/ardor3d/scenegraph/Mesh;->_meshData:Lcom/ardor3d/scenegraph/MeshData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ardor3d/scenegraph/MeshData;->setIndices(Lcom/ardor3d/scenegraph/IndexBufferData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setTextColor(FFFF)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    .line 4
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setTextColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    .line 2
    iget-object p1, p0, Lcom/ardor3d/ui/text/BMText;->_textClr:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p0, p1}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    return-void
.end method

.method public setUseBlend(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ardor3d/ui/text/BMText;->_useBlend:Z

    iget-object v0, p0, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v0, p0, p1}, Lcom/ardor3d/ui/text/BMFont;->applyRenderStatesTo(Lcom/ardor3d/scenegraph/Spatial;Z)V

    return-void
.end method

.method public updateScaleAndAlpha(Lcom/ardor3d/renderer/Camera;Lcom/ardor3d/renderer/Renderer;)V
    .locals 14

    move-object v7, p0

    iget-object v0, v7, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getLocation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->set(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    iget-object v0, v7, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->negateLocal()Lcom/ardor3d/math/Vector3;

    move-result-object v0

    iget-object v1, v7, Lcom/ardor3d/scenegraph/Spatial;->_worldTransform:Lcom/ardor3d/math/Transform;

    invoke-virtual {v1}, Lcom/ardor3d/math/Transform;->getTranslation()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/Vector3;->addLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;)Lcom/ardor3d/math/Vector3;

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getDirection()Lcom/ardor3d/math/type/ReadOnlyVector3;

    move-result-object v0

    iget-object v1, v7, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    invoke-interface {v0, v1}, Lcom/ardor3d/math/type/ReadOnlyVector3;->dot(Lcom/ardor3d/math/type/ReadOnlyVector3;)D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumFar()D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_7

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getProjectionMode()Lcom/ardor3d/renderer/Camera$ProjectionMode;

    move-result-object v2

    sget-object v3, Lcom/ardor3d/renderer/Camera$ProjectionMode;->Parallel:Lcom/ardor3d/renderer/Camera$ProjectionMode;

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumBottom()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumTop()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getFrustumNear()D

    move-result-wide v2

    div-double/2addr v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/ardor3d/renderer/Camera;->getHeight()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-wide v2, v7, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    iget-object v4, v7, Lcom/ardor3d/ui/text/BMText;->_font:Lcom/ardor3d/ui/text/BMFont;

    invoke-virtual {v4}, Lcom/ardor3d/ui/text/BMFont;->getSize()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v10, v8, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v12, v0, v2

    iget-object v0, v7, Lcom/ardor3d/ui/text/BMText;->_autoScale:Lcom/ardor3d/ui/text/BMText$AutoScale;

    sget-object v1, Lcom/ardor3d/ui/text/BMText$AutoScale;->Off:Lcom/ardor3d/ui/text/BMText$AutoScale;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/ardor3d/ui/text/BMText$AutoScale;->CapScreenSize:Lcom/ardor3d/ui/text/BMText$AutoScale;

    if-ne v0, v1, :cond_2

    cmpl-double v0, v12, v10

    if-lez v0, :cond_2

    move-wide v0, v10

    goto :goto_1

    :cond_2
    move-wide v0, v12

    :goto_1
    iget-wide v2, v7, Lcom/ardor3d/ui/text/BMText;->_fontScale:D

    mul-double v3, v0, v2

    neg-double v5, v3

    move-object v0, p0

    move-wide v1, v3

    invoke-virtual/range {v0 .. v6}, Lcom/ardor3d/scenegraph/Spatial;->setScale(DDD)V

    :cond_3
    sget-object v0, Lcom/ardor3d/ui/text/BMText$1;->$SwitchMap$com$ardor3d$ui$text$BMText$AutoFade:[I

    iget-object v1, v7, Lcom/ardor3d/ui/text/BMText;->_autoFade:Lcom/ardor3d/ui/text/BMText$AutoFade;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_2

    :cond_4
    iget v5, v7, Lcom/ardor3d/ui/text/BMText;->_screenSizeAlphaFalloff:F

    move-object v0, p0

    move-wide v1, v10

    move-wide v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/ui/text/BMText;->screenSizeCapAlphaFade(DDF)V

    goto :goto_2

    :cond_5
    iget v0, v7, Lcom/ardor3d/ui/text/BMText;->_fixedPixelAlphaThresh:I

    int-to-double v0, v0

    div-double v1, v8, v0

    iget v5, v7, Lcom/ardor3d/ui/text/BMText;->_screenSizeAlphaFalloff:F

    move-object v0, p0

    move-wide v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/ardor3d/ui/text/BMText;->screenSizeCapAlphaFade(DDF)V

    goto :goto_2

    :cond_6
    iget-object v0, v7, Lcom/ardor3d/ui/text/BMText;->_distanceAlphaRange:Lcom/ardor3d/math/Vector2;

    iget-object v1, v7, Lcom/ardor3d/ui/text/BMText;->_look:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v1}, Lcom/ardor3d/math/Vector3;->length()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ardor3d/ui/text/BMText;->distanceAlphaFade(Lcom/ardor3d/math/type/ReadOnlyVector2;D)V

    :cond_7
    :goto_2
    return-void
.end method
