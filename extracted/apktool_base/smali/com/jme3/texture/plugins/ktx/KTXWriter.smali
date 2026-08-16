.class public Lcom/jme3/texture/plugins/ktx/KTXWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final fileIdentifier:[B

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final filePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/texture/plugins/ktx/KTXWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/texture/plugins/ktx/KTXWriter;->log:Ljava/util/logging/Logger;

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/texture/plugins/ktx/KTXWriter;->fileIdentifier:[B

    return-void

    :array_0
    .array-data 1
        -0x55t
        0x4bt
        0x54t
        0x58t
        0x20t
        0x31t
        0x31t
        -0x45t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/texture/plugins/ktx/KTXWriter;->filePath:Ljava/lang/String;

    return-void
.end method

.method private getByteBufferArray(Ljava/nio/ByteBuffer;I)[B
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getGlFormat(Lcom/jme3/texture/Image$Format;)Lcom/jme3/renderer/opengl/GLImageFormat;
    .locals 2

    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/renderer/opengl/GLImageFormats;->getFormatsForCaps(Ljava/util/EnumSet;)[[Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static getSlice(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private pad(ILjava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public write(Lcom/jme3/texture/Image;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/texture/Image;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/jme3/texture/Texture;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2
    const-class v2, Lcom/jme3/texture/plugins/ktx/KTXWriter;

    .line 3
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/jme3/texture/plugins/ktx/KTXWriter;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    sget-object v6, Lcom/jme3/texture/plugins/ktx/KTXWriter;->fileIdentifier:[B

    invoke-interface {v4, v6}, Ljava/io/DataOutput;->write([B)V

    const v6, 0x4030201

    .line 7
    invoke-interface {v4, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->getGlFormat(Lcom/jme3/texture/Image$Format;)Lcom/jme3/renderer/opengl/GLImageFormat;

    move-result-object v6

    .line 9
    iget v7, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->dataType:I

    invoke-interface {v4, v7}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v7, 0x1

    .line 10
    invoke-interface {v4, v7}, Ljava/io/DataOutput;->writeInt(I)V

    .line 11
    iget v8, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    invoke-interface {v4, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 12
    iget v8, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->internalFormat:I

    invoke-interface {v4, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 13
    iget v6, v6, Lcom/jme3/renderer/opengl/GLImageFormat;->format:I

    invoke-interface {v4, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v6

    if-le v6, v7, :cond_0

    .line 17
    const-class v6, Lcom/jme3/texture/Texture3D;

    if-ne v0, v6, :cond_0

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getDepth()I

    move-result v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    :goto_0
    move-object v2, v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v19, v2

    goto/16 :goto_c

    :cond_0
    move v6, v7

    .line 19
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v7, :cond_3

    .line 20
    const-class v8, Lcom/jme3/texture/TextureArray;

    if-ne v0, v8, :cond_1

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_2

    :cond_1
    move v8, v7

    .line 22
    :goto_2
    const-class v9, Lcom/jme3/texture/TextureCubeMap;

    if-ne v0, v9, :cond_2

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_3

    :cond_2
    move v0, v7

    goto :goto_3

    :cond_3
    move v0, v7

    move v8, v0

    .line 24
    :goto_3
    invoke-interface {v4, v6}, Ljava/io/DataOutput;->writeInt(I)V

    .line 25
    invoke-interface {v4, v8}, Ljava/io/DataOutput;->writeInt(I)V

    .line 26
    invoke-interface {v4, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v9

    array-length v9, v9

    goto :goto_4

    :cond_4
    move v9, v7

    .line 29
    :goto_4
    invoke-interface {v4, v9}, Ljava/io/DataOutput;->writeInt(I)V

    .line 30
    const-string v10, "KTXorientation\u0000S=r,T=u\u0000"

    const/16 v11, 0x1c

    .line 31
    invoke-interface {v4, v11}, Ljava/io/DataOutput;->writeInt(I)V

    const/16 v11, 0x17

    .line 32
    invoke-interface {v4, v11}, Ljava/io/DataOutput;->writeInt(I)V

    .line 33
    invoke-interface {v4, v10}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    .line 34
    invoke-direct {v1, v7, v4}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->pad(ILjava/io/DataOutput;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_5
    if-ge v11, v9, :cond_a

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getWidth()I

    move-result v13

    shr-int/2addr v13, v11

    invoke-static {v7, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getHeight()I

    move-result v14

    shr-int/2addr v14, v11

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v13

    aget v13, v13, v11

    goto :goto_6

    :cond_5
    mul-int/2addr v13, v14

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Image;->getFormat()Lcom/jme3/texture/Image$Format;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jme3/texture/Image$Format;->getBitsPerPixel()I

    move-result v14

    mul-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x8

    .line 40
    :goto_6
    invoke-interface {v4, v13}, Ljava/io/DataOutput;->writeInt(I)V

    const/4 v14, 0x0

    :goto_7
    if-ge v14, v8, :cond_9

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v0, :cond_8

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_9
    if-ge v7, v6, :cond_6

    .line 41
    invoke-static {v15, v14}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->getSlice(II)I

    move-result v10

    move-object/from16 v3, p1

    invoke-virtual {v3, v10}, Lcom/jme3/texture/Image;->getData(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 42
    sget-object v3, Lcom/jme3/texture/plugins/ktx/KTXWriter;->log:Ljava/util/logging/Logger;

    move/from16 v17, v6

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move/from16 v18, v9

    const-string v9, "position {0}"

    invoke-virtual {v10}, Ljava/nio/Buffer;->position()I

    move-result v16
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v2

    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v6, v9, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    invoke-direct {v1, v10, v13}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->getByteBufferArray(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 45
    invoke-interface {v4, v2}, Ljava/io/DataOutput;->write([B)V

    .line 46
    array-length v2, v2

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v2

    move/from16 v6, v17

    move/from16 v9, v18

    move-object/from16 v2, v19

    goto :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    goto/16 :goto_c

    :cond_6
    move-object/from16 v19, v2

    move/from16 v17, v6

    move/from16 v18, v9

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    if-nez v8, :cond_7

    add-int/lit8 v16, v16, 0x3

    .line 47
    rem-int/lit8 v16, v16, 0x4

    rsub-int/lit8 v2, v16, 0x3

    .line 48
    invoke-direct {v1, v2, v4}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->pad(ILjava/io/DataOutput;)V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v17

    move/from16 v9, v18

    move-object/from16 v2, v19

    const/4 v7, 0x1

    goto :goto_8

    :cond_8
    move-object/from16 v19, v2

    move/from16 v17, v6

    move/from16 v18, v9

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    move-object/from16 v19, v2

    move/from16 v17, v6

    move/from16 v18, v9

    .line 49
    sget-object v2, Lcom/jme3/texture/plugins/ktx/KTXWriter;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v6, "skipping {0}"

    add-int/lit8 v7, v13, 0x3

    rem-int/lit8 v9, v7, 0x4

    rsub-int/lit8 v9, v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v3, v6, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    rem-int/lit8 v7, v7, 0x4

    rsub-int/lit8 v2, v7, 0x3

    .line 51
    invoke-direct {v1, v2, v4}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->pad(ILjava/io/DataOutput;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/2addr v12, v13

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v17

    move/from16 v9, v18

    move-object/from16 v2, v19

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_a
    move-object/from16 v19, v2

    .line 52
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 53
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_2
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    const/4 v5, 0x0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    const/4 v5, 0x0

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    const/4 v5, 0x0

    goto :goto_c

    .line 54
    :goto_b
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_b

    .line 55
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 56
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    goto :goto_a

    .line 57
    :goto_c
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_b

    .line 58
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_b
    :goto_d
    return-void

    :goto_e
    if-eqz v5, :cond_c

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 59
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    :cond_c
    :goto_f
    throw v2
.end method

.method public write(Lcom/jme3/texture/Image;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcom/jme3/texture/Texture2D;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jme3/texture/plugins/ktx/KTXWriter;->write(Lcom/jme3/texture/Image;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
