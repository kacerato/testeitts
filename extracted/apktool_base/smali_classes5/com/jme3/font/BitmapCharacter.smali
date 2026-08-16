.class public Lcom/jme3/font/BitmapCharacter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private c:C

.field private height:I

.field private kerning:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private width:I

.field private x:I

.field private xAdvance:I

.field private xOffset:I

.field private y:I

.field private yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    .line 5
    iput-char p1, p0, Lcom/jme3/font/BitmapCharacter;->c:C

    return-void
.end method


# virtual methods
.method public addKerning(II)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Lcom/jme3/font/BitmapCharacter;
    .locals 2

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/font/BitmapCharacter;

    .line 3
    iget-object v1, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-virtual {v1}, Lcom/jme3/util/IntMap;->clone()Lcom/jme3/util/IntMap;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;
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

    .line 1
    invoke-virtual {p0}, Lcom/jme3/font/BitmapCharacter;->clone()Lcom/jme3/font/BitmapCharacter;

    move-result-object v0

    return-object v0
.end method

.method public getChar()C
    .locals 1

    iget-char v0, p0, Lcom/jme3/font/BitmapCharacter;->c:C

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->height:I

    return v0
.end method

.method public getKerning(I)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->page:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->x:I

    return v0
.end method

.method public getXAdvance()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->xAdvance:I

    return v0
.end method

.method public getXOffset()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->xOffset:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->y:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->yOffset:I

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "c"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/jme3/font/BitmapCharacter;->c:C

    const-string v0, "x"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->x:I

    const-string v0, "y"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->y:I

    const-string v0, "width"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->width:I

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->height:I

    const-string v0, "xOffset"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->xOffset:I

    const-string v0, "yOffset"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->yOffset:I

    const-string v0, "xAdvance"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/font/BitmapCharacter;->xAdvance:I

    const-string v0, "seconds"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    const-string v3, "amounts"

    invoke-interface {p1, v3, v2}, Lcom/jme3/export/InputCapsule;->readIntArray(Ljava/lang/String;[I)[I

    move-result-object p1

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    aget v3, v0, v1

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChar(C)V
    .locals 0

    iput-char p1, p0, Lcom/jme3/font/BitmapCharacter;->c:C

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->height:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->page:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->x:I

    return-void
.end method

.method public setXAdvance(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->xAdvance:I

    return-void
.end method

.method public setXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->xOffset:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->y:I

    return-void
.end method

.method public setYOffset(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/font/BitmapCharacter;->yOffset:I

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-char v0, p0, Lcom/jme3/font/BitmapCharacter;->c:C

    const-string v1, "c"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->x:I

    const-string v1, "x"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->y:I

    const-string v1, "y"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->width:I

    const-string v1, "width"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->height:I

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->xOffset:I

    const-string v1, "xOffset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->yOffset:I

    const-string v1, "yOffset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/font/BitmapCharacter;->xAdvance:I

    const-string v1, "xAdvance"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-virtual {v0}, Lcom/jme3/util/IntMap;->size()I

    move-result v0

    new-array v1, v0, [I

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/jme3/font/BitmapCharacter;->kerning:Lcom/jme3/util/IntMap;

    invoke-virtual {v3}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/IntMap$Entry;

    invoke-virtual {v4}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v5

    aput v5, v1, v2

    invoke-virtual {v4}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "seconds"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    const-string v1, "amounts"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write([ILjava/lang/String;[I)V

    return-void
.end method
