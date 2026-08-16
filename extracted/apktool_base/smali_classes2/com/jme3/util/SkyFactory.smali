.class public Lcom/jme3/util/SkyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/SkyFactory$EnvMapType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkImage(Lcom/jme3/texture/Image;)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jme3/texture/Image;->getMultiSamples()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multisample textures not allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image width and height must be the same"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs checkImagesForCubeMap([Lcom/jme3/texture/Image;)V
    .locals 8

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v4

    aget-object v5, p0, v0

    invoke-virtual {v5, v0}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    aget-object v6, p0, v0

    invoke-static {v6}, Lcom/jme3/util/SkyFactory;->checkImage(Lcom/jme3/texture/Image;)V

    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_6

    aget-object v6, p0, v1

    invoke-static {v6}, Lcom/jme3/util/SkyFactory;->checkImage(Lcom/jme3/texture/Image;)V

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v7

    if-ne v7, v2, :cond_5

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v7

    if-ne v7, v3, :cond_4

    invoke-virtual {v6}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v7

    if-ne v7, v4, :cond_4

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    if-ne v6, v5, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Images must have same size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Images must have same resolution"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Images must have same format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    invoke-static {p0, p1, p2, p3, v0}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;F)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;F)Lcom/jme3/scene/Spatial;
    .locals 7

    if-eqz p1, :cond_4

    .line 5
    new-instance v6, Lcom/jme3/scene/shape/Sphere;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0xa

    const/16 v2, 0xa

    move-object v0, v6

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/scene/shape/Sphere;-><init>(IIFZZ)V

    .line 6
    new-instance p4, Lcom/jme3/scene/Geometry;

    const-string v0, "Sky"

    invoke-direct {p4, v0, v6}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    .line 7
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {p4, v0}, Lcom/jme3/scene/Spatial;->setQueueBucket(Lcom/jme3/renderer/queue/RenderQueue$Bucket;)V

    .line 8
    sget-object v0, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {p4, v0}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    .line 9
    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    sget-object v2, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v1, v2}, Lcom/jme3/bounding/BoundingSphere;-><init>(FLcom/jme3/math/Vector3f;)V

    invoke-virtual {p4, v0}, Lcom/jme3/scene/Geometry;->setModelBound(Lcom/jme3/bounding/BoundingVolume;)V

    .line 10
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {p4, v0}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    .line 11
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "Common/MatDefs/Misc/SkyNonCube.j3md"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 12
    new-instance p3, Lcom/jme3/material/Material;

    invoke-direct {p3, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 13
    const-string p0, "EquirectMap"

    invoke-virtual {p3, p0, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "envMapType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_1
    new-instance p3, Lcom/jme3/material/Material;

    invoke-direct {p3, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 16
    const-string p0, "SphereMap"

    invoke-virtual {p3, p0, v2}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 17
    :cond_2
    instance-of p3, p1, Lcom/jme3/texture/TextureCubeMap;

    if-nez p3, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p1

    .line 19
    new-instance p3, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {p3}, Lcom/jme3/texture/TextureCubeMap;-><init>()V

    .line 20
    invoke-virtual {p3, p1}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    move-object p1, p3

    .line 21
    :cond_3
    new-instance p3, Lcom/jme3/material/Material;

    const-string v0, "Common/MatDefs/Misc/Sky.j3md"

    invoke-direct {p3, p0, v0}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    .line 22
    :goto_0
    const-string p0, "NormalScale"

    invoke-virtual {p3, p0, p2}, Lcom/jme3/material/Material;->setVector3(Ljava/lang/String;Lcom/jme3/math/Vector3f;)V

    .line 23
    sget-object p0, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p1, p0}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 24
    sget-object p0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p1, p0}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    const/4 p0, 0x0

    .line 25
    invoke-virtual {p1, p0}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    .line 26
    sget-object p0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, p0}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    .line 27
    const-string p0, "Texture"

    invoke-virtual {p3, p0, p1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 28
    invoke-virtual {p4, p3}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object p4

    .line 29
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "texture cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Z)Lcom/jme3/scene/Spatial;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;ZI)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;ZI)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_0

    .line 3
    sget-object p3, Lcom/jme3/util/SkyFactory$EnvMapType;->SphereMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    :goto_0
    int-to-float p4, p4

    .line 4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;F)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;)Lcom/jme3/scene/Spatial;
    .locals 8

    .line 59
    sget-object v7, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;)Lcom/jme3/scene/Spatial;
    .locals 9

    const/high16 v8, 0x41200000    # 10.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 41
    invoke-static/range {v0 .. v8}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;F)Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;F)Lcom/jme3/scene/Spatial;
    .locals 12

    .line 42
    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    .line 44
    invoke-virtual {p3}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v2

    .line 45
    invoke-virtual/range {p4 .. p4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v3

    .line 46
    invoke-virtual/range {p5 .. p5}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v4

    .line 47
    invoke-virtual/range {p6 .. p6}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v5

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    .line 48
    filled-new-array/range {p1 .. p6}, [Lcom/jme3/texture/Image;

    move-result-object v6

    invoke-static {v6}, Lcom/jme3/util/SkyFactory;->checkImagesForCubeMap([Lcom/jme3/texture/Image;)V

    .line 49
    new-instance v6, Lcom/jme3/texture/Image;

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v9

    const/4 v10, 0x0

    .line 50
    invoke-virtual {v0}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v11

    move-object p1, v6

    move-object p2, v7

    move p3, v8

    move/from16 p4, v9

    move-object/from16 p5, v10

    move-object/from16 p6, v11

    invoke-direct/range {p1 .. p6}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    const/4 v7, 0x0

    .line 51
    invoke-virtual {v0, v7}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    .line 52
    invoke-virtual {v1, v7}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    .line 53
    invoke-virtual {v5, v7}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    .line 54
    invoke-virtual {v4, v7}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    .line 55
    invoke-virtual {v3, v7}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    .line 56
    invoke-virtual {v2, v7}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    .line 57
    new-instance v0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v0, v6}, Lcom/jme3/texture/TextureCubeMap;-><init>(Lcom/jme3/texture/Image;)V

    .line 58
    sget-object v1, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    move-object v2, p0

    move-object/from16 v3, p7

    move/from16 v4, p8

    invoke-static {p0, v0, v3, v1, v4}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;F)Lcom/jme3/scene/Spatial;

    move-result-object v0

    return-object v0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;
    .locals 1

    .line 34
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    invoke-static {p0, p1, v0, p2}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Z)Lcom/jme3/scene/Spatial;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    if-eqz p2, :cond_0

    .line 31
    sget-object p2, Lcom/jme3/util/SkyFactory$EnvMapType;->SphereMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    .line 32
    :goto_0
    invoke-static {p0, p1, v0, p2}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/math/Vector3f;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;
    .locals 2

    .line 35
    new-instance v0, Lcom/jme3/asset/TextureKey;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {v0, p1}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 37
    sget-object p1, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    if-ne p2, p1, :cond_0

    .line 38
    sget-object p1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v0, p1}, Lcom/jme3/asset/TextureKey;->setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V

    .line 39
    :cond_0
    invoke-interface {p0, v0}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object p1

    .line 40
    invoke-static {p0, p1, p2}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Lcom/jme3/texture/Texture;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method

.method public static createSky(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 33
    sget-object p2, Lcom/jme3/util/SkyFactory$EnvMapType;->SphereMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/jme3/util/SkyFactory$EnvMapType;->CubeMap:Lcom/jme3/util/SkyFactory$EnvMapType;

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/jme3/util/SkyFactory;->createSky(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Lcom/jme3/util/SkyFactory$EnvMapType;)Lcom/jme3/scene/Spatial;

    move-result-object p0

    return-object p0
.end method
