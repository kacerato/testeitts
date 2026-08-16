.class public Lcom/jme3/font/plugins/BitmapFontLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/asset/AssetLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private load(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/io/InputStream;)Lcom/jme3/font/BitmapFont;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/jme3/asset/AssetKey;

    const-string v2, "Common/MatDefs/Misc/Unshaded.j3md"

    invoke-direct {v1, v2}, Lcom/jme3/asset/AssetKey;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MaterialDef;

    .line 3
    new-instance v2, Lcom/jme3/font/BitmapCharacterSet;

    invoke-direct {v2}, Lcom/jme3/font/BitmapCharacterSet;-><init>()V

    .line 4
    new-instance v3, Lcom/jme3/font/BitmapFont;

    invoke-direct {v3}, Lcom/jme3/font/BitmapFont;-><init>()V

    .line 5
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    move-object/from16 v6, p3

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 6
    invoke-virtual {v3, v2}, Lcom/jme3/font/BitmapFont;->setCharSet(Lcom/jme3/font/BitmapCharacterSet;)V

    const/4 v6, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 8
    const-string v8, "[\\s=]+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 9
    aget-object v9, v7, v8

    const-string v10, "info"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    .line 10
    :goto_1
    array-length v8, v7

    if-ge v10, v8, :cond_2

    .line 11
    aget-object v8, v7, v10

    const-string v9, "size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v10, 0x1

    .line 12
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/jme3/font/BitmapCharacterSet;->setRenderedSize(I)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v5, p2

    goto :goto_0

    .line 13
    :cond_3
    aget-object v9, v7, v8

    const-string v11, "common"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 14
    :goto_2
    array-length v8, v7

    if-ge v10, v8, :cond_2

    .line 15
    aget-object v8, v7, v10

    .line 16
    const-string v9, "lineHeight"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    add-int/lit8 v8, v10, 0x1

    .line 17
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/jme3/font/BitmapCharacterSet;->setLineHeight(I)V

    goto :goto_3

    .line 18
    :cond_4
    const-string v9, "base"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    add-int/lit8 v8, v10, 0x1

    .line 19
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/jme3/font/BitmapCharacterSet;->setBase(I)V

    goto :goto_3

    .line 20
    :cond_5
    const-string v9, "scaleW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    add-int/lit8 v8, v10, 0x1

    .line 21
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/jme3/font/BitmapCharacterSet;->setWidth(I)V

    goto :goto_3

    .line 22
    :cond_6
    const-string v9, "scaleH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    add-int/lit8 v8, v10, 0x1

    .line 23
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/jme3/font/BitmapCharacterSet;->setHeight(I)V

    goto :goto_3

    .line 24
    :cond_7
    const-string v9, "pages"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    add-int/lit8 v6, v10, 0x1

    .line 25
    aget-object v6, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-array v6, v6, [Lcom/jme3/material/Material;

    .line 26
    invoke-virtual {v3, v6}, Lcom/jme3/font/BitmapFont;->setPages([Lcom/jme3/material/Material;)V

    :cond_8
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 27
    :cond_9
    aget-object v9, v7, v8

    const-string v11, "page"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v12, "id"

    if-eqz v9, :cond_e

    const/4 v9, -0x1

    move v11, v10

    const/4 v13, 0x0

    .line 28
    :goto_4
    array-length v14, v7

    if-ge v11, v14, :cond_d

    .line 29
    aget-object v14, v7, v11

    .line 30
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    add-int/lit8 v9, v11, 0x1

    .line 31
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :cond_a
    move-object/from16 v5, p2

    goto :goto_5

    .line 32
    :cond_b
    const-string v15, "file"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    add-int/lit8 v13, v11, 0x1

    .line 33
    aget-object v13, v7, v13

    .line 34
    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 35
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 36
    :cond_c
    new-instance v14, Lcom/jme3/asset/TextureKey;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, p2

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13, v10}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v14, v8}, Lcom/jme3/asset/TextureKey;->setGenerateMips(Z)V

    .line 38
    invoke-interface {v0, v14}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v13

    .line 39
    sget-object v14, Lcom/jme3/texture/Texture$MagFilter;->Bilinear:Lcom/jme3/texture/Texture$MagFilter;

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setMagFilter(Lcom/jme3/texture/Texture$MagFilter;)V

    .line 40
    sget-object v14, Lcom/jme3/texture/Texture$MinFilter;->BilinearNoMipMaps:Lcom/jme3/texture/Texture$MinFilter;

    invoke-virtual {v13, v14}, Lcom/jme3/texture/Texture;->setMinFilter(Lcom/jme3/texture/Texture$MinFilter;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v5, p2

    if-ltz v9, :cond_0

    if-eqz v13, :cond_0

    .line 41
    new-instance v7, Lcom/jme3/material/Material;

    invoke-direct {v7, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/material/MaterialDef;)V

    .line 42
    const-string v8, "ColorMap"

    invoke-virtual {v7, v8, v13}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    .line 43
    const-string v8, "VertexColor"

    invoke-virtual {v7, v8, v10}, Lcom/jme3/material/Material;->setBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v7}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object v8

    sget-object v10, Lcom/jme3/material/RenderState$BlendMode;->Alpha:Lcom/jme3/material/RenderState$BlendMode;

    invoke-virtual {v8, v10}, Lcom/jme3/material/RenderState;->setBlendMode(Lcom/jme3/material/RenderState$BlendMode;)V

    .line 45
    aput-object v7, v6, v9

    goto/16 :goto_0

    :cond_e
    move-object/from16 v5, p2

    .line 46
    aget-object v9, v7, v8

    const-string v13, "char"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v8, 0x0

    .line 47
    :goto_6
    array-length v9, v7

    if-ge v10, v9, :cond_0

    .line 48
    aget-object v9, v7, v10

    .line 49
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    add-int/lit8 v8, v10, 0x1

    .line 50
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 51
    new-instance v9, Lcom/jme3/font/BitmapCharacter;

    invoke-direct {v9}, Lcom/jme3/font/BitmapCharacter;-><init>()V

    .line 52
    invoke-virtual {v2, v8, v9}, Lcom/jme3/font/BitmapCharacterSet;->addCharacter(ILcom/jme3/font/BitmapCharacter;)V

    move-object v8, v9

    goto/16 :goto_7

    .line 53
    :cond_f
    const-string v13, "x"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    add-int/lit8 v9, v10, 0x1

    .line 54
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setX(I)V

    goto/16 :goto_7

    .line 55
    :cond_10
    const-string v13, "y"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    add-int/lit8 v9, v10, 0x1

    .line 56
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setY(I)V

    goto/16 :goto_7

    .line 57
    :cond_11
    const-string v13, "width"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    add-int/lit8 v9, v10, 0x1

    .line 58
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setWidth(I)V

    goto :goto_7

    .line 59
    :cond_12
    const-string v13, "height"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    add-int/lit8 v9, v10, 0x1

    .line 60
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setHeight(I)V

    goto :goto_7

    .line 61
    :cond_13
    const-string v13, "xoffset"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    add-int/lit8 v9, v10, 0x1

    .line 62
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setXOffset(I)V

    goto :goto_7

    .line 63
    :cond_14
    const-string v13, "yoffset"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    add-int/lit8 v9, v10, 0x1

    .line 64
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setYOffset(I)V

    goto :goto_7

    .line 65
    :cond_15
    const-string v13, "xadvance"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    add-int/lit8 v9, v10, 0x1

    .line 66
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setXAdvance(I)V

    goto :goto_7

    .line 67
    :cond_16
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    add-int/lit8 v9, v10, 0x1

    .line 68
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/font/BitmapCharacter;->setPage(I)V

    :cond_17
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 69
    :cond_18
    aget-object v9, v7, v8

    const-string v11, "kerning"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v8

    move v11, v10

    move v10, v9

    .line 70
    :goto_8
    array-length v12, v7

    if-ge v11, v12, :cond_1c

    .line 71
    aget-object v12, v7, v11

    const-string v13, "first"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    add-int/lit8 v8, v11, 0x1

    .line 72
    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_9

    .line 73
    :cond_19
    aget-object v12, v7, v11

    const-string v13, "second"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    add-int/lit8 v9, v11, 0x1

    .line 74
    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_9

    .line 75
    :cond_1a
    aget-object v12, v7, v11

    const-string v13, "amount"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    add-int/lit8 v10, v11, 0x1

    .line 76
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :cond_1b
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 77
    :cond_1c
    invoke-virtual {v2, v8}, Lcom/jme3/font/BitmapCharacterSet;->getCharacter(I)Lcom/jme3/font/BitmapCharacter;

    move-result-object v7

    .line 78
    invoke-virtual {v7, v9, v10}, Lcom/jme3/font/BitmapCharacter;->addKerning(II)V

    goto/16 :goto_0

    :cond_1d
    return-object v3
.end method


# virtual methods
.method public load(Lcom/jme3/asset/AssetInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getManager()Lcom/jme3/asset/AssetManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/asset/AssetInfo;->getKey()Lcom/jme3/asset/AssetKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/asset/AssetKey;->getFolder()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1, v0}, Lcom/jme3/font/plugins/BitmapFontLoader;->load(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/io/InputStream;)Lcom/jme3/font/BitmapFont;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 81
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

    .line 82
    :cond_1
    throw p1
.end method
