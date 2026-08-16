.class public Lcom/jme3/texture/plugins/PFMLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/texture/plugins/PFMLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/PFMLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private flipScanline([B)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v2, p1, v1

    aget-byte v3, p1, v0

    aput-byte v3, p1, v1

    aput-byte v2, p1, v0

    add-int/lit8 v1, v0, 0x2

    aget-byte v2, p1, v1

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, p1, v3

    aput-byte v4, p1, v1

    aput-byte v2, p1, v3

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/jme3/texture/plugins/PFMLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "PF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Lcom/jme3/texture/Image$Format;->RGB32F:Lcom/jme3/texture/Image$Format;

    :goto_0
    move-object v2, v0

    goto :goto_1

    .line 4
    :cond_0
    const-string v1, "Pf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5
    sget-object v0, Lcom/jme3/texture/Image$Format;->Luminance32F:Lcom/jme3/texture/Image$Format;

    goto :goto_0

    .line 6
    :goto_1
    invoke-direct {p0, p1}, Lcom/jme3/texture/plugins/PFMLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_7

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v4

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v5, :cond_6

    if-lez v0, :cond_6

    .line 11
    invoke-direct {p0, p1}, Lcom/jme3/texture/plugins/PFMLoader;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v6, 0x0

    cmpg-float v1, v1, v6

    if-gez v1, :cond_1

    .line 13
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2

    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 14
    :goto_2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    if-eq v1, v6, :cond_2

    goto :goto_3

    :cond_2
    move v4, v3

    .line 15
    :goto_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 16
    invoke-virtual {v2}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    mul-int v3, v1, v5

    mul-int v6, v5, v0

    mul-int/2addr v6, v1

    .line 17
    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 18
    new-array v1, v3, [B

    add-int/lit8 v7, v0, -0x1

    :goto_4
    if-ltz v7, :cond_5

    if-nez p2, :cond_3

    mul-int v8, v3, v7

    .line 19
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    :cond_3
    invoke-static {p1, v1}, Lcom/jme3/export/binary/ByteUtils;->readFully(Ljava/io/InputStream;[B)V

    if-eqz v4, :cond_4

    .line 21
    invoke-direct {p0, v1}, Lcom/jme3/texture/plugins/PFMLoader;->flipScanline([B)V

    .line 22
    :cond_4
    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    new-instance p1, Lcom/jme3/texture/Image;

    const/4 p2, 0x0

    sget-object v7, Lcom/jme3/texture/image/ColorSpace;->Linear:Lcom/jme3/texture/image/ColorSpace;

    move-object v1, p1

    move v3, v5

    move v4, v0

    move-object v5, v6

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/jme3/texture/Image;-><init>(Lcom/jme3/texture/Image$Format;IILjava/nio/ByteBuffer;[ILcom/jme3/texture/image/ColorSpace;)V

    return-object p1

    .line 25
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid size specified in PFM file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid size syntax in PFM file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is not PFM format"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/asset/TextureKey;

    if-eqz v0, :cond_2

    .line 29
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object p1

    check-cast p1, Lcom/jme3/asset/TextureKey;

    invoke-virtual {p1}, Lcom/jme3/asset/TextureKey;->isFlipY()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/jme3/texture/plugins/PFMLoader;->load(Ljava/io/InputStream;Z)Lcom/jme3/texture/Image;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 32
    :cond_1
    throw p1

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Texture assets must be loaded using a TextureKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
