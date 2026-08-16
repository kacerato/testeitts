.class public Lcom/jme3/font/BitmapCharacterSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;


# instance fields
.field private base:I

.field private final characters:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;>;"
        }
    .end annotation
.end field

.field private height:I

.field private lineHeight:I

.field private pageSize:I

.field private renderedSize:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    return-void
.end method

.method private getCharacterSet(I)Lcom/jme3/util/IntMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    new-instance v1, Lcom/jme3/util/IntMap;

    invoke-direct {v1}, Lcom/jme3/util/IntMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/util/IntMap;

    return-object p1
.end method

.method private readCharset(Lcom/jme3/export/InputCapsule;I)Lcom/jme3/util/IntMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/export/InputCapsule;",
            "I)",
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/jme3/export/InputCapsule;->readShortArray(Ljava/lang/String;[S)[S

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chars"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    array-length v2, v1

    if-ge p2, v2, :cond_0

    aget-short v2, v1, p2

    const v3, 0xffff

    and-int/2addr v2, v3

    aget-object v3, p1, p2

    check-cast v3, Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {v0, v2, v3}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public addCharacter(ILcom/jme3/font/BitmapCharacter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/font/BitmapCharacterSet;->getCharacterSet(I)Lcom/jme3/util/IntMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBase()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->base:I

    return v0
.end method

.method public getCharacter(I)Lcom/jme3/font/BitmapCharacter;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(II)Lcom/jme3/font/BitmapCharacter;

    move-result-object p1

    return-object p1
.end method

.method public getCharacter(II)Lcom/jme3/font/BitmapCharacter;
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/jme3/font/BitmapCharacterSet;->getCharacterSet(I)Lcom/jme3/util/IntMap;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/font/BitmapCharacter;

    return-object p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->height:I

    return v0
.end method

.method public getLineHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    return v0
.end method

.method public getRenderedSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->width:I

    return v0
.end method

.method public merge(Lcom/jme3/font/BitmapCharacterSet;)V
    .locals 5

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    iget v1, p1, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/IntMap;

    iget v3, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    iget v4, p1, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    iget-object v3, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v3, v2, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/IntMap;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v2}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {v2}, Lcom/jme3/font/BitmapCharacter;->getPage()I

    move-result v3

    iget v4, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/jme3/font/BitmapCharacter;->setPage(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Can\'t override old style"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Style must be set first. use setStyle(int)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    iget p1, p1, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Only support same font size"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "lineHeight"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    const-string v0, "base"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->base:I

    const-string v0, "renderedSize"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    const-string v0, "width"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->height:I

    const-string v0, "pageSize"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    const-string v0, "styles"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-direct {p0, p1, v3}, Lcom/jme3/font/BitmapCharacterSet;->readCharset(Lcom/jme3/export/InputCapsule;I)Lcom/jme3/util/IntMap;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setBase(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->base:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->height:I

    return-void
.end method

.method public setLineHeight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    return-void
.end method

.method public setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    return-void
.end method

.method public setRenderedSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/IntMap;

    iget-object v2, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1, v1}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Applicable only for single style font"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacterSet;->width:I

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->lineHeight:I

    const-string v1, "lineHeight"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->base:I

    const-string v1, "base"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->renderedSize:I

    const-string v1, "renderedSize"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->width:I

    const-string v1, "width"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacterSet;->pageSize:I

    const-string v1, "pageSize"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/jme3/font/BitmapCharacterSet;->characters:Lcom/jme3/util/IntMap;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/IntMap;

    invoke-virtual {p0, p1, v4, v3}, Lcom/jme3/font/BitmapCharacterSet;->writeCharset(Lcom/jme3/export/OutputCapsule;ILcom/jme3/util/IntMap;)V

    goto :goto_0

    :cond_0
    const-string v1, "styles"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    return-void
.end method

.method public writeCharset(Lcom/jme3/export/OutputCapsule;ILcom/jme3/util/IntMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/export/OutputCapsule;",
            "I",
            "Lcom/jme3/util/IntMap<",
            "Lcom/jme3/font/BitmapCharacter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    new-array v1, v0, [S

    new-array v0, v0, [Lcom/jme3/font/BitmapCharacter;

    invoke-virtual {p3}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v1, v2

    invoke-virtual {v3}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/font/BitmapCharacter;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "indexes"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-interface {p1, v1, p3, v2}, Lcom/jme3/export/OutputCapsule;->write([SLjava/lang/String;[S)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chars"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    return-void
.end method
