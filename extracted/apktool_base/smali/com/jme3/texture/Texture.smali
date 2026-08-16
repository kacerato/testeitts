.class public abstract Lcom/jme3/texture/Texture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/CloneableSmartAsset;
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/texture/Texture$MinFilter;,
        Lcom/jme3/texture/Texture$MagFilter;,
        Lcom/jme3/texture/Texture$ShadowCompareMode;,
        Lcom/jme3/texture/Texture$WrapAxis;,
        Lcom/jme3/texture/Texture$WrapMode;,
        Lcom/jme3/texture/Texture$Type;
    }
.end annotation


# instance fields
.field private anisotropicFilter:I

.field private image:Lcom/jme3/texture/Image;

.field private key:Lcom/jme3/asset/TextureKey;

.field private magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

.field private minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

.field private name:Ljava/lang/String;

.field private shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    sget-object v0, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    sget-object v0, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    sget-object v0, Lcom/jme3/texture/Texture$ShadowCompareMode;->Off:Lcom/jme3/texture/Texture$ShadowCompareMode;

    iput-object v0, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->clone()Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/texture/Texture;
    .locals 1

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/texture/Texture;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->clone()Lcom/jme3/texture/Texture;

    move-result-object v0

    return-object v0
.end method

.method public abstract createSimpleClone()Lcom/jme3/texture/Texture;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    .line 2
    iget-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 3
    iget-object v0, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V

    .line 4
    iget v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    .line 5
    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    .line 6
    iget-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setKey(Lcom/jme3/asset/AssetKey;)V

    .line 7
    iget-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/jme3/texture/Texture;->setName(Ljava/lang/String;)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/jme3/texture/Texture;

    iget-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    iget-object v2, p1, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    iget-object v2, p1, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    iget-object v2, p1, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    iget-object v2, p1, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    if-eq v1, v2, :cond_5

    return v0

    :cond_5
    iget v1, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    iget p1, p1, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    if-eq v1, p1, :cond_6

    return v0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public getAnisotropicFilter()I
    .locals 1

    iget v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    return v0
.end method

.method public getImage()Lcom/jme3/texture/Image;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    return-object v0
.end method

.method public getKey()Lcom/jme3/asset/AssetKey;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    return-object v0
.end method

.method public getMagFilter()Lcom/jme3/texture/Texture$MagFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    return-object v0
.end method

.method public getMinFilter()Lcom/jme3/texture/Texture$MinFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowCompareMode()Lcom/jme3/texture/Texture$ShadowCompareMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    return-object v0
.end method

.method public abstract getType()Lcom/jme3/texture/Texture$Type;
.end method

.method public abstract getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x14f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x43

    iget-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x43

    iget-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x43

    iget-object v0, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x43

    iget v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    add-int/2addr v2, v0

    return v2
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    const-string v1, "key"

    invoke-interface {v0, v1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/asset/TextureKey;

    iput-object v1, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    const-class v3, Lcom/jme3/texture/Texture;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    invoke-interface {v1, v2}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Cannot locate texture {0}"

    iget-object v4, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    invoke-static {p1}, Lcom/jme3/util/PlaceholderAssets;->getPlaceholderImage(Lcom/jme3/asset/AssetManager;)Lcom/jme3/texture/Image;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    goto :goto_0

    :cond_0
    const-string p1, "image"

    invoke-interface {v0, p1, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Image;

    iput-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-nez p1, :cond_1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v2, "Cannot load embedded image {0}"

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const-string p1, "anisotropicFilter"

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture;->setAnisotropicFilter(I)V

    const-class p1, Lcom/jme3/texture/Texture$MinFilter;

    sget-object v1, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    const-string v2, "minificationFilter"

    invoke-interface {v0, v2, p1, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    const-class p1, Lcom/jme3/texture/Texture$MagFilter;

    sget-object v1, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    const-string v2, "magnificationFilter"

    invoke-interface {v0, v2, p1, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    return-void
.end method

.method public setAnisotropicFilter(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    return-void
.end method

.method public setImage(Lcom/jme3/texture/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p0}, Lcom/jme3/texture/Texture;->getMinFilter()Lcom/jme3/texture/Texture$MinFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    return-void
.end method

.method public setKey(Lcom/jme3/asset/AssetKey;)V
    .locals 0

    check-cast p1, Lcom/jme3/asset/TextureKey;

    iput-object p1, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    return-void
.end method

.method public setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "magnificationFilter can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V
    .locals 1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {p1}, Lcom/jme3/texture/Texture$MinFilter;->usesMipMapLevels()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->isGeneratedMipmapsRequired()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {p1}, Lcom/jme3/texture/Image;->setNeedGeneratedMipmaps()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minificationFilter can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    return-void
.end method

.method public setShadowCompareMode(Lcom/jme3/texture/Texture$ShadowCompareMode;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/jme3/texture/Texture;->shadowCompareMode:Lcom/jme3/texture/Texture$ShadowCompareMode;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "compareMode can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V
.end method

.method public abstract setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    if-eqz v1, :cond_0

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/texture/Texture;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/texture/Texture;->key:Lcom/jme3/asset/TextureKey;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/texture/Texture;->image:Lcom/jme3/texture/Image;

    const-string v1, "image"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    goto :goto_0

    :cond_0
    const-string v1, "key"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    :goto_0
    iget v0, p0, Lcom/jme3/texture/Texture;->anisotropicFilter:I

    const-string v1, "anisotropicFilter"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/texture/Texture;->minificationFilter:Lcom/jme3/texture/Texture$MinFilter;

    const-string v1, "minificationFilter"

    sget-object v2, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/texture/Texture;->magnificationFilter:Lcom/jme3/texture/Texture$MagFilter;

    const-string v1, "magnificationFilter"

    sget-object v2, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
