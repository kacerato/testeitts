.class public Lcom/jme3/environment/baker/IBLGLEnvBakerLight;
.super Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;
.source "SourceFile"


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final NUM_SH_COEFFICIENT:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;II)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;-><init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;II)V

    return-void
.end method


# virtual methods
.method public bakeSphericalHarmonicsCoefficients()V
    .locals 23

    move-object/from16 v7, p0

    new-instance v0, Lcom/jme3/scene/shape/Box;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    new-instance v8, Lcom/jme3/scene/Geometry;

    const-string v1, "BakeBox"

    invoke-direct {v8, v1, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v9, Lcom/jme3/material/Material;

    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->assetManager:Lcom/jme3/asset/AssetManager;

    const-string v1, "Common/IBLSphH/IBLSphH.j3md"

    invoke-direct {v9, v0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v0, "Texture"

    iget-object v1, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v9, v0, v1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    new-instance v0, Lcom/jme3/math/Vector2f;

    iget-object v1, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    const-string v1, "Resolution"

    invoke-virtual {v9, v1, v0}, Lcom/jme3/material/Material;->setVector2(Ljava/lang/String;Lcom/jme3/math/Vector2f;)V

    invoke-virtual {v8, v9}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA32F:Lcom/jme3/texture/Image$Format;

    iget-object v1, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v1

    invoke-interface {v1}, Lcom/jme3/renderer/Renderer;->getCaps()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/jme3/renderer/Caps;->FloatColorBufferRGBA:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Float textures not supported, using RGB8 instead. This may cause accuracy issues."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    sget-object v0, Lcom/jme3/texture/Image$Format;->RGBA8:Lcom/jme3/texture/Image$Format;

    const v1, 0x3d4ccccd    # 0.05f

    move-object v12, v0

    move v15, v1

    goto :goto_0

    :cond_0
    move-object v12, v0

    move v15, v10

    :goto_0
    cmpl-float v17, v15, v10

    const-string v0, "RemapMaxValue"

    if-lez v17, :cond_1

    invoke-virtual {v9, v0, v15}, Lcom/jme3/material/Material;->setFloat(Ljava/lang/String;F)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v0}, Lcom/jme3/material/Material;->clearParam(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/jme3/texture/Texture2D;

    const/16 v14, 0x9

    const/4 v11, 0x1

    invoke-direct {v0, v14, v11, v11, v12}, Lcom/jme3/texture/Texture2D;-><init>(IIILcom/jme3/texture/Image$Format;)V

    new-instance v1, Lcom/jme3/texture/Texture2D;

    invoke-direct {v1, v14, v11, v11, v12}, Lcom/jme3/texture/Texture2D;-><init>(IIILcom/jme3/texture/Image$Format;)V

    filled-new-array {v0, v1}, [Lcom/jme3/texture/Texture2D;

    move-result-object v13

    new-instance v0, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v0, v14, v11, v11}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    new-instance v1, Lcom/jme3/texture/FrameBuffer;

    invoke-direct {v1, v14, v11, v11}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    filled-new-array {v0, v1}, [Lcom/jme3/texture/FrameBuffer;

    move-result-object v16

    const/4 v6, 0x0

    aget-object v0, v16, v6

    invoke-virtual {v0, v6}, Lcom/jme3/texture/FrameBuffer;->setSrgb(Z)V

    aget-object v0, v16, v6

    aget-object v1, v13, v6

    invoke-static {v1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    aget-object v0, v16, v11

    invoke-virtual {v0, v6}, Lcom/jme3/texture/FrameBuffer;->setSrgb(Z)V

    aget-object v0, v16, v11

    aget-object v1, v13, v11

    invoke-static {v1}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    const/4 v5, -0x1

    move v0, v5

    move v4, v6

    :goto_2
    const/4 v1, 0x6

    if-ge v4, v1, :cond_4

    if-eq v0, v5, :cond_3

    if-nez v0, :cond_2

    move v1, v11

    goto :goto_3

    :cond_2
    move v1, v6

    :goto_3
    const-string v2, "ShCoef"

    aget-object v0, v13, v0

    invoke-virtual {v9, v2, v0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    move/from16 v18, v1

    goto :goto_4

    :cond_3
    move/from16 v18, v6

    :goto_4
    const-string v0, "FaceId"

    invoke-virtual {v9, v0, v4}, Lcom/jme3/material/Material;->setInt(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    invoke-virtual {v8}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v3, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    aget-object v0, v16, v18

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    aget-object v0, v16, v18

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v19

    sget-object v20, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x447a0000    # 1000.0f

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v11, v3

    move/from16 v3, v19

    move/from16 v19, v4

    move-object/from16 v4, v20

    move/from16 v20, v5

    move/from16 v5, v21

    move v10, v6

    move/from16 v6, v22

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/environment/baker/GenericEnvBaker;->updateAndGetInternalCamera(IIILcom/jme3/math/Vector3f;FF)Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v11, v0, v10}, Lcom/jme3/renderer/RenderManager;->setCamera(Lcom/jme3/renderer/Camera;Z)V

    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    aget-object v1, v16, v18

    invoke-interface {v0, v1}, Lcom/jme3/renderer/Renderer;->setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0, v8}, Lcom/jme3/renderer/RenderManager;->renderGeometry(Lcom/jme3/scene/Geometry;)V

    add-int/lit8 v4, v19, 0x1

    move v6, v10

    move/from16 v0, v18

    move/from16 v5, v20

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move v10, v6

    aget-object v1, v16, v0

    invoke-virtual {v1}, Lcom/jme3/texture/FrameBuffer;->getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    mul-int/2addr v1, v14

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v2}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v2

    aget-object v0, v16, v0

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer;->getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lcom/jme3/renderer/Renderer;->readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Lcom/jme3/texture/Image;

    const/4 v2, 0x1

    sget-object v16, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    const/16 v13, 0x9

    move-object v11, v0

    move v3, v14

    move v14, v2

    move v2, v15

    move-object v15, v1

    invoke-direct/range {v11 .. v16}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    invoke-static {v0}, Lcom/jme3/texture/image/ImageRaster;->create(Lcom/jme3/texture/Image;)Lcom/jme3/texture/image/ImageRaster;

    move-result-object v1

    new-array v4, v3, [Lcom/jme3/math/Vector3f;

    iput-object v4, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    const/4 v4, 0x0

    :goto_5
    iget-object v5, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    array-length v5, v5

    if-ge v6, v5, :cond_7

    invoke-virtual {v1, v6, v10}, Lcom/jme3/texture/image/ImageRaster;->getPixel(II)Lcom/jme3/math/ColorRGBA;

    move-result-object v5

    iget-object v8, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    new-instance v9, Lcom/jme3/math/Vector3f;

    iget v11, v5, Lcom/jme3/math/ColorRGBA;->r:F

    iget v12, v5, Lcom/jme3/math/ColorRGBA;->g:F

    iget v13, v5, Lcom/jme3/math/ColorRGBA;->b:F

    invoke-direct {v9, v11, v12, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v9, v8, v6

    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    if-nez v9, :cond_5

    iget v4, v5, Lcom/jme3/math/ColorRGBA;->a:F

    goto :goto_6

    :cond_5
    iget v5, v5, Lcom/jme3/math/ColorRGBA;->a:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/jme3/environment/baker/IBLGLEnvBakerLight;->LOG:Ljava/util/logging/Logger;

    const-string v9, "SH weight is not uniform, this may cause issues."

    invoke-virtual {v5, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_6
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    if-lez v17, :cond_8

    div-float/2addr v4, v2

    :cond_8
    move v6, v10

    :goto_7
    if-ge v6, v3, :cond_a

    if-lez v17, :cond_9

    iget-object v1, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    aget-object v1, v1, v6

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :cond_9
    iget-object v1, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    aget-object v1, v1, v6

    const v5, 0x41490fdb

    div-float/2addr v5, v4

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    iget-object v1, v7, Lcom/jme3/environment/baker/IBLHybridEnvBakerLight;->shCoef:[Lcom/jme3/math/Vector3f;

    invoke-static {v1}, Lcom/jme3/environment/util/EnvMapUtils;->prepareShCoefs([Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    return-void
.end method

.method public isTexturePulling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->texturePulling:Z

    return v0
.end method
