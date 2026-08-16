.class public Lcom/jme3/texture/TextureArray;
.super Lcom/jme3/texture/Texture;
.source "SourceFile"


# instance fields
.field private wrapS:Lcom/jme3/texture/Texture$WrapMode;

.field private wrapT:Lcom/jme3/texture/Texture$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/texture/Texture;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 3
    iput-object v0, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/texture/Image;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/jme3/texture/Texture;-><init>()V

    .line 5
    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    iput-object v0, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 6
    iput-object v0, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/Image;

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v1

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v8

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v9

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getColorSpace()Lcom/jme3/texture/image/ColorSpace;

    move-result-object v7

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/texture/Image;

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v10

    .line 12
    new-instance v11, Lcom/jme3/texture/Image;

    const/4 v6, 0x0

    move-object v2, v11

    move-object v3, v9

    move v4, v1

    move v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;Lcom/jme3/texture/image/ColorSpace;)V

    .line 13
    invoke-virtual {v11, v10}, Lcom/jme3/texture/Image;->setMipMapSizes([I)V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/texture/Image;

    .line 15
    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v3

    if-ne v3, v8, :cond_2

    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 16
    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v3

    if-ne v3, v9, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v3

    invoke-static {v10, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-virtual {v2, v0}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/jme3/texture/Image;->addData(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Images in texture array must have same mipmap sizes"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Images in texture array must have same format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Images in texture array must have same dimensions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_3
    invoke-virtual {p0, v11}, Lcom/jme3/texture/Texture;->setImage(Lcom/jme3/texture/Image;)V

    return-void
.end method


# virtual methods
.method public createSimpleClone()Lcom/jme3/texture/Texture;
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/texture/TextureArray;

    invoke-direct {v0}, Lcom/jme3/texture/TextureArray;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/jme3/texture/TextureArray;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    return-object v0
.end method

.method public createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;
    .locals 2

    .line 3
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 4
    sget-object v0, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    iget-object v1, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    invoke-virtual {p1, v0, v1}, Lcom/jme3/texture/Texture;->setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V

    .line 5
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->createSimpleClone(Lcom/jme3/texture/Texture;)Lcom/jme3/texture/Texture;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/jme3/texture/TextureArray;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/jme3/texture/TextureArray;

    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->S:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/TextureArray;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/jme3/texture/TextureArray;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v2

    if-eq v3, v2, :cond_2

    return v1

    :cond_2
    sget-object v2, Lcom/jme3/texture/Texture$WrapAxis;->T:Lcom/jme3/texture/Texture$WrapAxis;

    invoke-virtual {p0, v2}, Lcom/jme3/texture/TextureArray;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/jme3/texture/TextureArray;->getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;

    move-result-object v0

    if-eq v3, v0, :cond_3

    return v1

    :cond_3
    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getType()Lcom/jme3/texture/Texture$Type;
    .locals 1

    sget-object v0, Lcom/jme3/texture/Texture$Type;->TwoDimensionalArray:Lcom/jme3/texture/Texture$Type;

    return-object v0
.end method

.method public getWrap(Lcom/jme3/texture/Texture$WrapAxis;)Lcom/jme3/texture/Texture$WrapMode;
    .locals 3

    sget-object v0, Lcom/jme3/texture/TextureArray$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid WrapAxis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object p1, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    invoke-super {p0}, Lcom/jme3/texture/Texture;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4f

    iget-object v1, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4f

    iget-object v1, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    sget-object v0, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "wrapS"

    const-class v2, Lcom/jme3/texture/Texture$WrapMode;

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jme3/texture/Texture$WrapMode;

    iput-object v1, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    const-string v1, "wrapT"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/jme3/texture/Texture$WrapMode;

    iput-object p1, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    return-void
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapAxis;Lcom/jme3/texture/Texture$WrapMode;)V
    .locals 1

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lcom/jme3/texture/TextureArray$1;->$SwitchMap$com$jme3$texture$Texture$WrapAxis:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iput-object p2, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not applicable for 2D textures"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    iput-object p2, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    :goto_0
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "axis can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mode can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWrap(Lcom/jme3/texture/Texture$WrapMode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    iput-object p1, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    .line 8
    iput-object p1, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mode can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/texture/Texture;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/texture/TextureArray;->wrapS:Lcom/jme3/texture/Texture$WrapMode;

    sget-object v1, Lcom/jme3/texture/Texture$WrapMode;->EdgeClamp:Lcom/jme3/texture/Texture$WrapMode;

    const-string v2, "wrapS"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/texture/TextureArray;->wrapT:Lcom/jme3/texture/Texture$WrapMode;

    const-string v2, "wrapT"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    return-void
.end method
