.class public abstract Lcom/jme3/environment/baker/GenericEnvBaker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/environment/baker/EnvBaker;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field protected static axisX:[Lcom/jme3/math/Vector3f;

.field protected static axisY:[Lcom/jme3/math/Vector3f;

.field protected static axisZ:[Lcom/jme3/math/Vector3f;


# instance fields
.field protected final assetManager:Lcom/jme3/asset/AssetManager;

.field protected bos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field protected final cam:Lcom/jme3/renderer/Camera;

.field protected colorFormat:Lcom/jme3/texture/Image$Format;

.field protected depthFormat:Lcom/jme3/texture/Image$Format;

.field protected envMap:Lcom/jme3/texture/TextureCubeMap;

.field protected final renderManager:Lcom/jme3/renderer/RenderManager;

.field protected texturePulling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Lcom/jme3/environment/baker/GenericEnvBaker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/environment/baker/GenericEnvBaker;->LOG:Ljava/util/logging/Logger;

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    sput-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    new-array v2, v0, [Lcom/jme3/math/Vector3f;

    sput-object v2, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    new-array v0, v0, [Lcom/jme3/math/Vector3f;

    sput-object v0, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v6

    aput-object v6, v1, v4

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    sget-object v6, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v7

    aput-object v7, v1, v4

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v4

    aput-object v4, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    aput-object v0, v1, v7

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    aput-object v0, v1, v4

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/RenderManager;Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Image$Format;Lcom/jme3/texture/Image$Format;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->texturePulling:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    iput-object p4, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->depthFormat:Lcom/jme3/texture/Image$Format;

    iput-object p3, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->colorFormat:Lcom/jme3/texture/Image$Format;

    iput-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    iput-object p2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance p1, Lcom/jme3/renderer/Camera;

    const/16 p2, 0x80

    invoke-direct {p1, p2, p2}, Lcom/jme3/renderer/Camera;-><init>(II)V

    iput-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->cam:Lcom/jme3/renderer/Camera;

    new-instance p1, Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->getColorFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p2

    invoke-direct {p1, p5, p5, p2}, Lcom/jme3/texture/TextureCubeMap;-><init>(IILcom/jme3/texture/Image$Format;)V

    iput-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    sget-object p2, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    sget-object p2, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    sget-object p2, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/TextureCubeMap;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    sget-object p2, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p1, p2}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    return-void
.end method


# virtual methods
.method public bakeEnvironment(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;FFLjava/util/function/Predicate;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/scene/Spatial;",
            "Lcom/jme3/math/Vector3f;",
            "FF",
            "Ljava/util/function/Predicate<",
            "Lcom/jme3/scene/Geometry;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x6

    new-array v10, v9, [Lcom/jme3/texture/FrameBuffer;

    const/4 v11, 0x0

    move v0, v11

    :goto_0
    const/4 v12, 0x1

    if-ge v0, v9, :cond_0

    new-instance v1, Lcom/jme3/texture/FrameBuffer;

    iget-object v2, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    iget-object v3, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3, v12}, Lcom/jme3/texture/FrameBuffer;-><init>(III)V

    aput-object v1, v10, v0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->getDepthFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    invoke-static {v2}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/texture/FrameBuffer;->setDepthTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferBufferTarget;)V

    aget-object v1, v10, v0

    invoke-virtual {v1, v11}, Lcom/jme3/texture/FrameBuffer;->setSrgb(Z)V

    aget-object v1, v10, v0

    iget-object v2, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-static {v2}, Lcom/jme3/texture/FrameBuffer$FrameBufferTarget;->newTarget(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v2

    invoke-static {}, Lcom/jme3/texture/TextureCubeMap$Face;->values()[Lcom/jme3/texture/TextureCubeMap$Face;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;->face(Lcom/jme3/texture/TextureCubeMap$Face;)Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/texture/FrameBuffer;->addColorTarget(Lcom/jme3/texture/FrameBuffer$FrameBufferTextureTarget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->startPulling()V

    :cond_1
    move v13, v11

    :goto_1
    if-ge v13, v9, :cond_3

    aget-object v14, v10, v13

    new-instance v15, Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v14}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result v2

    invoke-virtual {v14}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/environment/baker/GenericEnvBaker;->updateAndGetInternalCamera(IIILcom/jme3/math/Vector3f;FF)Lcom/jme3/renderer/Camera;

    move-result-object v0

    const-string v1, "EnvBaker"

    invoke-direct {v15, v1, v0}, Lcom/jme3/renderer/ViewPort;-><init>(Ljava/lang/String;Lcom/jme3/renderer/Camera;)V

    invoke-virtual {v15, v12, v12, v12}, Lcom/jme3/renderer/ViewPort;->setClearFlags(ZZZ)V

    sget-object v0, Lcom/jme3/math/ColorRGBA;->Pink:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v15, v0}, Lcom/jme3/renderer/ViewPort;->setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {v15, v14}, Lcom/jme3/renderer/ViewPort;->setOutputFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V

    invoke-virtual {v15}, Lcom/jme3/renderer/ViewPort;->clearScenes()V

    invoke-virtual {v15, v8}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/jme3/scene/Spatial;->updateLogicalState(F)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Spatial;->updateGeometricState()V

    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderFilter()Ljava/util/function/Predicate;

    move-result-object v0

    iget-object v1, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/RenderManager;->setRenderFilter(Ljava/util/function/Predicate;)V

    iget-object v1, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    const v3, 0x3e23d70a    # 0.16f

    invoke-virtual {v1, v15, v3}, Lcom/jme3/renderer/RenderManager;->renderViewPort(Lcom/jme3/renderer/ViewPort;F)V

    iget-object v1, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v1, v0}, Lcom/jme3/renderer/RenderManager;->setRenderFilter(Ljava/util/function/Predicate;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v7, v14, v0, v13}, Lcom/jme3/environment/baker/GenericEnvBaker;->pull(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/Texture;I)Ljava/nio/ByteBuffer;

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/baker/GenericEnvBaker;->isTexturePulling()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v7, v0}, Lcom/jme3/environment/baker/GenericEnvBaker;->endPulling(Lcom/jme3/texture/Texture;)V

    :cond_4
    iget-object v0, v7, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    :goto_2
    if-ge v11, v9, :cond_5

    aget-object v0, v10, v11

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->dispose()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public clean()V
    .locals 0

    return-void
.end method

.method public endPulling(Lcom/jme3/texture/Texture;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/jme3/environment/baker/GenericEnvBaker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Missing face {0}. Pulling incomplete!"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method public getColorFormat()Lcom/jme3/texture/Image$Format;
    .locals 3

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->colorFormat:Lcom/jme3/texture/Image$Format;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/jme3/renderer/Renderer;->getBestColorTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->colorFormat:Lcom/jme3/texture/Image$Format;

    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->colorFormat:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getDepthFormat()Lcom/jme3/texture/Image$Format;
    .locals 2

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->depthFormat:Lcom/jme3/texture/Image$Format;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Lcom/jme3/renderer/Renderer;->getBestDepthTargetFormat(ZZZ)Lcom/jme3/texture/Image$Format;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->depthFormat:Lcom/jme3/texture/Image$Format;

    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->depthFormat:Lcom/jme3/texture/Image$Format;

    return-object v0
.end method

.method public getEnvMap()Lcom/jme3/texture/TextureCubeMap;
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->envMap:Lcom/jme3/texture/TextureCubeMap;

    return-object v0
.end method

.method public isTexturePulling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->texturePulling:Z

    return v0
.end method

.method public limitMips(IIILcom/jme3/renderer/RenderManager;)I
    .locals 0

    const/4 p2, 0x6

    if-le p1, p2, :cond_0

    move p1, p2

    :cond_0
    return p1
.end method

.method public pull(Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/Texture;I)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getHeight()I

    move-result v0

    mul-int/2addr p2, v0

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/2addr p2, v0

    invoke-static {p2}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->renderManager:Lcom/jme3/renderer/RenderManager;

    invoke-virtual {v0}, Lcom/jme3/renderer/RenderManager;->getRenderer()Lcom/jme3/renderer/Renderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/jme3/renderer/Renderer;->readFrameBufferWithFormat(Lcom/jme3/texture/FrameBuffer;Ljava/nio/ByteBuffer;Lcom/jme3/texture/Image$Format;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p3, :cond_0

    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1, p3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p3

    new-array p3, p3, [B

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p3, Lcom/jme3/environment/baker/GenericEnvBaker;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p3, v1, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object p2

    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format mismatch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer;->getColorTarget()Lcom/jme3/texture/FrameBuffer$RenderBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/FrameBuffer$RenderBuffer;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "!="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setTexturePulling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->texturePulling:Z

    return-void
.end method

.method public startPulling()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->bos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateAndGetInternalCamera(IIILcom/jme3/math/Vector3f;FF)Lcom/jme3/renderer/Camera;
    .locals 2

    iget-object v0, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->cam:Lcom/jme3/renderer/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/jme3/renderer/Camera;->resize(IIZ)V

    iget-object p2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {p2, p4}, Lcom/jme3/renderer/Camera;->setLocation(Lcom/jme3/math/Vector3f;)V

    iget-object p2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->cam:Lcom/jme3/renderer/Camera;

    const/high16 p3, 0x42b40000    # 90.0f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, p4, p5, p6}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    iget-object p2, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->cam:Lcom/jme3/renderer/Camera;

    new-instance p3, Lcom/jme3/math/Quaternion;

    invoke-direct {p3}, Lcom/jme3/math/Quaternion;-><init>()V

    sget-object p4, Lcom/jme3/environment/baker/GenericEnvBaker;->axisX:[Lcom/jme3/math/Vector3f;

    aget-object p4, p4, p1

    sget-object p5, Lcom/jme3/environment/baker/GenericEnvBaker;->axisY:[Lcom/jme3/math/Vector3f;

    aget-object p5, p5, p1

    sget-object p6, Lcom/jme3/environment/baker/GenericEnvBaker;->axisZ:[Lcom/jme3/math/Vector3f;

    aget-object p1, p6, p1

    invoke-virtual {p3, p4, p5, p1}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/renderer/Camera;->setRotation(Lcom/jme3/math/Quaternion;)V

    iget-object p1, p0, Lcom/jme3/environment/baker/GenericEnvBaker;->cam:Lcom/jme3/renderer/Camera;

    return-object p1
.end method
