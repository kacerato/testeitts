.class public Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;
.super Lcom/jme3/environment/baker/GenericEnvBaker;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/environment/baker/IBLEnvBakerLight;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected shCoef:[Lcom/jme3/math/Vector3f;

.field protected specular:Lcom/jme3/texture/TextureCubeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/jme3/environment/baker/GenericEnvBaker;-><init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;I)V

    new-instance p2, Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->getColorFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p3

    invoke-direct {p2, p6, p6, p3}, Lcom/jme3/texture/TextureCubeMap;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p2, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    sget-object p3, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p2, p3}, Lcom/jme3/texture/TextureCubeMap;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    sget-object p3, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p2, p3}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    sget-object p3, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p2, p3}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p2

    sget-object p3, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p2, p3}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    int-to-double p2, p6

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    const-wide/high16 p4, 0x4000000000000000L    # 2.0

    invoke-static {p4, p5}, Ljava/lang/Math;->log(D)D

    move-result-wide p4

    div-double/2addr p2, p4

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, p4

    double-to-int p2, p2

    iget-object p3, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p3

    invoke-virtual {p3}, Lcom/jme3/texture/Image;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jme3/texture/Image;->getHeight()I

    move-result p4

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/jme3/environment/baker/GenericEnvBaker;->limitMips(IIILcom/jme3/renderer/RenderManager;)I

    move-result p1

    new-array p2, p1, [I

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    add-int/lit8 p4, p1, -0x1

    sub-int/2addr p4, p3

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    invoke-static {p5, p4}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p4

    float-to-int p4, p4

    mul-int/2addr p4, p4

    iget-object p5, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p5}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p5

    invoke-virtual {p5}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p5

    invoke-virtual {p5}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result p5

    div-int/lit8 p5, p5, 0x8

    mul-int/2addr p4, p5

    aput p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    iget-object p1, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V

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
    iget-object v1, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

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
    iget-object v4, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

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

    iget-object v5, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

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
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

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

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

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
    invoke-virtual {p0}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->isTexturePulling()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->startPulling()V

    :cond_0
    const/4 v3, 0x0

    move v5, v3

    .line 27
    :goto_0
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 28
    :try_start_0
    invoke-direct {p0, v5}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->roughnessFromMip(I)F

    move-result v6

    .line 29
    invoke-direct {p0, v5, v6, v0, v2}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->bakeSpecularIBL(IFLcom/jme3/material/Material;Lcom/jme3/scene/Geometry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    .line 30
    sget-object v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->LOGGER:Ljava/util/logging/Logger;

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
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 32
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v6

    .line 33
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    .line 34
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    .line 35
    iget-object v6, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/jme3/texture/Image;->setMipmapsGenerated(Z)V

    .line 36
    array-length v5, v5

    if-gt v5, v4, :cond_2

    .line 37
    :try_start_1
    sget-object v4, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Workaround driver BUG: only one mip level is usable, regenerate mip 0 with roughness 1 to avoid an overly shiny fallback"

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->bakeSpecularIBL(IFLcom/jme3/material/Material;Lcom/jme3/scene/Geometry;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 39
    sget-object v1, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Error while recomputing mip level 0"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0, v0}, Lcom/jme3/environment/baker/GenericEnvBaker;->endPulling(Lcom/jme3/texture/Texture;)V

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method public bakeSphericalHarmonicsCoefficients()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->getEnvMap()Lcom/jme3/texture/TextureCubeMap;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/environment/util/EnvMapUtils;->getSphericalHarmonicsCoefficents(Lcom/jme3/texture/TextureCubeMap;)[Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Lcom/jme3/environment/util/EnvMapUtils;->prepareShCoefs([Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public getSpecularIBL()Lcom/jme3/texture/TextureCubeMap;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->specular:Lcom/jme3/texture/TextureCubeMap;

    return-object v0
.end method

.method public getSphericalHarmonicsCoefficients()[Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public isTexturePulling()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
