.class public final Lcom/threed/jpct/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BUFFER:I = 0x2000

.field private static final MAX_CACHE_SIZE:I = 0x4e20

.field private static lastFileData:Ljava/lang/String; = ""

.field private static lastFilename:Ljava/lang/String; = ""

.field private static optimize:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    sput-object v0, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    return-void
.end method

.method private static countOcc(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-ne v1, v3, :cond_0

    return v2
.end method

.method private static create3DSObject(Ljava/lang/String;[[FI[[II[Ljava/lang/String;[Ljava/lang/String;[[F[Ljava/lang/String;[Lcom/threed/jpct/RGBColor;[II)Lcom/threed/jpct/Object3D;
    .locals 44

    move-object/from16 v0, p1

    move/from16 v1, p4

    sget-boolean v2, Lcom/threed/jpct/Loader;->optimize:Z

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    array-length v2, v0

    new-array v6, v2, [I

    new-array v7, v3, [I

    move v8, v5

    :goto_0
    if-lt v8, v2, :cond_0

    move-object v2, v7

    goto :goto_1

    :cond_0
    aput v4, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    move-object v2, v6

    :goto_1
    new-instance v15, Lcom/threed/jpct/Object3D;

    invoke-direct {v15, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    sget-boolean v7, Lcom/threed/jpct/Loader;->optimize:Z

    if-nez v7, :cond_2

    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    :cond_2
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v14

    const-string v7, "--dummy--"

    invoke-virtual {v14, v7}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v27

    const/16 v7, 0x64

    const-string v8, "**hurzigurzi**"

    move v9, v4

    move v13, v5

    :goto_2
    const/16 v10, 0x3e8

    const/4 v11, 0x2

    if-lt v13, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_jPCT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->compress()V

    if-eq v7, v10, :cond_3

    if-eq v7, v4, :cond_3

    invoke-virtual {v15, v7}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v15, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' created using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v1

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " polygons and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v1

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vertices."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v15

    :cond_4
    aget-object v12, p3, v13

    aget v28, v12, v5

    const/16 v29, 0x1

    aget v30, v12, v29

    aget v31, v12, v11

    aget-object v12, v0, v28

    aget v16, v12, v5

    aget v18, v12, v29

    aget v19, v12, v11

    aget-object v12, v0, v30

    aget v20, v12, v5

    aget v21, v12, v29

    aget v23, v12, v11

    aget-object v12, v0, v31

    aget v26, v12, v5

    aget v32, v12, v29

    aget v33, v12, v11

    aget-object v12, p8, v13

    const/16 v17, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    if-eqz v12, :cond_b

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    aget-object v10, p6, v9

    invoke-virtual {v14, v10}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v10

    aget-object v12, p7, v9

    aget v17, v12, v5

    aget v24, v12, v29

    aget v25, v12, v11

    aget v12, v12, v3

    move v5, v7

    move-object v3, v8

    move/from16 v35, v9

    move/from16 v36, v10

    move v9, v12

    move/from16 v12, p11

    goto/16 :goto_7

    :cond_5
    move/from16 v12, p11

    move v3, v5

    :goto_3
    if-lt v3, v12, :cond_6

    goto/16 :goto_6

    :cond_6
    aget-object v11, p5, v3

    if-eqz v11, :cond_a

    aget-object v5, p8, v13

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    aget v5, p10, v3

    if-eq v5, v10, :cond_7

    if-eq v7, v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v4

    :goto_4
    aget-object v7, p6, v3

    if-eqz v7, :cond_8

    aget-object v8, p5, v3

    invoke-virtual {v14, v7}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v7

    aget-object v9, p7, v3

    const/4 v10, 0x0

    aget v17, v9, v10

    aget v24, v9, v29

    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v10, 0x3

    aget v9, v9, v10

    move/from16 v35, v3

    move/from16 v36, v7

    move-object v3, v8

    move/from16 v25, v11

    goto/16 :goto_7

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "__3ds-Color:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, p9, v3

    invoke-virtual {v10}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p9, v3

    invoke-virtual {v11}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, p9, v3

    invoke-virtual {v10}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v14, v7}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v3

    move/from16 v36, v3

    move-object v3, v8

    move/from16 v35, v9

    :goto_5
    move/from16 v9, v17

    move/from16 v25, v9

    move/from16 v17, v22

    move/from16 v24, v17

    goto :goto_7

    :cond_9
    aget-object v8, p9, v3

    invoke-static {v8}, Lcom/threed/jpct/Texture;->createSingleColoredTexture(Lcom/threed/jpct/RGBColor;)Lcom/threed/jpct/Texture;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    invoke-virtual {v14, v7}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v8

    aput-object v7, p6, v3

    aget-object v7, p5, v3

    move/from16 v35, v3

    move-object v3, v7

    move/from16 v36, v8

    goto :goto_5

    :cond_a
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x2

    goto/16 :goto_3

    :cond_b
    move/from16 v12, p11

    :goto_6
    move v5, v7

    move-object v3, v8

    move/from16 v35, v9

    move/from16 v9, v17

    move/from16 v25, v9

    move/from16 v17, v22

    move/from16 v24, v17

    move/from16 v36, v27

    :goto_7
    aget-object v7, v0, v28

    const/16 v37, 0x3

    aget v8, v7, v37

    mul-float v8, v8, v17

    add-float v11, v8, v25

    const/4 v8, 0x4

    aget v7, v7, v8

    mul-float v7, v7, v24

    add-float/2addr v7, v9

    aget-object v10, v0, v30

    aget v38, v10, v37

    mul-float v38, v38, v17

    add-float v38, v38, v25

    aget v10, v10, v8

    mul-float v10, v10, v24

    add-float/2addr v10, v9

    aget-object v39, v0, v31

    aget v40, v39, v37

    mul-float v40, v40, v17

    add-float v40, v40, v25

    aget v8, v39, v8

    mul-float v8, v8, v24

    add-float/2addr v8, v9

    sget-boolean v9, Lcom/threed/jpct/Loader;->optimize:Z

    if-eqz v9, :cond_c

    sub-float v7, v22, v7

    move v12, v7

    sub-float v17, v22, v10

    sub-float v22, v22, v8

    move-object v7, v15

    move/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v39, v13

    move/from16 v13, v20

    move-object/from16 v41, v14

    move/from16 v14, v21

    move-object/from16 v42, v15

    move/from16 v15, v23

    move/from16 v16, v38

    move/from16 v18, v26

    move/from16 v19, v32

    move/from16 v20, v33

    move/from16 v21, v40

    move/from16 v23, v36

    invoke-virtual/range {v7 .. v23}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFI)I

    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    move/from16 v39, v13

    move-object/from16 v41, v14

    move-object/from16 v42, v15

    aget v9, v6, v28

    const/4 v12, 0x0

    aput v9, v2, v12

    aget v9, v6, v30

    aput v9, v2, v29

    aget v9, v6, v31

    const/4 v13, 0x2

    aput v9, v2, v13

    sub-float v12, v22, v7

    sub-float v17, v22, v10

    sub-float v22, v22, v8

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v7, v42

    move/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v34, v13

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v15, v23

    move/from16 v16, v38

    move/from16 v18, v26

    move/from16 v19, v32

    move/from16 v20, v33

    move/from16 v21, v40

    move/from16 v23, v36

    move-object/from16 v26, v2

    invoke-virtual/range {v7 .. v26}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    aget v7, v6, v28

    if-ne v7, v4, :cond_d

    const/4 v7, 0x0

    aget v8, v2, v7

    aput v8, v6, v28

    goto :goto_8

    :cond_d
    const/4 v7, 0x0

    :goto_8
    aget v8, v6, v30

    if-ne v8, v4, :cond_e

    aget v8, v2, v29

    aput v8, v6, v30

    :cond_e
    aget v8, v6, v31

    if-ne v8, v4, :cond_f

    aget v8, v2, v34

    aput v8, v6, v31

    :cond_f
    :goto_9
    add-int/lit8 v13, v39, 0x1

    move-object v8, v3

    move/from16 v9, v35

    move/from16 v3, v37

    move-object/from16 v14, v41

    move-object/from16 v15, v42

    move/from16 v43, v7

    move v7, v5

    move/from16 v5, v43

    goto/16 :goto_2
.end method

.method private static createOBJObject(Ljava/util/HashMap;[[[I[[F[[FLjava/lang/String;[Ljava/lang/String;IIII[I[I[[F)Lcom/threed/jpct/Object3D;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;[[[I[[F[[F",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IIII[I[I[[F)",
            "Lcom/threed/jpct/Object3D;"
        }
    .end annotation

    move/from16 v0, p6

    move-object/from16 v1, p12

    new-instance v2, Lcom/threed/jpct/Object3D;

    sub-int v3, v0, p7

    add-int v3, v3, p9

    invoke-direct {v2, v3}, Lcom/threed/jpct/Object3D;-><init>(I)V

    if-nez p4, :cond_0

    const-string v3, "noname"

    move-object v15, v3

    goto :goto_0

    :cond_0
    move-object/from16 v15, p4

    :goto_0
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-nez p8, :cond_1

    new-array v3, v14, [I

    aput v14, v3, v12

    aput v12, v3, v13

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    move-object/from16 v21, v3

    move/from16 v22, v12

    goto :goto_1

    :cond_1
    move-object/from16 v21, p3

    move/from16 v22, v13

    :goto_1
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v11

    sget-boolean v3, Lcom/threed/jpct/Loader;->optimize:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    move/from16 v23, v12

    goto :goto_2

    :cond_2
    move/from16 v23, v13

    :goto_2
    if-nez v23, :cond_3

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    :cond_3
    const/4 v10, -0x1

    const-string v3, "jkkjkljdldld----"

    move/from16 v9, p7

    move v4, v10

    move v5, v13

    :goto_3
    if-lt v9, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_jPCT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/threed/jpct/Object3D;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->compress()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' created using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v1

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " polygons and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v1

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vertices."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v2

    :cond_4
    aget-object v6, p5, v9

    if-eqz v6, :cond_b

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    move-object/from16 v8, p0

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    if-nez v3, :cond_6

    invoke-virtual {v11, v6}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v4

    :cond_5
    :goto_4
    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v24, v6

    goto/16 :goto_7

    :cond_6
    aget-object v4, v3, v12

    if-eqz v4, :cond_7

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v4

    goto :goto_5

    :cond_7
    move v4, v10

    :goto_5
    if-ne v4, v10, :cond_9

    aget-object v7, v3, v13

    check-cast v7, Lcom/threed/jpct/RGBColor;

    if-eqz v7, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v12, "__obj-Color:"

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v11, v4}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_8
    invoke-static {v7}, Lcom/threed/jpct/Texture;->createSingleColoredTexture(Lcom/threed/jpct/RGBColor;)Lcom/threed/jpct/Texture;

    move-result-object v7

    invoke-virtual {v11, v4, v7}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;Lcom/threed/jpct/Texture;)V

    invoke-virtual {v11, v4}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result v4

    :cond_9
    :goto_6
    aget-object v3, v3, v14

    if-eqz v3, :cond_a

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    move/from16 v25, v4

    move-object/from16 v24, v6

    const/16 v26, 0x1

    goto :goto_7

    :cond_a
    if-eqz v5, :cond_5

    invoke-virtual {v2, v10}, Lcom/threed/jpct/Object3D;->setTransparency(I)V

    goto :goto_4

    :cond_b
    move-object/from16 v8, p0

    move-object/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    :goto_7
    aget-object v3, p1, v9

    const/4 v4, 0x0

    aget-object v5, v3, v4

    aget v6, v5, v4

    const/4 v7, 0x1

    add-int/lit8 v27, v6, -0x1

    aget-object v6, v3, v7

    aget v12, v6, v4

    add-int/lit8 v28, v12, -0x1

    aget-object v12, v3, v14

    aget v13, v12, v4

    add-int/lit8 v29, v13, -0x1

    const/4 v13, 0x3

    aget-object v3, v3, v13

    aget v16, v3, v4

    add-int/lit8 v30, v16, -0x1

    aget v4, v5, v14

    add-int/lit8 v31, v4, -0x1

    aget v4, v6, v14

    add-int/lit8 v32, v4, -0x1

    aget v4, v12, v14

    add-int/lit8 v33, v4, -0x1

    aget v3, v3, v14

    add-int/lit8 v34, v3, -0x1

    if-nez v22, :cond_c

    aget v3, v5, v7

    sub-int/2addr v3, v7

    const/4 v12, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget-object v3, p1, v9

    aget-object v3, v3, v7

    aget v3, v3, v7

    sub-int/2addr v3, v7

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aget-object v5, p1, v9

    aget-object v5, v5, v14

    aget v5, v5, v7

    sub-int/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aget-object v6, p1, v9

    aget-object v6, v6, v13

    aget v6, v6, v7

    sub-int/2addr v6, v7

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v13, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move/from16 v37, v6

    goto :goto_8

    :cond_c
    const/4 v12, 0x0

    move v13, v12

    move/from16 v35, v13

    move/from16 v36, v35

    move/from16 v37, v36

    :goto_8
    if-ltz v29, :cond_d

    if-gez v28, :cond_e

    :cond_d
    move-object v0, v1

    move-object/from16 v44, v2

    move/from16 v39, v9

    move v2, v10

    move-object/from16 v40, v11

    move/from16 v41, v12

    move/from16 v42, v14

    move-object/from16 v43, v15

    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_d

    :cond_e
    const/high16 v38, 0x3f800000    # 1.0f

    if-eqz v23, :cond_10

    aget-object v5, p2, v27

    aget v3, v5, v12

    const/16 v16, 0x1

    aget v4, v5, v16

    aget v5, v5, v14

    aget-object v7, v21, v35

    aget v6, v7, v12

    aget v7, v7, v16

    sub-float v7, v38, v7

    aget-object v17, p2, v28

    aget v18, v17, v12

    move/from16 v8, v18

    aget v18, v17, v16

    move/from16 v39, v9

    move/from16 v9, v18

    aget v17, v17, v14

    move/from16 v10, v17

    aget-object v13, v21, v13

    aget v17, v13, v12

    move-object/from16 v40, v11

    move/from16 v11, v17

    aget v13, v13, v16

    sub-float v13, v38, v13

    move/from16 v0, v16

    move/from16 v16, v12

    move v12, v13

    aget-object v17, p2, v29

    aget v13, v17, v16

    move/from16 v41, v16

    aget v16, v17, v0

    move/from16 v42, v14

    move/from16 v14, v16

    aget v16, v17, v42

    move-object/from16 v43, v15

    move/from16 v15, v16

    aget-object v17, v21, v36

    aget v16, v17, v41

    aget v17, v17, v0

    sub-float v17, v38, v17

    move-object/from16 v44, v2

    move/from16 v18, v25

    invoke-virtual/range {v2 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFI)I

    if-ltz v30, :cond_f

    aget-object v2, p2, v27

    aget v3, v2, v41

    aget v4, v2, v0

    aget v5, v2, v42

    aget-object v2, v21, v35

    aget v6, v2, v41

    aget v2, v2, v0

    sub-float v7, v38, v2

    aget-object v2, p2, v29

    aget v8, v2, v41

    aget v9, v2, v0

    aget v10, v2, v42

    aget-object v2, v21, v36

    aget v11, v2, v41

    aget v2, v2, v0

    sub-float v12, v38, v2

    aget-object v2, p2, v30

    aget v13, v2, v41

    aget v14, v2, v0

    aget v15, v2, v42

    aget-object v2, v21, v37

    aget v16, v2, v41

    aget v2, v2, v0

    sub-float v17, v38, v2

    move-object/from16 v2, v44

    move/from16 v18, v25

    invoke-virtual/range {v2 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFI)I

    :cond_f
    const/4 v2, -0x1

    move-object/from16 v47, v1

    move v1, v0

    move-object/from16 v0, v47

    goto/16 :goto_d

    :cond_10
    move-object/from16 v44, v2

    move/from16 v39, v9

    move-object/from16 v40, v11

    move/from16 v41, v12

    move/from16 v42, v14

    move-object/from16 v43, v15

    const/4 v0, 0x1

    aget v2, p10, v27

    aput v2, p11, v41

    aget v2, p10, v28

    aput v2, p11, v0

    aget v2, p10, v29

    aput v2, p11, v42

    invoke-virtual/range {v44 .. v44}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v15

    if-eqz v1, :cond_16

    array-length v2, v1

    if-lez v2, :cond_16

    aget v2, p11, v41

    const/4 v14, -0x1

    if-eq v2, v14, :cond_12

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v3, v3, v2

    aget-object v4, v1, v31

    aget v5, v4, v41

    cmpl-float v3, v3, v5

    if-nez v3, :cond_11

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v3, v3, v2

    aget v5, v4, v0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_11

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v2, v3, v2

    aget v3, v4, v42

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_12

    :cond_11
    aput v14, p11, v41

    :cond_12
    aget v2, p11, v0

    if-eq v2, v14, :cond_14

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v3, v3, v2

    aget-object v4, v1, v32

    aget v5, v4, v41

    cmpl-float v3, v3, v5

    if-nez v3, :cond_13

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v3, v3, v2

    aget v5, v4, v0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_13

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v2, v3, v2

    aget v3, v4, v42

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_14

    :cond_13
    aput v14, p11, v0

    :cond_14
    aget v2, p11, v42

    if-eq v2, v14, :cond_17

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v3, v3, v2

    aget-object v4, v1, v33

    aget v5, v4, v41

    cmpl-float v3, v3, v5

    if-nez v3, :cond_15

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v3, v3, v2

    aget v5, v4, v0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_15

    iget-object v3, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v2, v3, v2

    aget v3, v4, v42

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_17

    :cond_15
    aput v14, p11, v42

    goto :goto_a

    :cond_16
    const/4 v14, -0x1

    :cond_17
    :goto_a
    aget-object v4, p2, v27

    aget v2, v4, v41

    aget v3, v4, v0

    aget v4, v4, v42

    aget-object v6, v21, v35

    aget v5, v6, v41

    aget v6, v6, v0

    sub-float v6, v38, v6

    aget-object v9, p2, v28

    aget v7, v9, v41

    aget v8, v9, v0

    aget v9, v9, v42

    aget-object v11, v21, v13

    aget v10, v11, v41

    aget v11, v11, v0

    sub-float v11, v38, v11

    aget-object v16, p2, v29

    aget v12, v16, v41

    aget v13, v16, v0

    aget v16, v16, v42

    move/from16 v14, v16

    aget-object v16, v21, v36

    aget v17, v16, v41

    move-object/from16 v45, v15

    move/from16 v15, v17

    aget v16, v16, v0

    sub-float v16, v38, v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v1

    move-object/from16 v1, v44

    move/from16 v17, v25

    move-object/from16 v20, p11

    invoke-virtual/range {v1 .. v20}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    if-eqz v0, :cond_18

    array-length v1, v0

    if-lez v1, :cond_18

    move-object/from16 v15, v45

    const/4 v1, 0x1

    iput-boolean v1, v15, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iget-object v2, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v3, p11, v41

    aget-object v4, v0, v31

    aget v5, v4, v41

    aput v5, v2, v3

    iget-object v5, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v6, v4, v1

    aput v6, v5, v3

    iget-object v6, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v4, v4, v42

    aput v4, v6, v3

    aget v3, p11, v1

    aget-object v4, v0, v32

    aget v7, v4, v41

    aput v7, v2, v3

    aget v7, v4, v1

    aput v7, v5, v3

    aget v4, v4, v42

    aput v4, v6, v3

    aget v3, p11, v42

    aget-object v4, v0, v33

    aget v7, v4, v41

    aput v7, v2, v3

    aget v2, v4, v1

    aput v2, v5, v3

    aget v1, v4, v42

    aput v1, v6, v3

    goto :goto_b

    :cond_18
    move-object/from16 v15, v45

    :goto_b
    aget v1, p10, v27

    const/4 v14, -0x1

    if-ne v1, v14, :cond_19

    aget v1, p11, v41

    aput v1, p10, v27

    :cond_19
    aget v1, p10, v28

    if-ne v1, v14, :cond_1a

    const/4 v1, 0x1

    aget v2, p11, v1

    aput v2, p10, v28

    :cond_1a
    aget v1, p10, v29

    if-ne v1, v14, :cond_1b

    aget v1, p11, v42

    aput v1, p10, v29

    :cond_1b
    if-ltz v30, :cond_25

    aget v1, p10, v27

    aput v1, p11, v41

    aget v2, p10, v29

    const/4 v3, 0x1

    aput v2, p11, v3

    aget v3, p10, v30

    aput v3, p11, v42

    if-eqz v0, :cond_21

    array-length v4, v0

    if-lez v4, :cond_21

    if-eq v1, v14, :cond_1d

    iget-object v4, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v4, v4, v1

    aget-object v5, v0, v31

    aget v6, v5, v41

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1c

    iget-object v4, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v4, v4, v1

    const/4 v6, 0x1

    aget v7, v5, v6

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1c

    iget-object v4, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v1, v4, v1

    aget v4, v5, v42

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1d

    :cond_1c
    aput v14, p11, v41

    :cond_1d
    if-eq v2, v14, :cond_1f

    iget-object v1, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v1, v1, v2

    aget-object v4, v0, v33

    aget v5, v4, v41

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1e

    iget-object v1, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v1, v1, v2

    const/4 v5, 0x1

    aget v6, v4, v5

    cmpl-float v1, v1, v6

    if-nez v1, :cond_1e

    iget-object v1, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v1, v1, v2

    aget v2, v4, v42

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    :cond_1e
    const/4 v1, 0x1

    aput v14, p11, v1

    :cond_1f
    if-eq v3, v14, :cond_21

    iget-object v1, v15, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v1, v1, v3

    aget-object v2, v0, v34

    aget v4, v2, v41

    cmpl-float v1, v1, v4

    if-nez v1, :cond_20

    iget-object v1, v15, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v1, v1, v3

    const/4 v4, 0x1

    aget v5, v2, v4

    cmpl-float v1, v1, v5

    if-nez v1, :cond_20

    iget-object v1, v15, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v1, v1, v3

    aget v2, v2, v42

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_21

    :cond_20
    aput v14, p11, v42

    :cond_21
    aget-object v1, p2, v27

    aget v2, v1, v41

    const/16 v16, 0x1

    aget v3, v1, v16

    aget v4, v1, v42

    aget-object v1, v21, v35

    aget v5, v1, v41

    aget v1, v1, v16

    sub-float v6, v38, v1

    aget-object v1, p2, v29

    aget v7, v1, v41

    aget v8, v1, v16

    aget v9, v1, v42

    aget-object v1, v21, v36

    aget v10, v1, v41

    aget v1, v1, v16

    sub-float v11, v38, v1

    aget-object v1, p2, v30

    aget v12, v1, v41

    aget v13, v1, v16

    aget v1, v1, v42

    move v14, v1

    aget-object v1, v21, v37

    aget v17, v1, v41

    move-object/from16 v46, v15

    move/from16 v15, v17

    aget v1, v1, v16

    sub-float v16, v38, v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v44

    move/from16 v17, v25

    move-object/from16 v20, p11

    invoke-virtual/range {v1 .. v20}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    if-eqz v0, :cond_22

    array-length v1, v0

    if-lez v1, :cond_22

    move-object/from16 v2, v46

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iget-object v3, v2, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v4, p11, v41

    aget-object v5, v0, v31

    aget v6, v5, v41

    aput v6, v3, v4

    iget-object v6, v2, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v7, v5, v1

    aput v7, v6, v4

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v5, v5, v42

    aput v5, v2, v4

    aget v4, p11, v1

    aget-object v5, v0, v33

    aget v7, v5, v41

    aput v7, v3, v4

    aget v7, v5, v1

    aput v7, v6, v4

    aget v5, v5, v42

    aput v5, v2, v4

    aget v4, p11, v42

    aget-object v5, v0, v34

    aget v7, v5, v41

    aput v7, v3, v4

    aget v3, v5, v1

    aput v3, v6, v4

    aget v1, v5, v42

    aput v1, v2, v4

    :cond_22
    aget v1, p10, v27

    const/4 v2, -0x1

    if-ne v1, v2, :cond_23

    aget v1, p11, v41

    aput v1, p10, v27

    :cond_23
    aget v1, p10, v29

    if-ne v1, v2, :cond_24

    const/4 v1, 0x1

    aget v3, p11, v1

    aput v3, p10, v29

    goto :goto_c

    :cond_24
    const/4 v1, 0x1

    :goto_c
    aget v3, p10, v30

    if-ne v3, v2, :cond_26

    aget v3, p11, v42

    aput v3, p10, v30

    goto :goto_d

    :cond_25
    move v2, v14

    goto/16 :goto_9

    :cond_26
    :goto_d
    add-int/lit8 v9, v39, 0x1

    move v12, v1

    move v10, v2

    move-object/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v11, v40

    move/from16 v13, v41

    move/from16 v14, v42

    move-object/from16 v15, v43

    move-object/from16 v2, v44

    move-object v1, v0

    move/from16 v0, p6

    goto/16 :goto_3
.end method

.method private static getChunkHeader([BI[I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v1

    aput v1, p2, v0

    add-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result p0

    const/4 p1, 0x1

    aput p0, p2, p1

    return-void
.end method

.method private static getInt([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v2}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result v2

    add-int/lit8 p1, p1, 0x2

    aget-byte p1, p0, p1

    invoke-static {p1}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result p1

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result p0

    shl-int/lit8 v0, v2, 0x8

    add-int/2addr v1, v0

    shl-int/lit8 p1, p1, 0x10

    add-int/2addr v1, p1

    shl-int/lit8 p0, p0, 0x18

    add-int/2addr v1, p0

    return v1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getSequenceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getShortInt([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte p1, p0, p1

    invoke-static {p1}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result p1

    aget-byte p0, p0, v0

    invoke-static {p0}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p1, p0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getUnsignedByte([BI)I
    .locals 1

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-byte p0, p0, p1

    invoke-static {p0}, Lcom/threed/jpct/Loader;->unsignedByteToInt(B)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static load3DS(Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0, p1}, Lcom/threed/jpct/Loader;->load3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method private static load3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 50

    const/16 v0, 0x2000

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2
    invoke-static {v1, v2, v3, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    new-array v2, v1, [I

    .line 4
    new-array v3, v1, [I

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-array v5, v1, [I

    const/4 v6, 0x1

    const/4 v7, 0x4

    aput v7, v5, v6

    const/4 v8, 0x0

    const/16 v9, 0xa

    aput v9, v5, v8

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    .line 7
    new-array v10, v9, [Ljava/lang/String;

    .line 8
    new-array v11, v9, [Ljava/lang/String;

    .line 9
    new-array v12, v9, [Lcom/threed/jpct/RGBColor;

    .line 10
    new-array v13, v9, [I

    move v14, v8

    :goto_0
    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x3

    if-lt v14, v9, :cond_4e

    .line 11
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v19, ""

    const/16 v20, 0x0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {v0, v8, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 14
    aget v15, v2, v8

    const/16 v9, 0x4d4d

    if-eq v15, v9, :cond_1

    .line 15
    const-string v0, "Not a valid 3DS file!"

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    move-object/from16 v31, v4

    move-object/from16 v30, v14

    goto/16 :goto_2c

    :cond_1
    move/from16 v21, v8

    move/from16 v23, v21

    move/from16 v25, v23

    move/from16 v36, v25

    move-object/from16 v7, v19

    move-object/from16 v33, v20

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    const/4 v9, 0x6

    move-object/from16 v20, v7

    :goto_1
    if-ltz v15, :cond_2

    .line 16
    array-length v15, v0

    if-ge v9, v15, :cond_2

    if-gez v9, :cond_3

    :cond_2
    move-object/from16 v31, v4

    move-object/from16 v30, v14

    move-object/from16 v8, v33

    move-object/from16 v2, v34

    goto/16 :goto_2b

    .line 17
    :cond_3
    invoke-static {v0, v9, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v9, v9, 0x6

    .line 18
    aget v15, v2, v8

    .line 19
    aget v37, v2, v6

    if-ltz v15, :cond_47

    .line 20
    array-length v8, v0

    if-ge v9, v8, :cond_47

    const/16 v8, 0x4100

    if-ne v15, v8, :cond_5

    if-eqz v25, :cond_4

    move-object/from16 v21, v19

    move-object/from16 v22, v33

    move-object/from16 v24, v34

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v5

    move-object/from16 v29, v35

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move/from16 v32, v36

    .line 21
    invoke-static/range {v21 .. v32}, Lcom/threed/jpct/Loader;->create3DSObject(Ljava/lang/String;[[FI[[II[Ljava/lang/String;[Ljava/lang/String;[[F[Ljava/lang/String;[Lcom/threed/jpct/RGBColor;[II)Lcom/threed/jpct/Object3D;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v6, "Processing object from 3DS-file: "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    goto :goto_2

    :cond_5
    const/4 v6, 0x1

    :goto_2
    const v8, 0xb010

    const/16 v1, 0x28

    if-ne v15, v8, :cond_9

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    :goto_3
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v6

    add-int/lit8 v1, v9, 0x1

    move-object/from16 v27, v2

    if-lez v6, :cond_6

    int-to-byte v2, v6

    int-to-char v2, v2

    .line 25
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    :cond_6
    array-length v2, v0

    if-lt v1, v2, :cond_7

    const/4 v6, -0x1

    :cond_7
    if-gtz v6, :cond_8

    .line 27
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Name in hierarchy found: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {v2, v6}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    add-int/lit8 v9, v9, 0x7

    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    move v9, v1

    move-object/from16 v2, v27

    const/16 v1, 0x28

    goto :goto_3

    :cond_9
    move-object/from16 v27, v2

    move-object/from16 v1, v20

    :goto_4
    const v2, 0xb020

    if-ne v15, v2, :cond_a

    add-int/lit8 v2, v9, 0x14

    .line 29
    invoke-static {v0, v2}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-int/lit8 v6, v9, 0x18

    .line 30
    invoke-static {v0, v6}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-int/lit8 v8, v9, 0x1c

    .line 31
    invoke-static {v0, v8}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-int/lit8 v9, v9, 0x20

    .line 32
    invoke-static {v2, v6, v8}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v2

    invoke-interface {v14, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    :cond_a
    const/16 v2, 0x4000

    if-ne v15, v2, :cond_e

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    :cond_b
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v6

    const/4 v8, 0x1

    add-int/2addr v9, v8

    if-lez v6, :cond_c

    int-to-byte v8, v6

    int-to-char v8, v8

    .line 35
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :cond_c
    array-length v8, v0

    if-lt v9, v8, :cond_d

    const/4 v6, -0x1

    :cond_d
    if-gtz v6, :cond_b

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v7

    const/4 v6, 0x0

    move-object v7, v2

    :cond_e
    const/16 v2, 0x4110

    if-ne v15, v2, :cond_12

    .line 38
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v2

    move-object/from16 v8, v33

    if-eqz v8, :cond_f

    .line 39
    array-length v6, v8

    if-ge v6, v2, :cond_10

    :cond_f
    const/4 v6, 0x2

    goto :goto_5

    :cond_10
    move-object/from16 v33, v8

    goto :goto_6

    .line 40
    :goto_5
    new-array v8, v6, [I

    const/4 v6, 0x5

    const/16 v20, 0x1

    aput v6, v8, v20

    const/4 v6, 0x0

    aput v2, v8, v6

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v33, v6

    check-cast v33, [[F

    :goto_6
    add-int/lit8 v9, v9, 0x2

    const/4 v6, 0x0

    :goto_7
    if-lt v6, v2, :cond_11

    move-object/from16 v20, v1

    const/4 v6, 0x0

    goto :goto_8

    .line 41
    :cond_11
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    mul-float v8, v8, p3

    move-object/from16 v20, v1

    add-int/lit8 v1, v9, 0x4

    .line 42
    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    mul-float v1, v1, p3

    move/from16 v28, v2

    add-int/lit8 v2, v9, 0x8

    .line 43
    invoke-static {v0, v2}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float v2, v2, p3

    add-int/lit8 v9, v9, 0xc

    .line 44
    aget-object v29, v33, v23

    const/16 v30, 0x0

    aput v8, v29, v30

    const/4 v8, 0x1

    .line 45
    aput v1, v29, v8

    const/4 v1, 0x2

    .line 46
    aput v2, v29, v1

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v20

    move/from16 v2, v28

    goto :goto_7

    :cond_12
    move-object/from16 v20, v1

    move-object/from16 v8, v33

    :goto_8
    const/16 v1, 0x4120

    if-ne v15, v1, :cond_1d

    .line 47
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v1

    move-object/from16 v2, v34

    if-eqz v2, :cond_13

    .line 48
    array-length v6, v2

    if-ge v6, v1, :cond_14

    :cond_13
    const/4 v2, 0x2

    goto :goto_9

    :cond_14
    move-object/from16 v34, v2

    move-object/from16 v8, v35

    goto :goto_a

    .line 49
    :goto_9
    new-array v6, v2, [I

    const/4 v2, 0x1

    aput v18, v6, v2

    const/4 v2, 0x0

    aput v1, v6, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v34, v2

    check-cast v34, [[I

    .line 50
    new-array v2, v1, [Ljava/lang/String;

    move-object v8, v2

    :goto_a
    add-int/lit8 v2, v9, 0x2

    const/4 v6, 0x0

    :goto_b
    if-lt v6, v1, :cond_1c

    :goto_c
    add-int v1, v9, v37

    const/4 v6, 0x6

    sub-int/2addr v1, v6

    if-ge v2, v1, :cond_15

    .line 51
    array-length v1, v0

    if-lt v2, v1, :cond_16

    :cond_15
    move-object/from16 v31, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    goto/16 :goto_11

    .line 52
    :cond_16
    invoke-static {v0, v2, v3}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v2, v2, 0x6

    const/4 v1, 0x0

    .line 53
    aget v6, v3, v1

    const/4 v1, 0x1

    .line 54
    aget v28, v3, v1

    const/16 v1, 0x4130

    if-ne v6, v1, :cond_1b

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move v6, v2

    move-object/from16 v29, v7

    .line 56
    :goto_d
    invoke-static {v0, v6}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v7

    move-object/from16 v30, v14

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v31, v4

    if-lez v7, :cond_17

    int-to-byte v4, v7

    int-to-char v4, v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    :cond_17
    array-length v4, v0

    if-lt v14, v4, :cond_18

    const/4 v7, -0x1

    :cond_18
    if-gtz v7, :cond_1a

    .line 59
    invoke-static {v0, v14}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v4

    add-int/lit8 v6, v6, 0x3

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x0

    :goto_e
    if-lt v1, v4, :cond_19

    :goto_f
    const/4 v1, 0x6

    goto :goto_10

    .line 61
    :cond_19
    invoke-static {v0, v6}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v14

    const/16 v24, 0x2

    add-int/lit8 v6, v6, 0x2

    .line 62
    aput-object v7, v8, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    move v6, v14

    move-object/from16 v14, v30

    move-object/from16 v4, v31

    goto :goto_d

    :cond_1b
    move-object/from16 v31, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    goto :goto_f

    :goto_10
    add-int/lit8 v28, v28, -0x6

    add-int v2, v2, v28

    move-object/from16 v7, v29

    move-object/from16 v14, v30

    move-object/from16 v4, v31

    goto :goto_c

    :goto_11
    move-object/from16 v35, v8

    const/4 v6, 0x1

    goto :goto_12

    :cond_1c
    move-object/from16 v31, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    .line 63
    invoke-static {v0, v2}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v4

    add-int/lit8 v7, v2, 0x2

    .line 64
    invoke-static {v0, v7}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v7

    add-int/lit8 v14, v2, 0x4

    .line 65
    invoke-static {v0, v14}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v14

    add-int/lit8 v2, v2, 0x8

    .line 66
    aget-object v28, v34, v25

    const/16 v32, 0x0

    aput v4, v28, v32

    const/4 v4, 0x1

    .line 67
    aput v7, v28, v4

    const/4 v4, 0x2

    .line 68
    aput v14, v28, v4

    add-int/lit8 v25, v25, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v7, v29

    move-object/from16 v14, v30

    move-object/from16 v4, v31

    goto/16 :goto_b

    :cond_1d
    move-object/from16 v31, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v14

    move-object/from16 v2, v34

    :goto_12
    const/16 v1, 0x4140

    if-ne v15, v1, :cond_1f

    .line 69
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v1

    add-int/lit8 v9, v9, 0x2

    const/4 v2, 0x0

    :goto_13
    if-lt v2, v1, :cond_1e

    const/4 v6, 0x0

    goto :goto_14

    .line 70
    :cond_1e
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-int/lit8 v6, v9, 0x4

    .line 71
    invoke-static {v0, v6}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-int/lit8 v9, v9, 0x8

    .line 72
    aget-object v7, v33, v21

    aput v4, v7, v18

    const/4 v4, 0x4

    .line 73
    aput v6, v7, v4

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1f
    :goto_14
    const v1, 0xafff

    if-ne v15, v1, :cond_42

    move v1, v9

    :goto_15
    add-int v2, v9, v37

    const/4 v4, 0x6

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_20

    .line 74
    array-length v2, v0

    if-lt v1, v2, :cond_21

    :cond_20
    move/from16 v28, v9

    move/from16 v32, v15

    goto/16 :goto_22

    .line 75
    :cond_21
    invoke-static {v0, v1, v3}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v2, v1, 0x6

    const/4 v4, 0x0

    .line 76
    aget v6, v3, v4

    const/4 v4, 0x1

    .line 77
    aget v7, v3, v4

    const v8, 0xa000

    if-ne v6, v8, :cond_25

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v14, 0x28

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move v14, v2

    move/from16 v28, v9

    .line 79
    :goto_16
    invoke-static {v0, v14}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v9

    add-int/2addr v14, v4

    if-lez v9, :cond_22

    int-to-byte v4, v9

    int-to-char v4, v4

    .line 80
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    :cond_22
    array-length v4, v0

    if-lt v14, v4, :cond_23

    const/4 v9, -0x1

    :cond_23
    if-gtz v9, :cond_24

    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v36

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Processing new material "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v10, v36

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "!"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    invoke-static {v4, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_17

    :cond_24
    const/4 v4, 0x1

    goto :goto_16

    :cond_25
    move/from16 v28, v9

    :goto_17
    const v4, 0xa020

    if-ne v6, v4, :cond_2f

    add-int/lit8 v4, v1, 0xc

    const/16 v8, 0x18

    if-ne v7, v8, :cond_26

    .line 84
    sget-boolean v8, Lcom/threed/jpct/Config;->oldStyle3DSLoader:Z

    if-eqz v8, :cond_27

    :cond_26
    move/from16 v32, v15

    goto :goto_1b

    .line 85
    :cond_27
    invoke-static {v0, v4}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v4, v8

    float-to-int v4, v4

    add-int/lit8 v9, v1, 0x10

    .line 86
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    add-int/lit8 v14, v1, 0x14

    .line 87
    invoke-static {v0, v14}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    mul-float/2addr v14, v8

    float-to-int v8, v14

    if-gez v4, :cond_28

    const/4 v4, 0x0

    const/4 v14, 0x1

    goto :goto_18

    :cond_28
    const/4 v14, 0x0

    :goto_18
    if-gez v9, :cond_29

    const/4 v9, 0x0

    const/4 v14, 0x1

    :cond_29
    if-gez v8, :cond_2a

    const/4 v8, 0x0

    const/16 v32, 0x1

    goto :goto_19

    :cond_2a
    move/from16 v32, v14

    :goto_19
    const/16 v14, 0xff

    if-le v4, v14, :cond_2b

    move v4, v14

    const/16 v32, 0x1

    :cond_2b
    if-le v9, v14, :cond_2c

    move v9, v14

    const/16 v32, 0x1

    :cond_2c
    if-le v8, v14, :cond_2d

    move v8, v14

    const/16 v32, 0x1

    :cond_2d
    if-eqz v32, :cond_2e

    .line 88
    const-string v14, "Error reading material\'s diffuse color...try Config.oldStyle3DSLoader=true!"

    move/from16 v32, v15

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_1a

    :cond_2e
    move/from16 v32, v15

    .line 89
    :goto_1a
    new-instance v14, Lcom/threed/jpct/RGBColor;

    invoke-direct {v14, v4, v9, v8}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    aput-object v14, v12, v36

    goto :goto_1c

    .line 90
    :goto_1b
    invoke-static {v0, v4}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v4

    add-int/lit8 v8, v1, 0xd

    .line 91
    invoke-static {v0, v8}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v8

    add-int/lit8 v9, v1, 0xe

    .line 92
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v9

    .line 93
    new-instance v14, Lcom/threed/jpct/RGBColor;

    invoke-direct {v14, v4, v8, v9}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    aput-object v14, v12, v36

    goto :goto_1c

    :cond_2f
    move/from16 v32, v15

    :goto_1c
    const v4, 0xa050

    if-ne v6, v4, :cond_33

    add-int/lit8 v1, v1, 0xc

    .line 94
    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v1

    const/16 v4, 0x64

    rsub-int/lit8 v1, v1, 0x64

    if-gez v1, :cond_30

    const/4 v1, 0x0

    :cond_30
    if-le v1, v4, :cond_31

    move v1, v4

    :cond_31
    if-ne v1, v4, :cond_32

    const/4 v1, -0x1

    goto :goto_1d

    .line 95
    :cond_32
    div-int/lit8 v1, v1, 0xa

    .line 96
    :goto_1d
    aput v1, v13, v36

    :cond_33
    const v1, 0xa200

    if-ne v6, v1, :cond_3e

    move v1, v2

    :goto_1e
    add-int v4, v2, v37

    const/4 v6, 0x6

    sub-int/2addr v4, v6

    if-ge v1, v4, :cond_3e

    .line 97
    array-length v4, v0

    if-lt v1, v4, :cond_34

    goto/16 :goto_21

    .line 98
    :cond_34
    invoke-static {v0, v1, v3}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v1, v1, 0x6

    const/4 v4, 0x0

    .line 99
    aget v6, v3, v4

    const/4 v4, 0x1

    .line 100
    aget v8, v3, v4

    const v9, 0xa300

    if-ne v6, v9, :cond_39

    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v14, 0x28

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move v15, v1

    .line 102
    :goto_1f
    invoke-static {v0, v15}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v14

    add-int/2addr v15, v4

    if-lez v14, :cond_35

    int-to-byte v4, v14

    int-to-char v4, v4

    .line 103
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    :cond_35
    array-length v4, v0

    if-lt v15, v4, :cond_36

    const/4 v14, -0x1

    :cond_36
    if-gtz v14, :cond_38

    .line 105
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_37

    .line 107
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "Texture named "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " added to TextureManager!"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x2

    invoke-static {v9, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 109
    :cond_37
    aput-object v4, v11, v36

    goto :goto_20

    :cond_38
    const/4 v4, 0x1

    goto :goto_1f

    :cond_39
    :goto_20
    const v4, 0xa354

    if-ne v6, v4, :cond_3a

    .line 110
    aget-object v4, v5, v36

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const/4 v14, 0x0

    aput v9, v4, v14

    :cond_3a
    const v4, 0xa356

    if-ne v6, v4, :cond_3b

    .line 111
    aget-object v4, v5, v36

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const/4 v14, 0x1

    aput v9, v4, v14

    :cond_3b
    const v4, 0xa358

    if-ne v6, v4, :cond_3c

    .line 112
    aget-object v4, v5, v36

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    const/4 v14, 0x2

    aput v9, v4, v14

    :cond_3c
    const v4, 0xa35a

    if-ne v6, v4, :cond_3d

    .line 113
    aget-object v4, v5, v36

    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    aput v6, v4, v18

    :cond_3d
    const/4 v4, 0x6

    sub-int/2addr v8, v4

    add-int/2addr v1, v8

    goto/16 :goto_1e

    :cond_3e
    :goto_21
    add-int/lit8 v7, v7, -0x6

    add-int v1, v2, v7

    move/from16 v9, v28

    move/from16 v15, v32

    goto/16 :goto_15

    :goto_22
    add-int/lit8 v1, v36, 0x1

    .line 114
    array-length v2, v10

    if-lt v1, v2, :cond_41

    .line 115
    array-length v2, v10

    const/16 v4, 0xa

    add-int/2addr v2, v4

    .line 116
    new-array v6, v2, [Ljava/lang/String;

    .line 117
    new-array v7, v2, [Ljava/lang/String;

    .line 118
    new-array v8, v2, [Lcom/threed/jpct/RGBColor;

    .line 119
    new-array v9, v2, [I

    const/4 v14, 0x2

    .line 120
    new-array v15, v14, [I

    const/4 v14, 0x1

    const/16 v22, 0x4

    aput v22, v15, v14

    const/4 v14, 0x0

    aput v2, v15, v14

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 121
    invoke-static {v10, v14, v6, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    invoke-static {v11, v14, v7, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    invoke-static {v12, v14, v8, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-static {v13, v14, v9, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v10, v14

    .line 125
    :goto_23
    array-length v11, v5

    if-lt v10, v11, :cond_40

    move v5, v1

    .line 126
    :goto_24
    array-length v10, v2

    if-lt v5, v10, :cond_3f

    move-object v5, v2

    move-object v10, v6

    move-object v11, v7

    move-object v12, v8

    move-object v13, v9

    :goto_25
    const/4 v15, 0x4

    goto :goto_26

    .line 127
    :cond_3f
    aget-object v10, v2, v5

    aput v17, v10, v14

    const/4 v11, 0x1

    .line 128
    aput v17, v10, v11

    const/4 v11, 0x2

    .line 129
    aput v16, v10, v11

    .line 130
    aput v16, v10, v18

    const/16 v10, 0x3e8

    .line 131
    aput v10, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 132
    :cond_40
    aget-object v11, v5, v10

    aget-object v12, v2, v10

    const/4 v15, 0x4

    invoke-static {v11, v14, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    const/4 v14, 0x0

    goto :goto_23

    :cond_41
    const/16 v4, 0xa

    goto :goto_25

    :goto_26
    move/from16 v36, v1

    const/4 v6, 0x1

    goto :goto_27

    :cond_42
    move/from16 v28, v9

    move/from16 v32, v15

    const/16 v4, 0xa

    const/4 v15, 0x4

    :goto_27
    const/16 v1, 0x3d3d

    move/from16 v14, v32

    if-eq v14, v1, :cond_43

    const v1, 0xb000

    if-eq v14, v1, :cond_43

    const v1, 0xb002

    if-ne v14, v1, :cond_44

    :cond_43
    const/4 v6, 0x0

    :cond_44
    if-eqz v6, :cond_46

    add-int v9, v28, v37

    const/4 v1, 0x6

    sub-int/2addr v9, v1

    .line 133
    array-length v2, v0

    if-lt v9, v2, :cond_45

    .line 134
    array-length v9, v0

    :goto_28
    move v15, v14

    move-object/from16 v2, v27

    :goto_29
    move-object/from16 v7, v29

    :goto_2a
    move-object/from16 v14, v30

    move-object/from16 v4, v31

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_45
    add-int/lit8 v37, v37, -0x6

    add-int v9, v28, v37

    goto :goto_28

    :cond_46
    move v15, v14

    move-object/from16 v2, v27

    move/from16 v9, v28

    goto :goto_29

    :cond_47
    move-object/from16 v27, v2

    move-object/from16 v31, v4

    move-object/from16 v30, v14

    move v14, v15

    move-object/from16 v8, v33

    move-object/from16 v2, v34

    const/4 v1, 0x6

    const/16 v4, 0xa

    const/4 v15, 0x4

    move-object/from16 v34, v2

    move-object/from16 v33, v8

    move v15, v14

    move-object/from16 v2, v27

    goto :goto_2a

    :goto_2b
    move-object/from16 v41, v2

    move-object/from16 v45, v5

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v43, v10

    move-object/from16 v44, v11

    move-object/from16 v47, v12

    move-object/from16 v48, v13

    move/from16 v40, v23

    move/from16 v42, v25

    move-object/from16 v46, v35

    move/from16 v49, v36

    goto :goto_2d

    :goto_2c
    move-object/from16 v45, v5

    move-object/from16 v43, v10

    move-object/from16 v44, v11

    move-object/from16 v47, v12

    move-object/from16 v48, v13

    move-object/from16 v38, v19

    move-object/from16 v39, v20

    move-object/from16 v41, v39

    move-object/from16 v46, v41

    const/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v49, 0x0

    :goto_2d
    if-eqz v40, :cond_48

    if-eqz v42, :cond_48

    .line 135
    invoke-static/range {v38 .. v49}, Lcom/threed/jpct/Loader;->create3DSObject(Ljava/lang/String;[[FI[[II[Ljava/lang/String;[Ljava/lang/String;[[F[Ljava/lang/String;[Lcom/threed/jpct/RGBColor;[II)Lcom/threed/jpct/Object3D;

    move-result-object v0

    move-object/from16 v1, v31

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_48
    move-object/from16 v1, v31

    .line 136
    :goto_2e
    sget-boolean v0, Lcom/threed/jpct/Config;->useRotationPivotFrom3DS:Z

    if-eqz v0, :cond_4c

    const/4 v6, 0x0

    .line 137
    :goto_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_49

    goto :goto_31

    .line 138
    :cond_49
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    .line 139
    invoke-virtual {v0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v3, "_jPCT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4a

    const/4 v5, 0x0

    .line 141
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v30

    .line 142
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/SimpleVector;

    if-eqz v3, :cond_4b

    .line 143
    invoke-virtual {v0, v3}, Lcom/threed/jpct/Object3D;->setRotationPivot(Lcom/threed/jpct/SimpleVector;)V

    const/4 v7, 0x1

    .line 144
    iput-boolean v7, v0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Setting rotation pivot of object "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_30

    :cond_4a
    move-object/from16 v5, v30

    :cond_4b
    :goto_30
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v30, v5

    goto :goto_2f

    .line 146
    :cond_4c
    :goto_31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [Lcom/threed/jpct/Object3D;

    const/4 v8, 0x0

    :goto_32
    if-lt v8, v2, :cond_4d

    return-object v6

    .line 147
    :cond_4d
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/threed/jpct/Object3D;

    aput-object v0, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    :cond_4e
    move-object/from16 v27, v2

    move-object v1, v4

    move v15, v7

    move v4, v9

    .line 148
    aget-object v2, v5, v14

    const/4 v6, 0x0

    aput v17, v2, v6

    const/4 v7, 0x1

    .line 149
    aput v17, v2, v7

    const/4 v8, 0x2

    .line 150
    aput v16, v2, v8

    .line 151
    aput v16, v2, v18

    const/16 v2, 0x3e8

    .line 152
    aput v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v27

    move-object v4, v1

    move v1, v8

    move v8, v6

    move v6, v7

    move v7, v15

    goto/16 :goto_0
.end method

.method public static loadASC(Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0, p1, p2}, Lcom/threed/jpct/Loader;->loadASC(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method private static loadASC(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;FZ)Lcom/threed/jpct/Object3D;
    .locals 38

    .line 2
    new-instance v15, Lcom/threed/jpct/Object3D;

    const/4 v0, -0x1

    invoke-direct {v15, v0}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 3
    sget v1, Lcom/threed/jpct/Config;->loadMaxVerticesASC:I

    new-array v14, v1, [F

    .line 4
    new-array v10, v1, [F

    .line 5
    new-array v9, v1, [F

    .line 6
    sget v1, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v5, v1, [I

    .line 7
    new-array v4, v1, [I

    .line 8
    new-array v13, v1, [I

    const/4 v12, 0x1

    .line 9
    new-array v1, v12, [F

    .line 10
    new-array v2, v12, [F

    .line 11
    invoke-static/range {p0 .. p2}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 12
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_0
    const-string v7, "error"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 15
    const-string v7, "Parsing Objectfile!"

    const/4 v11, 0x2

    invoke-static {v7, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 16
    const-string v7, "U:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v16, 0x0

    if-eq v8, v0, :cond_1

    .line 17
    sget v1, Lcom/threed/jpct/Config;->loadMaxTrianglesASC:I

    new-array v2, v1, [F

    .line 18
    new-array v1, v1, [F

    .line 19
    const-string v8, "Objectfile contains additional Texture coordinates!"

    invoke-static {v8, v11}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    move-object/from16 v20, v1

    move-object/from16 v19, v2

    move v1, v12

    goto :goto_0

    :cond_1
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v1, v16

    .line 20
    :goto_0
    const-string v2, "Vertex list"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    .line 21
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 22
    const-string v17, ""

    move/from16 v21, v1

    move-object/from16 p1, v7

    move/from16 v22, v12

    move/from16 v11, v16

    move v12, v11

    move/from16 v23, v12

    move/from16 v24, v23

    move-object/from16 v1, v17

    :goto_1
    const-string v7, " / Vertices: "

    move-object/from16 p2, v1

    const/16 v1, 0x8

    if-ne v8, v0, :cond_12

    .line 23
    new-instance v0, Lcom/threed/jpct/Mesh;

    mul-int/lit8 v2, v12, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v0, v15, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    .line 24
    new-instance v2, Lcom/threed/jpct/Vectors;

    add-int/lit8 v3, v12, 0x1

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v1

    invoke-direct {v2, v6, v0}, Lcom/threed/jpct/Vectors;-><init>(ILcom/threed/jpct/Mesh;)V

    iput-object v2, v15, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    .line 25
    new-array v0, v3, [I

    iput-object v0, v15, Lcom/threed/jpct/Object3D;->texture:[I

    .line 26
    sget-boolean v0, Lcom/threed/jpct/Loader;->optimize:Z

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {v15}, Lcom/threed/jpct/Object3D;->disableVertexSharing()V

    :cond_2
    move/from16 v0, v16

    :goto_2
    if-lt v0, v12, :cond_3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loaded Object3D: Faces: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Optimized Object3D: Faces: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/lit8 v1, v16, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v15

    :cond_3
    const/4 v8, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v21, :cond_5

    and-int/lit8 v3, v0, 0x1

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    move/from16 v24, v1

    move/from16 v27, v24

    move/from16 v22, v2

    move/from16 v23, v22

    move/from16 v25, v23

    move/from16 v26, v25

    goto/16 :goto_5

    :cond_4
    move/from16 v22, v1

    move/from16 v24, v22

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v23, v2

    move/from16 v26, v23

    goto/16 :goto_5

    :cond_5
    const/4 v6, 0x1

    .line 30
    aget v3, v5, v0

    aget v16, v19, v3

    mul-float v16, v16, v1

    .line 31
    aget v3, v20, v3

    mul-float/2addr v3, v1

    sub-float v3, v1, v3

    .line 32
    aget v17, v4, v0

    aget v18, v19, v17

    mul-float v18, v18, v1

    .line 33
    aget v17, v20, v17

    mul-float v17, v17, v1

    sub-float v17, v1, v17

    .line 34
    aget v22, v13, v0

    aget v23, v19, v22

    mul-float v23, v23, v1

    .line 35
    aget v22, v20, v22

    mul-float v22, v22, v1

    sub-float v22, v1, v22

    cmpg-float v24, v16, v2

    if-gez v24, :cond_6

    move/from16 v16, v2

    :cond_6
    cmpl-float v24, v16, v1

    if-lez v24, :cond_7

    move/from16 v16, v1

    :cond_7
    cmpg-float v24, v3, v2

    if-gez v24, :cond_8

    move v3, v2

    :cond_8
    cmpl-float v24, v3, v1

    if-lez v24, :cond_9

    move v3, v1

    :cond_9
    cmpg-float v24, v18, v2

    if-gez v24, :cond_a

    move/from16 v18, v2

    :cond_a
    cmpl-float v24, v18, v1

    if-lez v24, :cond_b

    move/from16 v18, v1

    :cond_b
    cmpg-float v24, v17, v2

    if-gez v24, :cond_c

    move/from16 v17, v2

    :cond_c
    cmpl-float v24, v17, v1

    if-lez v24, :cond_d

    move/from16 v17, v1

    :cond_d
    cmpg-float v24, v23, v2

    if-gez v24, :cond_e

    move/from16 v23, v2

    :cond_e
    cmpl-float v24, v23, v1

    if-lez v24, :cond_f

    move/from16 v23, v1

    :cond_f
    cmpg-float v24, v22, v2

    if-gez v24, :cond_10

    goto :goto_3

    :cond_10
    move/from16 v2, v22

    :goto_3
    cmpl-float v22, v2, v1

    if-lez v22, :cond_11

    move/from16 v27, v1

    :goto_4
    move/from16 v22, v16

    move/from16 v25, v17

    move/from16 v24, v18

    move/from16 v26, v23

    move/from16 v23, v3

    goto :goto_5

    :cond_11
    move/from16 v27, v2

    goto :goto_4

    .line 36
    :goto_5
    aget v3, v5, v0

    aget v1, v14, v3

    aget v2, v10, v3

    aget v3, v9, v3

    aget v16, v4, v0

    aget v17, v14, v16

    move/from16 v18, v6

    move/from16 v6, v17

    aget v17, v10, v16

    move-object/from16 v28, v7

    move/from16 v7, v17

    aget v16, v9, v16

    move/from16 v17, v8

    move/from16 v8, v16

    aget v16, v13, v0

    aget v29, v14, v16

    move/from16 v30, v11

    move/from16 v11, v29

    aget v17, v10, v16

    move/from16 v31, v12

    move/from16 v29, v18

    move/from16 v12, v17

    aget v16, v9, v16

    move-object/from16 v32, v13

    move/from16 v13, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    move/from16 v33, v0

    move-object v0, v15

    move-object/from16 v34, v4

    move/from16 v4, v22

    move-object/from16 v35, v5

    move/from16 v5, v23

    move-object/from16 v36, v9

    move/from16 v9, v24

    move-object/from16 v37, v10

    move/from16 v10, v25

    move-object/from16 v25, v14

    move/from16 v14, v26

    move-object/from16 v26, v15

    move/from16 v15, v27

    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v16

    add-int/lit8 v0, v33, 0x1

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v7, v28

    move/from16 v11, v30

    move/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v4, v34

    move-object/from16 v5, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_2

    :cond_12
    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v28, v7

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    const/16 v29, 0x1

    move-object/from16 v4, p2

    :goto_6
    if-ne v8, v0, :cond_17

    add-int/lit8 v1, v23, -0x1

    move/from16 v5, v24

    move/from16 v12, v31

    :goto_7
    if-ne v1, v0, :cond_13

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Part: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v7, v22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " / Faces: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v9, v28

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x2

    invoke-static {v1, v10}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    add-int/lit8 v22, v7, 0x1

    .line 38
    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move-object v1, v4

    move/from16 v24, v5

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v13, v32

    move-object/from16 v4, v34

    move-object/from16 v5, v35

    move-object/from16 v9, v36

    move-object/from16 v10, v37

    goto/16 :goto_1

    :cond_13
    move/from16 v7, v22

    move-object/from16 v9, v28

    const/4 v10, 0x2

    add-int/lit8 v5, v1, 0x1

    .line 39
    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v8, v1, 0x1

    .line 40
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 41
    const-string v14, "A:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-eq v15, v0, :cond_15

    const/4 v15, 0x5

    .line 42
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    add-int/2addr v14, v10

    .line 43
    const-string v15, "B:"

    invoke-virtual {v13, v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 44
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    add-int/2addr v15, v10

    .line 45
    const-string v0, "C:"

    invoke-virtual {v13, v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 46
    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    add-int/2addr v0, v10

    .line 47
    const-string v10, "AB:"

    invoke-virtual {v13, v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 48
    invoke-virtual {v13, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 50
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int v10, v10, v30

    aput v10, v35, v12

    .line 53
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    add-int v10, v10, v30

    aput v10, v34, v12

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v0, v0, v30

    aput v0, v32, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v28, v9

    :cond_14
    const/4 v0, -0x1

    goto/16 :goto_7

    .line 55
    :cond_15
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_16

    const/4 v1, -0x1

    .line 56
    :cond_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    move/from16 v22, v7

    move/from16 v23, v8

    move-object/from16 v28, v9

    if-lt v8, v0, :cond_14

    const/4 v0, -0x1

    const/4 v1, -0x1

    goto/16 :goto_7

    :cond_17
    move/from16 v7, v22

    move-object/from16 v9, v28

    add-int/lit8 v0, v8, 0x1

    .line 57
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v5, v8, 0x1

    .line 58
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 59
    const-string v12, "X:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1b

    .line 60
    invoke-virtual {v10, v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x2

    add-int/2addr v12, v13

    .line 61
    const-string v14, "Y:"

    invoke-virtual {v10, v14, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 62
    invoke-virtual {v10, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    add-int/2addr v14, v13

    .line 63
    const-string v15, "Z:"

    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 64
    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    add-int/2addr v15, v13

    move-object/from16 v1, p1

    .line 65
    invoke-virtual {v10, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    move/from16 p1, v0

    const/4 v0, -0x1

    if-eq v13, v0, :cond_18

    .line 66
    invoke-virtual {v10, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v13, v13, 0x2

    .line 67
    const-string v4, "V:"

    invoke-virtual {v10, v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 68
    invoke-virtual {v10, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const/4 v13, 0x2

    add-int/2addr v4, v13

    .line 69
    invoke-virtual {v10, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 70
    invoke-virtual {v10, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move/from16 v21, v29

    goto :goto_8

    :cond_18
    const/4 v13, 0x2

    .line 71
    invoke-virtual {v10, v6, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 72
    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move/from16 v21, v16

    :goto_8
    if-eqz p4, :cond_19

    .line 73
    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    .line 74
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    .line 75
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 76
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v10, v10, p3

    aput v10, v25, v11

    .line 77
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, p3

    aput v0, v37, v11

    .line 78
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p3

    aput v0, v36, v11

    goto :goto_9

    .line 79
    :cond_19
    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    .line 80
    invoke-static {v14}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    .line 81
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 82
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v10, v10, p3

    aput v10, v25, v11

    .line 83
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v10

    neg-float v10, v10

    mul-float v10, v10, p3

    aput v10, v37, v11

    .line 84
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, p3

    aput v0, v36, v11

    :goto_9
    if-eqz v21, :cond_1a

    .line 85
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v19, v11

    .line 86
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v20, v11

    :cond_1a
    add-int/lit8 v11, v11, 0x1

    move/from16 v24, p1

    move-object/from16 p1, v1

    move/from16 v23, v5

    move/from16 v22, v7

    move-object/from16 v28, v9

    const/4 v0, -0x1

    :goto_a
    const/16 v1, 0x8

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v1, p1

    move/from16 p1, v0

    const/4 v13, 0x2

    .line 87
    const-string v0, "Face list"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v10, -0x1

    move/from16 v24, p1

    move-object/from16 p1, v1

    move/from16 v23, v5

    move/from16 v22, v7

    move-object/from16 v28, v9

    if-eq v0, v10, :cond_1c

    move v0, v10

    move v8, v0

    goto :goto_a

    :cond_1c
    move v0, v10

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private static loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I)[B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I[Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I[Ljava/lang/String;)[B
    .locals 10

    .line 2
    new-array v0, p3, [B

    if-nez p1, :cond_0

    .line 3
    const-string p1, "from InputStream"

    :cond_0
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    if-nez p2, :cond_2

    if-nez p0, :cond_1

    .line 5
    new-instance p0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p2, p0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    :goto_0
    const-string p0, " loaded..."

    const-string v2, " bytes"

    if-nez p4, :cond_7

    move-object v4, v0

    move v5, v1

    move v6, v5

    move v0, p3

    :cond_3
    sub-int v7, p3, v5

    .line 9
    :try_start_1
    invoke-virtual {p2, v4, v5, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_4

    add-int/2addr v5, v7

    :cond_4
    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    if-lt v5, p3, :cond_6

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0xa

    if-ne v6, v8, :cond_5

    mul-int/lit8 v0, v0, 0xa

    :cond_5
    add-int/2addr p3, v0

    .line 10
    new-array v8, p3, [B

    sub-int v9, p3, v0

    .line 11
    invoke-static {v4, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Expanding buffers..."

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    move-object v4, v8

    :cond_6
    if-gtz v7, :cond_3

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "File "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    move-object v0, v4

    goto :goto_1

    .line 14
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    :cond_8
    invoke-virtual {p2, v0, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_9

    .line 16
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v1, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-gtz v5, :cond_8

    .line 17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v1

    .line 18
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v5, "Text file "

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v1

    :goto_1
    if-eqz p2, :cond_a

    .line 19
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_a
    if-nez p4, :cond_b

    .line 20
    new-array p0, v5, [B

    .line 21
    invoke-static {v0, v1, p0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    .line 22
    :catchall_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t read file "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 23
    new-array p0, v1, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_c

    .line 24
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_c
    return-object p0

    :catchall_1
    move-exception p0

    if-eqz p2, :cond_d

    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 25
    :catch_2
    :cond_d
    throw p0
.end method

.method public static loadMD2(Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0, p1}, Lcom/threed/jpct/Loader;->loadMD2(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method private static loadMD2(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;F)Lcom/threed/jpct/Object3D;
    .locals 41

    const/16 v0, 0x2000

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2
    invoke-static {v1, v2, v3, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v2}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v3

    const v4, 0x32504449

    if-eq v3, v4, :cond_1

    .line 4
    const-string v4, "Not a valid MD2-file!"

    invoke-static {v4, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    const/4 v4, 0x4

    .line 5
    invoke-static {v0, v4}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v4

    const/16 v5, 0x8

    .line 6
    invoke-static {v0, v5}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v5

    const/16 v6, 0xc

    .line 7
    invoke-static {v0, v6}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v6

    const/16 v7, 0x10

    .line 8
    invoke-static {v0, v7}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v8

    const/16 v9, 0x14

    .line 9
    invoke-static {v0, v9}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v9

    const/16 v10, 0x18

    .line 10
    invoke-static {v0, v10}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v10

    const/16 v11, 0x1c

    .line 11
    invoke-static {v0, v11}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v11

    const/16 v12, 0x20

    .line 12
    invoke-static {v0, v12}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v12

    const/16 v13, 0x24

    .line 13
    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v13

    const/16 v14, 0x28

    .line 14
    invoke-static {v0, v14}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v15

    const/16 v1, 0x30

    .line 15
    invoke-static {v0, v1}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v1

    const/16 v14, 0x34

    .line 16
    invoke-static {v0, v14}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v14

    const/16 v7, 0x38

    .line 17
    invoke-static {v0, v7}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v7

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    move/from16 v17, v1

    const-string v1, "Magic number: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Version: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Skin width: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Skin height: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Frame size: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Number of skins: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Number of Vertices: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Number of Texture coordinates: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Number of triangles: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Number of GL-commands: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Number of Frames: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 29
    new-array v1, v2, [I

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v4, 0x0

    aput v11, v1, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 30
    new-array v13, v2, [I

    const/4 v2, 0x3

    aput v2, v13, v3

    aput v12, v13, v4

    invoke-static {v9, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    move/from16 v19, v14

    const/4 v4, 0x2

    .line 31
    new-array v14, v4, [I

    aput v2, v14, v3

    const/16 v16, 0x0

    aput v12, v14, v16

    invoke-static {v9, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 32
    const-string v14, "Reading Texture coordinates..."

    invoke-static {v14, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v11, :cond_b

    .line 33
    const-string v11, "Done!"

    invoke-static {v11, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 34
    const-string v14, "Reading polygonal data..."

    invoke-static {v14, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v12, :cond_a

    .line 35
    invoke-static {v11, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 36
    new-array v14, v4, [I

    aput v2, v14, v3

    const/16 v16, 0x0

    aput v15, v14, v16

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, [[F

    .line 37
    new-array v14, v4, [I

    const/4 v4, 0x3

    aput v4, v14, v3

    aput v15, v14, v16

    invoke-static {v2, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 38
    new-array v14, v15, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 39
    new-array v0, v4, [I

    move/from16 v21, v7

    const/4 v7, 0x2

    aput v4, v0, v7

    aput v10, v0, v3

    aput v15, v0, v16

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    .line 40
    const-string v4, "Reading keyframes..."

    invoke-static {v4, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v15, :cond_8

    .line 41
    invoke-static {v11, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 42
    const-string v4, "Coverting MD2-format into jPCT-format..."

    invoke-static {v4, v7}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 43
    new-instance v7, Lcom/threed/jpct/Object3D;

    add-int/lit8 v4, v12, 0x1

    invoke-direct {v7, v4}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 44
    new-instance v8, Lcom/threed/jpct/Object3D;

    invoke-direct {v8, v4}, Lcom/threed/jpct/Object3D;-><init>(I)V

    .line 45
    new-instance v4, Lcom/threed/jpct/Animation;

    invoke-direct {v4, v15}, Lcom/threed/jpct/Animation;-><init>(I)V

    .line 46
    const-string v19, "dummy"

    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move-object/from16 v2, v19

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3
    if-lt v3, v15, :cond_2

    .line 47
    invoke-virtual {v7}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 48
    invoke-virtual {v7, v4}, Lcom/threed/jpct/Object3D;->setAnimationSequence(Lcom/threed/jpct/Animation;)V

    const/4 v0, 0x2

    .line 49
    invoke-static {v11, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-object v7

    .line 50
    :cond_2
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->clearObject()V

    move-object/from16 v31, v11

    const/4 v11, 0x0

    :goto_4
    if-lt v11, v10, :cond_6

    const/4 v11, 0x0

    :goto_5
    if-lt v11, v12, :cond_4

    .line 51
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 52
    iget-object v11, v8, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v11, v0}, Lcom/threed/jpct/Mesh;->calcNormalsMD2([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v0

    .line 53
    aget-object v11, v14, v3

    invoke-static {v11}, Lcom/threed/jpct/Loader;->getSequenceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 54
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 p0, v0

    const-string v0, "Processing: "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v4, v11}, Lcom/threed/jpct/Animation;->createSubSequence(Ljava/lang/String;)I

    move-object v2, v11

    goto :goto_6

    :cond_3
    move-object/from16 p0, v0

    .line 57
    :goto_6
    invoke-virtual {v8}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v0

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/threed/jpct/Animation;->addKeyFrame(Lcom/threed/jpct/Mesh;)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, v31

    goto :goto_3

    :cond_4
    const/16 v19, 0x1

    .line 58
    aget-object v20, v13, v11

    const/16 v16, 0x0

    aget v32, v20, v16

    const/16 v18, 0x2

    .line 59
    aget v33, v20, v18

    .line 60
    aget v34, v20, v19

    .line 61
    aget-object v20, v9, v11

    aget v21, v20, v16

    .line 62
    aget v22, v20, v18

    .line 63
    aget v20, v20, v19

    .line 64
    aget-object v21, v1, v21

    move-object/from16 v35, v0

    aget v0, v21, v16

    int-to-float v0, v0

    move-object/from16 v36, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    move-object/from16 p1, v4

    .line 65
    aget v4, v21, v19

    int-to-float v4, v4

    move/from16 v37, v5

    int-to-float v5, v6

    div-float/2addr v4, v5

    .line 66
    aget-object v21, v1, v22

    move/from16 v38, v6

    aget v6, v21, v16

    int-to-float v6, v6

    div-float/2addr v6, v2

    move/from16 v39, v12

    .line 67
    aget v12, v21, v19

    int-to-float v12, v12

    div-float/2addr v12, v5

    .line 68
    aget-object v20, v1, v20

    move/from16 v40, v15

    aget v15, v20, v16

    int-to-float v15, v15

    div-float v2, v15, v2

    .line 69
    aget v15, v20, v19

    int-to-float v15, v15

    div-float v5, v15, v5

    if-nez v3, :cond_5

    move-object/from16 v19, v7

    move/from16 v20, v32

    move/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v33

    move/from16 v24, v6

    move/from16 v25, v12

    move/from16 v26, v34

    move/from16 v27, v2

    move/from16 v28, v5

    .line 70
    invoke-virtual/range {v19 .. v28}, Lcom/threed/jpct/Object3D;->addMD2Triangle(IFFIFFIFF)I

    :cond_5
    move-object/from16 v19, v8

    move/from16 v20, v32

    move/from16 v21, v0

    move/from16 v22, v4

    move/from16 v23, v33

    move/from16 v24, v6

    move/from16 v25, v12

    move/from16 v26, v34

    move/from16 v27, v2

    move/from16 v28, v5

    .line 71
    invoke-virtual/range {v19 .. v28}, Lcom/threed/jpct/Object3D;->addMD2Triangle(IFFIFFIFF)I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p1

    move-object/from16 v0, v35

    move-object/from16 v2, v36

    move/from16 v5, v37

    move/from16 v6, v38

    move/from16 v12, v39

    move/from16 v15, v40

    goto/16 :goto_5

    :cond_6
    move-object/from16 v35, v0

    move-object/from16 v36, v2

    move-object/from16 p1, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v39, v12

    move/from16 v40, v15

    .line 72
    aget-object v0, v30, v3

    aget-object v0, v0, v11

    const/4 v2, 0x0

    aget v4, v0, v2

    int-to-float v4, v4

    aget-object v5, v17, v3

    aget v6, v5, v2

    mul-float/2addr v4, v6

    aget-object v6, v29, v3

    aget v12, v6, v2

    add-float/2addr v4, v12

    const/4 v2, 0x1

    .line 73
    aget v12, v0, v2

    int-to-float v12, v12

    aget v15, v5, v2

    mul-float/2addr v12, v15

    aget v15, v6, v2

    add-float/2addr v12, v15

    const/4 v2, 0x2

    .line 74
    aget v0, v0, v2

    int-to-float v0, v0

    aget v5, v5, v2

    mul-float/2addr v0, v5

    aget v5, v6, v2

    add-float/2addr v0, v5

    mul-float v4, v4, p3

    mul-float v12, v12, p3

    mul-float v0, v0, p3

    .line 75
    iget-object v2, v8, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    neg-float v0, v0

    invoke-virtual {v2, v4, v0, v12}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    if-nez v3, :cond_7

    .line 76
    iget-object v2, v7, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v2, v4, v0, v12}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, p1

    move-object/from16 v0, v35

    move-object/from16 v2, v36

    move/from16 v5, v37

    move/from16 v6, v38

    move/from16 v12, v39

    move/from16 v15, v40

    goto/16 :goto_4

    :cond_8
    move-object/from16 v30, v0

    move-object/from16 v29, v2

    move/from16 v37, v5

    move/from16 v38, v6

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v15

    mul-int v0, v4, v8

    add-int v0, v0, v21

    move-object/from16 v2, v20

    .line 77
    invoke-static {v2, v0}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-int/lit8 v5, v0, 0x4

    .line 78
    invoke-static {v2, v5}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-int/lit8 v6, v0, 0x8

    .line 79
    invoke-static {v2, v6}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-int/lit8 v7, v0, 0xc

    .line 80
    invoke-static {v2, v7}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    add-int/lit8 v11, v0, 0x10

    .line 81
    invoke-static {v2, v11}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    add-int/lit8 v12, v0, 0x14

    .line 82
    invoke-static {v2, v12}, Lcom/threed/jpct/Loader;->getInt([BI)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    .line 83
    new-instance v15, Ljava/lang/String;

    move/from16 v20, v8

    add-int/lit8 v8, v0, 0x18

    move-object/from16 v22, v1

    const/16 v1, 0x10

    invoke-direct {v15, v2, v8, v1}, Ljava/lang/String;-><init>([BII)V

    .line 84
    aget-object v8, v17, v4

    const/16 v16, 0x0

    aput v3, v8, v16

    const/4 v3, 0x1

    .line 85
    aput v5, v8, v3

    const/4 v5, 0x2

    .line 86
    aput v6, v8, v5

    .line 87
    aget-object v6, v29, v4

    aput v7, v6, v16

    .line 88
    aput v11, v6, v3

    .line 89
    aput v12, v6, v5

    .line 90
    aput-object v15, v14, v4

    const/16 v3, 0x28

    add-int/2addr v0, v3

    const/4 v5, 0x0

    :goto_7
    if-lt v5, v10, :cond_9

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v20

    move-object/from16 v1, v22

    move-object/from16 v0, v30

    move-object/from16 v11, v31

    move/from16 v5, v37

    move/from16 v6, v38

    move/from16 v12, v39

    move/from16 v15, v40

    const/4 v3, 0x1

    const/4 v7, 0x2

    move-object/from16 v20, v2

    move-object/from16 v2, v29

    goto/16 :goto_2

    :cond_9
    mul-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v0

    .line 91
    invoke-static {v2, v6}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    .line 92
    invoke-static {v2, v8}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v8

    const/4 v11, 0x2

    add-int/2addr v6, v11

    .line 93
    invoke-static {v2, v6}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v6

    .line 94
    aget-object v12, v30, v4

    aget-object v12, v12, v5

    const/4 v15, 0x0

    aput v7, v12, v15

    const/4 v7, 0x1

    .line 95
    aput v8, v12, v7

    .line 96
    aput v6, v12, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v22, v1

    move v4, v2

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v21, v7

    move/from16 v20, v8

    move-object/from16 v31, v11

    move/from16 v39, v12

    move/from16 v40, v15

    const/16 v1, 0x10

    const/16 v3, 0x28

    move-object v2, v0

    mul-int/lit8 v0, v14, 0xc

    add-int v0, v19, v0

    .line 97
    invoke-static {v2, v0}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v5

    add-int/lit8 v6, v0, 0x2

    .line 98
    invoke-static {v2, v6}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v6

    add-int/lit8 v7, v0, 0x4

    .line 99
    invoke-static {v2, v7}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v7

    add-int/lit8 v8, v0, 0x6

    .line 100
    invoke-static {v2, v8}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v8

    add-int/lit8 v11, v0, 0x8

    .line 101
    invoke-static {v2, v11}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v11

    add-int/lit8 v0, v0, 0xa

    .line 102
    invoke-static {v2, v0}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v0

    .line 103
    aget-object v12, v13, v14

    const/4 v15, 0x0

    aput v5, v12, v15

    const/4 v5, 0x1

    .line 104
    aput v6, v12, v5

    const/4 v6, 0x2

    .line 105
    aput v7, v12, v6

    .line 106
    aget-object v7, v9, v14

    aput v8, v7, v15

    .line 107
    aput v11, v7, v5

    .line 108
    aput v0, v7, v6

    add-int/lit8 v14, v14, 0x1

    move-object v0, v2

    move v2, v4

    move v4, v6

    move/from16 v8, v20

    move/from16 v7, v21

    move-object/from16 v1, v22

    move-object/from16 v11, v31

    move/from16 v5, v37

    move/from16 v6, v38

    move/from16 v12, v39

    move/from16 v15, v40

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v22, v1

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v21, v7

    move/from16 v20, v8

    move/from16 v39, v12

    move/from16 v40, v15

    const/16 v1, 0x10

    const/16 v3, 0x28

    move v6, v4

    move v4, v2

    move-object v2, v0

    mul-int/lit8 v0, v14, 0x4

    add-int v0, v17, v0

    .line 109
    invoke-static {v2, v0}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v5

    add-int/2addr v0, v6

    .line 110
    invoke-static {v2, v0}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v0

    .line 111
    aget-object v7, v22, v14

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x1

    .line 112
    aput v0, v7, v5

    add-int/lit8 v14, v14, 0x1

    move-object v0, v2

    move v2, v4

    move v3, v5

    move v4, v6

    move/from16 v8, v20

    move/from16 v7, v21

    move-object/from16 v1, v22

    move/from16 v5, v37

    move/from16 v6, v38

    goto/16 :goto_0
.end method

.method public static loadOBJ(Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/threed/jpct/Loader;->loadOBJ(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method private static loadOBJ(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/io/InputStream;F)[Lcom/threed/jpct/Object3D;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const/16 v3, 0x20

    const/16 v4, 0x9

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, "\n"

    invoke-direct {v5, v1, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x3

    .line 7
    new-array v7, v15, [F

    .line 8
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v8

    const/16 v18, 0x0

    move-object/from16 v11, v18

    move-object v12, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v16

    move-object/from16 v19, v17

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 9
    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    const-string v14, " "

    if-nez v20, :cond_2e

    move-object/from16 v15, p1

    move-object/from16 v13, p3

    .line 10
    invoke-static {v0, v15, v13}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 12
    const-string v3, "o "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const-string v3, "g "

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "g\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    const-string v3, "o\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "o jPCT_generated\n"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :cond_2
    const-string v3, "v "

    invoke-static {v0, v3}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 15
    const-string v15, "vt "

    invoke-static {v0, v15}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 16
    const-string v13, "f "

    invoke-static {v0, v13}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    .line 17
    new-array v10, v9, [I

    const/4 v11, 0x3

    const/4 v12, 0x1

    aput v11, v10, v12

    const/16 v16, 0x0

    aput v5, v10, v16

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    .line 18
    sget-boolean v17, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    const-string v4, "vn "

    if-eqz v17, :cond_3

    invoke-static {v0, v4}, Lcom/threed/jpct/Loader;->countOcc(Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v23, v2

    new-array v2, v9, [I

    aput v11, v2, v12

    aput v17, v2, v16

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    goto :goto_3

    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v2, v18

    .line 19
    :goto_3
    new-array v11, v9, [I

    aput v9, v11, v12

    aput v7, v11, v16

    invoke-static {v5, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v5

    check-cast v24, [[F

    const/4 v5, 0x3

    .line 20
    new-array v7, v5, [I

    aput v5, v7, v9

    const/4 v11, 0x4

    aput v11, v7, v12

    aput v8, v7, v16

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v25, v5

    check-cast v25, [[[I

    .line 21
    new-array v12, v8, [Ljava/lang/String;

    .line 22
    sget-boolean v5, Lcom/threed/jpct/Loader;->optimize:Z

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v19, v18

    move-object/from16 v26, v19

    goto :goto_6

    .line 23
    :cond_5
    :goto_4
    array-length v5, v10

    new-array v7, v5, [I

    const/4 v8, 0x3

    .line 24
    new-array v9, v8, [I

    const/4 v8, 0x0

    :goto_5
    if-lt v8, v5, :cond_2d

    move-object/from16 v19, v7

    move-object/from16 v26, v9

    .line 25
    :goto_6
    new-instance v9, Ljava/util/StringTokenizer;

    invoke-direct {v9, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    move-object/from16 v33, v5

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 27
    :goto_7
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v28, :cond_6

    .line 28
    const-string v2, "This OBJ-file contains unsupported geometry data. This data has been skipped!"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_8

    :cond_6
    const/4 v3, 0x1

    :goto_8
    if-eqz v27, :cond_7

    .line 29
    const-string v2, "This OBJ-file contains n-polygons with n>4! These polygons wont be displayed correctly!"

    invoke-static {v2, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 30
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [Lcom/threed/jpct/Object3D;

    const/4 v14, 0x0

    .line 31
    :goto_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v14, v2, :cond_9

    if-eqz v1, :cond_8

    .line 32
    invoke-static {}, Lcom/threed/jpct/Loader;->clearCache()V

    :cond_8
    return-object v6

    .line 33
    :cond_9
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/Object3D;

    aput-object v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 34
    :cond_a
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/16 v17, 0x0

    if-eqz v7, :cond_d

    const/4 v7, 0x2

    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 37
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v6, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 38
    :goto_a
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v34

    if-eqz v34, :cond_c

    const/4 v11, 0x3

    if-lt v6, v11, :cond_b

    goto :goto_c

    .line 39
    :cond_b
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 40
    :try_start_0
    aget-object v34, v10, v30

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float v11, v11, p5

    aput v11, v34, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 41
    :catch_0
    aget-object v11, v10, v30

    aput v17, v11, v6

    :goto_b
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x4

    goto :goto_a

    :cond_c
    :goto_c
    add-int/lit8 v30, v30, 0x1

    :goto_d
    move-object/from16 v34, v1

    move-object/from16 p3, v3

    :goto_e
    move-object/from16 v36, v4

    move-object v3, v5

    move v1, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v37, v12

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v20, v15

    move-object/from16 v39, v33

    const/4 v4, 0x2

    const/16 v35, 0x4

    :goto_f
    move/from16 v33, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v27

    move/from16 v27, v16

    goto/16 :goto_24

    .line 42
    :cond_d
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-boolean v7, Lcom/threed/jpct/Config;->useNormalsFromOBJ:Z

    if-eqz v7, :cond_10

    const/4 v7, 0x2

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 44
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v6, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 45
    :goto_10
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x3

    if-lt v6, v11, :cond_e

    goto :goto_12

    .line 46
    :cond_e
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 47
    :try_start_1
    aget-object v34, v2, v32

    invoke-static {v11}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v34, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_11

    .line 48
    :catch_1
    aget-object v11, v2, v32

    aput v17, v11, v6

    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_f
    :goto_12
    add-int/lit8 v32, v32, 0x1

    goto :goto_d

    .line 49
    :cond_10
    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v11, "Error in OBJ-file near: "

    if-eqz v7, :cond_13

    const/4 v7, 0x3

    .line 50
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v34, v1

    .line 51
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v7, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    aget-object v7, v24, v29

    const/16 v21, 0x1

    aput v17, v7, v21

    const/4 v7, 0x0

    .line 53
    :goto_13
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v35

    move-object/from16 p3, v3

    if-eqz v35, :cond_12

    const/4 v3, 0x2

    if-lt v7, v3, :cond_11

    goto :goto_15

    .line 54
    :cond_11
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 55
    :try_start_2
    aget-object v35, v24, v29

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v35, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v35, v1

    goto :goto_14

    .line 56
    :catch_2
    aget-object v3, v24, v29

    aput v17, v3, v7

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v35, v1

    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_14
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, p3

    move-object/from16 v1, v35

    goto :goto_13

    :cond_12
    :goto_15
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_e

    :cond_13
    move-object/from16 v34, v1

    move-object/from16 p3, v3

    .line 58
    const-string v1, "usemtl"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_14

    const/4 v1, 0x7

    .line 59
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_e

    :cond_14
    const/4 v1, 0x7

    .line 60
    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x2

    .line 61
    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 62
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, v3, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v16

    move/from16 v3, v27

    const/4 v1, 0x0

    .line 63
    :goto_16
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    move/from16 v35, v3

    if-eqz v16, :cond_1e

    const/4 v3, 0x4

    if-lt v1, v3, :cond_15

    move-object/from16 v36, v4

    move-object/from16 v37, v9

    move-object/from16 v38, v13

    goto/16 :goto_1b

    :cond_15
    const/4 v3, 0x3

    if-ne v1, v3, :cond_16

    add-int/lit8 v17, v17, 0x1

    .line 64
    :cond_16
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v36, v4

    .line 65
    const-string v4, "/"

    move-object/from16 v37, v9

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v38, v13

    const/4 v13, -0x1

    if-ne v9, v13, :cond_17

    .line 66
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    move v4, v13

    goto :goto_17

    :cond_17
    add-int/lit8 v13, v9, 0x1

    .line 67
    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    move v13, v4

    const/4 v4, -0x1

    :goto_17
    if-ne v13, v4, :cond_18

    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    :cond_18
    const/4 v4, 0x0

    .line 69
    invoke-virtual {v3, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x1

    add-int/2addr v9, v4

    if-ge v9, v13, :cond_19

    .line 70
    invoke-virtual {v3, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_19
    move-object/from16 v4, v18

    .line 71
    :goto_18
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v13, v9, :cond_1a

    const/4 v9, -0x1

    if-eq v13, v9, :cond_1a

    add-int/lit8 v13, v13, 0x1

    .line 72
    invoke-virtual {v3, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_1a
    move-object/from16 v3, v18

    .line 73
    :goto_19
    :try_start_3
    aget-object v9, v25, v8

    aget-object v9, v9, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v16, 0x0

    aput v13, v9, v16

    if-nez v4, :cond_1b

    .line 74
    const-string v4, "1"

    .line 75
    :cond_1b
    aget-object v9, v25, v8

    aget-object v9, v9, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v13, 0x1

    aput v4, v9, v13

    if-eqz v3, :cond_1c

    .line 76
    aget-object v4, v25, v8

    aget-object v4, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v9, 0x2

    aput v3, v4, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1a

    .line 77
    :catch_3
    aget-object v3, v25, v8

    aget-object v3, v3, v1

    const/4 v4, 0x0

    const/4 v9, 0x1

    aput v9, v3, v4

    .line 78
    aput v9, v3, v9

    const/4 v13, 0x2

    .line 79
    aput v9, v3, v13

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1c
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1d

    .line 81
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v4, v36

    move-object/from16 v9, v37

    move-object/from16 v13, v38

    const/4 v3, 0x1

    goto/16 :goto_16

    :cond_1d
    move/from16 v3, v35

    move-object/from16 v4, v36

    move-object/from16 v9, v37

    move-object/from16 v13, v38

    goto/16 :goto_16

    :cond_1e
    move-object/from16 v36, v4

    move-object/from16 v37, v9

    move-object/from16 v38, v13

    const/4 v3, 0x4

    :goto_1b
    move v4, v1

    :goto_1c
    if-lt v4, v3, :cond_1f

    .line 82
    aput-object v33, v12, v8

    add-int/lit8 v8, v8, 0x1

    move v1, v8

    move-object/from16 v22, v10

    move-object/from16 v41, v14

    move-object/from16 v20, v15

    move/from16 v27, v17

    move-object/from16 v39, v33

    move-object/from16 v21, v37

    move-object/from16 v40, v38

    const/4 v4, 0x2

    move-object/from16 v37, v12

    move/from16 v33, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    move/from16 v29, v28

    move/from16 v28, v35

    move/from16 v35, v3

    move-object v3, v5

    goto/16 :goto_24

    .line 83
    :cond_1f
    aget-object v6, v25, v8

    aget-object v6, v6, v1

    const/16 v7, -0x270f

    const/16 v39, 0x0

    aput v7, v6, v39

    const/4 v9, 0x1

    .line 84
    aput v7, v6, v9

    const/4 v13, 0x2

    .line 85
    aput v7, v6, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_20
    move-object/from16 v36, v4

    move-object/from16 v37, v9

    move-object/from16 v38, v13

    const/4 v3, 0x4

    const/4 v13, 0x2

    const/16 v39, 0x0

    .line 86
    const-string v1, "o"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 87
    const-string v4, "g"

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    :cond_21
    const/4 v4, 0x1

    goto/16 :goto_1d

    :cond_22
    if-nez v28, :cond_24

    .line 88
    const-string v1, "p "

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "l "

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "curv"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "surf"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    move/from16 v35, v3

    move-object v3, v5

    move v1, v8

    move-object/from16 v22, v10

    move v4, v13

    move-object/from16 v41, v14

    move-object/from16 v20, v15

    move/from16 v28, v27

    move-object/from16 v39, v33

    move-object/from16 v21, v37

    move-object/from16 v40, v38

    move-object/from16 v37, v12

    move/from16 v27, v16

    move/from16 v33, v32

    move/from16 v32, v31

    move/from16 v31, v30

    move/from16 v30, v29

    const/16 v29, 0x1

    goto/16 :goto_24

    :cond_24
    move/from16 v35, v3

    move-object v3, v5

    move v1, v8

    move-object/from16 v22, v10

    move v4, v13

    move-object/from16 v41, v14

    move-object/from16 v20, v15

    move-object/from16 v39, v33

    move-object/from16 v21, v37

    move-object/from16 v40, v38

    move-object/from16 v37, v12

    goto/16 :goto_f

    .line 89
    :goto_1d
    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_26

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_26

    .line 91
    :cond_25
    const-string v6, "noname"

    :goto_1e
    move-object v11, v6

    goto :goto_1f

    .line 92
    :cond_26
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_27

    goto :goto_1e

    :cond_27
    move-object v11, v5

    :goto_1f
    sub-int v6, v8, v31

    if-lez v6, :cond_29

    if-eqz v5, :cond_28

    move-object v9, v5

    goto :goto_20

    :cond_28
    move-object v9, v11

    :goto_20
    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object v7, v10

    move/from16 p1, v8

    move-object/from16 v8, v24

    move-object/from16 v21, v37

    move-object/from16 v22, v10

    move-object v10, v12

    move/from16 v35, v3

    move-object v3, v11

    move/from16 v11, p1

    move-object/from16 v37, v12

    move/from16 v12, v31

    move v4, v13

    move-object/from16 v40, v38

    move/from16 v13, v29

    move-object/from16 v41, v14

    move/from16 v14, v16

    move-object/from16 v20, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v26

    move-object/from16 v17, v2

    .line 93
    invoke-static/range {v5 .. v17}, Lcom/threed/jpct/Loader;->createOBJObject(Ljava/util/HashMap;[[[I[[F[[FLjava/lang/String;[Ljava/lang/String;IIII[I[I[[F)Lcom/threed/jpct/Object3D;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_29
    move/from16 v35, v3

    move/from16 p1, v8

    move-object/from16 v22, v10

    move-object v3, v11

    move v4, v13

    move-object/from16 v41, v14

    move-object/from16 v20, v15

    move-object/from16 v21, v37

    move-object/from16 v40, v38

    move-object/from16 v37, v12

    :goto_21
    move/from16 v5, p1

    if-eqz v1, :cond_2b

    move/from16 v1, v31

    :goto_22
    if-lt v1, v5, :cond_2a

    goto :goto_23

    .line 94
    :cond_2a
    aput-object v18, v37, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 95
    :cond_2b
    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Processing object from OBJ-file: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    move v1, v5

    move/from16 v31, v30

    move-object/from16 v39, v33

    move/from16 v30, v29

    move/from16 v33, v32

    move/from16 v32, v1

    move/from16 v29, v28

    move/from16 v28, v27

    const/16 v27, 0x0

    .line 96
    :goto_24
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_2c

    sub-int v5, v1, v32

    if-lez v5, :cond_2c

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    move-object/from16 v7, v22

    move-object/from16 v8, v24

    move-object v9, v3

    move-object/from16 v10, v37

    move v11, v1

    move/from16 v12, v32

    move/from16 v13, v30

    move/from16 v14, v27

    move-object/from16 v15, v19

    move-object/from16 v16, v26

    move-object/from16 v17, v2

    .line 97
    invoke-static/range {v5 .. v17}, Lcom/threed/jpct/Loader;->createOBJObject(Ljava/util/HashMap;[[[I[[F[[FLjava/lang/String;[Ljava/lang/String;IIII[I[I[[F)Lcom/threed/jpct/Object3D;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    move v8, v1

    move-object v5, v3

    move-object/from16 v15, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v16, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v31, v32

    move/from16 v32, v33

    move-object/from16 v1, v34

    move/from16 v11, v35

    move-object/from16 v4, v36

    move-object/from16 v12, v37

    move-object/from16 v33, v39

    move-object/from16 v13, v40

    move-object/from16 v14, v41

    move-object/from16 v3, p3

    goto/16 :goto_7

    :cond_2d
    move-object/from16 v34, v1

    move-object/from16 p3, v3

    move-object/from16 v36, v4

    move-object/from16 v22, v10

    move/from16 v35, v11

    move-object/from16 v37, v12

    move-object/from16 v40, v13

    move-object/from16 v41, v14

    move-object/from16 v20, v15

    const/4 v1, -0x1

    const/4 v4, 0x2

    .line 98
    aput v1, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v34

    move-object/from16 v4, v36

    goto/16 :goto_5

    :cond_2e
    move-object/from16 v15, p1

    move-object/from16 v13, p3

    move-object/from16 v34, v1

    move-object/from16 v23, v2

    move v1, v4

    move-object/from16 v41, v14

    const/4 v4, 0x2

    if-eqz v9, :cond_2f

    .line 99
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :cond_2f
    if-eqz v10, :cond_3a

    const/4 v2, 0x1

    if-eq v10, v2, :cond_30

    move/from16 v22, v2

    goto/16 :goto_2b

    .line 100
    :cond_30
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v14, "kd "

    invoke-virtual {v2, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const/high16 v20, 0x3f800000    # 1.0f

    if-eqz v14, :cond_33

    const/4 v14, 0x3

    .line 102
    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 103
    new-instance v1, Ljava/util/StringTokenizer;

    move-object/from16 v3, v41

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 104
    :goto_25
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_31

    if-lt v2, v14, :cond_32

    :cond_31
    const/4 v14, 0x0

    goto :goto_27

    .line 105
    :cond_32
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 106
    :try_start_4
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v7, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v14, 0x0

    goto :goto_26

    .line 107
    :catch_4
    aput v20, v7, v2

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "Error in MTL-file near: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-static {v3, v14}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_26
    add-int/lit8 v2, v2, 0x1

    const/4 v14, 0x3

    goto :goto_25

    .line 109
    :goto_27
    new-instance v1, Lcom/threed/jpct/RGBColor;

    aget v2, v7, v14

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v22, 0x1

    aget v16, v7, v22

    mul-float v14, v16, v3

    float-to-int v14, v14

    aget v4, v7, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-direct {v1, v2, v14, v3}, Lcom/threed/jpct/RGBColor;-><init>(III)V

    :goto_28
    move-object/from16 v2, v17

    :goto_29
    move-object/from16 v3, v19

    goto/16 :goto_2c

    :cond_33
    const/16 v22, 0x1

    .line 110
    const-string v1, "map_kd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "map_ka"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_34
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x7

    if-le v1, v3, :cond_37

    .line 111
    const-string v1, "map_kd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 112
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Loader;->removeBogusData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v8, v1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 114
    invoke-virtual {v8, v1}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Texture named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " added to TextureManager!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_35
    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_29

    .line 116
    :cond_36
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Loader;->removeBogusData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v8, v1}, Lcom/threed/jpct/TextureManager;->containsTexture(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 118
    invoke-virtual {v8, v1}, Lcom/threed/jpct/TextureManager;->addTexture(Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Texture named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " added to TextureManager!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_2b

    .line 120
    :cond_37
    const-string v1, "d "

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 121
    :try_start_5
    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2a

    :catch_5
    const/high16 v1, -0x40800000    # -1.0f

    :goto_2a
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_38

    cmpl-float v2, v1, v20

    if-eqz v2, :cond_38

    .line 122
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    :cond_38
    :goto_2b
    move-object/from16 v1, v16

    goto/16 :goto_28

    .line 123
    :cond_39
    const-string v1, "newmtl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto :goto_2c

    :cond_3a
    const/4 v3, 0x7

    const/16 v22, 0x1

    .line 124
    const-string v1, "newmtl "

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 125
    invoke-virtual {v11, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing new material "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    move-object/from16 v1, v18

    move-object v2, v1

    move-object v3, v2

    move/from16 v9, v22

    move v10, v9

    :goto_2c
    if-eqz v9, :cond_3c

    .line 127
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_3b

    goto :goto_2d

    :cond_3b
    move-object/from16 v14, v23

    goto :goto_2e

    .line 128
    :cond_3c
    :goto_2d
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v14, v23

    invoke-virtual {v14, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2e
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object v2, v14

    move-object/from16 v1, v34

    const/16 v3, 0x20

    const/16 v4, 0x9

    const/4 v15, 0x3

    goto/16 :goto_2
.end method

.method public static loadSerializedObject(Ljava/io/InputStream;)Lcom/threed/jpct/Object3D;
    .locals 1

    new-instance v0, Lcom/threed/jpct/DeSerializer;

    invoke-direct {v0}, Lcom/threed/jpct/DeSerializer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/threed/jpct/DeSerializer;->deserialize(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static loadSerializedObjectArray(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;
    .locals 1

    new-instance v0, Lcom/threed/jpct/DeSerializer;

    invoke-direct {v0}, Lcom/threed/jpct/DeSerializer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/threed/jpct/DeSerializer;->deserialize(Ljava/io/InputStream;)[Lcom/threed/jpct/Object3D;

    move-result-object p0

    return-object p0
.end method

.method public static loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0}, Lcom/threed/jpct/Loader;->loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static loadTextFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Reading file "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from cache"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 4
    sget-object p0, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/threed/jpct/Loader;->clearCache()V

    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x2000

    .line 7
    invoke-static {p0, p1, p2, v1, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I[Ljava/lang/String;)[B

    const/4 p0, 0x0

    .line 8
    aget-object p2, v0, p0

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v1, 0x4e20

    if-gt p2, v1, :cond_1

    if-eqz p1, :cond_1

    .line 10
    sput-object p1, Lcom/threed/jpct/Loader;->lastFilename:Ljava/lang/String;

    .line 11
    aget-object p1, v0, p0

    sput-object p1, Lcom/threed/jpct/Loader;->lastFileData:Ljava/lang/String;

    .line 12
    :cond_1
    aget-object p0, v0, p0

    return-object p0

    .line 13
    :cond_2
    const-string p1, "Couldn\'t load text-file!"

    invoke-static {p1, p0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 14
    const-string p0, ""

    return-object p0
.end method

.method public static readTextureNames3DS(Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0}, Lcom/threed/jpct/Loader;->readTextureNames3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readTextureNames3DS(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;)[Ljava/lang/String;
    .locals 16

    const/16 v0, 0x2000

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 2
    invoke-static {v1, v2, v3, v0}, Lcom/threed/jpct/Loader;->loadBinaryFile(Ljava/net/URL;Ljava/lang/String;Ljava/io/InputStream;I)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    new-array v2, v1, [I

    .line 4
    new-array v1, v1, [I

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-eqz v0, :cond_17

    .line 6
    invoke-static {v0, v4, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    .line 7
    aget v5, v2, v4

    const/16 v6, 0x4d4d

    if-eq v5, v6, :cond_0

    .line 8
    const-string v0, "Not a valid 3DS file!"

    invoke-static {v0, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto/16 :goto_d

    :cond_0
    const/4 v6, 0x6

    move v7, v6

    :goto_0
    if-ltz v5, :cond_17

    .line 9
    array-length v5, v0

    if-lt v7, v5, :cond_1

    goto/16 :goto_d

    .line 10
    :cond_1
    invoke-static {v0, v7, v2}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v7, v7, 0x6

    .line 11
    aget v5, v2, v4

    const/4 v8, 0x1

    .line 12
    aget v9, v2, v8

    if-ltz v5, :cond_15

    .line 13
    array-length v10, v0

    if-ge v7, v10, :cond_15

    const v10, 0xb010

    if-ne v5, v10, :cond_3

    .line 14
    :goto_1
    invoke-static {v0, v7}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v10

    add-int/lit8 v11, v7, 0x1

    if-gtz v10, :cond_2

    add-int/lit8 v7, v7, 0x7

    move v10, v4

    goto :goto_2

    :cond_2
    move v7, v11

    goto :goto_1

    :cond_3
    move v10, v8

    :goto_2
    const v11, 0xb020

    if-ne v5, v11, :cond_4

    add-int/lit8 v7, v7, 0x20

    move v10, v4

    :cond_4
    const/16 v11, 0x4000

    if-ne v5, v11, :cond_6

    .line 15
    :cond_5
    invoke-static {v0, v7}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v10

    add-int/2addr v7, v8

    if-gtz v10, :cond_5

    move v10, v4

    :cond_6
    const/16 v11, 0x4110

    if-ne v5, v11, :cond_8

    .line 16
    invoke-static {v0, v7}, Lcom/threed/jpct/Loader;->getShortInt([BI)I

    move-result v11

    add-int/lit8 v7, v7, 0x2

    move v10, v4

    :goto_3
    if-lt v10, v11, :cond_7

    move v10, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0xc

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    const/16 v11, 0x4120

    if-ne v5, v11, :cond_9

    move v10, v8

    :cond_9
    const v11, 0xafff

    if-ne v5, v11, :cond_12

    move v10, v7

    :goto_5
    add-int v11, v7, v9

    sub-int/2addr v11, v6

    if-ge v10, v11, :cond_11

    .line 17
    array-length v11, v0

    if-lt v10, v11, :cond_a

    goto :goto_a

    .line 18
    :cond_a
    invoke-static {v0, v10, v1}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v10, v10, 0x6

    .line 19
    aget v11, v1, v4

    .line 20
    aget v12, v1, v8

    const v13, 0xa200

    if-ne v11, v13, :cond_10

    move v11, v10

    :goto_6
    add-int v13, v10, v9

    sub-int/2addr v13, v6

    if-ge v11, v13, :cond_10

    .line 21
    array-length v13, v0

    if-lt v11, v13, :cond_b

    goto :goto_9

    .line 22
    :cond_b
    invoke-static {v0, v11, v1}, Lcom/threed/jpct/Loader;->getChunkHeader([BI[I)V

    add-int/lit8 v11, v11, 0x6

    .line 23
    aget v13, v1, v4

    .line 24
    aget v14, v1, v8

    const v15, 0xa300

    if-ne v13, v15, :cond_f

    .line 25
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v15, 0x28

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    move v15, v11

    .line 26
    :goto_7
    invoke-static {v0, v15}, Lcom/threed/jpct/Loader;->getUnsignedByte([BI)I

    move-result v4

    add-int/2addr v15, v8

    if-lez v4, :cond_c

    int-to-byte v8, v4

    int-to-char v8, v8

    .line 27
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    :cond_c
    array-length v8, v0

    if-lt v15, v8, :cond_d

    const/4 v4, -0x1

    :cond_d
    if-gtz v4, :cond_e

    .line 29
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 31
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    const/4 v8, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    sub-int/2addr v14, v6

    add-int/2addr v11, v14

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_6

    :cond_10
    :goto_9
    sub-int/2addr v12, v6

    add-int/2addr v10, v12

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto :goto_5

    :cond_11
    :goto_a
    const/4 v8, 0x1

    goto :goto_b

    :cond_12
    move v8, v10

    :goto_b
    const/16 v4, 0x3d3d

    if-eq v5, v4, :cond_13

    const v4, 0xb000

    if-eq v5, v4, :cond_13

    const v4, 0xb002

    if-ne v5, v4, :cond_14

    :cond_13
    const/4 v8, 0x0

    :cond_14
    if-eqz v8, :cond_15

    add-int v4, v7, v9

    sub-int/2addr v4, v6

    .line 32
    array-length v8, v0

    if-lt v4, v8, :cond_16

    .line 33
    array-length v7, v0

    :cond_15
    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_16
    add-int/lit8 v9, v9, -0x6

    add-int/2addr v7, v9

    goto :goto_c

    .line 34
    :cond_17
    :goto_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_e
    if-lt v4, v0, :cond_18

    return-object v1

    .line 35
    :cond_18
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method

.method private static removeBogusData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "-s"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "-o"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    const-string v3, "This .mtl-file contains bogus(?) data in the map_K? line...skipping this data!"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v2

    :cond_2
    const/16 v3, 0x20

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_3

    if-ne v1, v2, :cond_2

    :cond_3
    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static setVertexOptimization(Z)V
    .locals 0

    sput-boolean p0, Lcom/threed/jpct/Loader;->optimize:Z

    return-void
.end method

.method private static unsignedByteToInt(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
