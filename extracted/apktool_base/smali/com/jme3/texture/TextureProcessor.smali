.class public Lcom/jme3/texture/TextureProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createClone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/jme3/texture/Texture;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture;->clone()Lcom/jme3/texture/Texture;

    move-result-object p1

    return-object p1
.end method

.method public postProcess(Lcom/jme3/asset/AssetKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/jme3/asset/TextureKey;

    check-cast p2, Lcom/jme3/texture/Image;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->getTextureTypeHint()Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    invoke-virtual {p2, v2, v1}, Lcom/jme3/texture/Image;->setData(ILjava/nio/ByteBuffer;)V

    :cond_1
    new-instance v0, Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {v0}, Lcom/jme3/texture/TextureCubeMap;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->getTextureTypeHint()Lcom/jme3/texture/Texture$Type;

    move-result-object v0

    sget-object v1, Lcom/jme3/texture/Texture$Type;->ThreeDimensional:Lcom/jme3/texture/Texture$Type;

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/jme3/texture/Texture3D;

    invoke-direct {v0}, Lcom/jme3/texture/Texture3D;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jme3/texture/Texture2D;

    invoke-direct {v0}, Lcom/jme3/texture/Texture2D;-><init>()V

    :goto_0
    invoke-virtual {p2}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->isGenerateMips()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->Trilinear:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :cond_5
    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->getAnisotropy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    return-object v0
.end method
