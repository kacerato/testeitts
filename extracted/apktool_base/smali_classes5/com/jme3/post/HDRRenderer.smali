.class public Lcom/jme3/post/HDRRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/post/SceneProcessor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LUMMODE_DECODE_LUM:I = 0x3

.field private static final LUMMODE_ENCODE_LUM:I = 0x2

.field private static final LUMMODE_NONE:I = 0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private blendFactor:F

.field private bufFormat:Lcom/jme3/texture/Image$Format;

.field private curSrc:I

.field private enabled:Z

.field private exposure:F

.field private fbCam:Lcom/jme3/renderer/Camera;

.field private fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

.field private fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

.field private fsQuad:Lcom/jme3/ui/Picture;

.field private hdr1:Lcom/jme3/material/Material;

.field private hdr64:Lcom/jme3/material/Material;

.field private hdr8:Lcom/jme3/material/Material;

.field private mainScene:Lcom/jme3/texture/Texture2D;

.field private mainSceneFB:Lcom/jme3/texture/FrameBuffer;

.field private final manager:Lcom/jme3/asset/AssetManager;

.field private maxIterations:I

.field private msFB:Lcom/jme3/texture/FrameBuffer;

.field private numSamples:I

.field private oppSrc:I

.field private renderManager:Lcom/jme3/renderer/RenderManager;

.field private renderer:Lcom/jme3/renderer/Renderer;

.field private scene1:[Lcom/jme3/texture/Texture2D;

.field private scene1FB:[Lcom/jme3/texture/FrameBuffer;

.field private scene64:Lcom/jme3/texture/Texture2D;

.field private scene64FB:Lcom/jme3/texture/FrameBuffer;

.field private scene8:Lcom/jme3/texture/Texture2D;

.field private scene8FB:Lcom/jme3/texture/FrameBuffer;

.field private throttle:F

.field private time:F

.field private tone:Lcom/jme3/material/Material;

.field private viewPort:Lcom/jme3/renderer/ViewPort;

.field private whiteLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/post/HDRRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/post/HDRRenderer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/Renderer;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/renderer/Camera;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->fbCam:Lcom/jme3/renderer/Camera;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/jme3/texture/FrameBuffer;

    iput-object v2, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    new-array v0, v0, [Lcom/jme3/texture/Texture2D;

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/post/HDRRenderer;->time:F

    const/4 v2, -0x1

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->oppSrc:I

    iput v0, p0, Lcom/jme3/post/HDRRenderer;->blendFactor:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/post/HDRRenderer;->numSamples:I

    const v3, 0x3e3851ec    # 0.18f

    iput v3, p0, Lcom/jme3/post/HDRRenderer;->exposure:F

    const/high16 v3, 0x42c80000    # 100.0f

    iput v3, p0, Lcom/jme3/post/HDRRenderer;->whiteLevel:F

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/jme3/post/HDRRenderer;->throttle:F

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->maxIterations:I

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    iput-object v2, p0, Lcom/jme3/post/HDRRenderer;->bufFormat:Lcom/jme3/texture/Image$Format;

    sget-object v2, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    iput-object v2, p0, Lcom/jme3/post/HDRRenderer;->fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v2, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    iput-object v2, p0, Lcom/jme3/post/HDRRenderer;->fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

    iput-boolean v1, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->manager:Lcom/jme3/asset/AssetManager;

    iput-object p2, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {p2}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object p1

    sget-object p2, Lcom/jme3/renderer/Caps;->PackedFloatColorBuffer:Lcom/jme3/renderer/Caps;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/jme3/texture/Image$Format;->RGB111110F:Lcom/jme3/texture/Image$Format;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->bufFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGB:Lcom/jme3/renderer/Caps;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/jme3/texture/Image$Format;->RGB16F:Lcom/jme3/texture/Image$Format;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->bufFormat:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/jme3/renderer/Caps;->HalfFloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/jme3/texture/Image$Format;->RGBA16F:Lcom/jme3/texture/Image$Format;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->bufFormat:Lcom/jme3/texture/Image$Format;

    :goto_0
    return-void

    :cond_2
    iput-boolean v0, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    return-void
.end method

.method private createLumShader(IIIIIILcom/jme3/texture/Texture;)Lcom/jme3/material/Material;
    .locals 3

    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->manager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Hdr/LogLum.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    new-instance v1, Lcom/jme3/math/Vector2f;

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    div-float p3, v2, p3

    int-to-float p4, p4

    div-float p4, v2, p4

    invoke-direct {v1, p3, p4}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance p3, Lcom/jme3/math/Vector2f;

    int-to-float p1, p1

    div-float p1, v2, p1

    int-to-float p2, p2

    div-float/2addr v2, p2

    invoke-direct {p3, p1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    new-instance p1, Lcom/jme3/math/Vector2f;

    invoke-direct {p1}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 p2, -0x1

    if-eq p6, p2, :cond_1

    :cond_0
    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector2f;->multLocal(F)Lcom/jme3/math/Vector2f;

    iget p2, v1, Lcom/jme3/math/Vector2f;->x:F

    iget p4, p3, Lcom/jme3/math/Vector2f;->x:F

    div-float/2addr p2, p4

    iget p4, v1, Lcom/jme3/math/Vector2f;->y:F

    iget v2, p3, Lcom/jme3/math/Vector2f;->y:F

    div-float/2addr p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    iget p2, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p4, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p2, p4

    int-to-float p4, p6

    cmpl-float p4, p2, p4

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_1
    iget p2, v1, Lcom/jme3/math/Vector2f;->x:F

    iget p4, p3, Lcom/jme3/math/Vector2f;->x:F

    div-float/2addr p2, p4

    iget p4, v1, Lcom/jme3/math/Vector2f;->y:F

    iget p6, p3, Lcom/jme3/math/Vector2f;->y:F

    div-float/2addr p4, p6

    invoke-virtual {p1, p2, p4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    iget p2, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    mul-float/2addr p2, p1

    :goto_0
    const-string p1, "Blocks"

    const/4 p4, 0x1

    invoke-virtual {v0, p1, p4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x2

    if-ne p5, p1, :cond_2

    const-string p1, "EncodeLum"

    invoke-virtual {v0, p1, p4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    if-ne p5, p1, :cond_3

    const-string p1, "DecodeLum"

    invoke-virtual {v0, p1, p4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    const-string p1, "Texture"

    invoke-virtual {v0, p1, p7}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    const-string p1, "BlockSize"

    invoke-virtual {v0, p1, v1}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    const-string p1, "PixelSize"

    invoke-virtual {v0, p1, p3}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    const-string p1, "NumPixels"

    invoke-virtual {v0, p1, p2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method private createLumShaders()V
    .locals 9

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v3

    iget v7, p0, Lcom/jme3/post/HDRRenderer;->maxIterations:I

    iget-object v8, p0, Lcom/jme3/post/HDRRenderer;->mainScene:Lcom/jme3/texture/Texture2D;

    const/16 v4, 0x40

    const/16 v5, 0x40

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/jme3/post/HDRRenderer;->createLumShader(IIIIIILcom/jme3/texture/Texture;)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->hdr64:Lcom/jme3/material/Material;

    iget v7, p0, Lcom/jme3/post/HDRRenderer;->maxIterations:I

    iget-object v8, p0, Lcom/jme3/post/HDRRenderer;->scene64:Lcom/jme3/texture/Texture2D;

    const/16 v2, 0x40

    const/16 v3, 0x40

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/jme3/post/HDRRenderer;->createLumShader(IIIIIILcom/jme3/texture/Texture;)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->hdr8:Lcom/jme3/material/Material;

    iget v7, p0, Lcom/jme3/post/HDRRenderer;->maxIterations:I

    iget-object v8, p0, Lcom/jme3/post/HDRRenderer;->scene8:Lcom/jme3/texture/Texture2D;

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/jme3/post/HDRRenderer;->createLumShader(IIIIIILcom/jme3/texture/Texture;)Lcom/jme3/material/Material;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->hdr1:Lcom/jme3/material/Material;

    return-void
.end method

.method private opposite(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    iget-object v2, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v2}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/jme3/ui/Picture;->setWidth(F)V

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    iget-object v2, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v2}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/jme3/ui/Picture;->setHeight(F)V

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbCam:Lcom/jme3/renderer/Camera;

    iget-object v2, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v2}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/jme3/ui/Picture;->setWidth(F)V

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/jme3/ui/Picture;->setHeight(F)V

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    :goto_0
    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    invoke-virtual {v1, p3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object p3, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    invoke-virtual {p3}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object p3, p0, Lcom/jme3/post/HDRRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbCam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p3, v1, v0}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    invoke-interface {p1, p2}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-interface {p1, v0, v0, v0}, Lcom/jme3/renderer/Renderer;->clearBuffers(ZZZ)V

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object p2, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    return-void
.end method

.method private renderToneMap(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    const-string v1, "A"

    iget v2, p0, Lcom/jme3/post/HDRRenderer;->exposure:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    const-string v1, "White"

    iget v2, p0, Lcom/jme3/post/HDRRenderer;->whiteLevel:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    iget v2, p0, Lcom/jme3/post/HDRRenderer;->oppSrc:I

    aget-object v1, v1, v2

    const-string v2, "Lum"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    iget v2, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    aget-object v1, v1, v2

    const-string v2, "Lum2"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    const-string v1, "BlendFactor"

    iget v2, p0, Lcom/jme3/post/HDRRenderer;->blendFactor:F

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    invoke-direct {p0, p1, p2, v0}, Lcom/jme3/post/HDRRenderer;->renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V

    return-void
.end method

.method private updateAverageLuminance(Lcom/jme3/renderer/Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64FB:Lcom/jme3/texture/FrameBuffer;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->hdr64:Lcom/jme3/material/Material;

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/post/HDRRenderer;->renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene8FB:Lcom/jme3/texture/FrameBuffer;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->hdr8:Lcom/jme3/material/Material;

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/post/HDRRenderer;->renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    iget v1, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->hdr1:Lcom/jme3/material/Material;

    invoke-direct {p0, p1, v0, v1}, Lcom/jme3/post/HDRRenderer;->renderProcessing(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/material/Material;)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    iget-boolean v0, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->msFB:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64FB:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene8FB:Lcom/jme3/texture/FrameBuffer;

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_3
    return-void
.end method

.method public createDisplayQuad()Lcom/jme3/ui/Picture;
    .locals 3

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64:Lcom/jme3/texture/Texture2D;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->manager:Lcom/jme3/asset/AssetManager;

    const-string v2, "Common/MatDefs/Hdr/LogLum.j3md"

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v1, "DecodeLum"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    const-string v1, "Texture"

    iget-object v2, p0, Lcom/jme3/post/HDRRenderer;->scene64:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    new-instance v1, Lcom/jme3/ui/Picture;

    const-string v2, "Luminance Display"

    invoke-direct {v1, v2}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 4

    iget-boolean v0, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iput-object p2, p0, Lcom/jme3/post/HDRRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    new-instance p1, Lcom/jme3/ui/Picture;

    const-string v0, "HDR Fullscreen Quad"

    invoke-direct {p1, v0}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->fsQuad:Lcom/jme3/ui/Picture;

    sget-object p1, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64FB:Lcom/jme3/texture/FrameBuffer;

    new-instance v0, Lcom/jme3/texture/Texture2D;

    invoke-direct {v0, v1, v1, p1}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene64FB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v1, v0}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene64:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v1, v2}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene8FB:Lcom/jme3/texture/FrameBuffer;

    new-instance v0, Lcom/jme3/texture/Texture2D;

    invoke-direct {v0, v1, v1, p1}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene8:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene8FB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v1, v0}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene8:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene8:Lcom/jme3/texture/Texture2D;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    new-instance v1, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    new-instance v1, Lcom/jme3/texture/Texture2D;

    invoke-direct {v1, v2, v2, p1}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    new-instance v1, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    new-instance v1, Lcom/jme3/texture/Texture2D;

    invoke-direct {v1, v2, v2, p1}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    aput-object v1, v0, v2

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->scene1FB:[Lcom/jme3/texture/FrameBuffer;

    aget-object p1, p1, v2

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->scene1:[Lcom/jme3/texture/Texture2D;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    new-instance p1, Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->manager:Lcom/jme3/asset/AssetManager;

    const-string v1, "Common/MatDefs/Hdr/ToneMap.j3md"

    invoke-direct {p1, v0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    const-string v0, "A"

    const v1, 0x3e3851ec    # 0.18f

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    const-string v0, "White"

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/jme3/post/HDRRenderer;->reshape(Lcom/jme3/renderer/ViewPort;II)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 4

    iget-boolean p1, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->msFB:Lcom/jme3/texture/FrameBuffer;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2, v2}, Lcom/jme3/renderer/Renderer;->copyFrameBuffer(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;ZZ)V

    :cond_1
    iget p1, p0, Lcom/jme3/post/HDRRenderer;->throttle:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    iput v1, p0, Lcom/jme3/post/HDRRenderer;->oppSrc:I

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->blendFactor:F

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->time:F

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {p0, p1}, Lcom/jme3/post/HDRRenderer;->updateAverageLuminance(Lcom/jme3/renderer/Renderer;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    iput v1, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    iput v1, p0, Lcom/jme3/post/HDRRenderer;->oppSrc:I

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {p0, p1}, Lcom/jme3/post/HDRRenderer;->updateAverageLuminance(Lcom/jme3/renderer/Renderer;)V

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->blendFactor:F

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->time:F

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/jme3/post/HDRRenderer;->time:F

    cmpl-float p1, v3, p1

    if-lez p1, :cond_4

    iput v0, p0, Lcom/jme3/post/HDRRenderer;->oppSrc:I

    invoke-direct {p0, v0}, Lcom/jme3/post/HDRRenderer;->opposite(I)I

    move-result p1

    iput p1, p0, Lcom/jme3/post/HDRRenderer;->curSrc:I

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-direct {p0, p1}, Lcom/jme3/post/HDRRenderer;->updateAverageLuminance(Lcom/jme3/renderer/Renderer;)V

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->blendFactor:F

    iput v2, p0, Lcom/jme3/post/HDRRenderer;->time:F

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jme3/post/HDRRenderer;->renderToneMap(Lcom/jme3/renderer/Renderer;Lcom/jme3/texture/FrameBuffer;)V

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->renderManager:Lcom/jme3/renderer/RenderManager;

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 0

    return-void
.end method

.method public preFrame(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/post/HDRRenderer;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/jme3/post/HDRRenderer;->time:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/post/HDRRenderer;->time:F

    iget p1, p0, Lcom/jme3/post/HDRRenderer;->throttle:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/post/HDRRenderer;->blendFactor:F

    return-void
.end method

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v1, v0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_0
    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p3, v1}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    new-instance v0, Lcom/jme3/texture/Texture2D;

    iget-object v2, p0, Lcom/jme3/post/HDRRenderer;->bufFormat:Lcom/jme3/texture/Image$Format;

    invoke-direct {v0, p2, p3, v2}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainScene:Lcom/jme3/texture/Texture2D;

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    sget-object v2, Lcom/jme3/texture/Image$Format;->Depth:Lcom/jme3/texture/Image$Format;

    invoke-virtual {v0, v2}, Lcom/jme3/texture/FrameBuffer;->setDepthBuffer(Lcom/jme3/texture/Image$Format;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    iget-object v3, p0, Lcom/jme3/post/HDRRenderer;->mainScene:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/FrameBuffer;->setColorTexture(Lcom/jme3/texture/Texture2D;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainScene:Lcom/jme3/texture/Texture2D;

    iget-object v3, p0, Lcom/jme3/post/HDRRenderer;->fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->mainScene:Lcom/jme3/texture/Texture2D;

    iget-object v3, p0, Lcom/jme3/post/HDRRenderer;->fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, v3}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->msFB:Lcom/jme3/texture/FrameBuffer;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v3, v0}, Lcom/jme3/renderer/Renderer;->deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :cond_1
    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->tone:Lcom/jme3/material/Material;

    const-string v3, "Texture"

    iget-object v4, p0, Lcom/jme3/post/HDRRenderer;->mainScene:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v0, v3, v4}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    iget-object v0, p0, Lcom/jme3/post/HDRRenderer;->renderer:Lcom/jme3/renderer/Renderer;

    invoke-interface {v0}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v0

    iget v3, p0, Lcom/jme3/post/HDRRenderer;->numSamples:I

    if-le v3, v1, :cond_2

    sget-object v3, Lcom/jme3/renderer/Caps;->FrameBufferMultisample:Lcom/jme3/renderer/Caps;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    iget v1, p0, Lcom/jme3/post/HDRRenderer;->numSamples:I

    invoke-direct {v0, p2, p3, v1}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    iput-object v0, p0, Lcom/jme3/post/HDRRenderer;->msFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {v0, v2}, Lcom/jme3/texture/FrameBuffer;->setDepthBuffer(Lcom/jme3/texture/Image$Format;)V

    iget-object p2, p0, Lcom/jme3/post/HDRRenderer;->msFB:Lcom/jme3/texture/FrameBuffer;

    iget-object p3, p0, Lcom/jme3/post/HDRRenderer;->bufFormat:Lcom/jme3/texture/Image$Format;

    invoke-virtual {p2, p3}, Lcom/jme3/texture/FrameBuffer;->setColorBuffer(Lcom/jme3/texture/Image$Format;)V

    iget-object p2, p0, Lcom/jme3/post/HDRRenderer;->msFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/jme3/post/HDRRenderer;->numSamples:I

    if-le p2, v1, :cond_3

    sget-object p2, Lcom/jme3/post/HDRRenderer;->logger:Ljava/util/logging/Logger;

    const-string p3, "FBO multisampling not supported on this GPU, request ignored."

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lcom/jme3/post/HDRRenderer;->mainSceneFB:Lcom/jme3/texture/FrameBuffer;

    invoke-virtual {p1, p2}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    :goto_0
    invoke-direct {p0}, Lcom/jme3/post/HDRRenderer;->createLumShaders()V

    return-void
.end method

.method public setExposure(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/post/HDRRenderer;->exposure:F

    return-void
.end method

.method public setMaxIterations(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/post/HDRRenderer;->maxIterations:I

    iget-object p1, p0, Lcom/jme3/post/HDRRenderer;->hdr64:Lcom/jme3/material/Material;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/jme3/post/HDRRenderer;->createLumShaders()V

    :cond_0
    return-void
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    return-void
.end method

.method public setSamples(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/post/HDRRenderer;->numSamples:I

    return-void
.end method

.method public setThrottle(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/post/HDRRenderer;->throttle:F

    return-void
.end method

.method public setUseFastFilter(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/jme3/texture/Texture$MagFilter;->Nearest:Lcom/jme3/texture/Texture$MagFilter;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

    sget-object p1, Lcom/jme3/texture/Texture$MinFilter;->NearestNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->fbMagFilter:Lcom/jme3/texture/Texture$MagFilter;

    sget-object p1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    iput-object p1, p0, Lcom/jme3/post/HDRRenderer;->fbMinFilter:Lcom/jme3/texture/Texture$MinFilter;

    :goto_0
    return-void
.end method

.method public setWhiteLevel(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/post/HDRRenderer;->whiteLevel:F

    return-void
.end method
