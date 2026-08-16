.class Lcom/threed/jpct/DeSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FLOATS:I = 0x1

.field private static final FLOAT_FLOATS:I = 0x3

.field private static final INTS:I = 0x0

.field private static final INT_INTS:I = 0x2

.field private static final VERSION:I = 0x5


# instance fields
.field private buffer:[B

.field private index:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/DeSerializer;->index:I

    iput v0, p0, Lcom/threed/jpct/DeSerializer;->length:I

    return-void
.end method

.method private createTexture(Ljava/lang/String;)I
    .locals 5

    const-string v0, "__obj-Color:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "__3ds-Color:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/threed/jpct/Texture;

    new-instance v4, Lcom/threed/jpct/RGBColor;

    invoke-direct {v4, v1, v2, v0}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    const/16 v0, 0x8

    invoke-direct {v3, v0, v0, v4}, Lcom/threed/jpct/Texture;-><init>(IILcom/threed/jpct/RGBColor;)V

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private read(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p0, Lcom/threed/jpct/DeSerializer;->index:I

    iget v1, p0, Lcom/threed/jpct/DeSerializer;->length:I

    if-ge v0, v1, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/DeSerializer;->length:I

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/threed/jpct/DeSerializer;->length:I

    rem-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    iget v0, p0, Lcom/threed/jpct/DeSerializer;->index:I

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/threed/jpct/DeSerializer;->index:I

    return v1

    :cond_2
    iput v0, p0, Lcom/threed/jpct/DeSerializer;->index:I

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/threed/jpct/DeSerializer;->length:I

    iget-object v3, p0, Lcom/threed/jpct/DeSerializer;->buffer:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/threed/jpct/DeSerializer;->length:I

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Premature end of file!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readAnimation(Lcom/threed/jpct/Object3D;Ljava/io/InputStream;)Lcom/threed/jpct/Animation;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, p1

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/threed/jpct/Animation;

    invoke-direct {v1, v0}, Lcom/threed/jpct/Animation;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v1, Lcom/threed/jpct/Animation;->aktFrames:I

    move v0, p1

    :goto_1
    iget v2, v1, Lcom/threed/jpct/Animation;->aktFrames:I

    if-lt v0, v2, :cond_2

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v1, Lcom/threed/jpct/Animation;->endFrame:I

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v1, Lcom/threed/jpct/Animation;->mode:I

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v1, Lcom/threed/jpct/Animation;->anzAnim:I

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v1, Lcom/threed/jpct/Animation;->wrapMode:I

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v0

    iput-object v0, v1, Lcom/threed/jpct/Animation;->startFrames:[I

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v0

    iput-object v0, v1, Lcom/threed/jpct/Animation;->endFrames:[I

    :goto_2
    iget-object v0, v1, Lcom/threed/jpct/Animation;->startFrames:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v1, Lcom/threed/jpct/Animation;->seqNames:[Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, v1, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    invoke-direct {p0, p2}, Lcom/threed/jpct/DeSerializer;->readMesh(Ljava/io/InputStream;)Lcom/threed/jpct/Mesh;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, v1, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/threed/jpct/Mesh;->strip()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private readBoolean(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->read(Ljava/io/InputStream;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private readFloat(Ljava/io/InputStream;)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->read(Ljava/io/InputStream;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method private readFloatArray(Ljava/io/InputStream;)[F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-gez v1, :cond_1

    neg-int p1, v1

    new-array p1, p1, [F

    return-object p1

    :cond_1
    new-array v2, v1, [F

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    return-object v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "float[] array expected ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readFloatFloatArray(Ljava/io/InputStream;)[[F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0xf423f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/DeSerializer;->readFloatFloatArray(Ljava/io/InputStream;I)[[F

    move-result-object p1

    return-object p1
.end method

.method private readFloatFloatArray(Ljava/io/InputStream;I)[[F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 3
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5
    new-array v1, p2, [[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, p2, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    .line 7
    new-array v5, v4, [F

    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_2

    .line 8
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "float[][] array expected ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->read(Ljava/io/InputStream;)I

    move-result p1

    return p1
.end method

.method private readIntArray(Ljava/io/InputStream;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-gez v1, :cond_1

    neg-int p1, v1

    new-array p1, p1, [I

    return-object p1

    :cond_1
    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    return-object v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "int[] array expected ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readIntIntArray(Ljava/io/InputStream;)[[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const v0, 0xf423f

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;I)[[I

    move-result-object p1

    return-object p1
.end method

.method private readIntIntArray(Ljava/io/InputStream;I)[[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 5
    new-array v1, p2, [[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, p2, :cond_1

    return-object v1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v4

    .line 7
    new-array v5, v4, [I

    move v0, v2

    :goto_1
    if-lt v0, v4, :cond_2

    .line 8
    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "int[][] array expected ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readMesh(Ljava/io/InputStream;)Lcom/threed/jpct/Mesh;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    new-instance v4, Lcom/threed/jpct/Mesh;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput v0, v4, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v1, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    iput v2, v4, Lcom/threed/jpct/Mesh;->anzVectors:I

    iput v3, v4, Lcom/threed/jpct/Mesh;->maxVectors:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, v4, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->xOrg:[F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->yOrg:[F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->zOrg:[F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->nxOrg:[F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->nyOrg:[F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->nzOrg:[F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v0

    iput-object v0, v4, Lcom/threed/jpct/Mesh;->coords:[I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v4, Lcom/threed/jpct/Mesh;->obbStart:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, v4, Lcom/threed/jpct/Mesh;->obbEnd:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;)[[I

    move-result-object p1

    iput-object p1, v4, Lcom/threed/jpct/Mesh;->points:[[I

    return-object v4
.end method

.method private readOcTree(Ljava/io/InputStream;)Lcom/threed/jpct/OcTree;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "No octree found in serialized data!"

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "Octree found in serialized data!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/threed/jpct/OcTree;

    invoke-direct {v0}, Lcom/threed/jpct/OcTree;-><init>()V

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTree;->leafs:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTree;->nodes:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTree;->maxPoly:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTree;->maxDepth:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTree;->totalPolys:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/threed/jpct/OcTree;->useForCollision:Z

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/threed/jpct/OcTree;->useForRendering:Z

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTree;->mode:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/threed/jpct/OcTree;->tris:[I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/threed/jpct/DeSerializer;->readOcTreeNodes(Ljava/io/InputStream;Lcom/threed/jpct/OcTree;Ljava/util/Map;)Lcom/threed/jpct/OcTreeNode;

    return-object v0
.end method

.method private readOcTreeNodes(Ljava/io/InputStream;Lcom/threed/jpct/OcTree;Ljava/util/Map;)Lcom/threed/jpct/OcTreeNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/threed/jpct/OcTree;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/threed/jpct/OcTreeNode;",
            ">;)",
            "Lcom/threed/jpct/OcTreeNode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/threed/jpct/OcTreeNode;

    invoke-direct {v0}, Lcom/threed/jpct/OcTreeNode;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p2, Lcom/threed/jpct/OcTree;->root:Lcom/threed/jpct/OcTreeNode;

    :cond_0
    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->id:I

    invoke-static {v1}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/threed/jpct/OcTreeNode;

    iput-object v1, v0, Lcom/threed/jpct/OcTreeNode;->parent:Lcom/threed/jpct/OcTreeNode;

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->xLow:F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->yLow:F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->zLow:F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->xHigh:F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->yHigh:F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->zHigh:F

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->polyCnt:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/OcTreeNode;->pointCnt:I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/threed/jpct/OcTreeNode;->polyList:[I

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/threed/jpct/OcTreeNode;->pointList:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-lt v2, v3, :cond_2

    iget v2, v0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    new-array v2, v2, [Lcom/threed/jpct/OcTreeNode;

    iput-object v2, v0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    :goto_1
    iget v2, v0, Lcom/threed/jpct/OcTreeNode;->childCnt:I

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/threed/jpct/DeSerializer;->readOcTreeNodes(Ljava/io/InputStream;Lcom/threed/jpct/OcTree;Ljava/util/Map;)Lcom/threed/jpct/OcTreeNode;

    move-result-object v2

    iget-object v3, v0, Lcom/threed/jpct/OcTreeNode;->children:[Lcom/threed/jpct/OcTreeNode;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/threed/jpct/OcTreeNode;->pList:[Lcom/threed/jpct/SimpleVector;

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_1

    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "*null*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1

    :cond_1
    aget v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result v1

    invoke-direct {p0, p1}, Lcom/threed/jpct/DeSerializer;->readFloat(Ljava/io/InputStream;)F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public deserialize(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v0

    const/4 v4, 0x5

    if-le v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_10

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_f

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v0, v5, :cond_1

    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v5

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    new-array v7, v5, [Lcom/threed/jpct/Object3D;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v3

    :goto_1
    if-lt v8, v5, :cond_2

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v7

    :cond_2
    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v9

    const/4 v10, 0x4

    if-lt v0, v10, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v2

    :goto_2
    if-lt v0, v4, :cond_4

    new-instance v11, Lcom/threed/jpct/SimpleVector;

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/threed/jpct/SimpleVector;-><init>([F)V

    goto :goto_3

    :cond_4
    move-object v11, v2

    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readMesh(Ljava/io/InputStream;)Lcom/threed/jpct/Mesh;

    move-result-object v12

    iget v13, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    new-instance v14, Lcom/threed/jpct/Object3D;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Lcom/threed/jpct/Object3D;-><init>(I)V

    if-eqz v10, :cond_5

    invoke-virtual {v14, v10}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v14, v11}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    iput-boolean v6, v14, Lcom/threed/jpct/Object3D;->skipPivot:Z

    :cond_6
    invoke-virtual {v14}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v10

    iget-object v11, v14, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v15, v12, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v15, v10, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v13, v10, Lcom/threed/jpct/Mesh;->anzTri:I

    iget v13, v12, Lcom/threed/jpct/Mesh;->anzVectors:I

    iput v13, v10, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget v13, v12, Lcom/threed/jpct/Mesh;->maxVectors:I

    iput v13, v10, Lcom/threed/jpct/Mesh;->maxVectors:I

    iget-boolean v13, v12, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iput-boolean v13, v10, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->coords:[I

    iput-object v13, v10, Lcom/threed/jpct/Mesh;->coords:[I

    iget v13, v12, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v13, v10, Lcom/threed/jpct/Mesh;->obbStart:I

    iget v13, v12, Lcom/threed/jpct/Mesh;->obbEnd:I

    iput v13, v10, Lcom/threed/jpct/Mesh;->obbEnd:I

    iget-object v12, v12, Lcom/threed/jpct/Mesh;->points:[[I

    iput-object v12, v10, Lcom/threed/jpct/Mesh;->points:[[I

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v10

    iput-object v10, v11, Lcom/threed/jpct/Vectors;->nuOrg:[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v10

    iput-object v10, v11, Lcom/threed/jpct/Vectors;->nvOrg:[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatFloatArray(Ljava/io/InputStream;)[[F

    move-result-object v10

    iput-object v10, v11, Lcom/threed/jpct/Vectors;->uMul:[[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatFloatArray(Ljava/io/InputStream;)[[F

    move-result-object v10

    iput-object v10, v11, Lcom/threed/jpct/Vectors;->vMul:[[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    move-result-object v10

    iput-object v10, v11, Lcom/threed/jpct/Vectors;->alpha:[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v10

    iput v10, v11, Lcom/threed/jpct/Vectors;->maxVectors:I

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    if-nez v9, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readFloatArray(Ljava/io/InputStream;)[F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;

    move-result-object v9

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readVector(Ljava/io/InputStream;)Lcom/threed/jpct/SimpleVector;

    move-result-object v10

    iget v11, v9, Lcom/threed/jpct/SimpleVector;->x:F

    iput v11, v14, Lcom/threed/jpct/Object3D;->centerX:F

    iget v11, v9, Lcom/threed/jpct/SimpleVector;->y:F

    iput v11, v14, Lcom/threed/jpct/Object3D;->centerY:F

    iget v9, v9, Lcom/threed/jpct/SimpleVector;->z:F

    iput v9, v14, Lcom/threed/jpct/Object3D;->centerZ:F

    iget v9, v10, Lcom/threed/jpct/SimpleVector;->x:F

    iput v9, v14, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v9, v10, Lcom/threed/jpct/SimpleVector;->y:F

    iput v9, v14, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v9, v10, Lcom/threed/jpct/SimpleVector;->z:F

    iput v9, v14, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v9

    iput-boolean v9, v14, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntArray(Ljava/io/InputStream;)[I

    move-result-object v9

    iput-object v9, v14, Lcom/threed/jpct/Object3D;->texture:[I

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;)[[I

    move-result-object v9

    iput-object v9, v14, Lcom/threed/jpct/Object3D;->multiMode:[[I

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readIntIntArray(Ljava/io/InputStream;)[[I

    move-result-object v9

    iput-object v9, v14, Lcom/threed/jpct/Object3D;->multiTex:[[I

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/threed/jpct/TextureManager;->getNames()Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_17

    move v13, v3

    :goto_5
    if-lt v13, v9, :cond_16

    iget-object v9, v14, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v9, v9

    move v15, v3

    const v4, -0xbc61bd

    const v16, -0xbc61bd

    :goto_6
    if-lt v15, v9, :cond_11

    iget-object v4, v14, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v4, :cond_e

    array-length v4, v4

    move v12, v3

    const v9, -0xbc61bd

    const v13, -0xbc61bd

    :goto_7
    if-lt v12, v4, :cond_8

    goto :goto_b

    :cond_8
    iget-object v15, v14, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v15, v15, v12

    array-length v2, v15

    :goto_8
    if-lt v3, v2, :cond_9

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_7

    :cond_9
    aget v6, v15, v3

    if-ne v13, v6, :cond_a

    aput v9, v15, v3

    goto :goto_a

    :cond_a
    invoke-static {v6}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_d

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v15, v3

    goto :goto_9

    :cond_b
    invoke-direct {v1, v9}, Lcom/threed/jpct/DeSerializer;->createTexture(Ljava/lang/String;)I

    move-result v9

    const/4 v13, -0x1

    if-le v9, v13, :cond_c

    aput v9, v15, v3

    goto :goto_9

    :cond_c
    aput v13, v15, v3

    :cond_d
    :goto_9
    aget v9, v15, v3

    move v13, v6

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    :goto_b
    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readBoolean(Ljava/io/InputStream;)Z

    move-result v2

    iput-boolean v2, v14, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v2

    sget v3, Lcom/threed/jpct/Config;->maxTextureLayers:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v14, Lcom/threed/jpct/Object3D;->maxStagesUsed:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, p1

    :try_start_5
    invoke-direct {v1, v14, v2}, Lcom/threed/jpct/DeSerializer;->readAnimation(Lcom/threed/jpct/Object3D;Ljava/io/InputStream;)Lcom/threed/jpct/Animation;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v14, v3}, Lcom/threed/jpct/Object3D;->setAnimationSequence(Lcom/threed/jpct/Animation;)V

    goto :goto_c

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :catch_3
    move-exception v0

    goto/16 :goto_f

    :cond_f
    :goto_c
    const/4 v3, 0x3

    if-lt v0, v3, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readOcTree(Ljava/io/InputStream;)Lcom/threed/jpct/OcTree;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/threed/jpct/OcTree;->postConstruct()V

    invoke-virtual {v14, v3}, Lcom/threed/jpct/Object3D;->setOcTree(Lcom/threed/jpct/OcTree;)V

    :cond_10
    aput-object v14, v7, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v2, p1

    iget-object v3, v14, Lcom/threed/jpct/Object3D;->texture:[I

    aget v6, v3, v15

    if-ne v4, v6, :cond_12

    aput v16, v3, v15

    goto :goto_e

    :cond_12
    invoke-static {v6}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_15

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v15

    goto :goto_d

    :cond_13
    invoke-direct {v1, v13}, Lcom/threed/jpct/DeSerializer;->createTexture(Ljava/lang/String;)I

    move-result v4

    const/4 v13, -0x1

    if-eq v4, v13, :cond_14

    aput v4, v3, v15

    goto :goto_d

    :cond_14
    const-string v4, "--dummy--"

    invoke-virtual {v12, v4}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v15

    :goto_d
    aget v16, v3, v15

    move v4, v6

    :cond_15
    :goto_e
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_16
    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readInt(Ljava/io/InputStream;)I

    move-result v3

    invoke-direct/range {p0 .. p1}, Lcom/threed/jpct/DeSerializer;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_17
    move-object/from16 v2, p1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v6, 0x1

    goto/16 :goto_4

    :goto_f
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t deserialize object: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    const/4 v2, 0x0

    return-object v2

    :goto_10
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    throw v0
.end method
