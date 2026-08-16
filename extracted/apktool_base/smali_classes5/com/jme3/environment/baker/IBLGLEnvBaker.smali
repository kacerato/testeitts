.class public Lcom/jme3/environment/baker/IBLGLEnvBaker;
.super Lcom/jme3/environment/baker/GenericEnvBaker;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/environment/baker/IBLEnvBaker;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected brtf:Lcom/jme3/texture/Texture2D;

.field protected irradiance:Lcom/jme3/texture/TextureCubeMap;

.field protected specular:Lcom/jme3/texture/TextureCubeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/jme3/environment/baker/GenericEnvBaker;-><init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;I)V

    new-instance p2, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {p2, p7, p7, p3}, Lcom/jme3/texture/TextureCubeMap;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    sget-object p4, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p2, p4}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    sget-object p5, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p2, p5}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    sget-object p5, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p2, p5}, Lcom/jme3/texture/TextureCubeMap;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p2

    sget-object p7, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p2, p7}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    new-instance p2, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {p2, p6, p6, p3}, Lcom/jme3/texture/TextureCubeMap;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p2, p4}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    sget-object p4, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p2, p4}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p2, p5}, Lcom/jme3/texture/TextureCubeMap;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p2

    invoke-virtual {p2, p7}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    int-to-double p4, p6

    invoke-static {p4, p5}, Ljava/lang/Math;->log(D)D

    move-result-wide p4

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    invoke-static {p6, p7}, Ljava/lang/Math;->log(D)D

    move-result-wide p6

    div-double/2addr p4, p6

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    add-double/2addr p4, p6

    double-to-int p2, p4

    iget-object p4, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jme3/texture/Image;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p5}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p5

    invoke-virtual {p5}, Lcom/jme3/texture/Image;->getHeight()I

    move-result p5

    invoke-virtual {p0, p2, p4, p5, p1}, Lcom/jme3/environment/baker/GenericEnvBaker;->limitMips(IIILcom/jme3/renderer/RenderManager;)I

    move-result p1

    new-array p2, p1, [I

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_0

    add-int/lit8 p5, p1, -0x1

    sub-int/2addr p5, p4

    int-to-float p5, p5

    const/high16 p6, 0x40000000    # 2.0f

    invoke-static {p6, p5}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p5

    float-to-int p5, p5

    mul-int/2addr p5, p5

    iget-object p6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p6

    invoke-virtual {p6}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p6

    invoke-virtual {p6}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result p6

    div-int/lit8 p6, p6, 0x8

    mul-int/2addr p5, p6

    aput p5, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    new-instance p1, Lcom/jme3/texture/Texture2D;

    invoke-direct {p1, p8, p8, p3}, Lcom/jme3/texture/Texture2D;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p1, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    sget-object p2, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    sget-object p2, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    sget-object p2, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Texture2D;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    sget-object p2, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method

.method private bakeSpecularIBL(IFLcom/jme3/material/Material;Lcom/jme3/scene/Geometry;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 1
    const-string v1, "Roughness"

    move/from16 v2, p2

    invoke-virtual {v8, v1, v2}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    .line 2
    iget-object v1, v7, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3, v2}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 3
    iget-object v4, v7, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v2}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v2

    mul-float/2addr v4, v2

    float-to-int v2, v4

    const/4 v10, 0x6

    .line 4
    new-array v11, v10, [Lcom/jme3/texture/FrameBuffer;

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-ge v3, v10, :cond_0

    .line 5
    new-instance v4, Lcom/jme3/texture/FrameBuffer;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v2, v5}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    aput-object v4, v11, v3

    .line 6
    invoke-virtual {v4, v12}, Lcom/jme3/texture/FrameBuffer;->setSrgb(Z)V

    .line 7
    aget-object v4, v11, v3

    iget-object v5, v7, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-static {v5}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->level(I)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->face(I)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    .line 8
    aget-object v4, v11, v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Lcom/jme3/texture/FrameBuffer;->setMipMapsGenerationHint(Ljava/lang/Boolean;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_1
    if-ge v13, v10, :cond_2

    .line 9
    aget-object v14, v11, v13

    .line 10
    const-string v0, "FaceId"

    invoke-virtual {v8, v0, v13}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 11
    invoke-virtual {v9, v0}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    .line 12
    invoke-virtual/range {p4 .. p4}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    .line 13
    iget-object v15, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v14}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v3

    sget-object v4, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/environment/baker/GenericEnvBaker;->updateAndGetInternalCamera(IIILcom/jme3/math/Vector3f;FF)Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v15, v0, v12}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    .line 14
    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-interface {v0, v14}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    .line 15
    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, v9}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, v7, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v7, v14, v0, v13}, Lcom/jme3/environment/baker/GenericEnvBaker;->pull(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/Texture;I)Ljava/nio/ByteBuffer;

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v12, v10, :cond_3

    .line 18
    aget-object v0, v11, v12

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private roughnessFromMip(I)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    int-to-float p1, p1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float/2addr p1, p1

    return p1
.end method


# virtual methods
.method public bakeIrradiance()V
    .locals 14

    new-instance v0, Lcom/jme3/scene/shape/Box;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "BakeBox"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    iget-object v2, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jme3/texture/FrameBuffer;->setSrgb(Z)V

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->startPulling()V

    :cond_0
    move v3, v2

    :goto_0
    const/4 v5, 0x6

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-static {v5}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v5

    invoke-static {}, Lcom/jme3/texture/TextureCubeMap$Face;->values()[Lcom/jme3/texture/TextureCubeMap$Face;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->face(Lcom/jme3/texture/TextureCubeMap$Face;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/jme3/material/Material;

    iget-object v6, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v7, "Common/IBL/IBLKernels.j3md"

    invoke-direct {v3, v6, v7}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v6, "UseIrradiance"

    invoke-virtual {v3, v6, v4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    const-string v4, "EnvMap"

    iget-object v6, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v3, v4, v6}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {v0, v4}, Lcom/jme3/texture/FrameBuffer;->setTargetIndex(I)V

    const-string v6, "FaceId"

    invoke-virtual {v3, v6, v4}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v6, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v10

    sget-object v11, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x447a0000    # 1000.0f

    move-object v7, p0

    move v8, v4

    invoke-virtual/range {v7 .. v13}, Lcom/jme3/environment/baker/GenericEnvBaker;->updateAndGetInternalCamera(IIILcom/jme3/math/Vector3f;FF)Lcom/jme3/renderer/Camera;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    iget-object v6, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v6}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v6, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v6, v1}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0, v0, v6, v4}, Lcom/jme3/environment/baker/GenericEnvBaker;->pull(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/Texture;I)Ljava/nio/ByteBuffer;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/baker/GenericEnvBaker;->endPulling(Lcom/jme3/texture/Texture;)V

    :cond_4
    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method public bakeSpecularIBL()V
    .locals 11

    .line 19
    new-instance v0, Lcom/jme3/scene/shape/Box;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    .line 20
    new-instance v2, Lcom/jme3/scene/Geometry;

    const-string v3, "BakeBox"

    invoke-direct {v2, v3, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 21
    new-instance v0, Lcom/jme3/material/Material;

    iget-object v3, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v4, "Common/IBL/IBLKernels.j3md"

    invoke-direct {v0, v3, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 22
    const-string v3, "UseSpecularIBL"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string v3, "EnvMap"

    iget-object v5, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v0, v3, v5}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 24
    invoke-virtual {v2, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    .line 25
    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->startPulling()V

    :cond_0
    const/4 v3, 0x0

    move v5, v3

    .line 27
    :goto_0
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 28
    :try_start_0
    invoke-direct {p0, v5}, Lcom/jme3/environment/baker/IBLGLEnvBaker;->roughnessFromMip(I)F

    move-result v6

    .line 29
    invoke-direct {p0, v5, v6, v0, v2}, Lcom/jme3/environment/baker/IBLGLEnvBaker;->bakeSpecularIBL(IFLcom/jme3/material/Material;Lcom/jme3/scene/Geometry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    .line 30
    sget-object v7, Lcom/jme3/environment/baker/IBLGLEnvBaker;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while computing mip level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_1
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 32
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v6

    .line 33
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 34
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    .line 35
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V

    .line 36
    array-length v5, v5

    if-gt v5, v4, :cond_2

    .line 37
    :try_start_1
    sget-object v4, Lcom/jme3/environment/baker/IBLGLEnvBaker;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Workaround driver BUG: only one mip level is usable, regenerate mip 0 with roughness 1 to avoid an overly shiny fallback"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/jme3/environment/baker/IBLGLEnvBaker;->bakeSpecularIBL(IFLcom/jme3/material/Material;Lcom/jme3/scene/Geometry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 39
    sget-object v1, Lcom/jme3/environment/baker/IBLGLEnvBaker;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Error while recomputing mip level 0"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/baker/GenericEnvBaker;->endPulling(Lcom/jme3/texture/Texture;)V

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method public genBRTF()Lcom/jme3/texture/Texture2D;
    .locals 12

    new-instance v0, Lcom/jme3/ui/Picture;

    const-string v1, "BakeScreen"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;Z)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/jme3/ui/Picture;->setWidth(F)V

    invoke-virtual {v0, v1}, Lcom/jme3/ui/Picture;->setHeight(F)V

    new-instance v1, Lcom/jme3/texture/FrameBuffer;

    iget-object v3, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v4

    invoke-direct {v1, v3, v4, v2}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/jme3/texture/FrameBuffer;->setSrgb(Z)V

    iget-object v4, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-static {v4}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->startPulling()V

    :cond_0
    iget-object v4, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v7

    iget-object v4, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v8

    sget-object v9, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/jme3/environment/baker/GenericEnvBaker;->updateAndGetInternalCamera(IIILcom/jme3/math/Vector3f;FF)Lcom/jme3/renderer/Camera;

    move-result-object v4

    new-instance v5, Lcom/jme3/material/Material;

    iget-object v6, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v7, "Common/IBL/IBLKernels.j3md"

    invoke-direct {v5, v6, v7}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v6, "UseBRDF"

    invoke-virtual {v5, v6, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2, v4, v3}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2, v0}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {p0, v1, v0, v3}, Lcom/jme3/environment/baker/GenericEnvBaker;->pull(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/Texture;I)Ljava/nio/ByteBuffer;

    :cond_1
    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->dispose()V

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/baker/GenericEnvBaker;->endPulling(Lcom/jme3/texture/Texture;)V

    :cond_2
    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->brtf:Lcom/jme3/texture/Texture2D;

    return-object v0
.end method

.method public getIrradiance()Lcom/jme3/texture/TextureCubeMap;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->irradiance:Lcom/jme3/texture/TextureCubeMap;

    return-object v0
.end method

.method public getSpecularIBL()Lcom/jme3/texture/TextureCubeMap;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLGLEnvBaker;->specular:Lcom/jme3/texture/TextureCubeMap;

    return-object v0
.end method
