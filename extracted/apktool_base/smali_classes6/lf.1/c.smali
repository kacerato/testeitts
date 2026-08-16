.class public Llf/c;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:I = 0x3

.field public static final d:Ljava/util/logging/Logger;

.field public static final synthetic e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/c;->d:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(IFFZ)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/jme3/scene/Mesh;-><init>()V

    const v4, 0x7fffffff

    .line 3
    const-string v5, "number of sides"

    const/4 v6, 0x3

    invoke-static {v1, v5, v6, v4}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    const-string v4, "radius"

    invoke-static {v2, v4}, Lif/E;->E(FLjava/lang/String;)Z

    .line 5
    const-string v4, "height"

    invoke-static {v3, v4}, Lif/E;->E(FLjava/lang/String;)Z

    const/4 v4, 0x2

    add-int/lit8 v5, v1, -0x2

    add-int v7, v5, v1

    mul-int/lit8 v7, v7, 0x9

    .line 6
    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 7
    sget-object v9, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v9, v6, v8}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 8
    invoke-static {v7}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 9
    sget-object v9, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v9, v6, v7}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    const/high16 v9, 0x40000000    # 2.0f

    div-float v10, v3, v9

    neg-float v11, v3

    div-float/2addr v11, v9

    const-wide v12, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v14, v1

    div-double/2addr v12, v14

    const/4 v9, 0x1

    add-int/lit8 v14, v1, -0x1

    int-to-double v14, v14

    mul-double/2addr v14, v12

    move-object/from16 v16, v7

    .line 10
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v2

    .line 11
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v7, v14

    mul-float/2addr v7, v2

    div-float v3, v2, v3

    const/high16 v14, 0x3f800000    # 1.0f

    .line 12
    new-array v4, v4, [F

    const/4 v15, 0x0

    aput v14, v4, v15

    aput v3, v4, v9

    invoke-static {v4}, Ljf/f;->r([F)F

    move-result v4

    div-float/2addr v14, v4

    mul-float/2addr v3, v14

    .line 13
    new-instance v4, Lcom/jme3/math/Triangle;

    invoke-direct {v4}, Lcom/jme3/math/Triangle;-><init>()V

    .line 14
    new-instance v15, Lcom/jme3/math/Vector3f;

    invoke-direct {v15}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 15
    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 16
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_3

    move/from16 v19, v5

    move/from16 v20, v6

    int-to-double v5, v7

    mul-double/2addr v5, v12

    move/from16 v21, v3

    move-object/from16 v22, v4

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    move-object v4, v0

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    move-wide/from16 v23, v5

    const/4 v1, 0x1

    add-int/lit8 v5, v7, 0x1

    move v1, v7

    int-to-double v6, v5

    mul-double/2addr v6, v12

    move-wide/from16 v25, v12

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v2

    move/from16 v27, v14

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v13, v2

    .line 21
    invoke-virtual {v15, v3, v11, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 22
    invoke-virtual {v9, v12, v11, v13}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/4 v14, 0x0

    .line 23
    invoke-virtual {v4, v14, v10, v14}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 24
    iget v14, v15, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v8, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    move/from16 v28, v5

    iget v5, v15, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v14, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v14, v15, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 25
    iget v5, v9, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v8, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v14, v9, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v14, v9, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 26
    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v8, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v14, v4, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v14, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    if-eqz p4, :cond_1

    move-object/from16 v5, v22

    .line 27
    invoke-virtual {v5, v15, v9, v4}, Lcom/jme3/math/Triangle;->set(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 28
    invoke-virtual {v5}, Lcom/jme3/math/Triangle;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v14, 0x3

    :goto_1
    if-ge v7, v14, :cond_0

    .line 29
    iget v14, v6, Lcom/jme3/math/Vector3f;->x:F

    move-object/from16 v22, v4

    move-object/from16 v4, v16

    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v16, v5

    iget v5, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v14, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget v14, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v5, 0x1

    add-int/2addr v7, v5

    move-object/from16 v5, v16

    const/4 v14, 0x3

    move-object/from16 v16, v4

    move-object/from16 v4, v22

    goto :goto_1

    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v17, v9

    move-object v7, v15

    move/from16 v5, v19

    move/from16 v9, v21

    goto :goto_2

    :cond_1
    const/4 v5, 0x1

    move-object/from16 v29, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v29

    mul-float v14, v27, v3

    div-float/2addr v14, v2

    mul-float v17, v27, v0

    div-float v5, v17, v2

    .line 30
    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v17, v9

    move/from16 v9, v21

    invoke-virtual {v14, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    mul-float v14, v27, v12

    div-float/2addr v14, v2

    mul-float v5, v27, v13

    div-float/2addr v5, v2

    .line 31
    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-double v5, v23, v6

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v5, v5, v23

    move-object v7, v15

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v27

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v27

    .line 34
    invoke-virtual {v4, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move/from16 v5, v19

    :goto_2
    if-ge v1, v5, :cond_2

    move/from16 v1, v20

    .line 35
    invoke-virtual {v8, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    move/from16 v14, v18

    invoke-virtual {v6, v14}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 36
    invoke-virtual {v8, v12}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 37
    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 39
    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 40
    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_3

    :cond_2
    move/from16 v14, v18

    move/from16 v1, v20

    :goto_3
    move v6, v1

    move-object v15, v7

    move v3, v9

    move/from16 v18, v14

    move-object/from16 v9, v17

    move-object/from16 v0, v22

    move-wide/from16 v12, v25

    move/from16 v14, v27

    move/from16 v7, v28

    move/from16 v1, p1

    move-object/from16 v29, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v29

    goto/16 :goto_0

    :cond_3
    move-object/from16 v4, v16

    .line 41
    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 42
    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
