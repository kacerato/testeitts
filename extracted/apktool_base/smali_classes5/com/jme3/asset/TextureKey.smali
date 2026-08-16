.class public Lcom/jme3/asset/TextureKey;
.super Lcom/jme3/asset/AssetKey;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jme3/asset/AssetKey<",
        "Lcom/jme3/texture/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field private anisotropy:I

.field private flipY:Z

.field private generateMips:Z

.field private textureTypeHint:Lcom/jme3/texture/Texture$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/jme3/asset/AssetKey;-><init>()V

    .line 8
    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    iput-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    iput-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    iput-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    .line 3
    iput-boolean p2, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    return-void
.end method


# virtual methods
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
    move-object v1, p1

    check-cast v1, Lcom/jme3/asset/TextureKey;

    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    iget-boolean p1, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    iget-boolean v2, v1, Lcom/jme3/asset/TextureKey;->generateMips:Z

    if-eq p1, v2, :cond_3

    return v0

    :cond_3
    iget-boolean p1, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    iget-boolean v2, v1, Lcom/jme3/asset/TextureKey;->flipY:Z

    if-eq p1, v2, :cond_4

    return v0

    :cond_4
    iget p1, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    iget v2, v1, Lcom/jme3/asset/TextureKey;->anisotropy:I

    if-eq p1, v2, :cond_5

    return v0

    :cond_5
    iget-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    iget-object v1, v1, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    if-eq p1, v1, :cond_6

    return v0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public getAnisotropy()I
    .locals 1

    iget v0, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    return v0
.end method

.method public getCacheType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/cache/AssetCache;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/jme3/asset/cache/WeakRefCloneAssetCache;

    return-object v0
.end method

.method public getProcessorType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/asset/AssetProcessor;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/jme3/texture/TextureProcessor;

    return-object v0
.end method

.method public getTextureTypeHint()Lcom/jme3/texture/Texture$Type;
    .locals 1

    iget-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x77

    invoke-super {p0}, Lcom/jme3/asset/AssetKey;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public isFlipY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    return v0
.end method

.method public isGenerateMips()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "flip_y"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    const-string v0, "generate_mips"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    const-string v0, "anisotropy"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    const-string v0, "as_cubemap"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    iput-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/jme3/texture/Texture$Type;

    sget-object v1, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    const-string v2, "tex_type"

    invoke-interface {p1, v2, v0, v1}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture$Type;

    iput-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    :goto_0
    return-void
.end method

.method public setAnisotropy(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    return-void
.end method

.method public setGenerateMips(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    return-void
.end method

.method public setTextureTypeHint(Lcom/jme3/texture/Texture$Type;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/jme3/asset/TextureKey$1;->$SwitchMap$com$jme3$texture$Texture$Type:[I

    iget-object v1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string v0, " (Array)"

    goto :goto_0

    :cond_2
    const-string v0, " (3D)"

    goto :goto_0

    :cond_3
    const-string v0, " (Cube)"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/jme3/asset/AssetKey;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    if-eqz v3, :cond_4

    const-string v3, " (Flipped)"

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    if-eqz v0, :cond_5

    const-string v2, " (Mipmapped)"

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/asset/AssetKey;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->flipY:Z

    const-string v1, "flip_y"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/asset/TextureKey;->generateMips:Z

    const-string v1, "generate_mips"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/asset/TextureKey;->anisotropy:I

    const-string v1, "anisotropy"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    const-string v1, "tex_type"

    sget-object v3, Lcom/jme3/texture/Texture$Type;->TwoDimensional:Lcom/jme3/texture/Texture$Type;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/asset/TextureKey;->textureTypeHint:Lcom/jme3/texture/Texture$Type;

    sget-object v1, Lcom/jme3/texture/Texture$Type;->CubeMap:Lcom/jme3/texture/Texture$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "as_cubemap"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
