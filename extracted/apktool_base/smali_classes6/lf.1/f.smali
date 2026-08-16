.class public Llf/f;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/f;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(FLcom/jme3/scene/Mesh$Mode;)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v3, "radius"

    invoke-static {v1, v3}, Lif/E;->E(FLjava/lang/String;)Z

    .line 4
    const-string v3, "mode"

    invoke-static {v2, v3}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    sget v3, Ljf/f;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v3, v4

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x2

    .line 6
    new-array v8, v7, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v10, 0x1

    aput v5, v8, v10

    invoke-static {v8}, Ljf/f;->r([F)F

    move-result v8

    div-float/2addr v8, v1

    div-float/2addr v5, v8

    div-float v1, v6, v8

    const v11, 0x3fa0d97c

    .line 7
    invoke-static {v11}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v12

    mul-float/2addr v12, v1

    const v13, 0x4020d97c

    .line 8
    invoke-static {v13}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v14

    mul-float/2addr v14, v1

    const v15, 0x4071463b

    .line 9
    invoke-static {v15}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v16

    mul-float v7, v1, v16

    const v16, 0x40a0d97c

    .line 10
    invoke-static/range {v16 .. v16}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v18

    mul-float v10, v1, v18

    .line 11
    invoke-static {v11}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v11

    mul-float/2addr v11, v1

    .line 12
    invoke-static {v13}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v13

    mul-float/2addr v13, v1

    .line 13
    invoke-static {v15}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v15

    mul-float/2addr v15, v1

    .line 14
    invoke-static/range {v16 .. v16}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v16

    mul-float v9, v1, v16

    sub-float v4, v3, v4

    div-float/2addr v4, v8

    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    mul-float v8, v3, v12

    mul-float v2, v3, v14

    mul-float v0, v3, v7

    move/from16 p1, v7

    mul-float v7, v3, v10

    move/from16 v16, v10

    mul-float v10, v3, v11

    move/from16 v19, v14

    mul-float v14, v3, v13

    move/from16 v20, v13

    mul-float v13, v3, v15

    mul-float/2addr v3, v9

    move/from16 v21, v9

    neg-float v9, v6

    move/from16 v22, v9

    neg-float v9, v4

    move/from16 v23, v9

    neg-float v9, v8

    move/from16 v24, v9

    neg-float v9, v10

    move/from16 v25, v9

    neg-float v9, v2

    move/from16 v26, v9

    neg-float v9, v14

    move/from16 v27, v9

    neg-float v9, v0

    move/from16 v28, v9

    neg-float v9, v13

    move/from16 v29, v9

    neg-float v9, v7

    move/from16 v30, v9

    neg-float v9, v3

    move/from16 v31, v9

    neg-float v9, v1

    move/from16 v32, v9

    neg-float v9, v5

    move/from16 v33, v9

    neg-float v9, v12

    move/from16 v34, v9

    neg-float v9, v11

    move/from16 v35, v9

    move/from16 v9, v19

    move/from16 v19, v3

    neg-float v3, v9

    move/from16 v36, v3

    move/from16 v3, v20

    move/from16 v20, v7

    neg-float v7, v3

    move/from16 v37, v7

    move/from16 v7, p1

    move/from16 p1, v13

    neg-float v13, v7

    move/from16 v38, v13

    neg-float v13, v15

    move/from16 v39, v13

    move/from16 v13, v16

    move/from16 v16, v0

    neg-float v0, v13

    move/from16 v40, v0

    move/from16 v0, v21

    move/from16 v21, v14

    neg-float v14, v0

    move/from16 v41, v14

    const/16 v14, 0x3c

    move/from16 v42, v2

    .line 15
    new-array v2, v14, [F

    const/16 v18, 0x0

    aput v1, v2, v18

    const/4 v1, 0x0

    const/16 v18, 0x1

    aput v1, v2, v18

    const/16 v17, 0x2

    aput v5, v2, v17

    const/4 v14, 0x3

    aput v12, v2, v14

    const/4 v12, 0x4

    aput v11, v2, v12

    const/4 v11, 0x5

    aput v5, v2, v11

    const/4 v11, 0x6

    aput v9, v2, v11

    const/4 v9, 0x7

    aput v3, v2, v9

    const/16 v3, 0x8

    aput v5, v2, v3

    const/16 v3, 0x9

    aput v7, v2, v3

    const/16 v3, 0xa

    aput v15, v2, v3

    const/16 v3, 0xb

    aput v5, v2, v3

    const/16 v3, 0xc

    aput v13, v2, v3

    const/16 v3, 0xd

    aput v0, v2, v3

    const/16 v0, 0xe

    aput v5, v2, v0

    const/16 v0, 0xf

    aput v6, v2, v0

    const/16 v0, 0x10

    aput v1, v2, v0

    const/16 v0, 0x11

    aput v4, v2, v0

    const/16 v0, 0x12

    aput v8, v2, v0

    const/16 v0, 0x13

    aput v10, v2, v0

    const/16 v0, 0x14

    aput v4, v2, v0

    const/16 v0, 0x15

    aput v42, v2, v0

    const/16 v0, 0x16

    aput v21, v2, v0

    const/16 v0, 0x17

    aput v4, v2, v0

    const/16 v0, 0x18

    aput v16, v2, v0

    const/16 v0, 0x19

    aput p1, v2, v0

    const/16 v0, 0x1a

    aput v4, v2, v0

    const/16 v0, 0x1b

    aput v20, v2, v0

    const/16 v0, 0x1c

    aput v19, v2, v0

    const/16 v0, 0x1d

    aput v4, v2, v0

    const/16 v0, 0x1e

    aput v22, v2, v0

    const/16 v0, 0x1f

    aput v1, v2, v0

    const/16 v0, 0x20

    aput v23, v2, v0

    const/16 v0, 0x21

    aput v24, v2, v0

    const/16 v0, 0x22

    aput v25, v2, v0

    const/16 v0, 0x23

    aput v23, v2, v0

    const/16 v0, 0x24

    aput v26, v2, v0

    const/16 v0, 0x25

    aput v27, v2, v0

    const/16 v0, 0x26

    aput v23, v2, v0

    const/16 v0, 0x27

    aput v28, v2, v0

    const/16 v0, 0x28

    aput v29, v2, v0

    const/16 v0, 0x29

    aput v23, v2, v0

    const/16 v0, 0x2a

    aput v30, v2, v0

    const/16 v0, 0x2b

    aput v31, v2, v0

    const/16 v0, 0x2c

    aput v23, v2, v0

    const/16 v0, 0x2d

    aput v32, v2, v0

    const/16 v0, 0x2e

    aput v1, v2, v0

    const/16 v0, 0x2f

    aput v33, v2, v0

    const/16 v0, 0x30

    aput v34, v2, v0

    const/16 v0, 0x31

    aput v35, v2, v0

    const/16 v0, 0x32

    aput v33, v2, v0

    const/16 v0, 0x33

    aput v36, v2, v0

    const/16 v0, 0x34

    aput v37, v2, v0

    const/16 v0, 0x35

    aput v33, v2, v0

    const/16 v0, 0x36

    aput v38, v2, v0

    const/16 v0, 0x37

    aput v39, v2, v0

    const/16 v0, 0x38

    aput v33, v2, v0

    const/16 v0, 0x39

    aput v40, v2, v0

    const/16 v0, 0x3a

    aput v41, v2, v0

    const/16 v0, 0x3b

    aput v33, v2, v0

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 16
    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v14, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 17
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 18
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    move-object/from16 v1, p2

    if-ne v1, v0, :cond_0

    const/16 v0, 0x3c

    .line 19
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 21
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    if-ne v1, v0, :cond_1

    const/16 v0, 0x6c

    .line 23
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    .line 25
    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2, v3, v14, v0}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    goto :goto_0

    .line 26
    :cond_1
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    if-ne v1, v0, :cond_2

    .line 27
    :goto_0
    invoke-virtual {v2, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x0
        0x0
        0x5
        0x1
        0x6
        0x2
        0x7
        0x3
        0x8
        0x4
        0x9
        0x5
        0xd
        0x6
        0xe
        0x7
        0xa
        0x8
        0xb
        0x9
        0xc
        0x5
        0xc
        0x6
        0xd
        0x7
        0xe
        0x8
        0xa
        0x9
        0xb
        0xa
        0xf
        0xb
        0x10
        0xc
        0x11
        0xd
        0x12
        0xe
        0x13
        0xf
        0x10
        0x10
        0x11
        0x11
        0x12
        0x12
        0x13
        0x13
        0xf
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x0
        0x2
        0x3
        0x0
        0x3
        0x4
        0x0
        0x5
        0xd
        0x0
        0xd
        0x6
        0x0
        0x6
        0x1
        0x1
        0x6
        0xe
        0x1
        0xe
        0x7
        0x1
        0x7
        0x2
        0x2
        0x7
        0xa
        0x2
        0xa
        0x8
        0x2
        0x8
        0x3
        0x3
        0x8
        0xb
        0x3
        0xb
        0x9
        0x3
        0x9
        0x4
        0x4
        0x9
        0xc
        0x4
        0xc
        0x5
        0x4
        0x5
        0x0
        0x5
        0xc
        0x11
        0x5
        0x11
        0x12
        0x5
        0x12
        0xd
        0x6
        0xd
        0x12
        0x6
        0x12
        0x13
        0x6
        0x13
        0xe
        0x7
        0xe
        0x13
        0x7
        0x13
        0xf
        0x7
        0xf
        0xa
        0x8
        0xa
        0xf
        0x8
        0xf
        0x10
        0x8
        0x10
        0xb
        0x9
        0xb
        0x10
        0x9
        0x10
        0x11
        0x9
        0x11
        0xc
        0xf
        0x13
        0x12
        0xf
        0x12
        0x11
        0xf
        0x11
        0x10
    .end array-data
.end method
