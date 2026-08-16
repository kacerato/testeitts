.class public Lcom/jme3/environment/util/EnvMapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;,
        Lcom/jme3/environment/util/EnvMapUtils$GenerationType;
    }
.end annotation


# static fields
.field public static final NUM_SH_COEFFICIENT:I = 0x9

.field public static shBandFactor:[F

.field private static final sqrt15Pi:F

.field private static final sqrt3Pi:F

.field private static final sqrt5Pi:F

.field private static final sqrtPi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x40490fdb    # (float)Math.PI

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    sput v0, Lcom/jme3/environment/util/EnvMapUtils;->sqrtPi:F

    const v0, 0x3f747645

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    sput v0, Lcom/jme3/environment/util/EnvMapUtils;->sqrt3Pi:F

    const v0, 0x3fcbb7e4

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    sput v0, Lcom/jme3/environment/util/EnvMapUtils;->sqrt5Pi:F

    const v0, 0x4098c9eb

    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    sput v0, Lcom/jme3/environment/util/EnvMapUtils;->sqrt15Pi:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f2aaaab
        0x3f2aaaab
        0x3f2aaaab
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
        0x3e800000    # 0.25f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areaElement(FF)F
    .locals 2

    mul-float v0, p0, p1

    float-to-double v0, v0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static createIrradianceMap(ILcom/jme3/texture/Image$Format;)Lcom/jme3/texture/TextureCubeMap;
    .locals 1

    new-instance v0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v0, p0, p0, p1}, Lcom/jme3/texture/TextureCubeMap;-><init>(IILcom/jme3/texture/Image$Format;)V

    sget-object p0, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, p0}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object p0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, p0}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p0

    sget-object p1, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    return-object v0
.end method

.method public static createPrefilteredEnvMap(ILcom/jme3/texture/Image$Format;)Lcom/jme3/texture/TextureCubeMap;
    .locals 3

    new-instance v0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v0, p0, p0, p1}, Lcom/jme3/texture/TextureCubeMap;-><init>(IILcom/jme3/texture/Image$Format;)V

    sget-object p1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object p1, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    sget-object v1, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    invoke-virtual {p1, v1}, Lcom/jme3/texture/Image;->setColorSpace(Lcom/jme3/texture/image/ColorSpace;)V

    int-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    div-double/2addr p0, v1

    double-to-int p0, p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance p1, Lcom/jme3/environment/util/CubeMapWrapper;

    invoke-direct {p1, v0}, Lcom/jme3/environment/util/CubeMapWrapper;-><init>(Lcom/jme3/texture/TextureCubeMap;)V

    invoke-virtual {p1, p0}, Lcom/jme3/environment/util/CubeMapWrapper;->initMipMaps(I)V

    return-object v0
.end method

.method public static duplicateCubeMap(Lcom/jme3/texture/TextureCubeMap;)Lcom/jme3/texture/TextureCubeMap;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    new-instance v7, Lcom/jme3/texture/Image;

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    new-instance v0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v0, v7}, Lcom/jme3/texture/TextureCubeMap;-><init>(Lcom/jme3/texture/Image;)V

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getAnisotropicFilter()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getMagFilter()Lcom/jme3/texture/Texture$MagFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    sget-object v1, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v1}, Lcom/jme3/texture/TextureCubeMap;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/jme3/texture/TextureCubeMap;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    return-object v0
.end method

.method public static evalShBasis(Lcom/jme3/math/Vector3f;[F)V
    .locals 9

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    mul-float v4, p0, p0

    sget v5, Lcom/jme3/environment/util/EnvMapUtils;->sqrtPi:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float/2addr v7, v5

    const/4 v5, 0x0

    aput v7, p1, v5

    sget v5, Lcom/jme3/environment/util/EnvMapUtils;->sqrt3Pi:F

    mul-float v7, v5, v1

    neg-float v7, v7

    div-float/2addr v7, v6

    const/4 v8, 0x1

    aput v7, p1, v8

    mul-float v7, v5, p0

    div-float/2addr v7, v6

    const/4 v8, 0x2

    aput v7, p1, v8

    mul-float/2addr v5, v0

    neg-float v5, v5

    div-float/2addr v5, v6

    const/4 v7, 0x3

    aput v5, p1, v7

    sget v5, Lcom/jme3/environment/util/EnvMapUtils;->sqrt15Pi:F

    mul-float v7, v5, v0

    mul-float/2addr v7, v1

    div-float/2addr v7, v6

    const/4 v8, 0x4

    aput v7, p1, v8

    mul-float/2addr v1, v5

    mul-float/2addr v1, p0

    neg-float v1, v1

    div-float/2addr v1, v6

    const/4 v7, 0x5

    aput v1, p1, v7

    sget v1, Lcom/jme3/environment/util/EnvMapUtils;->sqrt5Pi:F

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v4, v7

    const/high16 v7, -0x40800000    # -1.0f

    add-float/2addr v4, v7

    mul-float/2addr v1, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v1, v4

    const/4 v7, 0x6

    aput v1, p1, v7

    mul-float/2addr v0, v5

    mul-float/2addr v0, p0

    neg-float p0, v0

    div-float/2addr p0, v6

    const/4 v0, 0x7

    aput p0, p1, v0

    sub-float/2addr v2, v3

    mul-float/2addr v5, v2

    div-float/2addr v5, v4

    const/16 p0, 0x8

    aput v5, p1, p0

    return-void
.end method

.method public static getCubeMapCrossDebugView(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Node;
    .locals 18

    move-object/from16 v0, p1

    new-instance v1, Lcom/jme3/scene/Node;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CubeMapDebug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    const/4 v9, 0x6

    new-array v10, v9, [Lcom/jme3/ui/Picture;

    int-to-float v11, v2

    const/high16 v3, 0x43000000    # 128.0f

    div-float v12, v3, v11

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ge v14, v9, :cond_0

    new-instance v3, Lcom/jme3/ui/Picture;

    const-string v4, "bla"

    invoke-direct {v3, v4}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    aput-object v3, v10, v14

    new-instance v8, Lcom/jme3/texture/Texture2D;

    new-instance v7, Lcom/jme3/texture/Image;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v17

    move-object v3, v7

    move v5, v2

    move v6, v2

    move-object v9, v7

    move-object/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    invoke-direct {v13, v9}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    aget-object v3, v10, v14

    invoke-virtual {v3, v0, v13, v15}, Lcom/jme3/ui/Picture;->setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V

    aget-object v3, v10, v14

    invoke-virtual {v3, v11}, Lcom/jme3/ui/Picture;->setWidth(F)V

    aget-object v3, v10, v14

    invoke-virtual {v3, v11}, Lcom/jme3/ui/Picture;->setHeight(F)V

    aget-object v3, v10, v14

    invoke-virtual {v1, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x6

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-object v4, v10, v3

    mul-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v11, v5, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v3, v10, v3

    new-instance v4, Lcom/jme3/math/Quaternion;

    invoke-direct {v4}, Lcom/jme3/math/Quaternion;-><init>()V

    sget-object v7, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    const v8, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v4, v8, v7}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    aget-object v3, v10, v15

    mul-int/lit8 v4, v2, 0x3

    int-to-float v4, v4

    invoke-virtual {v3, v4, v5, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v3, v10, v15

    new-instance v9, Lcom/jme3/math/Quaternion;

    invoke-direct {v9}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v9, v8, v7}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v3, 0x2

    aget-object v9, v10, v3

    invoke-virtual {v9, v5, v4, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v3, v10, v3

    new-instance v9, Lcom/jme3/math/Quaternion;

    invoke-direct {v9}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v9, v8, v7}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v3, 0x3

    aget-object v9, v10, v3

    invoke-virtual {v9, v5, v11, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v3, v10, v3

    new-instance v9, Lcom/jme3/math/Quaternion;

    invoke-direct {v9}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v9, v8, v7}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v3, 0x4

    aget-object v9, v10, v3

    invoke-virtual {v9, v5, v5, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v10, v3

    new-instance v11, Lcom/jme3/math/Quaternion;

    invoke-direct {v11}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v11, v8, v7}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v9, 0x5

    aget-object v11, v10, v9

    mul-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v11, v2, v5, v6}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v3, v10, v9

    new-instance v5, Lcom/jme3/math/Quaternion;

    invoke-direct {v5}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v5, v8, v7}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    new-instance v3, Lcom/jme3/scene/shape/Quad;

    invoke-direct {v3, v2, v4}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    new-instance v2, Lcom/jme3/scene/Geometry;

    const-string v4, "bg"

    invoke-direct {v2, v4, v3}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v3, Lcom/jme3/material/Material;

    const-string v4, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v3, v0, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v0, "Color"

    sget-object v4, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v3, v0, v4}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    invoke-virtual {v1, v12}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    return-object v1
.end method

.method public static getCubeMapCrossDebugViewWithMipMaps(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Node;
    .locals 23

    move-object/from16 v0, p1

    new-instance v1, Lcom/jme3/scene/Node;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CubeMapDebug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v4, v3, 0x6

    new-array v4, v4, [Lcom/jme3/ui/Picture;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v6, v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    shr-int/2addr v2, v6

    const/4 v11, 0x1

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v12

    invoke-virtual {v12}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v12

    aget v15, v12, v6

    new-array v14, v15, [B

    move v13, v5

    :goto_1
    const/4 v12, 0x6

    if-ge v13, v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v12

    invoke-virtual {v12, v13}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v12, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v12, v14, v5, v15}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-static {v14}, Lcom/jme3/util/BufferUtils;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    new-instance v12, Lcom/jme3/ui/Picture;

    const-string v9, "bla"

    invoke-direct {v12, v9}, Lcom/jme3/ui/Picture;-><init>(Ljava/lang/String;)V

    aput-object v12, v4, v13

    new-instance v9, Lcom/jme3/texture/Texture2D;

    new-instance v12, Lcom/jme3/texture/Image;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v18

    move-object/from16 v19, v12

    move/from16 v20, v13

    move-object/from16 v13, v17

    move-object/from16 v21, v14

    move v14, v2

    move/from16 v22, v15

    move v15, v2

    move-object/from16 v17, v18

    invoke-direct/range {v12 .. v17}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    invoke-direct {v9, v12}, Lcom/jme3/texture/Texture2D;-><init>(Lcom/jme3/texture/Image;)V

    aget-object v12, v4, v20

    invoke-virtual {v12, v0, v9, v11}, Lcom/jme3/ui/Picture;->setTexture(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture2D;Z)V

    aget-object v9, v4, v20

    int-to-float v12, v2

    invoke-virtual {v9, v12}, Lcom/jme3/ui/Picture;->setWidth(F)V

    aget-object v9, v4, v20

    invoke-virtual {v9, v12}, Lcom/jme3/ui/Picture;->setHeight(F)V

    aget-object v9, v4, v20

    invoke-virtual {v1, v9}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v13, v20, 0x1

    move-object/from16 v14, v21

    move/from16 v15, v22

    goto :goto_1

    :cond_0
    move/from16 v22, v15

    aget-object v9, v4, v5

    add-int v12, v7, v2

    int-to-float v12, v12

    mul-int/lit8 v13, v2, 0x2

    add-int v14, v7, v13

    int-to-float v14, v14

    invoke-virtual {v9, v12, v14, v10}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v4, v5

    new-instance v15, Lcom/jme3/math/Quaternion;

    invoke-direct {v15}, Lcom/jme3/math/Quaternion;-><init>()V

    sget-object v5, Lcom/jme3/math/Vector3f;->UNIT_Z:Lcom/jme3/math/Vector3f;

    const v10, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v15, v10, v5}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    aget-object v9, v4, v11

    mul-int/lit8 v15, v2, 0x3

    add-int/2addr v15, v7

    int-to-float v15, v15

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v15, v14, v10}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v4, v11

    new-instance v11, Lcom/jme3/math/Quaternion;

    invoke-direct {v11}, Lcom/jme3/math/Quaternion;-><init>()V

    const v10, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v11, v10, v5}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v9, 0x2

    aget-object v11, v4, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v11, v14, v15, v10}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v4, v9

    new-instance v11, Lcom/jme3/math/Quaternion;

    invoke-direct {v11}, Lcom/jme3/math/Quaternion;-><init>()V

    const v15, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v11, v15, v5}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v9, 0x3

    aget-object v11, v4, v9

    invoke-virtual {v11, v14, v12, v10}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v4, v9

    new-instance v11, Lcom/jme3/math/Quaternion;

    invoke-direct {v11}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v11, v15, v5}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v9, 0x4

    aget-object v11, v4, v9

    invoke-virtual {v11, v14, v14, v10}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v4, v9

    new-instance v10, Lcom/jme3/math/Quaternion;

    invoke-direct {v10}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v10, v15, v5}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v9, 0x5

    aget-object v10, v4, v9

    mul-int/lit8 v11, v2, 0x4

    add-int/2addr v11, v7

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v14, v12}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    aget-object v9, v4, v9

    new-instance v10, Lcom/jme3/math/Quaternion;

    invoke-direct {v10}, Lcom/jme3/math/Quaternion;-><init>()V

    const v11, 0x40490fdb    # (float)Math.PI

    invoke-virtual {v10, v11, v5}, Lcom/jme3/math/Quaternion;->fromAngleAxis(FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    const/4 v5, 0x1

    add-int/2addr v13, v5

    add-int/2addr v7, v13

    add-int v8, v8, v22

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1
    new-instance v4, Lcom/jme3/scene/shape/Quad;

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v5

    const/4 v6, 0x4

    mul-int/2addr v5, v6

    add-int/2addr v5, v3

    int-to-float v3, v5

    add-int/2addr v7, v2

    int-to-float v2, v7

    invoke-direct {v4, v3, v2}, Lcom/jme3/scene/shape/Quad;-><init>(FF)V

    new-instance v2, Lcom/jme3/scene/Geometry;

    const-string v3, "bg"

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v3, Lcom/jme3/material/Material;

    const-string v4, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v3, v0, v4}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v0, "Color"

    sget-object v4, Lcom/jme3/math/ColorRGBA;->Black:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v3, v0, v4}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(FFF)V

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    return-object v1
.end method

.method public static getCubemapFaceTexCoordFromVector(Lcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)I
    .locals 10

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpl-float v0, v2, v0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    cmpl-float v0, v2, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    const/high16 v2, -0x40800000    # -1.0f

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    move p0, v8

    move v2, p0

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/jme3/math/Vector3f;->z:F

    div-float v8, v2, v3

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    :goto_1
    neg-float p0, p0

    :goto_2
    move v9, v2

    move v2, p0

    move p0, v8

    move v8, v9

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    div-float v8, v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/jme3/math/Vector3f;->y:F

    div-float v8, v2, v3

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/jme3/math/Vector3f;->y:F

    div-float v8, v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/jme3/math/Vector3f;->x:F

    div-float v8, v2, v3

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_1

    :cond_a
    iget v2, p0, Lcom/jme3/math/Vector3f;->x:F

    div-float v8, v1, v2

    iget v2, p0, Lcom/jme3/math/Vector3f;->z:F

    neg-float v2, v2

    iget p0, p0, Lcom/jme3/math/Vector3f;->y:F

    goto :goto_1

    :goto_3
    mul-float/2addr v8, p0

    mul-float/2addr v2, p0

    sget-object p0, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Stretch:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    const/high16 v3, 0x3f000000    # 0.5f

    if-ne p3, p0, :cond_b

    add-float/2addr v8, v1

    int-to-float p0, p1

    sub-float/2addr p0, v1

    mul-float/2addr v8, p0

    mul-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, v1

    mul-float/2addr v2, p0

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_4
    int-to-float p0, p0

    goto :goto_5

    :cond_b
    add-float/2addr v8, v1

    int-to-float p0, p1

    mul-float/2addr v8, p0

    mul-float/2addr v8, v3

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v2, v1

    mul-float/2addr v2, p0

    mul-float/2addr v2, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_4

    :goto_5
    invoke-virtual {p2, p1, p0}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    return v0
.end method

.method public static getHammersleyPoint(IILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;
    .locals 5

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector4f;

    invoke-direct {p2}, Lcom/jme3/math/Vector4f;-><init>()V

    :cond_0
    int-to-long v0, p0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector4f;->setX(F)Lcom/jme3/math/Vector4f;

    const/16 p0, 0x10

    shl-long v2, v0, p0

    shr-long p0, v0, p0

    or-long/2addr p0, v2

    const-wide/32 v0, 0x55555555

    and-long/2addr v0, p0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    const-wide/32 v3, -0x55555556

    and-long/2addr p0, v3

    ushr-long/2addr p0, v2

    or-long/2addr p0, v0

    const-wide/32 v0, 0x33333333

    and-long/2addr v0, p0

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    const-wide/32 v3, -0x33333334

    and-long/2addr p0, v3

    ushr-long/2addr p0, v2

    or-long/2addr p0, v0

    const-wide/32 v0, 0xf0f0f0f

    and-long/2addr v0, p0

    const/4 v2, 0x4

    shl-long/2addr v0, v2

    const-wide/32 v3, -0xf0f0f10

    and-long/2addr p0, v3

    ushr-long/2addr p0, v2

    or-long/2addr p0, v0

    const-wide/32 v0, 0xff00ff

    and-long/2addr v0, p0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const-wide/32 v3, -0xff0100

    and-long/2addr p0, v3

    ushr-long/2addr p0, v2

    or-long/2addr p0, v0

    const/high16 v0, 0x2f800000

    long-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector4f;->setY(F)Lcom/jme3/math/Vector4f;

    const p0, 0x40c90fdb

    iget p1, p2, Lcom/jme3/math/Vector4f;->y:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector4f;->setZ(F)Lcom/jme3/math/Vector4f;

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result p0

    invoke-virtual {p2, p0}, Lcom/jme3/math/Vector4f;->setW(F)Lcom/jme3/math/Vector4f;

    return-object p2
.end method

.method public static getMipFromRoughness(FI)F
    .locals 0

    invoke-static {p0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p0

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static getRoughnessFromMip(II)F
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    div-float/2addr v0, p1

    int-to-float p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, v0

    return v0
.end method

.method public static getSampleFromMip(II)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, v0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    shl-int p0, v0, p1

    const/16 p1, 0x2000

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getSolidAngleAndVector(IIIILcom/jme3/math/Vector3f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)F
    .locals 6

    if-eqz p4, :cond_0

    int-to-float v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    int-to-float v3, p2

    div-float/2addr v0, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v0, v4

    int-to-float v5, p1

    add-float/2addr v5, v1

    mul-float/2addr v5, v2

    div-float/2addr v5, v3

    sub-float/2addr v5, v4

    invoke-static/range {p0 .. p5}, Lcom/jme3/environment/util/EnvMapUtils;->getVectorFromCubemapFaceTexCoord(IIIILcom/jme3/math/Vector3f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)Lcom/jme3/math/Vector3f;

    div-float/2addr v4, v3

    sub-float p0, v0, v4

    sub-float p1, v5, v4

    add-float/2addr v0, v4

    add-float/2addr v5, v4

    invoke-static {p0, p1}, Lcom/jme3/environment/util/EnvMapUtils;->areaElement(FF)F

    move-result p2

    invoke-static {p0, v5}, Lcom/jme3/environment/util/EnvMapUtils;->areaElement(FF)F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {v0, p1}, Lcom/jme3/environment/util/EnvMapUtils;->areaElement(FF)F

    move-result p0

    sub-float/2addr p2, p0

    invoke-static {v0, v5}, Lcom/jme3/environment/util/EnvMapUtils;->areaElement(FF)F

    move-result p0

    add-float/2addr p2, p0

    return p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "the store parameter must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSphericalHarmonicsCoefficents(Lcom/jme3/texture/TextureCubeMap;)[Lcom/jme3/math/Vector3f;
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Wrap:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    invoke-static {p0, v0}, Lcom/jme3/environment/util/EnvMapUtils;->getSphericalHarmonicsCoefficents(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)[Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static getSphericalHarmonicsCoefficents(Lcom/jme3/texture/TextureCubeMap;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)[Lcom/jme3/math/Vector3f;
    .locals 17

    const/16 v0, 0x9

    .line 2
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    .line 3
    new-array v2, v0, [F

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v11

    .line 7
    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 8
    new-instance v13, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v13}, Lcom/jme3/math/ColorRGBA;-><init>()V

    .line 9
    new-instance v14, Lcom/jme3/environment/util/CubeMapWrapper;

    move-object/from16 v5, p0

    invoke-direct {v14, v5}, Lcom/jme3/environment/util/CubeMapWrapper;-><init>(Lcom/jme3/texture/TextureCubeMap;)V

    const/4 v5, 0x0

    move v15, v4

    :goto_0
    const/4 v6, 0x6

    if-ge v15, v6, :cond_4

    move v10, v4

    :goto_1
    if-ge v10, v11, :cond_3

    move v9, v4

    move/from16 v16, v5

    :goto_2
    if-ge v9, v3, :cond_2

    move v5, v9

    move v6, v10

    move v7, v3

    move v8, v15

    move v4, v9

    move-object v9, v12

    move v0, v10

    move-object/from16 v10, p1

    .line 10
    invoke-static/range {v5 .. v10}, Lcom/jme3/environment/util/EnvMapUtils;->getSolidAngleAndVector(IIIILcom/jme3/math/Vector3f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)F

    move-result v5

    .line 11
    invoke-static {v12, v2}, Lcom/jme3/environment/util/EnvMapUtils;->evalShBasis(Lcom/jme3/math/Vector3f;[F)V

    .line 12
    invoke-virtual {v14, v4, v0, v15, v13}, Lcom/jme3/environment/util/CubeMapWrapper;->getPixel(IIILcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    const/16 v6, 0x9

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_1

    .line 13
    aget-object v6, v1, v7

    if-nez v6, :cond_0

    .line 14
    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    aput-object v6, v1, v7

    .line 15
    :cond_0
    aget-object v6, v1, v7

    iget v8, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v9, v13, Lcom/jme3/math/ColorRGBA;->r:F

    aget v10, v2, v7

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    .line 16
    aget-object v6, v1, v7

    iget v8, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v13, Lcom/jme3/math/ColorRGBA;->g:F

    aget v10, v2, v7

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    .line 17
    aget-object v6, v1, v7

    iget v8, v6, Lcom/jme3/math/Vector3f;->z:F

    iget v9, v13, Lcom/jme3/math/ColorRGBA;->b:F

    aget v10, v2, v7

    mul-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/jme3/math/Vector3f;->setZ(F)Lcom/jme3/math/Vector3f;

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0x9

    goto :goto_3

    :cond_1
    add-float v16, v16, v5

    add-int/lit8 v9, v4, 0x1

    move v10, v0

    const/16 v0, 0x9

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v0, v10

    add-int/lit8 v10, v0, 0x1

    move/from16 v5, v16

    const/16 v0, 0x9

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/16 v0, 0x9

    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v0, :cond_5

    .line 18
    aget-object v2, v1, v4

    const v3, 0x41490fdb

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    return-object v1

    .line 19
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The cube map must contain Efficient data, if you rendered the cube map on the GPU please use renderer.readFrameBuffer, to create a CPU image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getVectorFromCubemapFaceTexCoord(IIIILcom/jme3/math/Vector3f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)Lcom/jme3/math/Vector3f;
    .locals 4

    if-nez p4, :cond_0

    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Stretch:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne p5, v0, :cond_1

    int-to-float p0, p0

    mul-float/2addr p0, v1

    int-to-float v0, p2

    sub-float/2addr v0, v2

    div-float/2addr p0, v0

    sub-float/2addr p0, v2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    :goto_0
    sub-float/2addr p1, v2

    goto :goto_1

    :cond_1
    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    mul-float/2addr p0, v1

    int-to-float v3, p2

    div-float/2addr p0, v3

    sub-float/2addr p0, v2

    int-to-float p1, p1

    add-float/2addr p1, v0

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    goto :goto_0

    :goto_1
    sget-object v0, Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;->Wrap:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    if-ne p5, v0, :cond_2

    int-to-float p2, p2

    invoke-static {p2, v1}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p5

    sub-float/2addr p2, v2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {p2, v0}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p2

    div-float/2addr p5, p2

    invoke-static {p0, v0}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p2

    mul-float/2addr p2, p5

    add-float/2addr p0, p2

    invoke-static {p1, v0}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result p2

    mul-float/2addr p5, p2

    add-float/2addr p1, p5

    :cond_2
    if-eqz p3, :cond_8

    const/4 p2, 0x1

    const/high16 p5, -0x40800000    # -1.0f

    if-eq p3, p2, :cond_7

    const/4 p2, 0x2

    if-eq p3, p2, :cond_6

    const/4 p2, 0x3

    if-eq p3, p2, :cond_5

    const/4 p2, 0x4

    if-eq p3, p2, :cond_4

    const/4 p2, 0x5

    if-eq p3, p2, :cond_3

    goto :goto_2

    :cond_3
    neg-float p0, p0

    neg-float p1, p1

    invoke-virtual {p4, p0, p1, p5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_4
    neg-float p1, p1

    invoke-virtual {p4, p0, p1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_5
    neg-float p1, p1

    invoke-virtual {p4, p0, p5, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_6
    invoke-virtual {p4, p0, v2, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_7
    neg-float p1, p1

    invoke-virtual {p4, p5, p1, p0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    goto :goto_2

    :cond_8
    neg-float p1, p1

    neg-float p0, p0

    invoke-virtual {p4, v2, p1, p0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    :goto_2
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method public static importanceSampleGGX(Lcom/jme3/math/Vector4f;FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/util/TempVars;)Lcom/jme3/math/Vector3f;
    .locals 6

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/math/Vector4f;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    sub-float/2addr p1, v1

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    div-float/2addr v2, p1

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    mul-float v0, p1, p1

    sub-float/2addr v1, v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    iget v1, p0, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v0

    iget p0, p0, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p0

    sget-object p0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    iget v2, p2, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3feff7ced916872bL    # 0.999

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    sget-object p0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    :cond_1
    iget-object v2, p4, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object p0

    iget-object v2, p4, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object v0, p4, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    iget-object p1, p4, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p3
.end method

.method public static makeCubeMap(Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image;Lcom/jme3/texture/Image$Format;)Lcom/jme3/texture/TextureCubeMap;
    .locals 7

    new-instance v6, Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    sget-object v5, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v0, v6

    move-object v1, p6

    invoke-direct/range {v0 .. v5}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    const/4 p6, 0x0

    invoke-virtual {p0, p6}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1, p6}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2, p6}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p3, p6}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p4, p6}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p5, p6}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    new-instance p0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {p0, v6}, Lcom/jme3/texture/TextureCubeMap;-><init>(Lcom/jme3/texture/Image;)V

    invoke-virtual {p0, p6}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    sget-object p1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    sget-object p1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    sget-object p1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p0, p1}, Lcom/jme3/texture/TextureCubeMap;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    return-object p0
.end method

.method public static prepareShCoefs([Lcom/jme3/math/Vector3f;)V
    .locals 9

    sget v0, Lcom/jme3/environment/util/EnvMapUtils;->sqrtPi:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    sget v0, Lcom/jme3/environment/util/EnvMapUtils;->sqrt3Pi:F

    neg-float v0, v0

    div-float/2addr v0, v1

    neg-float v3, v0

    sget v4, Lcom/jme3/environment/util/EnvMapUtils;->sqrt15Pi:F

    div-float v1, v4, v1

    neg-float v5, v1

    sget v6, Lcom/jme3/environment/util/EnvMapUtils;->sqrt5Pi:F

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    div-float/2addr v4, v7

    const/4 v7, 0x0

    aget-object v8, p0, v7

    invoke-virtual {v8, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    sget-object v8, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v7, v8, v7

    invoke-virtual {v2, v7}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v2, 0x1

    aget-object v7, p0, v2

    invoke-virtual {v7, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v7

    sget-object v8, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v2, v8, v2

    invoke-virtual {v7, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v2, 0x2

    aget-object v7, p0, v2

    invoke-virtual {v7, v3}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    sget-object v7, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v2, v7, v2

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v2, 0x3

    aget-object v3, p0, v2

    invoke-virtual {v3, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    sget-object v3, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v2, v3, v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v0, 0x4

    aget-object v2, p0, v0

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v0, 0x5

    aget-object v1, p0, v0

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v0, 0x6

    aget-object v1, p0, v0

    invoke-virtual {v1, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/4 v0, 0x7

    aget-object v1, p0, v0

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    sget-object v2, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    const/16 v0, 0x8

    aget-object p0, p0, v0

    invoke-virtual {p0, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    sget-object v1, Lcom/jme3/environment/util/EnvMapUtils;->shBandFactor:[F

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    return-void
.end method
