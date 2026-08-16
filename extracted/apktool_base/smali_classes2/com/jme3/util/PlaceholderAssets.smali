.class public Lcom/jme3/util/PlaceholderAssets;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final imageData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/util/PlaceholderAssets;->imageData:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlaceholderAudio()Lcom/jme3/audio/AudioData;
    .locals 4

    new-instance v0, Lcom/jme3/audio/AudioBuffer;

    invoke-direct {v0}, Lcom/jme3/audio/AudioBuffer;-><init>()V

    const/16 v1, 0x8

    const v2, 0xac44

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/jme3/audio/AudioData;->setupFormat(III)V

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Lcom/jme3/audio/AudioBuffer;->updateData(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static getPlaceholderImage()Lcom/jme3/texture/Image;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x30

    .line 1
    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 2
    sget-object v0, Lcom/jme3/util/PlaceholderAssets;->imageData:[B

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    new-instance v0, Lcom/jme3/texture/Image;

    sget-object v2, Lcom/jme3/texture/Image$Format;->RGB8:Lcom/jme3/texture/Image$Format;

    const/4 v6, 0x0

    sget-object v7, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    return-object v0
.end method

.method public static getPlaceholderImage(Lcom/jme3/asset/AssetManager;)Lcom/jme3/texture/Image;
    .locals 1

    .line 4
    const-string v0, "Common/Textures/MissingTexture.png"

    invoke-interface {p0, v0}, Lcom/jme3/asset/AssetManager;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaceholderMaterial(Lcom/jme3/asset/AssetManager;)Lcom/jme3/material/Material;
    .locals 2

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p0, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v1, "Common/Textures/MissingMaterial.png"

    invoke-interface {p0, v1}, Lcom/jme3/asset/AssetManager;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object p0

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    const-string v1, "ColorMap"

    invoke-virtual {v0, v1, p0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    return-object v0
.end method

.method public static getPlaceholderModel(Lcom/jme3/asset/AssetManager;)Lcom/jme3/scene/Spatial;
    .locals 3

    new-instance v0, Lcom/jme3/scene/shape/Box;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/scene/shape/Box;-><init>(FFF)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    const-string v2, "placeholder"

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v0, Lcom/jme3/material/Material;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v0, p0, v2}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    const-string v2, "Common/Textures/MissingModel.png"

    invoke-interface {p0, v2}, Lcom/jme3/asset/AssetManager;->loadTexture(Ljava/lang/String;)Lcom/jme3/texture/Texture;

    move-result-object p0

    sget-object v2, Lcom/jme3/texture/Texture$WrapMode;->Repeat:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapMode;)V

    const-string v2, "ColorMap"

    invoke-virtual {v0, v2, p0}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method
